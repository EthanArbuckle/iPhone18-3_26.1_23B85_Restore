uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, char *a2, char *a3, char *a4)
{
  v109 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v92 = &v85[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v88 = &v85[-v10];
  MEMORY[0x1EEE9AC00](v11);
  v96 = &v85[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v93 = &v85[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v90 = &v85[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v98 = &v85[-v18];
  v19 = type metadata accessor for Date();
  MEMORY[0x1EEE9AC00](v19);
  v86 = &v85[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v22);
  v87 = &v85[-v23];
  MEMORY[0x1EEE9AC00](v24);
  v27 = (a2 - a1) / 40;
  v28 = a2;
  v95 = (v29 + 32);
  v94 = (v29 + 8);
  v30 = (a3 - a2) / 40;
  v97 = v31;
  if (v27 < v30)
  {
    v89 = &v85[-v25];
    v32 = v109;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, v27, v109);
    v100 = &v32[40 * v27];
    v101 = a3;
    while (1)
    {
      if (v109 >= v100 || v28 >= a3)
      {
        v28 = a1;
        v60 = v100;
        goto LABEL_36;
      }

      v102 = v28;
      outlined init with copy of IDSLookupManager(v28, v106);
      outlined init with copy of IDSLookupManager(v109, v103);
      v35 = v107;
      v34 = v108;
      v36 = __swift_project_boxed_opaque_existential_1(v106, v107);
      v37 = *(v34 + 8);
      v38 = v98;
      v37(v35, v34);
      if (__swift_getEnumTagSinglePayload(v38, 1, v19) == 1)
      {
        goto LABEL_10;
      }

      v92 = v36;
      v96 = v37;
      v99 = a1;
      v39 = v89;
      v91 = *v95;
      (v91)(v89, v98, v19);
      v41 = v104;
      v40 = v105;
      __swift_project_boxed_opaque_existential_1(v103, v104);
      v42 = v90;
      v43 = v41;
      v19 = v97;
      (*(v40 + 8))(v43, v40);
      if (__swift_getEnumTagSinglePayload(v42, 1, v19) == 1)
      {
        break;
      }

      v49 = v39;
      v50 = v87;
      (v91)(v87, v42, v19);
      v51 = static Date.> infix(_:_:)();
      v52 = *v94;
      (*v94)(v50, v19);
      v45 = v19;
      v52(v49, v19);
      __swift_destroy_boxed_opaque_existential_1(v103);
      __swift_destroy_boxed_opaque_existential_1(v106);
      a1 = v99;
      if ((v51 & 1) == 0)
      {
LABEL_11:
        v47 = v109;
        v48 = a1 == v109;
        v109 += 40;
        v28 = v102;
        goto LABEL_14;
      }

LABEL_13:
      v47 = v102;
      v28 = v102 + 40;
      v48 = a1 == v102;
LABEL_14:
      a3 = v101;
      if (!v48)
      {
        v53 = *v47;
        v54 = *(v47 + 1);
        *(a1 + 4) = *(v47 + 4);
        *a1 = v53;
        *(a1 + 1) = v54;
      }

      a1 += 40;
      v19 = v45;
    }

    (*v94)(v39, v19);
    v38 = v42;
    a1 = v99;
    v37 = v96;
LABEL_10:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v38, &_s10Foundation4DateVSgMd);
    v44 = v93;
    v37(v35, v34);
    v45 = v19;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v44, 1, v19);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v44, &_s10Foundation4DateVSgMd);
    __swift_destroy_boxed_opaque_existential_1(v103);
    __swift_destroy_boxed_opaque_existential_1(v106);
    if (EnumTagSinglePayload == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v87 = v26;
  v55 = v109;
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v28, v30, v109);
  v56 = &v55[40 * v30];
  v99 = a1;
LABEL_18:
  v57 = (v28 - 40);
  v58 = a3 - 40;
  v59 = (v56 - 40);
  v102 = v28;
  v93 = v28 - 40;
  while (1)
  {
    v60 = v59 + 40;
    if (v59 + 40 <= v109 || v28 <= a1)
    {
      break;
    }

    v101 = v58;
    v98 = v59;
    outlined init with copy of IDSLookupManager(v59, v106);
    outlined init with copy of IDSLookupManager(v57, v103);
    v63 = v107;
    v62 = v108;
    v64 = __swift_project_boxed_opaque_existential_1(v106, v107);
    v65 = *(v62 + 8);
    v66 = v96;
    v65(v63, v62);
    v67 = v97;
    if (__swift_getEnumTagSinglePayload(v66, 1, v97) == 1)
    {
      goto LABEL_27;
    }

    v90 = v64;
    v91 = v65;
    v100 = v60;
    v68 = v87;
    v89 = *v95;
    (v89)(v87, v96, v67);
    v69 = v104;
    v70 = v105;
    __swift_project_boxed_opaque_existential_1(v103, v104);
    v71 = v69;
    v66 = v88;
    (*(v70 + 8))(v71, v70);
    if (__swift_getEnumTagSinglePayload(v66, 1, v67) == 1)
    {
      (*v94)(v68, v67);
      v60 = v100;
      v65 = v91;
LABEL_27:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v66, &_s10Foundation4DateVSgMd);
      v72 = v92;
      v65(v63, v62);
      v73 = __swift_getEnumTagSinglePayload(v72, 1, v67) != 1;
      v28 = v102;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v72, &_s10Foundation4DateVSgMd);
      goto LABEL_29;
    }

    v74 = v86;
    (v89)(v86, v66, v67);
    v73 = static Date.> infix(_:_:)();
    v75 = v68;
    v76 = *v94;
    (*v94)(v74, v67);
    v76(v75, v67);
    v28 = v102;
    v60 = v100;
LABEL_29:
    __swift_destroy_boxed_opaque_existential_1(v103);
    __swift_destroy_boxed_opaque_existential_1(v106);
    v77 = v98;
    a1 = v99;
    a3 = v101;
    v57 = v93;
    if (v73)
    {
      v56 = v98 + 40;
      v48 = v101 + 40 == v28;
      v28 = v93;
      if (!v48)
      {
        v80 = *v93;
        v81 = *(v93 + 1);
        *(v101 + 4) = *(v93 + 4);
        *a3 = v80;
        *(a3 + 1) = v81;
        v28 = v57;
      }

      goto LABEL_18;
    }

    if (v60 != (v101 + 40))
    {
      v78 = *v98;
      v79 = *(v98 + 1);
      *(v101 + 4) = *(v98 + 4);
      *a3 = v78;
      *(a3 + 1) = v79;
    }

    v58 = a3 - 40;
    v59 = (v77 - 40);
  }

LABEL_36:
  v82 = (v60 - v109) / 40;
  if (v28 != v109 || v28 >= &v109[40 * v82])
  {
    memmove(v28, v109, 40 * v82);
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      lazy protocol witness table accessor for type String and conformance String();
      if (StringProtocol.localizedStandardCompare<A>(_:)() != -1)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_9;
      }

LABEL_10:
      v7 += 16;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_10;
    }

LABEL_9:
    *v7 = *v12;
    goto LABEL_10;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_15:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    lazy protocol witness table accessor for type String and conformance String();
    v16 = StringProtocol.localizedStandardCompare<A>(_:)();
    v17 = v5 + 16;
    if (v16 == -1)
    {
      v13 = v17 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v17)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_28:
  v18 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v18])
  {
    memmove(v6, v4, 16 * v18);
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, char *a2, unint64_t a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v102 = &v97[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v101 = &v97[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v104 = &v97[-v13];
  MEMORY[0x1EEE9AC00](v14);
  v105 = &v97[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v100 = &v97[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v108 = &v97[-v19];
  v107 = type metadata accessor for Date();
  MEMORY[0x1EEE9AC00](v107);
  v99 = &v97[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v22);
  v98 = &v97[-v23];
  MEMORY[0x1EEE9AC00](v24);
  v27 = (a2 - a1) / 40;
  v106 = (v28 + 32);
  v103 = (v28 + 8);
  v29 = (a3 - a2) / 40;
  if (v27 < v29)
  {
    v104 = &v97[-v25];
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / 40, a4);
    v119 = &a4[40 * v27];
    v109 = a3;
    while (1)
    {
      if (a4 >= v119 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_43;
      }

      v110 = a1;
      v112 = a2;
      outlined init with copy of IDSLookupManager(a2, v116);
      v111 = a4;
      outlined init with copy of IDSLookupManager(a4, v113);
      v31 = v117;
      v32 = v118;
      __swift_project_boxed_opaque_existential_1(v116, v117);
      v33 = *(v32 + 32);
      v34 = v33(v31, v32);
      v35 = v114;
      v36 = v115;
      __swift_project_boxed_opaque_existential_1(v113, v114);
      if ((v34 ^ (*(v36 + 32))(v35, v36)))
      {
        break;
      }

      v41 = v117;
      v42 = v118;
      __swift_project_boxed_opaque_existential_1(v116, v117);
      v43 = v108;
      (*(v42 + 8))(v41, v42);
      v44 = v107;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v43, 1, v107);
      a3 = v109;
      v38 = v110;
      if (EnumTagSinglePayload != 1)
      {
        v46 = *v106;
        v47 = v104;
        (*v106)(v104, v108, v44);
        v48 = v114;
        v49 = v115;
        __swift_project_boxed_opaque_existential_1(v113, v114);
        v50 = v48;
        v51 = v100;
        (*(v49 + 8))(v50, v49);
        if (__swift_getEnumTagSinglePayload(v51, 1, v44) != 1)
        {
          v57 = v46;
          v58 = v98;
          v57(v98, v51, v44);
          v37 = static Date.> infix(_:_:)();
          v59 = *v103;
          (*v103)(v58, v44);
          v59(v47, v44);
          a4 = v111;
          a2 = v112;
LABEL_9:
          __swift_destroy_boxed_opaque_existential_1(v113);
          __swift_destroy_boxed_opaque_existential_1(v116);
          if ((v37 & 1) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_10;
        }

        (*v103)(v47, v44);
        v43 = v51;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v43, &_s10Foundation4DateVSgMd);
      v52 = v117;
      v53 = v118;
      __swift_project_boxed_opaque_existential_1(v116, v117);
      v54 = v105;
      (*(v53 + 8))(v52, v53);
      LODWORD(v52) = __swift_getEnumTagSinglePayload(v54, 1, v44);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v54, &_s10Foundation4DateVSgMd);
      __swift_destroy_boxed_opaque_existential_1(v113);
      __swift_destroy_boxed_opaque_existential_1(v116);
      a4 = v111;
      a2 = v112;
      if (v52 == 1)
      {
LABEL_17:
        v39 = a4;
        v40 = v38 == a4;
        a4 += 40;
        if (v40)
        {
          goto LABEL_19;
        }

LABEL_18:
        v55 = *v39;
        v56 = *(v39 + 1);
        *(v38 + 4) = *(v39 + 4);
        *v38 = v55;
        *(v38 + 1) = v56;
        goto LABEL_19;
      }

LABEL_10:
      v39 = a2;
      v40 = v38 == a2;
      a2 += 40;
      if (!v40)
      {
        goto LABEL_18;
      }

LABEL_19:
      a1 = v38 + 40;
    }

    v37 = v33(v31, v32);
    a4 = v111;
    a2 = v112;
    a3 = v109;
    v38 = v110;
    goto LABEL_9;
  }

  v100 = v26;
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, (a3 - a2) / 40, a4);
  v60 = &a4[40 * v29];
  v110 = a1;
  v111 = a4;
LABEL_22:
  v61 = (a2 - 40);
  v62 = a3 - 40;
  v63 = (v60 - 40);
  v112 = a2;
  v105 = a2 - 40;
  while (1)
  {
    v119 = (v63 + 40);
    if (v63 + 40 <= a4 || a2 <= a1)
    {
      break;
    }

    v108 = v63;
    v109 = v62;
    outlined init with copy of IDSLookupManager(v63, v116);
    outlined init with copy of IDSLookupManager(v61, v113);
    v66 = v117;
    v65 = v118;
    __swift_project_boxed_opaque_existential_1(v116, v117);
    v67 = *(v65 + 32);
    v68 = v67(v66, v65);
    v69 = v114;
    v70 = v115;
    __swift_project_boxed_opaque_existential_1(v113, v114);
    if ((v68 ^ (*(v70 + 32))(v69, v70)))
    {
      v71 = v67(v66, v65);
      a4 = v111;
      a2 = v112;
      a3 = v109;
      a1 = v110;
      goto LABEL_36;
    }

    v72 = v117;
    v73 = v118;
    __swift_project_boxed_opaque_existential_1(v116, v117);
    v74 = v104;
    (*(v73 + 8))(v72, v73);
    v75 = v107;
    v76 = __swift_getEnumTagSinglePayload(v74, 1, v107);
    a3 = v109;
    a1 = v110;
    if (v76 != 1)
    {
      v77 = *v106;
      v78 = v100;
      (*v106)(v100, v104, v75);
      v79 = v114;
      v80 = v115;
      __swift_project_boxed_opaque_existential_1(v113, v114);
      v81 = v79;
      v82 = v101;
      (*(v80 + 8))(v81, v80);
      if (__swift_getEnumTagSinglePayload(v82, 1, v75) != 1)
      {
        v86 = v77;
        v87 = v99;
        v86(v99, v82, v75);
        v71 = static Date.> infix(_:_:)();
        v88 = *v103;
        (*v103)(v87, v75);
        v88(v78, v75);
        goto LABEL_35;
      }

      (*v103)(v78, v75);
      v74 = v82;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v74, &_s10Foundation4DateVSgMd);
    v83 = v117;
    v84 = v118;
    __swift_project_boxed_opaque_existential_1(v116, v117);
    v85 = v102;
    (*(v84 + 8))(v83, v84);
    v71 = __swift_getEnumTagSinglePayload(v85, 1, v75) != 1;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v85, &_s10Foundation4DateVSgMd);
LABEL_35:
    a4 = v111;
    a2 = v112;
LABEL_36:
    __swift_destroy_boxed_opaque_existential_1(v113);
    __swift_destroy_boxed_opaque_existential_1(v116);
    v61 = v105;
    v89 = v108;
    if (v71)
    {
      v60 = v108 + 40;
      v40 = a3 + 40 == a2;
      a2 = v105;
      if (!v40)
      {
        v92 = *v105;
        v93 = *(v105 + 1);
        *(a3 + 32) = *(v105 + 4);
        *a3 = v92;
        *(a3 + 16) = v93;
        a2 = v61;
      }

      goto LABEL_22;
    }

    if (v119 != (a3 + 40))
    {
      v90 = *v108;
      v91 = *(v108 + 1);
      *(a3 + 32) = *(v108 + 4);
      *a3 = v90;
      *(a3 + 16) = v91;
    }

    v62 = a3 - 40;
    v63 = (v89 - 40);
  }

LABEL_43:
  v94 = (v119 - a4) / 40;
  if (a2 != a4 || a2 >= &a4[40 * v94])
  {
    memmove(a2, a4, 40 * v94);
  }

  return 1;
}

{
  v70 = type metadata accessor for Date();
  v8 = MEMORY[0x1EEE9AC00](v70);
  v69 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v64 - v10;
  v11 = (a2 - a1) / 40;
  v67 = (v12 + 8);
  v13 = (a3 - a2) / 40;
  if (v11 < v13)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / 40, a4);
    v14 = &a4[40 * v11];
    v15 = v68;
    while (1)
    {
      if (a4 >= v14 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_39;
      }

      outlined init with copy of IDSLookupManager(a2, v75);
      outlined init with copy of IDSLookupManager(a4, v72);
      v17 = v76;
      v18 = v77;
      __swift_project_boxed_opaque_existential_1(v75, v76);
      v19 = (*(v18 + 104))(v17, v18);
      if (!v19)
      {
        break;
      }

      v20 = v19;
      v71 = a4;
      v78 = a2;
      v21 = v73;
      v22 = v74;
      __swift_project_boxed_opaque_existential_1(v72, v73);
      v23 = (*(v22 + 104))(v21, v22);
      if (v23)
      {
        v24 = v23;
        v25 = [v20 timestamp];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v26 = [v24 timestamp];
        v27 = v69;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v26) = static Date.> infix(_:_:)();
        v28 = *v67;
        v29 = v70;
        (*v67)(v27, v70);
        v28(v15, v29);
        __swift_destroy_boxed_opaque_existential_1(v72);
        __swift_destroy_boxed_opaque_existential_1(v75);
        a2 = v78;
        a4 = v71;
        if ((v26 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v72);
        __swift_destroy_boxed_opaque_existential_1(v75);
        a2 = v78;
        a4 = v71;
      }

      v30 = a2;
      v31 = a1 == a2;
      a2 += 40;
      if (!v31)
      {
        goto LABEL_13;
      }

LABEL_14:
      a1 += 40;
    }

    __swift_destroy_boxed_opaque_existential_1(v72);
    __swift_destroy_boxed_opaque_existential_1(v75);
LABEL_12:
    v30 = a4;
    v31 = a1 == a4;
    a4 += 40;
    if (v31)
    {
      goto LABEL_14;
    }

LABEL_13:
    v32 = *v30;
    v33 = *(v30 + 1);
    *(a1 + 4) = *(v30 + 4);
    *a1 = v32;
    *(a1 + 1) = v33;
    goto LABEL_14;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, (a3 - a2) / 40, a4);
  v34 = &a4[40 * v13];
  v71 = a4;
LABEL_20:
  v35 = (a2 - 40);
  a3 -= 40;
  v36 = (v34 - 40);
  v78 = a2;
  v65 = a2 - 40;
  while (1)
  {
    v14 = (v36 + 40);
    if (v36 + 40 <= a4 || a2 <= a1)
    {
      break;
    }

    outlined init with copy of IDSLookupManager(v36, v75);
    outlined init with copy of IDSLookupManager(v35, v72);
    v38 = v76;
    v39 = v77;
    __swift_project_boxed_opaque_existential_1(v75, v76);
    v40 = (*(v39 + 104))(v38, v39);
    if (v40)
    {
      v41 = v40;
      v43 = v73;
      v42 = v74;
      __swift_project_boxed_opaque_existential_1(v72, v73);
      v44 = (*(v42 + 104))(v43, v42);
      if (v44)
      {
        v45 = v44;
        v46 = [v41 timestamp];
        v66 = v36 + 40;
        v47 = v68;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v48 = [v45 timestamp];
        v49 = a3;
        v50 = a1;
        v51 = v69;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v52 = static Date.> infix(_:_:)();
        v53 = *v67;
        v54 = v51;
        a1 = v50;
        a3 = v49;
        v55 = v70;
        (*v67)(v54, v70);
        v56 = v47;
        v14 = v66;
        v53(v56, v55);
      }

      else
      {

        v52 = 1;
      }

      v35 = v65;
    }

    else
    {
      v52 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v72);
    __swift_destroy_boxed_opaque_existential_1(v75);
    a2 = v78;
    if (v52)
    {
      v34 = (v36 + 40);
      a2 = v35;
      a4 = v71;
      if ((a3 + 40) != v78)
      {
        v59 = *v35;
        v60 = *(v35 + 16);
        *(a3 + 32) = *(v35 + 32);
        *a3 = v59;
        *(a3 + 16) = v60;
        a2 = v35;
      }

      goto LABEL_20;
    }

    a4 = v71;
    if (v14 != (a3 + 40))
    {
      v57 = *v36;
      v58 = *(v36 + 16);
      *(a3 + 32) = *(v36 + 32);
      *a3 = v57;
      *(a3 + 16) = v58;
    }

    a3 -= 40;
    v36 -= 40;
  }

LABEL_39:
  v61 = (v14 - a4) / 40;
  if (a2 != a4 || a2 >= &a4[40 * v61])
  {
    memmove(a2, a4, 40 * v61);
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 < v9)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / 40, a4);
    v10 = &v4[40 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *(v6 + 2) == *(v4 + 2) && *(v6 + 3) == *(v4 + 3);
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 40;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 40;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 40;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    v15 = *(v13 + 1);
    *(v7 + 4) = *(v13 + 4);
    *v7 = v14;
    *(v7 + 1) = v15;
    goto LABEL_17;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, (a3 - a2) / 40, a4);
  v10 = &v4[40 * v9];
LABEL_19:
  for (v5 -= 40; v10 > v4 && v6 > v7; v5 -= 40)
  {
    v17 = *(v10 - 3) == *(v6 - 3) && *(v10 - 2) == *(v6 - 2);
    if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v20 = v6 - 40;
      v12 = v5 + 40 == v6;
      v6 -= 40;
      if (!v12)
      {
        v21 = *v20;
        v22 = *(v20 + 1);
        *(v5 + 32) = *(v20 + 4);
        *v5 = v21;
        *(v5 + 16) = v22;
        v6 = v20;
      }

      goto LABEL_19;
    }

    if (v10 != (v5 + 40))
    {
      v18 = *(v10 - 40);
      v19 = *(v10 - 24);
      *(v5 + 32) = *(v10 - 1);
      *v5 = v18;
      *(v5 + 16) = v19;
    }

    v10 -= 40;
  }

LABEL_36:
  v23 = (v10 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[40 * v23])
  {
    memmove(v6, v4, 40 * v23);
  }

  return 1;
}

void CallDisplayInfo.displayName.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ListFormatStyleV5WidthOyAA06StringD0VSaySSG_GMd);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ListFormatStyleV0B4TypeOyAA06StringD0VSaySSG_GMd);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v38 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ListFormatStyleVyAA06StringD0VSaySSGGMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  *&v15 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v17 = &v38 - v16;
  v18 = *v0;
  switch(*(v0 + 16))
  {
    case 1:
      if (([*v0 isBranded] & 1) == 0 || (outlined bridged method (pb) of @objc TUContinuityCall.callerIdSubstring.getter(v18), !v31))
      {
        v32 = [v18 displayName];
        goto LABEL_18;
      }

      break;
    case 2:
      v32 = [*v0 displayName];
LABEL_18:
      v33 = v32;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      break;
    case 3:
      v41 = v17;
      v42 = v9;
      v44 = v6;
      v45 = v7;
      v43 = v14;
      v19 = specialized Array.count.getter(v18);
      v20 = MEMORY[0x1E69E7CC0];
      if (v19)
      {
        v21 = v19;
        v38 = v12;
        v39 = v3;
        v40 = v1;
        v48 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        if (v21 < 0)
        {
          __break(1u);
          return;
        }

        v22 = 0;
        v20 = v48;
        do
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x1BFB22010](v22, v18);
          }

          else
          {
            v23 = *(v18 + 8 * v22 + 32);
          }

          v24 = v23;
          v25 = [v23 displayName];
          v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = v27;

          v48 = v20;
          v29 = *(v20 + 16);
          if (v29 >= *(v20 + 24) >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v20 = v48;
          }

          ++v22;
          *(v20 + 16) = v29 + 1;
          v30 = v20 + 16 * v29;
          *(v30 + 32) = v26;
          *(v30 + 40) = v28;
        }

        while (v21 != v22);
        v3 = v39;
        v1 = v40;
        v12 = v38;
      }

      v47 = v20;
      v34 = v42;
      v35 = v46;
      (*(v42 + 104))(v46, *MEMORY[0x1E6968638], v45);
      v36 = v44;
      (*(v3 + 104))(v44, *MEMORY[0x1E6968648], v1);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
      v37 = v41;
      static FormatStyle.list<A>(type:width:)();
      (*(v3 + 8))(v36, v1);
      (*(v34 + 8))(v35, v45);
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>, &_s10Foundation15ListFormatStyleVyAA06StringD0VSaySSGGMd);
      Sequence.formatted<A>(_:)();
      (*(v43 + 8))(v37, v12);

      break;
    case 4:
      return;
    default:

      break;
  }
}

uint64_t CallDisplayInfo.displayLabel.getter()
{
  if (*(v0 + 16) != 1)
  {
    return 0;
  }

  v1 = *v0;
  if (![*v0 isBranded] || (outlined bridged method (pb) of @objc TUContinuityCall.callerIdSubstring.getter(v1), !v2))
  {
    v3 = [v1 callerIdSubstring];
    if (v3)
    {
      goto LABEL_6;
    }

    return 0;
  }

  v3 = [v1 displayName];
LABEL_6:
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

id CallDisplayInfo.isBrandedCall.getter()
{
  if (*(v0 + 16) == 1)
  {
    return [*v0 isBranded];
  }

  else
  {
    return 0;
  }
}

uint64_t static CallDisplayInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1:
      if (v7 != 1)
      {
        goto LABEL_21;
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
      v42 = OUTLINED_FUNCTION_206();
      v44 = OUTLINED_FUNCTION_10_59(v42, v43, 1);
      outlined copy of CallDisplayInfo(v44, v45, 1);
      v10 = static NSObject.== infix(_:_:)();
      v46 = OUTLINED_FUNCTION_309();
      outlined consume of CallDisplayInfo(v46, v47, 1);
      v17 = OUTLINED_FUNCTION_206();
      v19 = 1;
      goto LABEL_20;
    case 2:
      if (v7 != 2)
      {
        goto LABEL_21;
      }

      v26 = OUTLINED_FUNCTION_206();
      v28 = OUTLINED_FUNCTION_10_59(v26, v27, 2);
      outlined copy of CallDisplayInfo(v28, v29, 2);
      v30 = [v3 isEqualToCall_];
      v31 = OUTLINED_FUNCTION_309();
      outlined consume of CallDisplayInfo(v31, v32, 2);
      v33 = OUTLINED_FUNCTION_206();
      outlined consume of CallDisplayInfo(v33, v34, 2);
      return v30;
    case 3:
      if (v7 != 3)
      {
        goto LABEL_21;
      }

      v35 = OUTLINED_FUNCTION_206();
      v37 = OUTLINED_FUNCTION_10_59(v35, v36, 3);
      outlined copy of CallDisplayInfo(v37, v38, 3);
      _sSasSQRzlE2eeoiySbSayxG_ABtFZSo16TUContinuityCallC_Tt1g5(v3, v6);
      v10 = v39;
      v40 = OUTLINED_FUNCTION_309();
      outlined consume of CallDisplayInfo(v40, v41, 3);
      v17 = OUTLINED_FUNCTION_206();
      v19 = 3;
      goto LABEL_20;
    case 4:
      if (v7 != 4 || (v5 | v6) != 0)
      {
        goto LABEL_21;
      }

      v21 = OUTLINED_FUNCTION_309();
      outlined consume of CallDisplayInfo(v21, v22, 4);
      v23 = 0;
      v24 = 0;
      v25 = 4;
      goto LABEL_23;
    default:
      if (*(a2 + 16))
      {
LABEL_21:
        v49 = OUTLINED_FUNCTION_206();
        v51 = OUTLINED_FUNCTION_10_59(v49, v50, v7);
        v53 = OUTLINED_FUNCTION_10_59(v51, v52, v4);
        outlined consume of CallDisplayInfo(v53, v54, v4);
        v55 = OUTLINED_FUNCTION_206();
        outlined consume of CallDisplayInfo(v55, v56, v7);
        return 0;
      }

      v8 = *a1;
      if (v3 == v6 && v2 == v5)
      {
        v57 = OUTLINED_FUNCTION_10_59(v8, v2, 0);
        v59 = OUTLINED_FUNCTION_10_59(v57, v58, 0);
        outlined consume of CallDisplayInfo(v59, v60, 0);
        v23 = OUTLINED_FUNCTION_309();
        v25 = 0;
LABEL_23:
        outlined consume of CallDisplayInfo(v23, v24, v25);
        return 1;
      }

      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v11 = OUTLINED_FUNCTION_206();
      v13 = OUTLINED_FUNCTION_10_59(v11, v12, 0);
      v15 = OUTLINED_FUNCTION_10_59(v13, v14, 0);
      outlined consume of CallDisplayInfo(v15, v16, 0);
      v17 = OUTLINED_FUNCTION_206();
      v19 = 0;
LABEL_20:
      outlined consume of CallDisplayInfo(v17, v18, v19);
      return v10 & 1;
  }
}

void ConversationPresentationStateProvider.audioVideoModePublisher.getter()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_1_115(&lazy protocol witness table cache variable for type CurrentValueSubject<TUConversationAVMode, Never> and conformance CurrentValueSubject<A, B>);
  lazy protocol witness table accessor for type TUConversationAVMode and conformance TUConversationAVMode();
  OUTLINED_FUNCTION_8_2();
  Publisher<>.removeDuplicates()();
  OUTLINED_FUNCTION_1_15(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<TUConversationAVMode, Never>> and conformance Publishers.RemoveDuplicates<A>);
  OUTLINED_FUNCTION_7_15();
  v1 = OUTLINED_FUNCTION_5_54();
  v2(v1);
  OUTLINED_FUNCTION_11_69();
  OUTLINED_FUNCTION_49();
}

void ConversationPresentationStateProvider.callDisplayStatusPublisher.getter()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_1_115(&lazy protocol witness table cache variable for type CurrentValueSubject<CallDisplayStatus, Never> and conformance CurrentValueSubject<A, B>);
  lazy protocol witness table accessor for type CallDisplayStatus and conformance CallDisplayStatus();
  OUTLINED_FUNCTION_8_2();
  Publisher<>.removeDuplicates()();
  OUTLINED_FUNCTION_1_15(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<CallDisplayStatus, Never>> and conformance Publishers.RemoveDuplicates<A>);
  OUTLINED_FUNCTION_7_15();
  v1 = OUTLINED_FUNCTION_5_54();
  v2(v1);
  OUTLINED_FUNCTION_11_69();
  OUTLINED_FUNCTION_49();
}

void ConversationPresentationStateProvider.isSendingVideoPublisher.getter()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_1_115(&lazy protocol witness table cache variable for type CurrentValueSubject<Bool, Never> and conformance CurrentValueSubject<A, B>);
  OUTLINED_FUNCTION_8_2();
  Publisher<>.removeDuplicates()();
  OUTLINED_FUNCTION_1_15(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<Bool, Never>> and conformance Publishers.RemoveDuplicates<A>);
  OUTLINED_FUNCTION_7_15();
  v1 = OUTLINED_FUNCTION_5_54();
  v2(v1);
  OUTLINED_FUNCTION_11_69();
  OUTLINED_FUNCTION_49();
}

void ConversationPresentationStateProvider.isMutedPublisher.getter()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_1_115(&lazy protocol witness table cache variable for type CurrentValueSubject<Bool, Never> and conformance CurrentValueSubject<A, B>);
  OUTLINED_FUNCTION_8_2();
  Publisher<>.removeDuplicates()();
  OUTLINED_FUNCTION_1_15(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<Bool, Never>> and conformance Publishers.RemoveDuplicates<A>);
  OUTLINED_FUNCTION_7_15();
  v1 = OUTLINED_FUNCTION_5_54();
  v2(v1);
  OUTLINED_FUNCTION_11_69();
  OUTLINED_FUNCTION_49();
}

void ConversationPresentationStateProvider.callDisplayInfoPublisher.getter()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_1_115(&lazy protocol witness table cache variable for type CurrentValueSubject<CallDisplayInfo, Never> and conformance CurrentValueSubject<A, B>);
  lazy protocol witness table accessor for type CallDisplayInfo and conformance CallDisplayInfo();
  OUTLINED_FUNCTION_8_2();
  Publisher<>.removeDuplicates()();
  OUTLINED_FUNCTION_1_15(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<CallDisplayInfo, Never>> and conformance Publishers.RemoveDuplicates<A>);
  OUTLINED_FUNCTION_7_15();
  v1 = OUTLINED_FUNCTION_5_54();
  v2(v1);
  OUTLINED_FUNCTION_11_69();
  OUTLINED_FUNCTION_49();
}

void ConversationPresentationStateProvider.callDurationStringPublisher.getter()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_1_115(&lazy protocol witness table cache variable for type CurrentValueSubject<String?, Never> and conformance CurrentValueSubject<A, B>);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  OUTLINED_FUNCTION_8_2();
  Publisher<>.removeDuplicates()();
  OUTLINED_FUNCTION_1_15(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<String?, Never>> and conformance Publishers.RemoveDuplicates<A>);
  OUTLINED_FUNCTION_7_15();
  v1 = OUTLINED_FUNCTION_5_54();
  v2(v1);
  OUTLINED_FUNCTION_11_69();
  OUTLINED_FUNCTION_49();
}

void ConversationPresentationStateProvider.imagePublisher.getter()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_1_115(&lazy protocol witness table cache variable for type CurrentValueSubject<UIImage?, Never> and conformance CurrentValueSubject<A, B>);
  lazy protocol witness table accessor for type UIImage? and conformance <A> A?();
  OUTLINED_FUNCTION_8_2();
  Publisher<>.removeDuplicates()();
  OUTLINED_FUNCTION_1_15(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<UIImage?, Never>> and conformance Publishers.RemoveDuplicates<A>);
  OUTLINED_FUNCTION_7_15();
  v1 = OUTLINED_FUNCTION_5_54();
  v2(v1);
  OUTLINED_FUNCTION_11_69();
  OUTLINED_FUNCTION_49();
}

void ConversationPresentationStateProvider.isOneToOneModeEnabledPublisher.getter()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_1_115(&lazy protocol witness table cache variable for type CurrentValueSubject<Bool, Never> and conformance CurrentValueSubject<A, B>);
  OUTLINED_FUNCTION_8_2();
  Publisher<>.removeDuplicates()();
  OUTLINED_FUNCTION_1_15(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<Bool, Never>> and conformance Publishers.RemoveDuplicates<A>);
  OUTLINED_FUNCTION_7_15();
  v1 = OUTLINED_FUNCTION_5_54();
  v2(v1);
  OUTLINED_FUNCTION_11_69();
  OUTLINED_FUNCTION_49();
}

void ConversationPresentationStateProvider.heldCallDisplayNamePublisher.getter()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_1_115(&lazy protocol witness table cache variable for type CurrentValueSubject<String?, Never> and conformance CurrentValueSubject<A, B>);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  OUTLINED_FUNCTION_8_2();
  Publisher<>.removeDuplicates()();
  OUTLINED_FUNCTION_1_15(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<String?, Never>> and conformance Publishers.RemoveDuplicates<A>);
  OUTLINED_FUNCTION_7_15();
  v1 = OUTLINED_FUNCTION_5_54();
  v2(v1);
  OUTLINED_FUNCTION_11_69();
  OUTLINED_FUNCTION_49();
}

void ConversationPresentationStateProvider.contactsByHandlePublisher.getter()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_1_115(&lazy protocol witness table cache variable for type CurrentValueSubject<[TUHandle : CNContact?], Never> and conformance CurrentValueSubject<A, B>);
  lazy protocol witness table accessor for type [TUHandle : CNContact?] and conformance <> [A : B]();
  OUTLINED_FUNCTION_8_2();
  Publisher<>.removeDuplicates()();
  OUTLINED_FUNCTION_1_15(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<[TUHandle : CNContact?], Never>> and conformance Publishers.RemoveDuplicates<A>);
  OUTLINED_FUNCTION_7_15();
  v1 = OUTLINED_FUNCTION_5_54();
  v2(v1);
  OUTLINED_FUNCTION_11_69();
  OUTLINED_FUNCTION_49();
}

void ConversationPresentationStateProvider.ignoreLetMeInRequestsPublisher.getter()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_1_115(&lazy protocol witness table cache variable for type CurrentValueSubject<Bool, Never> and conformance CurrentValueSubject<A, B>);
  OUTLINED_FUNCTION_8_2();
  Publisher<>.removeDuplicates()();
  OUTLINED_FUNCTION_1_15(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<Bool, Never>> and conformance Publishers.RemoveDuplicates<A>);
  OUTLINED_FUNCTION_7_15();
  v1 = OUTLINED_FUNCTION_5_54();
  v2(v1);
  OUTLINED_FUNCTION_11_69();
  OUTLINED_FUNCTION_49();
}

void ConversationPresentationStateProvider.isRTTCallPublisher.getter()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_1_115(&lazy protocol witness table cache variable for type CurrentValueSubject<Bool, Never> and conformance CurrentValueSubject<A, B>);
  OUTLINED_FUNCTION_8_2();
  Publisher<>.removeDuplicates()();
  OUTLINED_FUNCTION_1_15(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<Bool, Never>> and conformance Publishers.RemoveDuplicates<A>);
  OUTLINED_FUNCTION_7_15();
  v1 = OUTLINED_FUNCTION_5_54();
  v2(v1);
  OUTLINED_FUNCTION_11_69();
  OUTLINED_FUNCTION_49();
}

void ConversationPresentationStateProvider.shouldShowRTTUpgradePublisher.getter()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_1_115(&lazy protocol witness table cache variable for type CurrentValueSubject<Bool, Never> and conformance CurrentValueSubject<A, B>);
  OUTLINED_FUNCTION_8_2();
  Publisher<>.removeDuplicates()();
  OUTLINED_FUNCTION_1_15(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<Bool, Never>> and conformance Publishers.RemoveDuplicates<A>);
  OUTLINED_FUNCTION_7_15();
  v1 = OUTLINED_FUNCTION_5_54();
  v2(v1);
  OUTLINED_FUNCTION_11_69();
  OUTLINED_FUNCTION_49();
}

void ConversationPresentationStateProvider.unknownHandlesBlockedPublisher.getter()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_1_115(&lazy protocol witness table cache variable for type CurrentValueSubject<Bool, Never> and conformance CurrentValueSubject<A, B>);
  OUTLINED_FUNCTION_8_2();
  Publisher<>.removeDuplicates()();
  OUTLINED_FUNCTION_1_15(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<Bool, Never>> and conformance Publishers.RemoveDuplicates<A>);
  OUTLINED_FUNCTION_7_15();
  v1 = OUTLINED_FUNCTION_5_54();
  v2(v1);
  OUTLINED_FUNCTION_11_69();
  OUTLINED_FUNCTION_49();
}

uint64_t key path getter for ConversationPresentationStateProvider.stateManager : ConversationPresentationStateProvider@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 144);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for ConversationPresentationStateProvider.stateManager : ConversationPresentationStateProvider(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 144) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t ConversationPresentationStateProvider.stateManager.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 144) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ConversationPresentationStateProvider.stateManager.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 144);
  v3[3] = Strong;
  v3[4] = v5;
  return ConversationPresentationStateProvider.stateManager.modify;
}

void ConversationPresentationStateProvider.stateManager.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 144) = *(*a1 + 32);
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

uint64_t ConversationPresentationStateProvider.__allocating_init(avMode:callDisplayStatus:isSendingVideo:isMuted:callDisplayInfo:callDurationString:image:isOneToOneModeEnabled:isEmergency:heldCallDisplayName:contactsByHandle:ignoreLetMeInRequests:isRTTCall:shouldShowRTTUpgrade:unknownHandlesBlocked:)(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, char a9, char a10)
{
  v12 = swift_allocObject();
  ConversationPresentationStateProvider.init(avMode:callDisplayStatus:isSendingVideo:isMuted:callDisplayInfo:callDurationString:image:isOneToOneModeEnabled:isEmergency:heldCallDisplayName:contactsByHandle:ignoreLetMeInRequests:isRTTCall:shouldShowRTTUpgrade:unknownHandlesBlocked:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return v12;
}

uint64_t ConversationPresentationStateProvider.init(avMode:callDisplayStatus:isSendingVideo:isMuted:callDisplayInfo:callDurationString:image:isOneToOneModeEnabled:isEmergency:heldCallDisplayName:contactsByHandle:ignoreLetMeInRequests:isRTTCall:shouldShowRTTUpgrade:unknownHandlesBlocked:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, char a9, char a10)
{
  v11 = v10;
  *(v10 + 144) = 0;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySo20TUConversationAVModeVs5NeverOGMd);
  OUTLINED_FUNCTION_84();
  *(v10 + 16) = OUTLINED_FUNCTION_17_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit17CallDisplayStatusVs5NeverOGMd);
  OUTLINED_FUNCTION_84();
  *(v10 + 24) = OUTLINED_FUNCTION_17_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbs5NeverOGMd);
  OUTLINED_FUNCTION_84();
  *(v10 + 32) = OUTLINED_FUNCTION_17_47();
  swift_allocObject();
  *(v10 + 40) = OUTLINED_FUNCTION_17_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySo7UIImageCSgs5NeverOGMd);
  OUTLINED_FUNCTION_84();
  v13 = a8;
  *(v10 + 64) = CurrentValueSubject.init(_:)();
  swift_allocObject();
  *(v10 + 72) = OUTLINED_FUNCTION_17_47();
  *(v10 + 88) = a10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySSSgs5NeverOGMd);
  OUTLINED_FUNCTION_84();
  *(v10 + 56) = OUTLINED_FUNCTION_17_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit15CallDisplayInfoOs5NeverOGMd);
  OUTLINED_FUNCTION_84();
  *(v10 + 48) = OUTLINED_FUNCTION_17_47();
  swift_allocObject();
  *(v10 + 80) = OUTLINED_FUNCTION_17_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySDySo8TUHandleCSo9CNContactCSgGs5NeverOGMd);
  OUTLINED_FUNCTION_84();
  *(v10 + 96) = OUTLINED_FUNCTION_17_47();
  OUTLINED_FUNCTION_14_46();
  *(v10 + 104) = OUTLINED_FUNCTION_17_47();
  OUTLINED_FUNCTION_14_46();
  *(v10 + 112) = OUTLINED_FUNCTION_17_47();
  OUTLINED_FUNCTION_14_46();
  *(v10 + 120) = OUTLINED_FUNCTION_17_47();
  OUTLINED_FUNCTION_14_46();
  v14 = OUTLINED_FUNCTION_17_47();

  *(v11 + 128) = v14;
  return v11;
}

Swift::Void __swiftcall ConversationPresentationStateProvider.toggleSendingVideo()()
{
  OUTLINED_FUNCTION_7_73();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_23_36();
    OUTLINED_FUNCTION_11_39();
    v0();
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall ConversationPresentationStateProvider.toggleMuted()()
{
  OUTLINED_FUNCTION_7_73();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_23_36();
    OUTLINED_FUNCTION_11_39();
    v0();
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall ConversationPresentationStateProvider.endCall()()
{
  OUTLINED_FUNCTION_7_73();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_23_36();
    OUTLINED_FUNCTION_11_39();
    v0();
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall ConversationPresentationStateProvider.updatePresentationSize(_:)(CGSize a1)
{
  OUTLINED_FUNCTION_7_73();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_23_36();
    OUTLINED_FUNCTION_11_39();
    v1();
    swift_unknownObjectRelease();
  }
}

uint64_t ConversationPresentationStateProvider.updateRemoteVideoPresentationState(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_7_73();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 144);
    ObjectType = swift_getObjectType();
    (*(v4 + 40))(a1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall ConversationPresentationStateProvider.upgradeToRTT()()
{
  OUTLINED_FUNCTION_7_73();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_23_36();
    OUTLINED_FUNCTION_11_39();
    v0();
    swift_unknownObjectRelease();
  }
}

uint64_t ConversationPresentationStateProvider.deinit()
{

  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 136);
  return v0;
}

uint64_t ConversationPresentationStateProvider.__deallocating_deinit()
{
  ConversationPresentationStateProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t outlined bridged method (pb) of @objc TUContinuityCall.callerIdSubstring.getter(void *a1)
{
  v1 = [a1 callerIdSubstring];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id outlined copy of CallDisplayInfo(id result, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 3:

      break;
    case 1:
    case 2:
      result = result;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TUConversationAVMode and conformance TUConversationAVMode()
{
  result = lazy protocol witness table cache variable for type TUConversationAVMode and conformance TUConversationAVMode;
  if (!lazy protocol witness table cache variable for type TUConversationAVMode and conformance TUConversationAVMode)
  {
    type metadata accessor for TUConversationAVMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TUConversationAVMode and conformance TUConversationAVMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CallDisplayStatus and conformance CallDisplayStatus()
{
  result = lazy protocol witness table cache variable for type CallDisplayStatus and conformance CallDisplayStatus;
  if (!lazy protocol witness table cache variable for type CallDisplayStatus and conformance CallDisplayStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallDisplayStatus and conformance CallDisplayStatus);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CallDisplayInfo and conformance CallDisplayInfo()
{
  result = lazy protocol witness table cache variable for type CallDisplayInfo and conformance CallDisplayInfo;
  if (!lazy protocol witness table cache variable for type CallDisplayInfo and conformance CallDisplayInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallDisplayInfo and conformance CallDisplayInfo);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type String? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type String? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UIImage? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type UIImage? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type UIImage? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo7UIImageCSgMd);
    lazy protocol witness table accessor for type CNContact and conformance NSObject(&lazy protocol witness table cache variable for type UIImage and conformance NSObject, &lazy cache variable for type metadata for UIImage);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIImage? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CNContact and conformance NSObject(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NSObject(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CNContact? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type CNContact? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type CNContact? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo9CNContactCSgMd);
    lazy protocol witness table accessor for type CNContact and conformance NSObject(&lazy protocol witness table cache variable for type CNContact and conformance NSObject, &lazy cache variable for type metadata for CNContact);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CNContact? and conformance <A> A?);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15ConversationKit15CallDisplayInfoO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t getEnumTagSinglePayload for CallDisplayInfo(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
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

uint64_t storeEnumTagSinglePayload for CallDisplayInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t destructiveInjectEnumTag for CallDisplayInfo(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = a8;
  v47 = a1;
  v48 = a2;
  OUTLINED_FUNCTION_2_7();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_40();
  v49 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v51 = v14;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_40();
  v45 = v19;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v39 = v21;
  v40 = v20;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_48_0();
  v23 = dispatch thunk of Collection.count.getter();
  if (!v23)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v50 = v23;
  v54 = ContiguousArray.init()();
  OUTLINED_FUNCTION_49_16();
  v41 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v50);
  OUTLINED_FUNCTION_48_0();
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v50 & 0x8000000000000000) == 0)
  {
    v36 = v11;
    v37 = a5;
    v25 = 0;
    v42 = (v51 + 16);
    v43 = v51 + 8;
    v44 = v8;
    while (!__OFADD__(v25, 1))
    {
      v51 = v25 + 1;
      v26 = dispatch thunk of Collection.subscript.read();
      (*v42)(v17);
      v26(v53, 0);
      v27 = v52;
      v47(v17, v49);
      if (v27)
      {
        v32 = OUTLINED_FUNCTION_43_14();
        v33(v32);
        v34 = OUTLINED_FUNCTION_20_38();
        v35(v34);

        return (*(v36 + 32))(v38, v49, v37);
      }

      v52 = 0;
      v28 = OUTLINED_FUNCTION_43_14();
      v29(v28);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v25;
      if (v51 == v50)
      {
        v30 = OUTLINED_FUNCTION_20_38();
        v31(v30);
        return v54;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL Float.isAboveThreshold.getter(float a1)
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  return (*(v2 + 344))() < (a1 + 0.01);
}

Swift::Int MostActiveParticipantsController.ProminenceChangeReason.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MostActiveParticipantsController<A>.ProminenceChangeReason()
{
  Hasher.init(_seed:)();
  MostActiveParticipantsController.ProminenceChangeReason.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

BOOL static MostActiveParticipantsController.ActivityDetails.== infix(_:_:)()
{
  OUTLINED_FUNCTION_55();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  active = type metadata accessor for MostActiveParticipantsController.ActivityDetails();
  OUTLINED_FUNCTION_13_53(*(active + 36));
  if (!v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_53(*(v3 + 40));
  if (!v4)
  {
    return 0;
  }

  if (*(v1 + *(v5 + 44)) != *(v0 + *(v5 + 44)))
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_53(*(v5 + 48));
  if (!v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_53(*(v6 + 52));
  if (!v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_53(*(v7 + 56));
  return v4 != 0;
}

int *MostActiveParticipantsController.ActivityDetails.init(participantIdentifier:currentEMA:currentTimeScale:isActive:prominenceWeight:audioPriority:videoPriority:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, float a5@<S0>, float a6@<S1>, float a7@<S2>, float a8@<S3>, float a9@<S4>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for MostActiveParticipantsController.ActivityDetails();
  *(a4 + result[9]) = a5;
  *(a4 + result[10]) = a6;
  *(a4 + result[11]) = a2;
  *(a4 + result[12]) = a7;
  *(a4 + result[13]) = a8;
  *(a4 + result[14]) = a9;
  return result;
}

uint64_t key path getter for MostActiveParticipantsController.mostActiveParticipantDidChange : <A>MostActiveParticipantsController<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(unsigned __int8 *a1)@<X8>)
{
  v11 = *(a2 + a3 - 16);
  v5 = *a1;
  swift_beginAccess();
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v6)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v11;
    *(v8 + 32) = v6;
    *(v8 + 40) = v7;
    v9 = partial apply for thunk for @escaping @callee_guaranteed (@unowned MostActiveParticipantsController<A>.ProminenceChangeReason) -> ();
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v6);
}

uint64_t key path setter for MostActiveParticipantsController.mostActiveParticipantDidChange : <A>MostActiveParticipantsController<A>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = a3 + a4;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed MostActiveParticipantsController<A>.ProminenceChangeReason) -> (@out ());
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = *a2;
  swift_beginAccess();
  v11 = *(v10 + 16);
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v5);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v11);
}

uint64_t MostActiveParticipantsController.mostActiveParticipantDidChange.getter()
{
  OUTLINED_FUNCTION_4_0();
  v0 = OUTLINED_FUNCTION_46();
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v0);
  return OUTLINED_FUNCTION_46();
}

uint64_t MostActiveParticipantsController.mostActiveParticipantDidChange.setter()
{
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_6_0();
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v3);
}

uint64_t key path getter for MostActiveParticipantsController.participantEMADidChange : <A>MostActiveParticipantsController<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(uint64_t a1, float *a2, float *a3, float *a4)@<X8>)
{
  v11 = *(a2 + a3 - 16);
  v5 = *a1;
  swift_beginAccess();
  v6 = *(v5 + 32);
  v7 = *(v5 + 40);
  if (v6)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v11;
    *(v8 + 32) = v6;
    *(v8 + 40) = v7;
    v9 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A, @unowned Float, @unowned Float, @unowned Float) -> ();
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v6);
}

uint64_t key path setter for MostActiveParticipantsController.participantEMADidChange : <A>MostActiveParticipantsController<A>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = a3 + a4;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed Float, @in_guaranteed Float, @in_guaranteed Float) -> (@out ());
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = *a2;
  swift_beginAccess();
  v11 = *(v10 + 32);
  *(v10 + 32) = v9;
  *(v10 + 40) = v8;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v5);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v11);
}

uint64_t MostActiveParticipantsController.participantEMADidChange.getter()
{
  OUTLINED_FUNCTION_4_0();
  v0 = OUTLINED_FUNCTION_46();
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v0);
  return OUTLINED_FUNCTION_46();
}

uint64_t MostActiveParticipantsController.participantEMADidChange.setter()
{
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_6_0();
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v3);
}

uint64_t MostActiveParticipantsController.currentVideoProminentIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_33_24();
  v4 = *(v3 + 112);
  OUTLINED_FUNCTION_4_0();
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_7_0();
  return (*(v5 + 16))(a1, v1 + v4);
}

uint64_t MostActiveParticipantsController.currentVideoProminentIdentifier.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_33_24();
  v4 = *(v3 + 112);
  OUTLINED_FUNCTION_30_2();
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t (*MostActiveParticipantsController.currentVideoProminentIdentifier.modify())()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_39();
  return CaptionsViewController.captionVisibilityDuringCapture.modify;
}

uint64_t MostActiveParticipantsController.configuration.getter()
{
  OUTLINED_FUNCTION_0_1();
  v2 = *(v1 + 120);
  OUTLINED_FUNCTION_4_0();
  return *(v0 + v2);
}

uint64_t MostActiveParticipantsController.configuration.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_0_1();
  v4 = *(v3 + 120);
  result = OUTLINED_FUNCTION_6_0();
  *(v1 + v4) = a1;
  return result;
}

uint64_t (*MostActiveParticipantsController.configuration.modify())()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_39();
  return CaptionsViewController.captionVisibilityDuringCapture.modify;
}

BOOL MostActiveParticipantsController.mostActiveParticipantProminenceChangeReason.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  v7 = *(v1 + 112);
  swift_beginAccess();
  (*(v4 + 16))(v6, v0 + v7, v3);
  v8 = __swift_getEnumTagSinglePayload(v6, 1, v2) != 1;
  (*(v4 + 8))(v6, v3);
  return v8;
}

uint64_t MostActiveParticipantsController.mostActiveParticipantIdentifiers.getter()
{
  v13 = static Array._allocateUninitialized(_:)();
  OUTLINED_FUNCTION_0_1();
  v2 = *(v0 + *(v1 + 152));
  OUTLINED_FUNCTION_24();
  v3 = swift_allocObject();
  *(v3 + 16) = &v13;
  *(v3 + 24) = v0;
  OUTLINED_FUNCTION_24();
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #1 in MostActiveParticipantsController.mostActiveParticipantIdentifiers.getter;
  *(v4 + 24) = v3;
  aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_53;
  v5 = _Block_copy(aBlock);
  v6 = v2;
  OUTLINED_FUNCTION_42_20();

  v7 = OUTLINED_FUNCTION_48_0();
  dispatch_sync(v7, v8);

  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;

    return v11;
  }

  return result;
}

uint64_t closure #1 in MostActiveParticipantsController.mostActiveParticipantIdentifiers.getter(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 128);
  swift_beginAccess();
  v14 = *(a2 + v5);
  v12 = *(v4 + 80);
  v13 = *(v4 + 88);
  type metadata accessor for MostActiveParticipantsController.ActivityDetails();
  v6 = type metadata accessor for Array();

  WitnessTable = swift_getWitnessTable();
  v9 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in MostActiveParticipantsController.shouldPostMostActiveParticipantsDidChange(oldParticipantsDetails:newParticipantsDetails:), &v11, v6, v12, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v8);

  *a1 = v9;
}

uint64_t MostActiveParticipantsController.__allocating_init(participantIdentifiers:configuration:)()
{
  OUTLINED_FUNCTION_55();
  v0 = swift_allocObject();
  MostActiveParticipantsController.init(participantIdentifiers:configuration:)();
  return v0;
}

void MostActiveParticipantsController.init(participantIdentifiers:configuration:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v32 = v3;
  v33 = v2;
  v4 = *v0;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v37 = v5;
  v38 = v6;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40();
  v36 = v7;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  OUTLINED_FUNCTION_1();
  v30 = v9;
  v31 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_40();
  v29 = v10;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for OS_dispatch_queue.Attributes();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v34 = v13;
  v35 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v16 = v15 - v14;
  *(v0 + 1) = 0u;
  *(v0 + 2) = 0u;
  __swift_storeEnumTagSinglePayload(v0 + *(v4 + 112), 1, 1, *(v4 + 80));
  OUTLINED_FUNCTION_13_38();
  v18 = *(v17 + 128);
  type metadata accessor for MostActiveParticipantsController.ActivityDetails();
  *(v0 + v18) = static Array._allocateUninitialized(_:)();
  OUTLINED_FUNCTION_13_38();
  *(v0 + *(v19 + 136)) = 0;
  OUTLINED_FUNCTION_13_38();
  static Date.distantPast.getter();
  OUTLINED_FUNCTION_13_38();
  v28 = *(v20 + 152);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.unspecified.getter();
  v39[0] = MEMORY[0x1E69E7CC0];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v30 + 104))(v29, *MEMORY[0x1E69E8090], v31);
  v21 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + v28) = v21;
  OUTLINED_FUNCTION_13_38();
  *(v1 + *(v22 + 120)) = v32;
  OUTLINED_FUNCTION_24();
  v23 = swift_allocObject();
  *(v23 + 16) = v1;
  *(v23 + 24) = v33;
  v39[4] = partial apply for closure #1 in MostActiveParticipantsController.init(participantIdentifiers:configuration:);
  v39[5] = v23;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 1107296256;
  v39[2] = thunk for @escaping @callee_guaranteed () -> ();
  v39[3] = &block_descriptor_13_0;
  v24 = _Block_copy(v39);
  v25 = v21;

  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_0_133();
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(v26, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v16, v36, v24);
  _Block_release(v24);

  (*(v38 + 8))(v36, v37);
  (*(v34 + 8))(v16, v35);

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in MostActiveParticipantsController.init(participantIdentifiers:configuration:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v11[4] = a2;
  v11[2] = *(v3 + 80);
  v11[3] = *(v3 + 88);
  v4 = type metadata accessor for Array();
  active = type metadata accessor for MostActiveParticipantsController.ActivityDetails();
  WitnessTable = swift_getWitnessTable();
  v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in closure #1 in MostActiveParticipantsController.init(participantIdentifiers:configuration:), v11, v4, active, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);
  v9 = *(*a1 + 128);
  swift_beginAccess();
  *(a1 + v9) = v8;
}

int *closure #1 in closure #1 in MostActiveParticipantsController.init(participantIdentifiers:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = (*(*static Defaults.shared + 432))();
  return MostActiveParticipantsController.ActivityDetails.init(participantIdentifier:currentEMA:currentTimeScale:isActive:prominenceWeight:audioPriority:videoPriority:)(v7, 0, a2, a3, 0.0, v9, 1.0, 0.0, 0.0);
}

void MostActiveParticipantsController.update(_:mediaPriorities:)()
{
  OUTLINED_FUNCTION_29();
  v5 = v4;
  v34 = OUTLINED_FUNCTION_39_15();
  OUTLINED_FUNCTION_1();
  v37 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v36 = OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_1();
  v35 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_47();
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_2_7();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  v19 = v5[1];
  v40 = *v5;
  v41 = v19;
  v42 = v5[2];
  v33 = *(v0 + v2[19]);
  (*(v13 + 16))(&v32 - v17, v3, v11);
  v20 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = v11;
  *(v21 + 3) = v2[11];
  *(v21 + 4) = v0;
  (*(v13 + 32))(&v21[v20], v18, v11);
  v22 = &v21[(v15 + v20 + 7) & 0xFFFFFFFFFFFFFFF8];
  v23 = v41;
  *v22 = v40;
  *(v22 + 1) = v23;
  *(v22 + 2) = v42;
  v39[4] = partial apply for closure #1 in MostActiveParticipantsController.update(_:mediaPriorities:);
  v39[5] = v21;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 1107296256;
  OUTLINED_FUNCTION_6_5();
  v39[2] = v24;
  v39[3] = &block_descriptor_19_1;
  v25 = _Block_copy(v39);
  v26 = v33;
  OUTLINED_FUNCTION_42_20();
  outlined init with copy of ParticipantMediaPriorities(&v40, &v38);
  static DispatchQoS.unspecified.getter();
  v38 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_0_133();
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(v27, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  v29 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OUTLINED_FUNCTION_11_70();
  _Block_release(v25);

  (*(v37 + 8))(v1, v29);
  v30 = OUTLINED_FUNCTION_20_38();
  v31(v30, v36);

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in MostActiveParticipantsController.update(_:mediaPriorities:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(*a1 + 80);
  v86 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v83 = v77 - v8;
  v80 = type metadata accessor for Optional();
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v10 = v77 - v9;
  v11 = *(v6 + 88);
  active = type metadata accessor for MostActiveParticipantsController.ActivityDetails();
  v89 = *(active - 1);
  MEMORY[0x1EEE9AC00](active);
  v81 = v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v78 = v77 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v77 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v85 = v77 - v20;
  v21 = *(v6 + 128);
  swift_beginAccess();
  v88 = v21;
  v95 = *(a1 + v21);
  v90 = v7;
  v91 = v11;
  v82 = v11;
  v87 = a2;
  v92 = a2;
  v22 = type metadata accessor for Array();

  swift_getWitnessTable();
  v84 = v22;
  Collection.firstIndex(where:)();

  v23 = v93;
  v24 = v94;
  v26 = *(a3 + 40);
  v25 = *(a3 + 44);
  v27 = v25 + 0.01;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v28 = static Defaults.shared;
  v29 = (*static Defaults.shared + 344);
  v30 = *v29;
  v31 = v29;
  if ((*v29)() < v27)
  {
    (*(v86 + 16))(v10, v87, v7);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v7);
    v33 = *a1;
    v77[1] = v31;
    v34 = v30;
    v35 = v10;
    v36 = v7;
    v37 = v18;
    v38 = v24;
    v39 = active;
    v40 = v23;
    v41 = *(v33 + 112);
    swift_beginAccess();
    v42 = a1 + v41;
    v23 = v40;
    active = v39;
    v24 = v38;
    v18 = v37;
    v7 = v36;
    v43 = v35;
    v30 = v34;
    (*(v79 + 40))(v42, v43, v80);
    v32 = swift_endAccess();
  }

  v44 = v26 + 0.01;
  if ((v30)(v32) >= (v26 + 0.01) && v30() >= v27)
  {
    v45 = v85;
    if (v24)
    {
      v57 = v83;
      v58 = (*(v86 + 16))(v83, v87, v7);
      v48 = (*(*v28 + 432))(v58);
      v49 = 0.0;
      v50 = 1.0;
      v51 = v45;
      v52 = v57;
      v53 = 0;
      goto LABEL_13;
    }

    swift_beginAccess();
    v67 = v78;
    Array.subscript.getter();
    v68 = swift_endAccess();
    v69 = v67[active[11]];
    if ((v69 ^ ((v30)(v68) >= v44)))
    {
      v70 = *&v67[active[10]];
    }

    else
    {
      v70 = (*(*v28 + 432))();
    }

    v71 = v83;
    (*(v86 + 16))(v83, v87, v7);
    v72 = *&v67[active[9]];
    v61 = *&v67[active[12]];
    (*(v89 + 8))(v67, active);
    v62 = v45;
    v63 = v71;
    v64 = v72;
    v65 = v70;
    v66 = 0;
LABEL_20:
    MostActiveParticipantsController.ActivityDetails.init(participantIdentifier:currentEMA:currentTimeScale:isActive:prominenceWeight:audioPriority:videoPriority:)(v63, v66, v7, v62, v64, v65, v61, v26, v25);
    v73 = v88;
    swift_beginAccess();
    v74 = v84;
    Array._makeMutableAndUnique()();
    v75 = *(a1 + v73);
    Array._checkSubscript_mutating(_:)(v23);
    (*(v89 + 24))(v75 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v23, v45, active);
    TPNumberPadCharacter.rawValue.getter(v74);
    goto LABEL_21;
  }

  v45 = v85;
  if (!v24)
  {
    swift_beginAccess();
    Array.subscript.getter();
    v54 = swift_endAccess();
    v55 = v18[active[11]];
    if ((v55 ^ ((v30)(v54) >= v44)))
    {
      v56 = *&v18[active[10]];
    }

    else
    {
      v56 = (*(*v28 + 432))();
    }

    v59 = v83;
    (*(v86 + 16))(v83, v87, v7);
    v60 = *&v18[active[9]];
    v61 = *&v18[active[12]];
    (*(v89 + 8))(v18, active);
    v62 = v45;
    v63 = v59;
    v64 = v60;
    v65 = v56;
    v66 = 1;
    goto LABEL_20;
  }

  v46 = v83;
  v47 = (*(v86 + 16))(v83, v87, v7);
  v48 = (*(*v28 + 432))(v47);
  v49 = 1.0;
  v50 = 1.0;
  v51 = v45;
  v52 = v46;
  v53 = 1;
LABEL_13:
  MostActiveParticipantsController.ActivityDetails.init(participantIdentifier:currentEMA:currentTimeScale:isActive:prominenceWeight:audioPriority:videoPriority:)(v52, v53, v7, v51, v49, v48, v50, v26, v25);
  (*(v89 + 16))(v81, v45, active);
  swift_beginAccess();
  Array.append(_:)();
LABEL_21:
  swift_endAccess();
  MostActiveParticipantsController.startEMATimerIfNecessary()();
  return (*(v89 + 8))(v45, active);
}

void MostActiveParticipantsController.startEMATimerIfNecessary()()
{
  OUTLINED_FUNCTION_48_2();
  v1 = v0;
  OUTLINED_FUNCTION_19_34();
  v68 = v2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v73 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40();
  v71 = v6;
  OUTLINED_FUNCTION_4_24();
  v72 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v70 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_40();
  v69 = v9;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for DispatchTimeInterval();
  OUTLINED_FUNCTION_1();
  v66 = v11;
  v67 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_40();
  v65 = v12;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for DispatchTime();
  OUTLINED_FUNCTION_1();
  v63 = v14;
  v64 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v62 = v58 - v19;
  OUTLINED_FUNCTION_4_24();
  ObjectType = type metadata accessor for OS_dispatch_source.TimerFlags();
  OUTLINED_FUNCTION_1();
  v61 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_8();
  v25 = v24 - v23;
  v26 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_8();
  v32 = (v31 - v30);
  OUTLINED_FUNCTION_19_34();
  v34 = *(v33 + 152);
  v35 = *(v0 + v34);
  *v32 = v35;
  (*(v28 + 104))(v32, *MEMORY[0x1E69E8020], v26);
  v36 = v35;
  LOBYTE(v35) = _dispatchPreconditionTest(_:)();
  (*(v28 + 8))(v32, v26);
  if ((v35 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_38();
  if (!*(v1 + *(v37 + 136)))
  {
    v59 = *(v37 + 136);
    v60 = v3;
    v58[1] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_source);
    v38 = *(v1 + v34);
    v74[0] = MEMORY[0x1E69E7CC0];
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags, MEMORY[0x1E69E80B0]);
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd);
    OUTLINED_FUNCTION_37_26();
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](v40, v41);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v42 = static OS_dispatch_source.makeTimerSource(flags:queue:)();

    (*(v61 + 8))(v25, ObjectType);
    v61 = v42;
    ObjectType = swift_getObjectType();
    static DispatchTime.now()();
    if (one-time initialization token for shared == -1)
    {
LABEL_4:
      OUTLINED_FUNCTION_0_1();
      v43 += 55;
      v44 = *v43;
      (*v43)();
      v45 = v62;
      + infix(_:_:)();
      v46 = v64;
      v47 = *(v63 + 8);
      v48 = v47(v17, v64);
      v49 = (v44)(v48);
      v50 = v65;
      default argument 2 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)(v65);
      MEMORY[0x1BFB21730](v45, v50, ObjectType, v49);
      (*(v66 + 8))(v50, v67);
      v47(v45, v46);
      v51 = swift_allocObject();
      swift_weakInit();
      OUTLINED_FUNCTION_37_0();
      v52 = swift_allocObject();
      v53 = v68;
      v52[2] = *(v68 + 80);
      v52[3] = *(v53 + 88);
      v52[4] = v51;
      v74[4] = partial apply for closure #1 in MostActiveParticipantsController.startEMATimerIfNecessary();
      v74[5] = v52;
      v74[0] = MEMORY[0x1E69E9820];
      v74[1] = 1107296256;
      v74[2] = thunk for @escaping @callee_guaranteed () -> ();
      v74[3] = &block_descriptor_78;
      v54 = _Block_copy(v74);

      v55 = v69;
      default argument 0 of OS_dispatch_source.setEventHandler(qos:flags:handler:)(ObjectType);
      v56 = v71;
      default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)();
      v57 = v61;
      OS_dispatch_source.setEventHandler(qos:flags:handler:)();
      _Block_release(v54);
      (*(v73 + 8))(v56, v60);
      (*(v70 + 8))(v55, v72);

      OS_dispatch_source.resume()();
      *(v1 + v59) = v57;
      swift_unknownObjectRelease();
      goto LABEL_5;
    }

LABEL_7:
    OUTLINED_FUNCTION_0_9();
    goto LABEL_4;
  }

LABEL_5:
  OUTLINED_FUNCTION_20_6();
}

void MostActiveParticipantsController.markParticipantAsUserSelected(_:shouldPostCallback:)()
{
  OUTLINED_FUNCTION_29();
  v31 = v1;
  v3 = v2;
  v4 = *v0;
  v32 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v35 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_1();
  v33 = v8;
  v34 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  v9 = v4[10];
  OUTLINED_FUNCTION_2_7();
  v11 = v10;
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - v16;
  v30 = *(v0 + v4[19]);
  (*(v11 + 16))(&v29 - v16, v3, v9, v15);
  v18 = ((*(v11 + 80) + 40) & ~*(v11 + 80));
  v19 = swift_allocObject();
  *(v19 + 16) = v9;
  *(v19 + 24) = v4[11];
  *(v19 + 32) = v0;
  (*(v11 + 32))(&v18[v19], v17, v9);
  v18[v13 + v19] = v31;
  v37[4] = partial apply for closure #1 in MostActiveParticipantsController.markParticipantAsUserSelected(_:shouldPostCallback:);
  v37[5] = v19;
  OUTLINED_FUNCTION_5_73();
  v37[1] = 1107296256;
  OUTLINED_FUNCTION_6_5();
  v37[2] = v20;
  v37[3] = &block_descriptor_25_1;
  v21 = _Block_copy(v37);
  v22 = v30;
  OUTLINED_FUNCTION_42_20();
  static DispatchQoS.unspecified.getter();
  v36 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_0_133();
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(v23, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OUTLINED_FUNCTION_11_70();
  _Block_release(v21);

  v25 = OUTLINED_FUNCTION_15_44();
  v26(v25);
  v27 = OUTLINED_FUNCTION_20_38();
  v28(v27);

  OUTLINED_FUNCTION_30_0();
}

void closure #1 in MostActiveParticipantsController.markParticipantAsUserSelected(_:shouldPostCallback:)(uint64_t a1, uint64_t a2, char a3)
{
  MostActiveParticipantsController.boostParticipantEMAToMax(_:)();
  if ((a3 & 1) == 0)
  {
    MostActiveParticipantsController.updateActiveParticipantsEMA()();
    MostActiveParticipantsController.checkForMostActiveParticipantChange(shouldPostCallback:)();
  }
}

void MostActiveParticipantsController.boostParticipantEMAToMax(_:)()
{
  OUTLINED_FUNCTION_48_2();
  v2 = v1;
  OUTLINED_FUNCTION_19_34();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_2_7();
  v43 = v5;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_36_25();
  OUTLINED_FUNCTION_19_34();
  v8 = *(v7 + 88);
  active = type metadata accessor for MostActiveParticipantsController.ActivityDetails();
  OUTLINED_FUNCTION_1();
  v42 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17();
  v41 = v12 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - v15;
  OUTLINED_FUNCTION_19_34();
  v18 = *(v17 + 128);
  OUTLINED_FUNCTION_4_0();
  v52 = *(v0 + v18);
  v47 = v4;
  v48 = v8;
  v44 = v2;
  v45 = v8;
  v49 = v2;
  v19 = type metadata accessor for Array();

  OUTLINED_FUNCTION_4_99();
  swift_getWitnessTable();
  v46 = v19;
  Collection.firstIndex(where:)();

  if (v51)
  {
    v20 = OUTLINED_FUNCTION_46_15();
    v21(v20);
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    OUTLINED_FUNCTION_0_1();
    (*(v22 + 432))();
    OUTLINED_FUNCTION_0_1();
    (*(v23 + 448))();
    v24 = OUTLINED_FUNCTION_44_14();
    OUTLINED_FUNCTION_38_20(v16, v24, v25, v26, v27);
    OUTLINED_FUNCTION_30_2();
    Array.append(_:)();
    swift_endAccess();
  }

  else
  {
    v28 = v50;
    swift_beginAccess();
    Array.subscript.getter();
    swift_endAccess();
    v29 = OUTLINED_FUNCTION_46_15();
    v30(v29);
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    OUTLINED_FUNCTION_0_1();
    (*(v31 + 448))();
    v32 = OUTLINED_FUNCTION_44_14();
    v33 = v41;
    OUTLINED_FUNCTION_38_20(v41, v32, v34, v35, v36);
    OUTLINED_FUNCTION_30_2();
    v37 = v46;
    Array._makeMutableAndUnique()();
    v38 = *(v0 + v18);
    Array._checkSubscript_mutating(_:)(v28);
    v39 = active;
    v40 = v42;
    (*(v42 + 40))(v38 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v28, v33, v39);
    TPNumberPadCharacter.rawValue.getter(v37);
    swift_endAccess();
    (*(v40 + 8))(v16, v39);
  }

  OUTLINED_FUNCTION_20_6();
}

uint64_t MostActiveParticipantsController.updateActiveParticipantsEMA()()
{
  v2 = v0;
  v81 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v94 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_40();
  v80 = v5;
  OUTLINED_FUNCTION_4_24();
  v79 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v93 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_40();
  v78 = v8;
  OUTLINED_FUNCTION_19_34();
  OUTLINED_FUNCTION_19_34();
  v10 = *(v9 + 88);
  v77 = v11;
  v76 = v10;
  active = type metadata accessor for MostActiveParticipantsController.ActivityDetails();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  v87 = &v70 - v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_49_16();
  v91 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_17();
  v90 = v21 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v70 - v24;
  v26 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_19_34();
  v31 = *(v0 + *(v30 + 152));
  *v1 = v31;
  (*(v28 + 104))(v1, *MEMORY[0x1E69E8020], v26);
  v32 = v31;
  LOBYTE(v31) = _dispatchPreconditionTest(_:)();
  result = (*(v28 + 8))(v1, v26);
  if (v31)
  {
    OUTLINED_FUNCTION_13_38();
    v35 = *(v34 + 128);
    OUTLINED_FUNCTION_4_0();
    v86 = v35;
    v96[13] = *(v2 + v35);
    v36 = type metadata accessor for Array();
    OUTLINED_FUNCTION_2_17();
    WitnessTable = swift_getWitnessTable();
    MEMORY[0x1BFB20C00](aBlock, v36, WitnessTable);
    v96[7] = aBlock[0];
    OUTLINED_FUNCTION_50_15();
    type metadata accessor for EnumeratedSequence();
    EnumeratedSequence.makeIterator()();
    OUTLINED_FUNCTION_4_0();
    v85 = v36;
    v89 = type metadata accessor for EnumeratedSequence.Iterator();
    v88 = (v19 + 32);
    v84 = v14 + 32;
    v83 = v14 + 16;
    v82 = v14 + 40;
    v73 = v96;
    v72 = (v94 + 8);
    v71 = (v93 + 8);
    v75 = v14;
    v74 = TupleTypeMetadata2;
    while (1)
    {
      v38 = v90;
      EnumeratedSequence.Iterator.next()();
      (*v88)(v25, v38, v91);
      if (__swift_getEnumTagSinglePayload(v25, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      v39 = *v25;
      v40 = *(TupleTypeMetadata2 + 48);
      v94 = swift_allocBox();
      v42 = v41;
      (*(v14 + 32))(v41, &v25[v40], active);
      swift_beginAccess();
      v43 = active[10];
      v44 = *(v42 + v43) + 1.0;
      if (*(v42 + active[11]))
      {
        v45 = 1.0;
      }

      else
      {
        v45 = 0.0;
      }

      v46 = (v45 * (2.0 / (v44 + 1.0))) + (*(v42 + active[9]) * (1.0 - (2.0 / (v44 + 1.0))));
      *(v42 + v43) = v44;
      *(v42 + active[9]) = v46;
      v47 = v87;
      OUTLINED_FUNCTION_37_26();
      v48();
      v49 = v86;
      OUTLINED_FUNCTION_30_2();
      v50 = v85;
      Array._makeMutableAndUnique()();
      v51 = *(v2 + v49);
      OUTLINED_FUNCTION_37_26();
      Array._checkSubscript_mutating(_:)(v52);
      (*(v14 + 40))(v51 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v39, v47, active);
      TPNumberPadCharacter.rawValue.getter(v50);
      swift_endAccess();
      v53 = *(v2 + 32);
      if (v53)
      {
        v54 = *(v2 + 40);
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);

        v93 = static OS_dispatch_queue.main.getter();
        v55 = swift_allocObject();
        v56 = v76;
        *(v55 + 16) = v77;
        *(v55 + 24) = v56;
        *(v55 + 32) = v53;
        *(v55 + 40) = v54;
        *(v55 + 48) = v94;
        *(v55 + 56) = v46;
        v96[2] = partial apply for closure #1 in MostActiveParticipantsController.updateActiveParticipantsEMA();
        v96[3] = v55;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        v96[0] = thunk for @escaping @callee_guaranteed () -> ();
        v96[1] = &block_descriptor_69;
        v92 = _Block_copy(aBlock);
        outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v53);

        v57 = v78;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_0_133();
        _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, v58);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
        lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
        v59 = v2;
        v60 = v80;
        v61 = active;
        v62 = v25;
        v63 = v81;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v64 = OUTLINED_FUNCTION_49_16();
        v65 = v92;
        v66 = v93;
        MEMORY[0x1BFB215C0](v64);
        _Block_release(v65);

        v14 = v75;
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v53);
        v67 = v60;
        v2 = v59;
        v68 = v63;
        v25 = v62;
        active = v61;
        (*v72)(v67, v68);
        v69 = v57;
        TupleTypeMetadata2 = v74;
        (*v71)(v69, v79);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void MostActiveParticipantsController.checkForMostActiveParticipantChange(shouldPostCallback:)()
{
  OUTLINED_FUNCTION_48_2();
  v3 = v0;
  v5 = v4;
  OUTLINED_FUNCTION_33_24();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v57 = v7;
  v58 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_40();
  v55 = v8;
  OUTLINED_FUNCTION_4_24();
  v56 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v54 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_40();
  v53 = v11;
  OUTLINED_FUNCTION_4_24();
  v12 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v59 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_17();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v52 - v19;
  v21 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_8();
  v27 = v26 - v25;
  v28 = *(v0 + *(v1 + 152));
  *(v26 - v25) = v28;
  (*(v23 + 104))(v26 - v25, *MEMORY[0x1E69E8020], v21);
  v29 = v28;
  v30 = _dispatchPreconditionTest(_:)();
  v32 = *(v23 + 8);
  v31 = v23 + 8;
  v32(v27, v21);
  if ((v30 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    OUTLINED_FUNCTION_0_9();
    goto LABEL_4;
  }

  v31 = *(*v0 + 128);
  swift_beginAccess();
  v60[0] = *(v0 + v31);
  type metadata accessor for MostActiveParticipantsController.ActivityDetails();
  OUTLINED_FUNCTION_56_11();
  OUTLINED_FUNCTION_2_17();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v60[0] = Sequence<>.sorted()();
  Array.init<A>(_:)();
  MostActiveParticipantsController.applyProminenceWeights(sortedParticipants:)();
  v30 = v33;

  if ((v5 & 1) == 0)
  {
    *(v0 + v31) = v30;
    goto LABEL_9;
  }

  Date.init()();
  v27 = *(*v0 + 144);
  OUTLINED_FUNCTION_4_0();
  v34 = v59;
  (*(v59 + 16))(v17, v0 + v27, v12);
  Date.timeIntervalSince(_:)();
  v2 = v35;
  v36 = *(v34 + 8);
  v36(v17, v12);
  v36(v20, v12);
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_12;
  }

LABEL_4:
  OUTLINED_FUNCTION_0_1();
  if ((*(v37 + 480))() >= v2)
  {
LABEL_9:

    goto LABEL_10;
  }

  MostActiveParticipantsController.shouldPostMostActiveParticipantsDidChange(oldParticipantsDetails:newParticipantsDetails:)();
  v39 = v38;

  *(v3 + v31) = v30;

  OUTLINED_FUNCTION_4_0();
  v40 = *(v3 + 16);
  if (v40 && (v39 & 1) != 0)
  {
    v41 = *(v3 + 24);

    Date.init()();
    OUTLINED_FUNCTION_30_2();
    (*(v59 + 40))(v3 + v27, v20, v12);
    swift_endAccess();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v42 = static OS_dispatch_queue.main.getter();
    OUTLINED_FUNCTION_37_0();
    v43 = swift_allocObject();
    v43[2] = v40;
    v43[3] = v41;
    v43[4] = v3;
    v60[4] = partial apply for closure #1 in MostActiveParticipantsController.checkForMostActiveParticipantChange(shouldPostCallback:);
    v60[5] = v43;
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 1107296256;
    v60[2] = thunk for @escaping @callee_guaranteed () -> ();
    v60[3] = &block_descriptor_63_0;
    v44 = _Block_copy(v60);
    outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v40);

    v45 = v53;
    static DispatchQoS.unspecified.getter();
    v60[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_0_133();
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(v46, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v48 = v58;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v49 = OUTLINED_FUNCTION_49_16();
    MEMORY[0x1BFB215C0](v49);
    _Block_release(v44);

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v40);
    v50 = OUTLINED_FUNCTION_20_38();
    v51(v50, v48);
    (*(v54 + 8))(v45, v56);
  }

LABEL_10:
  OUTLINED_FUNCTION_20_6();
}

void MostActiveParticipantsController.markParticipantAsReacting(_:)()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_39_15();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_47();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_2_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_36_25();
  v7 = OUTLINED_FUNCTION_25_33(v1[19]);
  v8(v7);
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v1[11];
  v9[4] = v0;
  v10 = OUTLINED_FUNCTION_51_15(v9);
  v11(v10);
  v24[4] = partial apply for closure #1 in MostActiveParticipantsController.markParticipantAsReacting(_:);
  v24[5] = v9;
  OUTLINED_FUNCTION_5_73();
  v24[1] = 1107296256;
  OUTLINED_FUNCTION_6_5();
  v24[2] = v12;
  v24[3] = &block_descriptor_31;
  v13 = _Block_copy(v24);
  v14 = v23;
  OUTLINED_FUNCTION_42_20();
  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_0_133();
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  OUTLINED_FUNCTION_37_26();
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](v17, v18);
  OUTLINED_FUNCTION_26_32();
  OUTLINED_FUNCTION_11_70();
  _Block_release(v13);

  v19 = OUTLINED_FUNCTION_15_44();
  v20(v19);
  v21 = OUTLINED_FUNCTION_20_38();
  v22(v21);

  OUTLINED_FUNCTION_30_0();
}

void closure #1 in MostActiveParticipantsController.markParticipantAsReacting(_:)()
{
  MostActiveParticipantsController.boostParticipantEMAToMax(_:)();
  MostActiveParticipantsController.updateActiveParticipantsEMA()();
  MostActiveParticipantsController.checkForMostActiveParticipantChange(shouldPostCallback:)();
}

void MostActiveParticipantsController.markParticipantAsOffline(_:)()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_39_15();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_47();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_2_7();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_36_25();
  v11 = OUTLINED_FUNCTION_25_33(v1[19]);
  v12(v11);
  v13 = (v9 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = v5;
  *(v14 + 24) = v1[11];
  v15 = OUTLINED_FUNCTION_51_15(v14);
  v16(v15);
  *(v14 + v13) = v0;
  v29[4] = partial apply for closure #1 in MostActiveParticipantsController.markParticipantAsOffline(_:);
  v29[5] = v14;
  OUTLINED_FUNCTION_5_73();
  v29[1] = 1107296256;
  OUTLINED_FUNCTION_6_5();
  v29[2] = v17;
  v29[3] = &block_descriptor_37_1;
  v18 = _Block_copy(v29);
  v19 = v28;
  OUTLINED_FUNCTION_42_20();
  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_0_133();
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(v20, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  OUTLINED_FUNCTION_37_26();
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](v22, v23);
  OUTLINED_FUNCTION_26_32();
  OUTLINED_FUNCTION_11_70();
  _Block_release(v18);

  v24 = OUTLINED_FUNCTION_15_44();
  v25(v24);
  v26 = OUTLINED_FUNCTION_20_38();
  v27(v26);

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in MostActiveParticipantsController.markParticipantAsOffline(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v28 - v6;
  v9 = *(v8 + 88);
  active = type metadata accessor for MostActiveParticipantsController.ActivityDetails();
  v31 = *(active - 8);
  MEMORY[0x1EEE9AC00](active);
  v29 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  (*(v5 + 16))(v7, a1, v4, v13);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v16 = (*(*static Defaults.shared + 432))();
  MostActiveParticipantsController.ActivityDetails.init(participantIdentifier:currentEMA:currentTimeScale:isActive:prominenceWeight:audioPriority:videoPriority:)(v7, 0, v4, v15, 0.0, v16, 1.0, 0.0, 0.0);
  v17 = *(*a2 + 128);
  v18 = swift_beginAccess();
  v34 = *(a2 + v17);
  MEMORY[0x1EEE9AC00](v18);
  v30 = v15;
  *(&v28 - 4) = v4;
  *(&v28 - 3) = v9;
  *(&v28 - 2) = a1;
  v19 = type metadata accessor for Array();

  swift_getWitnessTable();
  Collection.firstIndex(where:)();

  if (v33 == 1)
  {
    v21 = v30;
    v20 = v31;
    (*(v31 + 16))(v29, v30, active);
    swift_beginAccess();
    Array.append(_:)();
    swift_endAccess();
    v22 = v21;
  }

  else
  {
    v23 = v32;
    swift_beginAccess();
    Array._makeMutableAndUnique()();
    v24 = *(a2 + v17);
    Array._checkSubscript_mutating(_:)(v23);
    v20 = v31;
    v25 = v24 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v23;
    v26 = v30;
    (*(v31 + 24))(v25, v30, active);
    TPNumberPadCharacter.rawValue.getter(v19);
    swift_endAccess();
    v22 = v26;
  }

  return (*(v20 + 8))(v22, active);
}

uint64_t closure #1 in MostActiveParticipantsController.updateActiveParticipantsEMA()(void (*a1)(char *, float, float, float), float a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for MostActiveParticipantsController.ActivityDetails();
  v12 = swift_projectBox();
  swift_beginAccess();
  (*(v8 + 16))(v10, v12, a5);
  a1(v10, a2, *(v12 + *(active + 52)), *(v12 + *(active + 56)));
  return (*(v8 + 8))(v10, a5);
}

void MostActiveParticipantsController.applyProminenceWeights(sortedParticipants:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 88);
  OUTLINED_FUNCTION_50_15();
  active = type metadata accessor for MostActiveParticipantsController.ActivityDetails();
  v6 = MEMORY[0x1BFB20DB0](v2, active);
  if (v6 > 2)
  {
    v23 = v2;
    v10 = OUTLINED_FUNCTION_56_11();
    OUTLINED_FUNCTION_2_17();
    WitnessTable = swift_getWitnessTable();
    v12 = MEMORY[0x1BFB20C00](&v24, v10, WitnessTable);
    v23 = v24;
    MEMORY[0x1EEE9AC00](v12);
    v20 = v3;
    v21 = v4;
    MEMORY[0x1EEE9AC00](v13);
    v18[2] = v3;
    v18[3] = v4;
    v18[4] = partial apply for closure #2 in MostActiveParticipantsController.applyProminenceWeights(sortedParticipants:);
    v18[5] = v14;
    v15 = type metadata accessor for EnumeratedSequence();
    OUTLINED_FUNCTION_4_99();
    v22 = swift_getWitnessTable();
    v16 = swift_getWitnessTable();
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@unowned Int, @in_guaranteed MostActiveParticipantsController<A>.ActivityDetails) -> (@out MostActiveParticipantsController<A>.ActivityDetails), v18, v15, active, MEMORY[0x1E69E73E0], v16, MEMORY[0x1E69E7410], v17);
  }

  else
  {
    v24 = v2;
    MEMORY[0x1EEE9AC00](v6);
    v20 = v3;
    v21 = v4;
    v7 = OUTLINED_FUNCTION_56_11();
    OUTLINED_FUNCTION_4_99();
    v8 = swift_getWitnessTable();
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in MostActiveParticipantsController.applyProminenceWeights(sortedParticipants:), &v19, v7, active, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  }

  OUTLINED_FUNCTION_30_0();
}

void MostActiveParticipantsController.shouldPostMostActiveParticipantsDidChange(oldParticipantsDetails:newParticipantsDetails:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  v7 = *v1;
  v8 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = *(v1 + *(v6 + 152));
  *(v13 - v12) = v14;
  (*(v10 + 104))(v13 - v12, *MEMORY[0x1E69E8020], v8);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v16 = v10 + 8;
  v17 = OUTLINED_FUNCTION_48_0();
  v18(v17);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  *&v41 = v5;
  OUTLINED_FUNCTION_4_0();
  v19 = *(v7 + 80);
  v20 = *(v7 + 88);
  type metadata accessor for MostActiveParticipantsController.ActivityDetails();
  OUTLINED_FUNCTION_50_15();
  *&v40 = v3;
  type metadata accessor for Array();

  OUTLINED_FUNCTION_4_99();
  WitnessTable = swift_getWitnessTable();
  v21 = Collection.prefix(_:)();
  v38 = &v37;
  v37 = v43;
  v41 = v43;
  v42 = v44;
  MEMORY[0x1EEE9AC00](v21);
  *(&v37 - 2) = v19;
  *(&v37 - 1) = v20;
  OUTLINED_FUNCTION_50_15();
  v22 = type metadata accessor for ArraySlice();
  v23 = swift_getWitnessTable();
  v16 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in MostActiveParticipantsController.shouldPostMostActiveParticipantsDidChange(oldParticipantsDetails:newParticipantsDetails:), (&v37 - 2), v22, v19, MEMORY[0x1E69E73E0], v23, MEMORY[0x1E69E7410], v24);
  swift_unknownObjectRelease();
  *&v41 = v40;

  v25 = Collection.prefix(_:)();
  v40 = v43;
  v41 = v43;
  v42 = v44;
  MEMORY[0x1EEE9AC00](v25);
  *(&v37 - 2) = v19;
  *(&v37 - 1) = v20;
  v7 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in MostActiveParticipantsController.shouldPostMostActiveParticipantsDidChange(oldParticipantsDetails:newParticipantsDetails:), (&v37 - 2), v22, v19, MEMORY[0x1E69E73E0], v23, MEMORY[0x1E69E7410], v26);
  swift_unknownObjectRelease();
  if ((static Array<A>.== infix(_:_:)() & 1) == 0)
  {
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1BC4BAA20;
      *&v43 = v16;
      v28 = OUTLINED_FUNCTION_56_11();
      v29 = >> prefix<A>(_:)(&v43, v28);
      v31 = v30;

      v32 = MEMORY[0x1E69E6158];
      *(v27 + 56) = MEMORY[0x1E69E6158];
      v33 = lazy protocol witness table accessor for type String and conformance String();
      *(v27 + 64) = v33;
      *(v27 + 32) = v29;
      *(v27 + 40) = v31;
      *&v43 = v7;
      v34 = >> prefix<A>(_:)(&v43, v28);
      v36 = v35;

      *(v27 + 96) = v32;
      *(v27 + 104) = v33;
      *(v27 + 72) = v34;
      *(v27 + 80) = v36;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
      goto LABEL_6;
    }

LABEL_8:
    swift_once();
    goto LABEL_5;
  }

LABEL_6:

  OUTLINED_FUNCTION_30_0();
}

void closure #1 in MostActiveParticipantsController.applyProminenceWeights(sortedParticipants:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  active = type metadata accessor for MostActiveParticipantsController.ActivityDetails();
  (*(*(active - 8) + 16))(a2, a1, active);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *(a2 + *(active + 48)) = (*(*static Defaults.shared + 472))();
}

void closure #2 in MostActiveParticipantsController.applyProminenceWeights(sortedParticipants:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  active = type metadata accessor for MostActiveParticipantsController.ActivityDetails();
  v7 = (*(*(active - 8) + 16))(a3, a2, active);
  if (a1 == 2)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    (*(*static Defaults.shared + 464))();
  }

  else if (a1 == 1)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    (*(*static Defaults.shared + 456))();
  }

  else if (a1)
  {
    if (one-time initialization token for shared != -1)
    {
      v7 = swift_once();
    }

    v8 = (*(*static Defaults.shared + 472))(v7);
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      v7 = swift_once();
    }

    (*(*static Defaults.shared + 448))(v7);
  }

  *(a3 + *(active + 48)) = v8;
}

uint64_t thunk for @callee_guaranteed (@unowned Int, @in_guaranteed MostActiveParticipantsController<A>.ActivityDetails) -> (@out MostActiveParticipantsController<A>.ActivityDetails)(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  type metadata accessor for MostActiveParticipantsController.ActivityDetails();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t closure #1 in MostActiveParticipantsController.startEMATimerIfNecessary()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    MostActiveParticipantsController.updateActiveParticipantsEMA()();
    MostActiveParticipantsController.activityDetailsAboveThreshold()();
    if (v1)
    {
      MostActiveParticipantsController.checkForMostActiveParticipantChange(shouldPostCallback:)();
    }
  }

  return result;
}

void MostActiveParticipantsController.activityDetailsAboveThreshold()()
{
  OUTLINED_FUNCTION_29();
  v2 = *v0;
  v3 = *(*v0 + 80);
  v30[0] = *(*v0 + 88);
  active = type metadata accessor for MostActiveParticipantsController.ActivityDetails();
  v32 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_1();
  v30[1] = v4;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_101();
  v6 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v30 - v10;
  v12 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v18 = v17 - v16;
  v19 = *(v0 + *(v2 + 152));
  *(v17 - v16) = v19;
  (*(v14 + 104))(v17 - v16, *MEMORY[0x1E69E8020], v12);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v18, v12);
  if (v19)
  {
    OUTLINED_FUNCTION_0_1();
    v22 = *(v21 + 112);
    OUTLINED_FUNCTION_4_0();
    (*(v8 + 16))(v11, v0 + v22, v6);
    __swift_getEnumTagSinglePayload(v11, 1, v3);
    (*(v8 + 8))(v11, v6);
    OUTLINED_FUNCTION_0_1();
    v24 = *(v23 + 128);
    v25 = OUTLINED_FUNCTION_4_0();
    v33 = *(v0 + v24);
    MEMORY[0x1EEE9AC00](v25);
    v26 = v30[0];
    v30[-2] = v3;
    v30[-1] = v26;
    v27 = active;
    type metadata accessor for Array();

    OUTLINED_FUNCTION_2_17();
    swift_getWitnessTable();
    Sequence.first(where:)();

    __swift_getEnumTagSinglePayload(v1, 1, v27);
    v28 = OUTLINED_FUNCTION_20_38();
    v29(v28, v32);
    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    __break(1u);
  }
}

BOOL closure #1 in MostActiveParticipantsController.activityDetailsAboveThreshold()(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for MostActiveParticipantsController.ActivityDetails() + 36));
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return (*(*static Defaults.shared + 488))() < v1;
}

uint64_t MostActiveParticipantsController.deinit()
{
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 16));
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 32));
  OUTLINED_FUNCTION_0_1();
  v2 = *(v1 + 112);
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(v0 + v2);
  OUTLINED_FUNCTION_0_1();

  OUTLINED_FUNCTION_0_1();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_0_1();
  v5 = *(v4 + 144);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_7_0();
  (*(v6 + 8))(v0 + v5);
  OUTLINED_FUNCTION_0_1();

  return v0;
}

uint64_t MostActiveParticipantsController.__deallocating_deinit()
{
  MostActiveParticipantsController.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for MostActiveParticipantsController()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MostActiveParticipantsController.ProminenceChangeReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for MostActiveParticipantsController.Configuration()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata completion function for MostActiveParticipantsController.ActivityDetails()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_DWORD *getEnumTagSinglePayload for MostActiveParticipantsController.ActivityDetails(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2)
  {
    v8 = ((((((((v6 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 4;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFFC;
    if ((v8 & 0xFFFFFFFC) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_25;
        }

LABEL_21:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        v16 = v7 + (v10 | v15);
        break;
      default:
        goto LABEL_25;
    }

    return (v16 + 1);
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return __swift_getEnumTagSinglePayload(result, v5, v4);
  }

  v17 = *(((((result + v6 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 4);
  if (v17 < 2)
  {
    return 0;
  }

  v16 = (v17 + 2147483646) & 0x7FFFFFFF;
  return (v16 + 1);
}

void storeEnumTagSinglePayload for MostActiveParticipantsController.ActivityDetails(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((((v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((((v9 + 3) & 0xFFFFFFFC) + 15) & 0xFFFFFFFC) + 7) & 0xFFFFFFFC) + 7) & 0xFFFFFFFC) == 0xFFFFFFFC)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_39:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0xFE)
          {
            *((((&a1[v9 + 3] & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 4) = a2 + 1;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((((v9 + 3) & 0xFFFFFFFC) + 15) & 0xFFFFFFFC) + 7) & 0xFFFFFFFC) + 7) & 0xFFFFFFFC) == 0xFFFFFFFC)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((((v9 + 3) & 0xFFFFFFFC) + 15) & 0xFFFFFFFC) + 7) & 0xFFFFFFFC) + 7) & 0xFFFFFFFC) != 0xFFFFFFFC)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((((v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 4);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_39;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed Float, @in_guaranteed Float, @in_guaranteed Float) -> (@out ())(uint64_t a1, float a2, float a3, float a4)
{
  v5 = *(v4 + 32);
  v8 = a3;
  v9 = a2;
  v7 = a4;
  return v5(a1, &v9, &v8, &v7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed MostActiveParticipantsController<A>.ProminenceChangeReason) -> (@out ())(char a1)
{
  v2 = *(v1 + 32);
  v4 = a1 & 1;
  return v2(&v4);
}

uint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    OUTLINED_FUNCTION_2_17();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in MostActiveParticipantsController.shouldPostMostActiveParticipantsDidChange(oldParticipantsDetails:newParticipantsDetails:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return (*(*(*(v2 + 16) - 8) + 16))(a2, a1);
}

{
  return partial apply for closure #2 in MostActiveParticipantsController.shouldPostMostActiveParticipantsDidChange(oldParticipantsDetails:newParticipantsDetails:)(a1, a2);
}

uint64_t key path getter for PushToTalkDisclosureButton.text : PushToTalkDisclosureButton@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x70))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for PushToTalkDisclosureButton.text : PushToTalkDisclosureButton(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x78);

  return v4(v2, v3);
}

void PushToTalkDisclosureButton.text.didset()
{
  v1 = PushToTalkDisclosureButton.label.getter();
  v2 = &v0[OBJC_IVAR____TtC15ConversationKit26PushToTalkDisclosureButton_text];
  swift_beginAccess();
  v3 = *(v2 + 1);
  if (v3)
  {
    v4 = *v2;

    v5 = MEMORY[0x1BFB209B0](v4, v3);
  }

  else
  {
    v5 = 0;
  }

  [v1 setText_];

  v6 = *(v2 + 1);
  if (v6)
  {
    v7 = *v2;

    v8 = MEMORY[0x1BFB209B0](v7, v6);
  }

  else
  {
    v8 = 0;
  }

  [v0 setAccessibilityLabel_];
}

uint64_t PushToTalkDisclosureButton.text.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit26PushToTalkDisclosureButton_text);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void PushToTalkDisclosureButton.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15ConversationKit26PushToTalkDisclosureButton_text);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  PushToTalkDisclosureButton.text.didset();
}

void (*PushToTalkDisclosureButton.text.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return PushToTalkDisclosureButton.text.modify;
}

void PushToTalkDisclosureButton.text.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    PushToTalkDisclosureButton.text.didset();
  }
}

id closure #1 in PushToTalkDisclosureButton.label.getter(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  if (one-time initialization token for disclosureButtonLabel != -1)
  {
    swift_once();
  }

  [v2 setFont_];
  v3 = [a1 tintColor];
  [v2 setTextColor_];

  [v2 setNumberOfLines_];
  v4 = v2;
  [v4 setClipsToBounds_];
  [v4 setLineBreakMode_];
  [v4 setAdjustsFontForContentSizeCategory_];
  LODWORD(v5) = 1144750080;
  [v4 setContentCompressionResistancePriority:0 forAxis:v5];
  [v4 setMaximumContentSizeCategory_];
  [v4 setMinimumContentSizeCategory_];

  return v4;
}

id PushToTalkDisclosureButton.label.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id closure #1 in PushToTalkDisclosureButton.chevronImageView.getter(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  v3 = *MEMORY[0x1E69DDCF8];
  v12[64] = 0;
  v13[0] = 0x2E6E6F7276656863;
  v13[1] = 0xEF64726177726F66;
  v13[2] = 2;
  v13[3] = v3;
  v14 = 0;
  v15 = 5;
  v16 = 0;
  v17 = 0;
  v18[0] = 0x2E6E6F7276656863;
  v18[1] = 0xEF64726177726F66;
  v18[2] = 2;
  v18[3] = v3;
  v19 = 0;
  v20 = 5;
  v21 = 0;
  v22 = 0;
  v4 = v3;
  outlined init with copy of SymbolImageDescription(v13, v12);
  outlined destroy of SymbolImageDescription(v18);
  v5 = static UIImage.symbolImage(for:)(v13);
  outlined destroy of SymbolImageDescription(v13);
  if (v5)
  {
    [v2 setNumberOfLines_];
    v6 = v2;
    [v6 setClipsToBounds_];
    if (one-time initialization token for disclosureButtonLabel != -1)
    {
      swift_once();
    }

    [v6 setFont_];
    [v6 setAdjustsFontForContentSizeCategory_];
    v7 = [a1 tintColor];
    [v6 setTextColor_];

    LODWORD(v8) = 1144750080;
    [v6 setContentCompressionResistancePriority:0 forAxis:v8];
    v9 = [objc_opt_self() textAttachmentWithImage_];
    v10 = [objc_opt_self() attributedStringWithAttachment_];

    [v6 setAttributedText_];
    [v6 setMaximumContentSizeCategory_];
    [v6 setMinimumContentSizeCategory_];
  }

  return v2;
}

id PushToTalkDisclosureButton.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

char *PushToTalkDisclosureButton.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit26PushToTalkDisclosureButton_text);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC15ConversationKit26PushToTalkDisclosureButton_contentView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *(v0 + OBJC_IVAR____TtC15ConversationKit26PushToTalkDisclosureButton____lazy_storage___label) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit26PushToTalkDisclosureButton____lazy_storage___chevronImageView) = 0;
  v15 = type metadata accessor for PushToTalkDisclosureButton();
  v3 = OUTLINED_FUNCTION_18_1();
  v6 = objc_msgSendSuper2(v4, v5, v3, v0, v15);
  v7 = one-time initialization token for disclosureButtonLabel;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  [v8 setTintColor_];
  v9 = PushToTalkDisclosureButton.chevronImageView.getter();
  LODWORD(v10) = 1148846080;
  [v9 setContentCompressionResistancePriority:0 forAxis:v10];

  v11 = OBJC_IVAR____TtC15ConversationKit26PushToTalkDisclosureButton_contentView;
  [v8 addSubview_];
  v12 = *&v8[v11];
  v13 = PushToTalkDisclosureButton.label.getter();
  [v12 addSubview_];

  [*&v8[v11] addSubview_];
  PushToTalkDisclosureButton.setupConstraints()();

  return v8;
}

id PushToTalkDisclosureButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void PushToTalkDisclosureButton.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit26PushToTalkDisclosureButton_text);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC15ConversationKit26PushToTalkDisclosureButton_contentView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *(v0 + OBJC_IVAR____TtC15ConversationKit26PushToTalkDisclosureButton____lazy_storage___label) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit26PushToTalkDisclosureButton____lazy_storage___chevronImageView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void PushToTalkDisclosureButton.setupConstraints()()
{
  v1 = *&v0[OBJC_IVAR____TtC15ConversationKit26PushToTalkDisclosureButton_contentView];
  v2 = PushToTalkDisclosureButton.label.getter();
  v3 = PushToTalkDisclosureButton.chevronImageView.getter();

  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC4BA7F0;
  v5 = [v1 topAnchor];
  v6 = [v0 topAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v4 + 32) = v7;
  v8 = [v1 leadingAnchor];
  v9 = OUTLINED_FUNCTION_0_12([v0 leadingAnchor]);

  *(v4 + 40) = v9;
  v10 = [v1 trailingAnchor];
  v11 = OUTLINED_FUNCTION_0_12([v0 trailingAnchor]);

  *(v4 + 48) = v11;
  v12 = [v1 bottomAnchor];
  v13 = OUTLINED_FUNCTION_0_12([v0 bottomAnchor]);

  *(v4 + 56) = v13;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA920;
  v15 = OBJC_IVAR____TtC15ConversationKit26PushToTalkDisclosureButton____lazy_storage___label;
  v16 = [*&v0[OBJC_IVAR____TtC15ConversationKit26PushToTalkDisclosureButton____lazy_storage___label] centerYAnchor];
  v17 = OUTLINED_FUNCTION_1_23([v1 centerYAnchor]);

  *(inited + 32) = v17;
  v18 = [*&v0[v15] leadingAnchor];
  v19 = OUTLINED_FUNCTION_1_23([v1 leadingAnchor]);

  *(inited + 40) = v19;
  v20 = OBJC_IVAR____TtC15ConversationKit26PushToTalkDisclosureButton____lazy_storage___chevronImageView;
  v21 = [*&v0[OBJC_IVAR____TtC15ConversationKit26PushToTalkDisclosureButton____lazy_storage___chevronImageView] centerYAnchor];
  v22 = OUTLINED_FUNCTION_1_23([v1 centerYAnchor]);

  *(inited + 48) = v22;
  v23 = [*&v0[v20] leadingAnchor];
  v24 = [*&v0[v15] trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:3.0];

  *(inited + 56) = v25;
  v26 = [*&v0[v20] trailingAnchor];
  v27 = [v1 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(inited + 64) = v28;
  specialized Array.append<A>(contentsOf:)(inited);
  v29 = objc_opt_self();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v29 activateConstraints_];
}

id PushToTalkDisclosureButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PushToTalkDisclosureButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

UIMenu __swiftcall UIMenu.init(menuItems:)(Swift::OpaquePointer menuItems)
{
  if (menuItems._rawValue >> 62)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement);
    preferredElementSize = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement);
    preferredElementSize = menuItems._rawValue;
  }

  OUTLINED_FUNCTION_0_71();
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v3, v4, v7, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v6);
}

id static UIDeferredMenuElement.uncached(_:)(uint64_t a1, uint64_t a2)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v9[4] = partial apply for closure #1 in static UIDeferredMenuElement.uncached(_:);
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
  v9[3] = &block_descriptor_54;
  v6 = _Block_copy(v9);

  v7 = [ObjCClassFromMetadata elementWithUncachedProvider_];
  _Block_release(v6);
  return v7;
}

uint64_t closure #1 in static UIDeferredMenuElement.uncached(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = a3;
  v13[7] = a4;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in closure #1 in static UIDeferredMenuElement.uncached(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v6[3] = a4;
  v6[4] = a5;
  v6[5] = type metadata accessor for MainActor();
  v6[6] = static MainActor.shared.getter();
  v10 = (a6 + *a6);
  v8 = swift_task_alloc();
  v6[7] = v8;
  *v8 = v6;
  v8[1] = closure #1 in closure #1 in static UIDeferredMenuElement.uncached(_:);

  return v10();
}

uint64_t closure #1 in closure #1 in static UIDeferredMenuElement.uncached(_:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = closure #1 in closure #1 in static UIDeferredMenuElement.uncached(_:);
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = closure #1 in closure #1 in static UIDeferredMenuElement.uncached(_:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

uint64_t closure #1 in closure #1 in static UIDeferredMenuElement.uncached(_:)()
{
  v1 = v0[9];
  v2 = v0[3];

  v2(v1);

  v3 = v0[1];

  return v3();
}

{
  v17 = v0;

  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.conversationControls);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 64);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    *(v0 + 16) = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1BBC58000, v4, v5, "Error getting menu elements: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1BFB23DF0](v8, -1, -1);
    MEMORY[0x1BFB23DF0](v7, -1, -1);
  }

  v13 = *(v0 + 64);
  (*(v0 + 24))(MEMORY[0x1E69E7CC0]);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ()(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> (), v4);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> ()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t static UIMenuBuilder.buildOptional(_:)(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t static UIMenuBuilder.buildPartialBlock(first:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit13UIMenuBuilderV4Item_pGMd);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BC4BA940;
  outlined init with copy of IDSLookupManager(a1, v2 + 32);
  return v2;
}

uint64_t static UIMenuBuilder.buildPartialBlock(accumulated:next:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit13UIMenuBuilderV4Item_pGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA940;
  outlined init with copy of IDSLookupManager(a2, inited + 32);

  specialized Array.append<A>(contentsOf:)(inited);
  return a1;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> static UIMenuBuilder.buildPartialBlock(accumulated:next:)()
{

  specialized Array.append<A>(contentsOf:)(v0);
}

UIMenu UIMenu.init(title:options:_:)(uint64_t a1, uint64_t a2, UIMenuIdentifier_optional a3, uint64_t (*a4)(void))
{
  v5 = MEMORY[0x1E69E7CC0];
  v26 = MEMORY[0x1E69E7CC0];
  v27 = MEMORY[0x1E69E7CC0];
  v6 = a4();
  v7 = *(v6 + 16);
  if (v7)
  {
    value = a3.value;
    children._rawValue = v6;
    v8 = v6 + 32;
    v9 = v5;
    v10 = v5;
    do
    {
      outlined init with copy of IDSLookupManager(v8, v25);
      outlined init with copy of IDSLookupManager(v25, v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13UIMenuBuilderV4Item_pMd);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAction);
      if (OUTLINED_FUNCTION_1_116())
      {
        v11 = v23;
        MEMORY[0x1BFB20CC0]();
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          OUTLINED_FUNCTION_2_115();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        __swift_destroy_boxed_opaque_existential_1(v25);
        v9 = v26;
      }

      else
      {
        outlined init with copy of IDSLookupManager(v25, v24);
        if (swift_dynamicCast())
        {
          if (v9 >> 62)
          {
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement);

            v12 = _bridgeCocoaArray<A>(_:)();
          }

          else
          {

            dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement);
            v12 = v9;
          }

          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu);
          OUTLINED_FUNCTION_0_71();
          UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v13, v14, v28, 1, 0xFFFFFFFFFFFFFFFFLL, v12, children);
          MEMORY[0x1BFB20CC0]();
          if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            OUTLINED_FUNCTION_2_115();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          __swift_destroy_boxed_opaque_existential_1(v25);
          v26 = v10;
          v9 = v10;
        }

        else
        {
          outlined init with copy of IDSLookupManager(v25, v24);
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu);
          if (OUTLINED_FUNCTION_1_116())
          {
            v15 = v23;
            MEMORY[0x1BFB20CC0]();
            if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            __swift_destroy_boxed_opaque_existential_1(v25);
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(v25);
          }
        }
      }

      v8 += 40;
      --v7;
    }

    while (v7);

    a3.value = value;
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  if (v9 >> 62)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement);

    v16 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement);
    v16 = v9;
  }

  specialized Array.append<A>(contentsOf:)(v16);
  preferredElementSize = v27;
  OUTLINED_FUNCTION_0_71();
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v17, v18, v29, a3, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, children);
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = result + 32;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0] + 32;
  while (1)
  {
    while (1)
    {
      if (!v3)
      {
        goto LABEL_5;
      }

      v9 = *(v3 + 16);
      if (v2 == v9)
      {
        break;
      }

      if (v2 >= v9)
      {
        goto LABEL_32;
      }

      outlined init with copy of IDSLookupManager(v3 + 40 * v2 + 32, &v26);
      v29 = v26;
      v30 = v27;
      v31 = v28;
      if (!*(&v27 + 1))
      {
        goto LABEL_27;
      }

      result = outlined init with take of TapInteractionHandler(&v29, v32);
      if (!v4)
      {
        v12 = v7[3];
        if (((v12 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_35;
        }

        v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit13UIMenuBuilderV4Item_pGMd);
        v15 = swift_allocObject();
        v16 = (_swift_stdlib_malloc_size(v15) - 32) / 40;
        v15[2] = v14;
        v15[3] = 2 * v16;
        v17 = (v15 + 4);
        v18 = v7[3];
        v19 = v18 >> 1;
        if (v7[2])
        {
          if (v15 != v7 || v17 >= &v7[5 * v19 + 4])
          {
            v25 = v16;
            memmove(v15 + 4, v7 + 4, 40 * v19);
            v16 = v25;
          }

          v7[2] = 0;
        }

        v8 = v17 + 40 * v19;
        v4 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - (v18 >> 1);

        v7 = v15;
      }

      v21 = __OFSUB__(v4--, 1);
      if (v21)
      {
        goto LABEL_33;
      }

      ++v2;
      result = outlined init with take of TapInteractionHandler(v32, v8);
      v8 += 40;
    }

    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    result = outlined destroy of UIMenuBuilder.Item?(&v26);
LABEL_5:
    v10 = *(v1 + 16);
    if (v5 == v10)
    {
      v31 = 0;
      v29 = 0u;
      v30 = 0u;
LABEL_27:

      result = outlined destroy of UIMenuBuilder.Item?(&v29);
      v22 = v7[3];
      if (v22 >= 2)
      {
        v23 = v22 >> 1;
        v21 = __OFSUB__(v23, v4);
        v24 = v23 - v4;
        if (v21)
        {
          goto LABEL_34;
        }

        v7[2] = v24;
      }

      return v7;
    }

    if (v5 >= v10)
    {
      break;
    }

    v11 = *(v6 + 8 * v5);

    v2 = 0;
    v3 = v11;
    ++v5;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t outlined destroy of UIMenuBuilder.Item?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13UIMenuBuilderV4Item_pSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in closure #1 in static UIDeferredMenuElement.uncached(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:);

  return closure #1 in closure #1 in static UIDeferredMenuElement.uncached(_:)(a1, v4, v5, v6, v7, v8);
}

void specialized EffectsHandler.updateEffectsViews(localVideoEnabled:)(char a1)
{
  v3 = MultiwayViewController.constraintController.getter();
  if (!v3)
  {
    return;
  }

  v11 = v3;
  v4 = MultiwayViewController.effectsBrowserViewController.getter();
  if (!v4)
  {
    v5 = v11;
    goto LABEL_6;
  }

  v10 = v4;
  MultiwayViewController.effectsAvailabilityDidChange(_:)(a1 & 1);
  if (a1)
  {

    v5 = v10;
LABEL_6:

    return;
  }

  v6 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallControlsState;
  swift_beginAccess();
  v7 = *&v11[v6];
  if ((v7 - 1) < 3)
  {
    v7 = 1;
  }

  else if ((v7 - 4) < 3)
  {
    v7 = 4;
  }

  [v1 setControlsState:v7 animated:1];
  v8 = [v10 view];
  if (v8)
  {
    v9 = v8;
    [v8 setAlpha_];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall EffectsHandler.updateEffectsViews(localVideoEnabled:)(Swift::Bool localVideoEnabled)
{
  v3 = v2;
  v4 = v1;
  v6 = OUTLINED_FUNCTION_39_1(localVideoEnabled, v1);
  v8 = v7(v6);
  if (!v8)
  {
    return;
  }

  v18 = v8;
  v9 = OUTLINED_FUNCTION_45_1();
  v11 = v10(v9);
  if (!v11)
  {
    v12 = v18;
    goto LABEL_6;
  }

  v17 = v11;
  (*(v3 + 168))(localVideoEnabled, v4, v3);
  if (localVideoEnabled)
  {

    v12 = v17;
LABEL_6:

    return;
  }

  v13 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallControlsState;
  swift_beginAccess();
  v14 = *&v18[v13];
  if ((v14 - 1) < 3)
  {
    v14 = 1;
  }

  else if ((v14 - 4) < 3)
  {
    v14 = 4;
  }

  (*(v3 + 160))(v14, 1, v4, v3);
  v15 = [v17 view];
  if (v15)
  {
    v16 = v15;
    [v15 setAlpha_];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall EffectsHandler.wipeEffectsState()()
{
  if ((*(v0 + 32))())
  {
    v1 = OUTLINED_FUNCTION_45_1();
    v3 = v2(v1);
    if (v3)
    {
      v4 = v3;
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        [v5 removeAllEffects];
      }
    }

    v6 = OUTLINED_FUNCTION_45_1();
    v8 = v7(v6);
    if (v8)
    {
      v9 = v8;
      [v8 setMode_];
    }
  }
}

Swift::Void __swiftcall EffectsHandler.handleAVCServerTimeout()()
{
  v20 = v1;
  v3 = v0;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  v15 = v20;
  v14[2] = v3;
  v14[3] = v15;
  v14[4] = v2;
  aBlock[4] = partial apply for closure #1 in EffectsHandler.handleAVCServerTimeout();
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_55;
  v16 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v12, v6, v16);
  _Block_release(v16);

  v17 = OUTLINED_FUNCTION_45_1();
  v18(v17);
  (*(v9 + 8))(v12, v7);
}

id specialized EffectsHandler.automation_setEffectsMode(enabled:)(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_avcEffects;
  OUTLINED_FUNCTION_9_67();
  result = *(v1 + v3);
  if (result)
  {
    return [result setMode_];
  }

  return result;
}

Swift::Void __swiftcall EffectsHandler.automation_setEffectsMode(enabled:)(Swift::Bool enabled)
{
  v3 = OUTLINED_FUNCTION_39_1(enabled, v1);
  v5 = v4(v3);
  if (v5)
  {
    v6 = v5;
    [v5 setMode_];
  }
}

id specialized EffectsHandler.updateAVCEffects(with:)(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_avcEffects;
  OUTLINED_FUNCTION_9_67();
  result = *(v1 + v3);
  if (result)
  {
    if (a1 >= 3)
    {
      v5 = 1;
    }

    else
    {
      v5 = a1;
    }

    return [result setEffectType_];
  }

  return result;
}

void EffectsHandler.updateAVCEffects(with:)(unint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_39_1(a1, a2);
  v5 = v4(v3);
  if (v5)
  {
    if (a1 >= 3)
    {
      v6 = 1;
    }

    else
    {
      v6 = a1;
    }

    v7 = v5;
    [v5 setEffectType_];
  }
}

void specialized EffectsHandler.setUpEffectsObjectsIfNecessary()()
{
  v1 = v0;
  v2 = MultiwayViewController.effectsViewController.getter();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    type metadata accessor for CameraViewController();
    v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithMode_];
    specialized EffectsHandler.setUpEffectsViews(using:)(v3);
  }

  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_avcEffects;
  swift_beginAccess();
  if (!*&v0[v4])
  {
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    if ((*(*static Defaults.shared + 144))())
    {
      v5 = swift_dynamicCastObjCProtocolConditional();
      if (v5 && (v6 = v5, swift_getObjectType(), dynamic_cast_existential_1_conditional(v6)))
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for AVCEffects);
        swift_getObjectType();
        v7 = v1;
        v8 = OUTLINED_FUNCTION_6_4();
        v9 = specialized AVCEffects.__allocating_init(delegate:)(v8);
        v10 = *&v1[v4];
        *&v1[v4] = v9;
        v11 = v9;

        if (v9)
        {
          [v11 setMode_];
        }
      }

      else
      {
        OUTLINED_FUNCTION_5_93();
        OUTLINED_FUNCTION_0_134();
        OUTLINED_FUNCTION_8_71();
        __break(1u);
      }
    }
  }
}

Swift::Void __swiftcall EffectsHandler.setUpEffectsObjectsIfNecessary()()
{
  v2 = v1;
  v3 = v0;
  v4 = (*(v1 + 40))();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    type metadata accessor for CameraViewController();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithMode_];
    OUTLINED_FUNCTION_2_116();
    v6();
  }

  v7 = *(v2 + 88);
  v8 = v7(v3, v2);
  if (v8)
  {
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    v9 = static Defaults.shared;
    if ((*(*static Defaults.shared + 144))())
    {
      if (swift_dynamicCastObjCProtocolConditional() && (OUTLINED_FUNCTION_6_4(), swift_getObjectType(), (v10 = dynamic_cast_existential_1_conditional(v9)) != 0))
      {
        v11 = v10;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for AVCEffects);
        swift_getObjectType();
        swift_unknownObjectRetain();
        specialized AVCEffects.__allocating_init(delegate:)(v11);
        OUTLINED_FUNCTION_2_116();
        v12();
        v13 = v7(v3, v2);
        if (v13)
        {
          v14 = v13;
          [v13 setMode_];
        }
      }

      else
      {
        OUTLINED_FUNCTION_5_93();
        OUTLINED_FUNCTION_0_134();
        OUTLINED_FUNCTION_8_71();
        __break(1u);
      }
    }
  }
}

void specialized EffectsHandler.setUpEffectsViews(using:)(char *a1)
{
  v2 = v1;
  v4 = MultiwayViewController.inCallControlsViewController.getter();
  if (v4)
  {
    v5 = v4;
    [a1 setDelegate_];
    swift_getObjectType();
    dynamic_cast_existential_1_unconditional(v1);
    v7 = v6;
    v8 = &a1[OBJC_IVAR____TtC15ConversationKit20CameraViewController_cameraDelegate];
    swift_beginAccess();
    *(v8 + 1) = v7;
    swift_unknownObjectWeakAssign();
    [a1 setUsesInternalCaptureSession_];
    [a1 setShowsViewfinder_];
    [a1 setEffectsPickerHidden:1 animated:0];
    [a1 setEffectsPickerDrawer_];
    v9 = [a1 view];
    if (v9)
    {
      v10 = v9;
      [v9 setAlpha_];

      v11 = [a1 view];
      if (v11)
      {
        v12 = v11;
        [v11 setTranslatesAutoresizingMaskIntoConstraints_];

        v13 = a1;
        MultiwayViewController.effectsViewController.setter(a1);
        [v13 willMoveToParentViewController_];
        v14 = [v13 view];
        if (v14)
        {
          v15 = v14;
          [v14 removeFromSuperview];

          [v13 removeFromParentViewController];
          [v2 addChildViewController_];
          v16 = MultiwayViewController.localParticipantView.getter();
          if (v16)
          {
            v17 = v16;
            type metadata accessor for LocalParticipantView();
            if (swift_dynamicCastClass())
            {
              v18 = [v13 view];
              if (!v18)
              {
LABEL_24:
                __break(1u);
                return;
              }

              v19 = v18;
              LocalParticipantView.addEffectsView(effectsView:)(v18);

              v17 = v19;
            }
          }

          [v13 didMoveToParentViewController_];
          v20 = swift_dynamicCastObjCProtocolConditional();
          if (v20)
          {
            v21 = v20;
            swift_getObjectType();
            v22 = dynamic_cast_existential_1_conditional(v21);
            if (v22)
            {
              v24 = v22;
              v25 = v23;
              ObjectType = swift_getObjectType();
              v27 = objc_allocWithZone(MEMORY[0x1E69938D0]);
              v28 = v2;
              v29 = [v27 initWithDelegate:v13 contentPresenter:v24];
              [v29 setContentPresenterDelegate_];
              [v28 loadViewIfNeeded];
              v30 = v29;
              MultiwayViewController.effectsBrowserViewController.setter(v29);
              (*(v25 + 72))(v29, ObjectType, v25);
            }
          }

          v31 = MultiwayViewController.constraintController.getter();
          if (!v31)
          {
            goto LABEL_17;
          }

          v32 = v31;
          v33 = [v2 view];
          if (v33)
          {
            v34 = v33;
            v35 = MultiwayViewController.localParticipantView.getter();
            v36 = [v13 view];
            v37 = MultiwayViewController.effectsBrowserContainerViewController.getter();
            MultiwayViewConstraintsController.updateConstraints(with:controlsViewController:localParticipantView:effectsView:effectsBrowserViewController:)(v34, v5, v35, v36, v37);

            v38 = [v2 view];
            if (v38)
            {
              v39 = v38;
              [v38 layoutIfNeeded];

LABEL_17:
              return;
            }

            goto LABEL_23;
          }

LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }
}

void EffectsHandler.setUpEffectsViews(using:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = OUTLINED_FUNCTION_39_1(a1, a2);
  v10 = v9(v8);
  if (v10)
  {
    v11 = v10;
    v12 = swift_dynamicCastObjCProtocolConditional();
    if (!v12)
    {
      goto LABEL_31;
    }

    [a1 setDelegate_];
    swift_getObjectType();
    if (!dynamic_cast_existential_1_conditional(v3))
    {
      goto LABEL_31;
    }

    v14 = v13;
    v15 = &a1[OBJC_IVAR____TtC15ConversationKit20CameraViewController_cameraDelegate];
    swift_beginAccess();
    *(v15 + 1) = v14;
    swift_unknownObjectWeakAssign();
    [a1 setUsesInternalCaptureSession_];
    [a1 setShowsViewfinder_];
    [a1 setEffectsPickerHidden:1 animated:0];
    [a1 setEffectsPickerDrawer_];
    v16 = &off_1E7FE9000;
    v17 = [a1 view];
    if (v17)
    {
      v18 = v17;
      [v17 setAlpha_];

      v19 = [a1 view];
      if (v19)
      {
        v20 = v19;
        [v19 setTranslatesAutoresizingMaskIntoConstraints_];

        v21 = *(a3 + 48);
        v22 = a1;
        OUTLINED_FUNCTION_2_116();
        v21();
        objc_opt_self();
        v23 = swift_dynamicCastObjCClass();
        if (!v23)
        {
          goto LABEL_14;
        }

        v24 = v23;
        swift_unknownObjectRetain();
        [v22 willMoveToParentViewController_];
        v25 = [v22 view];
        if (v25)
        {
          v26 = v25;
          [v25 removeFromSuperview];

          [v22 removeFromParentViewController];
          [v24 addChildViewController_];
          v20 = v4;
          v27 = (*(a3 + 128))(a2, a3);
          if (v27)
          {
            v28 = v27;
            type metadata accessor for LocalParticipantView();
            v29 = swift_dynamicCastClass();
            if (v29)
            {
              v20 = v29;
              v30 = [v22 view];
              if (!v30)
              {
LABEL_30:
                __break(1u);
LABEL_31:
                OUTLINED_FUNCTION_0_134();
                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
                return;
              }

              v31 = v30;
              LocalParticipantView.addEffectsView(effectsView:)(v30);

              v28 = v31;
            }
          }

          [v22 didMoveToParentViewController_];
          swift_unknownObjectRelease();
LABEL_14:
          if (swift_dynamicCastObjCProtocolConditional())
          {
            OUTLINED_FUNCTION_6_4();
            swift_getObjectType();
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
            v32 = dynamic_cast_existential_1_superclass_conditional(v20);
            if (v32)
            {
              v34 = v32;
              v35 = v33;
              ObjectType = swift_getObjectType();
              v36 = objc_allocWithZone(MEMORY[0x1E69938D0]);
              OUTLINED_FUNCTION_6_4();
              swift_unknownObjectRetain();
              v37 = [v20 initWithDelegate:v22 contentPresenter:v34];
              [v37 setContentPresenterDelegate_];
              v38 = *(a3 + 176);
              v52 = v11;
              v39 = v37;
              v38();
              (*(v35 + 72))(v39, ObjectType, v35);
              swift_unknownObjectRelease();

              v11 = v52;
              v16 = 0x1FB648000;
            }
          }

          objc_opt_self();
          v40 = swift_dynamicCastObjCClass();
          if (!v40)
          {
            goto LABEL_23;
          }

          v41 = v40;
          v42 = *(a3 + 152);
          swift_unknownObjectRetain();
          v51 = v42(a2, a3);
          if (!v51)
          {
            swift_unknownObjectRelease();
            goto LABEL_23;
          }

          v53 = v11;
          v43 = [v41 v16 + 2808];
          if (v43)
          {
            v44 = v43;
            v45 = (*(a3 + 128))(a2, a3);
            v46 = [v22 v16 + 2808];
            v47 = (*(a3 + 136))(a2, a3);
            MultiwayViewConstraintsController.updateConstraints(with:controlsViewController:localParticipantView:effectsView:effectsBrowserViewController:)(v44, v53, v45, v46, v47);

            v48 = [v41 v16 + 2808];
            if (v48)
            {
              v49 = v48;
              [v48 layoutIfNeeded];
              swift_unknownObjectRelease();

              v11 = v53;
LABEL_23:

              return;
            }

            goto LABEL_29;
          }

LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }
}

void closure #1 in EffectsHandler.handleAVCServerTimeout()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 152))(a2, a3);
  if (v5)
  {
    v6 = v5;
    (*(a3 + 168))(0, a2, a3);
    v7 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallControlsState;
    swift_beginAccess();
    v8 = *&v6[v7];
    v9 = v8 > 6;
    v10 = (1 << v8) & 0x6C;
    if (!v9 && v10 != 0)
    {
      (*(a3 + 160))(1, 1, a2, a3);
    }

    (*(a3 + 24))(a2, a3);
  }
}

id specialized AVCEffects.__allocating_init(delegate:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDelegate_];
  swift_unknownObjectRelease();
  return v1;
}

uint64_t dynamic_cast_existential_1_superclass_conditional(uint64_t a1)
{
  result = swift_dynamicCastMetatype();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

Swift::Void __swiftcall SafetyCheckManager.present(for:on:)(Swift::OpaquePointer a1, UIViewController_optional *on)
{
  if (on)
  {
    v2 = MEMORY[0x1E69E7CC0];
    v12 = MEMORY[0x1E69E7CC0];
    v3 = *(a1._rawValue + 2);
    v4 = a1._rawValue + 32;
    v5 = on;
    v6 = 0;
    while (v3 != v6)
    {
      if (v6 >= v3)
      {
        __break(1u);
LABEL_15:
        __break(1u);
        return;
      }

      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_15;
      }

      v8 = *&v4[8 * v6++];
      if (v8)
      {
        v9 = v8;
        MEMORY[0x1BFB20CC0]();
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v2 = v12;
        v6 = v7;
      }
    }

    OUTLINED_FUNCTION_20();
    v10 = swift_allocObject();
    *(v10 + 16) = v2;
    OUTLINED_FUNCTION_20();
    v11 = swift_allocObject();
    *(v11 + 16) = v2;

    SafetyCheckManager.presentSafetyCheck(creationTask:retryTask:presentingViewController:)(&async function pointer to partial apply for closure #1 in SafetyCheckManager.makeSafetyCheckController(for:), v10, &closure #1 in SafetyCheckManager.makeSafetyCheckController(for:)partial apply, v11, v5);
  }
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20LiveCommunicationKit6HandleVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = OUTLINED_FUNCTION_31_26();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_29_24();
  v34 = v12;
  v13 = a1._rawValue + 32;
  v14 = MEMORY[0x1E69E7CC0];
  v31 = a1._rawValue + 32;
  for (i = v11; ; v11 = i)
  {
    v15 = &v13[8 * v2];
    v16 = v11 - v2++;
    if (!v16)
    {
      break;
    }

    while (1)
    {
      if (!*v15)
      {
        v20 = OUTLINED_FUNCTION_311();
        __swift_storeEnumTagSinglePayload(v20, v21, 1, v6);
        goto LABEL_7;
      }

      v17 = *v15;
      TUHandle.toHandle()(v3);

      v18 = OUTLINED_FUNCTION_311();
      if (__swift_getEnumTagSinglePayload(v18, v19, v6) != 1)
      {
        break;
      }

LABEL_7:
      outlined destroy of TapInteractionHandler?(v3, &_s20LiveCommunicationKit6HandleVSgMd);
      ++v2;
      ++v15;
      if (!--v16)
      {
        goto LABEL_14;
      }
    }

    v22 = *v34;
    (*v34)(v10, v3, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_43();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v14 = v27;
    }

    v24 = *(v14 + 16);
    if (v24 >= *(v14 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v14 = v28;
    }

    *(v14 + 16) = v24 + 1;
    OUTLINED_FUNCTION_17_17();
    v22(v14 + v25 + *(v26 + 72) * v24, v10, v6);
    v13 = v31;
  }

LABEL_14:
  specialized _arrayForceCast<A, B>(_:)();
  v30._rawValue = v29;

  SafetyCheckManager.present(for:on:)(v30, on);
}

{
  v5 = type metadata accessor for Handle();
  OUTLINED_FUNCTION_1();
  v40 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20LiveCommunicationKit6HandleVSgMd) - 8;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v36 - v16;
  if (on)
  {
    v36[1] = v2;
    v37 = on;
    v18 = *(a1._rawValue + 2);
    if (v18)
    {
      v19 = a1._rawValue + ((*(v15 + 80) + 32) & ~*(v15 + 80));
      v20 = *(v15 + 72);
      v21 = (v40 + 32);
      v22 = on;
      v23 = MEMORY[0x1E69E7CC0];
      v38 = v20;
      v39 = v10;
      do
      {
        outlined init with copy of Handle?(v19, v17);
        outlined init with take of Handle?(v17, v13);
        v24 = OUTLINED_FUNCTION_311();
        if (__swift_getEnumTagSinglePayload(v24, v25, v5) == 1)
        {
          outlined destroy of TapInteractionHandler?(v13, &_s20LiveCommunicationKit6HandleVSgMd);
        }

        else
        {
          v26 = *v21;
          (*v21)(v10, v13, v5);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_43();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v23 = v30;
          }

          v27 = *(v23 + 16);
          if (v27 >= *(v23 + 24) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v23 = v31;
          }

          *(v23 + 16) = v27 + 1;
          v10 = v39;
          OUTLINED_FUNCTION_17_17();
          v26(v23 + v28 + *(v29 + 72) * v27, v10, v5);
          v20 = v38;
        }

        v19 += v20;
        --v18;
      }

      while (v18);
    }

    else
    {
      v32 = on;
      v23 = MEMORY[0x1E69E7CC0];
    }

    OUTLINED_FUNCTION_20();
    v33 = swift_allocObject();
    *(v33 + 16) = v23;
    OUTLINED_FUNCTION_20();
    v34 = swift_allocObject();
    *(v34 + 16) = v23;

    v35 = v37;
    SafetyCheckManager.presentSafetyCheck(creationTask:retryTask:presentingViewController:)(&async function pointer to partial apply for closure #1 in SafetyCheckManager.makeSafetyCheckController(for:), v33, &closure #1 in SafetyCheckManager.makeSafetyCheckController(for:)partial apply, v34, v37);
  }
}

Swift::Void __swiftcall SafetyCheckManager.fetchSharing()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = OBJC_IVAR____TtC15ConversationKit18SafetyCheckManager_fetchTask;
  if (!*(v0 + OBJC_IVAR____TtC15ConversationKit18SafetyCheckManager_fetchTask))
  {
    type metadata accessor for TaskPriority();
    v3 = OUTLINED_FUNCTION_2_10();
    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
    OUTLINED_FUNCTION_24();
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
    *(v0 + v2) = v8;
  }
}

uint64_t UIViewController.presentSafetyCheck(initiator:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo8TUHandleCSgGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA940;
  *(inited + 32) = a1;
  v5 = one-time initialization token for shared;
  v6 = a1;
  if (v5 != -1)
  {
    OUTLINED_FUNCTION_0_135();
  }

  SafetyCheckManager.present(for:on:)(inited, v2);
  swift_setDeallocating();
  return specialized _ContiguousArrayStorage.__deallocating_deinit();
}

id SafetyCheckManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static SafetyCheckManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_135();
  }

  v1 = static SafetyCheckManager.shared;

  return v1;
}

uint64_t closure #1 in SafetyCheckManager.fetchSharing()()
{
  return MEMORY[0x1EEE6DFA0](closure #1 in SafetyCheckManager.fetchSharing(), 0, 0);
}

{
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for DSBlockingController();
  *(v0 + 16) = static DSBlockingController.sharedInstance.getter();
  OUTLINED_FUNCTION_13_9(MEMORY[0x1E699A160]);
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_130(v2);

  return v4();
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t SafetyCheckManager.presentSafetyCheck(creationTask:retryTask:presentingViewController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - v12;
  v14 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v5;
  v15[5] = a1;
  v15[6] = a2;
  v15[7] = a5;
  v15[8] = a3;
  v15[9] = a4;
  v16 = v5;

  v17 = a5;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t TUHandle.toHandle()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Handle.Kind();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v4 = [v1 type];
  if (v4 != 1 && (v4 == 2 || v4 == 3))
  {
    v10 = OUTLINED_FUNCTION_14_47();
    v11(v10);
    v12 = [v1 value];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    OUTLINED_FUNCTION_22_35();
    v13 = type metadata accessor for Handle();
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v13);
  }

  else
  {
    type metadata accessor for Handle();
    v5 = OUTLINED_FUNCTION_2_10();

    return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t closure #1 in SafetyCheckManager.presentSafetyCheck(creationTask:retryTask:presentingViewController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a8;
  v8[22] = v14;
  v8[19] = a6;
  v8[20] = a7;
  v8[17] = a4;
  v8[18] = a5;
  v9 = type metadata accessor for SafetyCheckWhenBlockingError();
  v8[23] = v9;
  v8[24] = *(v9 - 8);
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v8[29] = v10;
  v8[30] = *(v10 - 8);
  v8[31] = swift_task_alloc();
  v11 = type metadata accessor for DispatchQoS();
  v8[32] = v11;
  v8[33] = *(v11 - 8);
  v8[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in SafetyCheckManager.presentSafetyCheck(creationTask:retryTask:presentingViewController:), 0, 0);
}

uint64_t closure #1 in SafetyCheckManager.presentSafetyCheck(creationTask:retryTask:presentingViewController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_9();
  v13 = v12[17];
  v14 = OBJC_IVAR____TtC15ConversationKit18SafetyCheckManager_fetchTask;
  v12[35] = OBJC_IVAR____TtC15ConversationKit18SafetyCheckManager_fetchTask;
  v15 = *(v13 + v14);
  v12[36] = v15;
  if (v15)
  {

    v16 = swift_task_alloc();
    v12[37] = v16;
    *v16 = v12;
    v16[1] = closure #1 in SafetyCheckManager.presentSafetyCheck(creationTask:retryTask:presentingViewController:);
    v22 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA40](v16, v15, v22, v17, v18, v19, v20, v21, a9, a10, a11, a12);
  }

  else
  {
    OUTLINED_FUNCTION_3_108();
    v35 = v23;
    v24 = swift_task_alloc();
    v12[38] = v24;
    *v24 = v12;
    v32 = OUTLINED_FUNCTION_4_100(v24, v25, v26, v27, v28, v29, v30, v31, v34, v35);

    return v32();
  }
}

uint64_t closure #1 in SafetyCheckManager.presentSafetyCheck(creationTask:retryTask:presentingViewController:)()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_9();
  v1 = v0[35];
  v2 = v0[17];

  *(v2 + v1) = 0;

  OUTLINED_FUNCTION_3_108();
  v15 = v3;
  v4 = swift_task_alloc();
  v0[38] = v4;
  *v4 = v0;
  v12 = OUTLINED_FUNCTION_4_100(v4, v5, v6, v7, v8, v9, v10, v11, v14, v15);

  return v12();
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_14_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 312) = v4;
  *(v2 + 320) = v0;

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

{
  v1 = v0[39];
  if (v1)
  {
    v2 = v0[34];
    v3 = v0[31];
    v16 = v0[33];
    v17 = v0[32];
    v4 = v0[29];
    v5 = v0[30];
    v6 = v0[20];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v15 = static OS_dispatch_queue.main.getter();
    OUTLINED_FUNCTION_24();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v1;
    v0[12] = partial apply for closure #1 in closure #1 in SafetyCheckManager.presentSafetyCheck(creationTask:retryTask:presentingViewController:);
    v0[13] = v7;
    v0[8] = MEMORY[0x1E69E9820];
    v0[9] = 1107296256;
    v0[10] = thunk for @escaping @callee_guaranteed () -> ();
    v0[11] = &block_descriptor_39;
    v8 = _Block_copy(v0 + 8);
    v9 = v6;
    v10 = v1;
    static DispatchQoS.unspecified.getter();
    v0[16] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_8_72();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1BFB215C0](0, v2, v3, v8);
    _Block_release(v8);

    (*(v5 + 8))(v3, v4);
    (*(v16 + 8))(v2, v17);
  }

  OUTLINED_FUNCTION_9_68();

  OUTLINED_FUNCTION_13();

  return v13();
}

{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;
  v4 = *(v1 + 168);
  v5 = *v0;
  *v3 = *v0;

  v8 = (v4 + *v4);
  v6 = swift_task_alloc();
  *(v2 + 360) = v6;
  *v6 = v5;
  v6[1] = closure #1 in SafetyCheckManager.presentSafetyCheck(creationTask:retryTask:presentingViewController:);

  return v8();
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_14_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 368) = v4;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

{
  v1 = v0[46];
  if (v1)
  {
    v20 = v0[41];
    v2 = v0[34];
    v3 = v0[31];
    v4 = v0[29];
    v5 = v0[30];
    v18 = v0[28];
    v19 = v0[32];
    v16 = v0[33];
    v17 = v0[23];
    v6 = v0[20];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v15 = static OS_dispatch_queue.main.getter();
    OUTLINED_FUNCTION_24();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v1;
    v0[6] = partial apply for closure #2 in closure #1 in SafetyCheckManager.presentSafetyCheck(creationTask:retryTask:presentingViewController:);
    v0[7] = v7;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = thunk for @escaping @callee_guaranteed () -> ();
    v0[5] = &block_descriptor_56;
    v8 = _Block_copy(v0 + 2);
    v9 = v6;
    v10 = v1;
    static DispatchQoS.unspecified.getter();
    v0[15] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_8_72();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1BFB215C0](0, v2, v3, v8);
    _Block_release(v8);

    (*(v5 + 8))(v3, v4);
    (*(v16 + 8))(v2, v19);
    v20(v18, v17);
  }

  else
  {
    (v0[41])(v0[28], v0[23]);
  }

  OUTLINED_FUNCTION_9_68();

  OUTLINED_FUNCTION_13();

  return v13();
}

{
  (*(v0 + 328))(*(v0 + 224), *(v0 + 184));

  OUTLINED_FUNCTION_9_68();

  OUTLINED_FUNCTION_13();

  return v1();
}

void closure #1 in SafetyCheckManager.presentSafetyCheck(creationTask:retryTask:presentingViewController:)()
{
  v1 = *(v0 + 320);
  *(v0 + 112) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 224);
    v5 = *(v0 + 192);
    v4 = *(v0 + 200);
    v6 = *(v0 + 184);

    (*(v5 + 32))(v3, v4, v6);
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_12_56();
    }

    v7 = *(v0 + 216);
    v8 = *(v0 + 224);
    v9 = *(v0 + 184);
    v10 = *(v0 + 192);
    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, logger);
    v14 = *(v10 + 16);
    v12 = (v10 + 16);
    v13 = v14;
    v14(v7, v8, v9);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 216);
    v19 = *(v0 + 184);
    if (v17)
    {
      v20 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v20 = 138412290;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type SafetyCheckWhenBlockingError and conformance SafetyCheckWhenBlockingError, MEMORY[0x1E699A180]);
      swift_allocError();
      v13(v21, v18, v19);
      v22 = _swift_stdlib_bridgeErrorToNSError();
      v23 = OUTLINED_FUNCTION_24_32();
      v12(v23);
      *(v20 + 4) = v22;
      *v45 = v22;
      _os_log_impl(&dword_1BBC58000, v15, v16, "presentSafetyCheck: SCWB error %@", v20, 0xCu);
      outlined destroy of TapInteractionHandler?(v45, &_sSo8NSObjectCSgMd);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {

      v35 = OUTLINED_FUNCTION_24_32();
      v12(v35);
    }

    *(v0 + 328) = v12;
    v36 = *(v0 + 208);
    v37 = *(v0 + 184);
    (*(*(v0 + 192) + 104))(v36, *MEMORY[0x1E699A170], v37);
    v38 = static SafetyCheckWhenBlockingError.== infix(_:_:)();
    *(v0 + 336) = v13;
    (v12)(v36, v37);
    if (v38)
    {
      type metadata accessor for DSBlockingController();
      *(v0 + 344) = static DSBlockingController.sharedInstance.getter();
      OUTLINED_FUNCTION_13_9(MEMORY[0x1E699A160]);
      v39 = swift_task_alloc();
      *(v0 + 352) = v39;
      *v39 = v0;
      OUTLINED_FUNCTION_130(v39);
      OUTLINED_FUNCTION_17_3();

      __asm { BR              X0 }
    }

    (v12)(*(v0 + 224), *(v0 + 184));
    v42 = *(v0 + 112);
  }

  else
  {

    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_12_56();
    }

    v24 = *(v0 + 320);
    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, logger);
    v26 = v24;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 320);
    if (v29)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      v33 = v30;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v34;
      *v32 = v34;
      _os_log_impl(&dword_1BBC58000, v27, v28, "Failed to present safety check for handles: %@", v31, 0xCu);
      outlined destroy of TapInteractionHandler?(v32, &_sSo8NSObjectCSgMd);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();

      goto LABEL_18;
    }

    v42 = v30;
  }

LABEL_18:
  OUTLINED_FUNCTION_9_68();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_17_3();

  __asm { BRAA            X1, X16 }
}

uint64_t closure #1 in SafetyCheckManager.makeSafetyCheckController(for:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in SafetyCheckManager.makeSafetyCheckController(for:), 0, 0);
}

{
  *(v1 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in SafetyCheckManager.makeSafetyCheckController(for:), 0, 0);
}

uint64_t closure #1 in SafetyCheckManager.makeSafetyCheckController(for:)()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[2];
  type metadata accessor for DSBlockingController();
  v0[3] = static DSBlockingController.sharedInstance.getter();
  OUTLINED_FUNCTION_13_9(MEMORY[0x1E699A150]);
  v5 = v2;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_130(v3);

  return v5(v1, 0);
}

{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_5_6();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_28_33();

    return v11(v10);
  }
}

{
  OUTLINED_FUNCTION_9();
  v1 = v0[2];
  type metadata accessor for DSBlockingController();
  v0[3] = static DSBlockingController.sharedInstance.getter();
  OUTLINED_FUNCTION_13_9(MEMORY[0x1E699A150]);
  v5 = v2;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_130(v3);

  return v5(0, v1);
}

{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_5_6();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_28_33();

    return v11(v10);
  }
}

uint64_t partial apply for closure #1 in SafetyCheckManager.makeSafetyCheckController(for:)()
{
  OUTLINED_FUNCTION_24_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_92(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_60(v1);

  return closure #1 in SafetyCheckManager.makeSafetyCheckController(for:)(v3);
}

{
  OUTLINED_FUNCTION_24_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_92(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_60(v1);

  return closure #1 in SafetyCheckManager.makeSafetyCheckController(for:)(v3);
}

uint64_t partial apply for closure #1 in SafetyCheckManager.fetchSharing()()
{
  OUTLINED_FUNCTION_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_92(v0);
  *v1 = v2;
  v1[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);

  return closure #1 in SafetyCheckManager.fetchSharing()();
}

id SafetyCheckManager.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC15ConversationKit18SafetyCheckManager_fetchTask] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id SafetyCheckManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall UIViewController.fetchSharing()()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_135();
  }

  SafetyCheckManager.fetchSharing()();
}

void @objc UIViewController.fetchSharing()(void *a1)
{
  v1 = a1;
  UIViewController.fetchSharing()();
}

Swift::Void __swiftcall UIViewController.presentSafetyCheck(contacts:)(Swift::OpaquePointer contacts)
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_135();
  }

  v3 = specialized _arrayForceCast<A, B>(_:)(contacts._rawValue);
  SafetyCheckManager.present(for:on:)(v3, v1);
}

uint64_t @objc UIViewController.presentSafetyCheck(contacts:)(void *a1)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = a1;
  UIViewController.presentSafetyCheck(contacts:)(v2);
}

uint64_t UIViewController.presentSafetyCheck(tuHandles:)(uint64_t a1, void (*a2)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20LiveCommunicationKit6HandleVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = OUTLINED_FUNCTION_31_26();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v36 = v10 - v9;
  OUTLINED_FUNCTION_29_24();
  v35 = v12;
  v13 = a1 + 32;
  v14 = MEMORY[0x1E69E7CC0];
  v32 = a1 + 32;
  for (i = v11; ; v11 = i)
  {
    v15 = (v13 + 8 * v2);
    v16 = v11 - v2++;
    if (!v16)
    {
      break;
    }

    while (1)
    {
      if (!*v15)
      {
        v20 = OUTLINED_FUNCTION_311();
        __swift_storeEnumTagSinglePayload(v20, v21, 1, v7);
        goto LABEL_7;
      }

      v17 = *v15;
      a2();

      v18 = OUTLINED_FUNCTION_311();
      if (__swift_getEnumTagSinglePayload(v18, v19, v7) != 1)
      {
        break;
      }

LABEL_7:
      outlined destroy of TapInteractionHandler?(v3, &_s20LiveCommunicationKit6HandleVSgMd);
      ++v2;
      ++v15;
      if (!--v16)
      {
        goto LABEL_14;
      }
    }

    v22 = *v35;
    (*v35)(v36, v3, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_43();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v14 = v27;
    }

    v24 = *(v14 + 16);
    if (v24 >= *(v14 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v14 = v28;
    }

    *(v14 + 16) = v24 + 1;
    OUTLINED_FUNCTION_17_17();
    v22(v14 + v25 + *(v26 + 72) * v24, v36, v7);
    v13 = v32;
  }

LABEL_14:
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_135();
  }

  specialized _arrayForceCast<A, B>(_:)();
  v30._rawValue = v29;

  SafetyCheckManager.present(for:on:)(v30, v34);
}

uint64_t CHHandle.toHandle()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Handle.Kind();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  switch([v1 type])
  {
    case 2uLL:
    case 3uLL:
      v9 = OUTLINED_FUNCTION_14_47();
      v10(v9);
      v11 = [v1 value];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      OUTLINED_FUNCTION_22_35();
      v12 = type metadata accessor for Handle();
      result = __swift_storeEnumTagSinglePayload(a1, 0, 1, v12);
      break;
    default:
      type metadata accessor for Handle();
      v4 = OUTLINED_FUNCTION_2_10();

      result = __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
      break;
  }

  return result;
}

uint64_t outlined init with copy of Handle?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20LiveCommunicationKit6HandleVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t closure #1 in SafetyCheckManager.makeSafetyCheckController(for:)partial apply()
{
  OUTLINED_FUNCTION_24_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_92(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_60(v1);

  return closure #1 in SafetyCheckManager.makeSafetyCheckController(for:)(v3);
}

{
  OUTLINED_FUNCTION_24_0();
  v2 = v1;
  OUTLINED_FUNCTION_23_0();
  v3 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t partial apply for closure #1 in SafetyCheckManager.presentSafetyCheck(creationTask:retryTask:presentingViewController:)()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_92(v0);
  *v1 = v2;
  v1[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);
  OUTLINED_FUNCTION_17_3();

  return closure #1 in SafetyCheckManager.presentSafetyCheck(creationTask:retryTask:presentingViewController:)(v3, v4, v5, v6, v7, v8, v9, v10);
}

double static SystemApertureLayoutMargins.concentric.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

uint64_t get_enum_tag_for_layout_string_15ConversationKit27SystemApertureLayoutMarginsO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t getEnumTagSinglePayload for SystemApertureLayoutMargins(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for SystemApertureLayoutMargins(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for SystemApertureLayoutMargins(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t AudioMuteButtonViewModel.__allocating_init(service:)(__int128 *a1)
{
  v2 = swift_allocObject();
  AudioMuteButtonViewModel.init(service:)(a1);
  return v2;
}

uint64_t AudioMuteButtonViewModel.init(service:)(__int128 *a1)
{
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  outlined init with take of TapInteractionHandler(a1, v1 + 16);
  return v1;
}

uint64_t AudioMuteButtonViewModel.config.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleVySbGMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  if (v0[8])
  {
    v4 = v0[8];
  }

  else
  {
    AudioMuteButtonViewModel.buttonStyle.getter(&v18 - v3);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v5 = static Features.shared;
    if (Features.isICUIRedesignEnabled.getter())
    {
      v18 = 0;
    }

    else
    {
      v6 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_11_3();
      v18 = OUTLINED_FUNCTION_48_1(0xD00000000000001ALL, 0x80000001BC504760, 0x61737265766E6F43, 0xEF74694B6E6F6974);
    }

    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    v7 = OUTLINED_FUNCTION_1_117();
    if (v8(v7))
    {
      v9 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_11_3();
      v10 = 0x80000001BC50A0C0;
      v11 = 0xD000000000000010;
    }

    else
    {
      v12 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_11_3();
      v11 = 0x4D5F524557415244;
      v10 = 0xEE0058415F455455;
    }

    OUTLINED_FUNCTION_48_1(v11, v10, 0x61737265766E6F43, 0xEF74694B6E6F6974);

    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    v13 = OUTLINED_FUNCTION_1_117();
    v15 = v14(v13);
    v16 = swift_allocObject();
    swift_weakInit();
    v20 = v15 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI16IconButtonConfigCySbGMd);
    swift_allocObject();
    v21 = partial apply for closure #1 in AudioMuteButtonViewModel.config.getter;
    v22 = v16;
    v19 = 1;
    v18 = &v20;
    v4 = IconButtonConfig.init(style:title:hasBadge:accessibilityLabel:accessibilityValue:accessibilityIdentifier:state:enabled:didTap:)();
    v1[8] = v4;
  }

  return v4;
}

Swift::Void __swiftcall AudioMuteButtonViewModel.onAppear()()
{
  AudioMuteButtonViewModel.observeMutedStates()();

  AudioMuteButtonViewModel.updateAccessibilityLabel()();
}

Swift::Void __swiftcall AudioMuteButtonViewModel.observeMutedStates()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySbs5NeverOGSo9NSRunLoopCGMd);
  v5 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v7 = &v14 - v6;
  v8 = v0[5];
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  v17 = (*(v9 + 208))(v8, v9);
  v10 = [objc_opt_self() mainRunLoop];
  v16 = v10;
  v11 = type metadata accessor for NSRunLoop.SchedulerOptions();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd);
  type metadata accessor for NSRunLoop();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySbs5NeverOGMd);
  lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop();
  Publisher.receive<A>(on:options:)();
  outlined destroy of TapInteractionHandler?(v4, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<Bool, Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySbs5NeverOGSo9NSRunLoopCGMd);
  v12 = v15;
  v13 = Publisher<>.sink(receiveValue:)();

  (*(v5 + 8))(v7, v12);
  v1[7] = v13;
}

uint64_t AudioMuteButtonViewModel.updateAccessibilityLabel()()
{
  AudioMuteButtonViewModel.config.getter();

  IconButtonConfig.state.getter();

  v0 = [objc_opt_self() conversationKit];
  v7 = 0xE000000000000000;
  if (v8 == 1)
  {
    v1 = 0x80000001BC50A0C0;
    v2 = 0xD000000000000010;
  }

  else
  {
    v2 = 0x4D5F524557415244;
    v1 = 0xEE0058415F455455;
  }

  v3.value._countAndFlagsBits = 0x61737265766E6F43;
  v3.value._object = 0xEF74694B6E6F6974;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(*&v2, v3, v0, v4, *(&v7 - 1));

  IconButtonConfig.accessibilityLabel.setter();
}

Swift::Void __swiftcall AudioMuteButtonViewModel.didTap()()
{
  AudioMuteButtonViewModel.config.getter();
  v1 = IconButtonConfig.state.modify();
  *v2 = !*v2;
  v1(v5, 0);

  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);

  IconButtonConfig.state.getter();

  (*(v4 + 216))(v5[0], v3, v4);
  AudioMuteButtonViewModel.updateAccessibilityLabel()();
}

uint64_t closure #1 in AudioMuteButtonViewModel.observeMutedStates()(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    AudioMuteButtonViewModel.config.getter();
    IconButtonConfig.state.getter();

    if (v1 != v3)
    {

      IconButtonConfig.state.setter();

      AudioMuteButtonViewModel.updateAccessibilityLabel()();
    }
  }

  return result;
}

uint64_t AudioMuteButtonViewModel.symbolName.getter()
{
  v0 = *MEMORY[0x1E69DDCF8];
  v4[64] = 0;
  strcpy(v5, "mic.slash.fill");
  HIBYTE(v5[1]) = -18;
  v5[2] = 3;
  v5[3] = v0;
  v6 = 0;
  v7 = 4;
  v8 = 0;
  v9 = 0;
  strcpy(v10, "mic.slash.fill");
  v10[15] = -18;
  v11 = 3;
  v12 = v0;
  v13 = 0;
  v14 = 4;
  v15 = 0;
  v16 = 0;
  v1 = v0;
  outlined init with copy of SymbolImageDescription(v5, v4);
  outlined destroy of SymbolImageDescription(v10);
  v2 = v5[0];

  outlined destroy of SymbolImageDescription(v5);
  return v2;
}

uint64_t AudioMuteButtonViewModel.buttonStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v1 = type metadata accessor for IconButtonWidthRestriction();
  v21 = *(v1 - 8);
  v22 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Font.Leading();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6_GlassVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVySb_GMd);
  v19 = *(v11 - 8);
  v20 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v18 - v12;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (Features.isICUIRedesignEnabled.getter())
  {
    static IconButtonStyle.Defaults.phone.iconFont.getter();
    static IconButtonStyle.SystemSymbol<A>.iosCallControl(name:color:background:glass:font:)();
  }

  else
  {
    AudioMuteButtonViewModel.symbolName.getter();
    static IconButtonStyle.Defaults.phone.iconFont.getter();
    static IconButtonStyle.SystemSymbol<A>.iosCallControl(name:color:background:glass:font:)();
  }

  v14 = type metadata accessor for _Glass();
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v14);
  static Color.white.getter();
  static Font.subheadline.getter();
  (*(v5 + 104))(v7, *MEMORY[0x1E6980EA8], v4);
  Font.leading(_:)();

  (*(v5 + 8))(v7, v4);
  static IconButtonStyle.Defaults.phone.iconWidth.getter();
  v16 = v21;
  v15 = v22;
  (*(v21 + 104))(v3, *MEMORY[0x1E6995BD0], v22);
  static IconButtonStyle.iosCallControl(symbol:background:glass:labelColor:labelFont:labelPosition:maxWidth:width:widthRestriction:spacing:)();

  (*(v16 + 8))(v3, v15);
  outlined destroy of TapInteractionHandler?(v10, &_s7SwiftUI6_GlassVSgMd);
  outlined destroy of TapInteractionHandler?(v23, &_s7SwiftUI10ShapeStyle_pSgMd);
  return (*(v19 + 8))(v13, v20);
}

uint64_t closure #5 in AudioMuteButtonViewModel.buttonStyle.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x6F68706F7263696DLL;
  }
}

uint64_t closure #6 in AudioMuteButtonViewModel.buttonStyle.getter(char a1)
{
  if ((a1 & 1) == 0)
  {
    return static Color.orange.getter();
  }

  v1 = [objc_opt_self() redColor];
  UIColor.apply(_:)();

  return Color.init(uiColor:)();
}

uint64_t closure #7 in AudioMuteButtonViewModel.buttonStyle.getter@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    static IconButtonStyle.SystemSymbol<A>.controlGlassOff.getter();
  }

  else
  {
    static IconButtonStyle.SystemSymbol<A>.controlGlassOn.getter();
  }

  v3 = type metadata accessor for _Glass();

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v3);
}

uint64_t closure #8 in AudioMuteButtonViewModel.buttonStyle.getter(char a1)
{
  if (a1)
  {
    return static Color.red.getter();
  }

  else
  {
    return static Color.white.getter();
  }
}

uint64_t closure #1 in AudioMuteButtonViewModel.config.getter()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    AudioMuteButtonViewModel.didTap()();
  }

  return result;
}

uint64_t AudioMuteButtonViewModel.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t AudioMuteButtonViewModel.__deallocating_deinit()
{
  AudioMuteButtonViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t closure #1 in default argument 2 of static IconButtonStyle.SystemSymbol<A>.iosCallControl(name:color:background:glass:font:)@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    result = static IconButtonStyle.SystemSymbol<A>.controlBackgroundOn.getter();
  }

  else
  {
    result = static IconButtonStyle.SystemSymbol<A>.controlBackgroundOff.getter();
  }

  v4 = MEMORY[0x1E6981568];
  a2[3] = MEMORY[0x1E69815C0];
  a2[4] = v4;
  *a2 = result;
  return result;
}

{
  if (a1)
  {
    result = static IconButtonStyle.SystemSymbol<A>.controlBackgroundOn.getter();
    v4 = MEMORY[0x1E6981568];
    a2[3] = MEMORY[0x1E69815C0];
    a2[4] = v4;
    *a2 = result;
  }

  else
  {
    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVAASbRszlE23iOSControlBackgroundOffQrvpZQOySb__Qo_Md);
    a2[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(a2);
    return static IconButtonStyle.SystemSymbol<A>.iOSControlBackgroundOff.getter();
  }

  return result;
}

uint64_t ReceiptionistCaptionsProvider.__allocating_init(call:callerName:)()
{
  v0 = swift_allocObject();
  ReceiptionistCaptionsProvider.init(call:callerName:)();
  return v0;
}

void ReceiptionistCaptionsProvider.init(call:callerName:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore23CallScreeningTranscriptVSgMd);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 40) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + 72) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySSs5NeverOGMd);
  swift_allocObject();
  *(v0 + 80) = CurrentValueSubject.init(_:)();
  v10 = type metadata accessor for CallScreeningTranscript();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy20CommunicationsUICore23CallScreeningTranscriptVSgs5NeverOGMd);
  swift_allocObject();
  *(v0 + 88) = CurrentValueSubject.init(_:)();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v10);
  swift_allocObject();
  *(v0 + 96) = CurrentValueSubject.init(_:)();
  *(v0 + 112) = 0;
  type metadata accessor for TUCallReceptionistState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit11ParticipantV7CaptionVGMd);
  lazy protocol witness table accessor for type TUCallReceptionistState and conformance TUCallReceptionistState(&lazy protocol witness table cache variable for type TUCallReceptionistState and conformance TUCallReceptionistState, type metadata accessor for TUCallReceptionistState);
  *(v0 + 120) = Dictionary.init(dictionaryLiteral:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12RTTUtteranceCGMd);
  *(v0 + 128) = Dictionary.init(dictionaryLiteral:)();
  *(v0 + 136) = 0;
  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  *(v0 + 104) = static CallScreeningViewModelComposer.viewModel;
  swift_retain_n();
  TranscriptionViewModel.initialScreeningResponse.setter();

  swift_unknownObjectWeakAssign();
  v17 = [v7 uniqueProxyIdentifier];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *(v1 + 56) = v18;
  *(v1 + 64) = v20;
  v21 = [v7 answeringMachineStreamToken];
  OUTLINED_FUNCTION_3_5();
  *(v1 + 16) = v21;
  *(v1 + 24) = 0;
  ReceiptionistCaptionsProvider.callerName.setter(v5, v3);
  type metadata accessor for ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient();
  swift_allocObject();
  v22 = v7;

  ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.init(call:provider:)();
  v24 = v23;
  OUTLINED_FUNCTION_3_5();
  *(v1 + 72) = v24;

  ReceiptionistCaptionsProvider.observeRTTState()();
  ReceiptionistCaptionsProvider.observeDisplayContextState()();

  OUTLINED_FUNCTION_30_0();
}

uint64_t ReceiptionistCaptionsProvider.callerName.setter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    CurrentValueSubject.send(_:)();
  }

  return result;
}

void ReceiptionistCaptionsProvider.observeRTTState()()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:sel_setupRTTMessageObserverIfNecessary name:*MEMORY[0x1E69D8F08] object:0];

  ReceiptionistCaptionsProvider.setupRTTMessageObserverIfNecessary()();
}

void ReceiptionistCaptionsProvider.observeDisplayContextState()()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:sel_updateDisplayContextState name:*MEMORY[0x1E69D8E70] object:0];
}

uint64_t ReceiptionistCaptionsProvider.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 32);
  MEMORY[0x1BFB23F10](v0 + 48);

  return v0;
}

uint64_t ReceiptionistCaptionsProvider.__deallocating_deinit()
{
  ReceiptionistCaptionsProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t ReceiptionistCaptionsProvider.token.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t key path getter for ReceiptionistCaptionsProvider.participantCaptionsProviderDelegate : ReceiptionistCaptionsProvider@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for ReceiptionistCaptionsProvider.participantCaptionsProviderDelegate : ReceiptionistCaptionsProvider(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t ReceiptionistCaptionsProvider.participantCaptionsProviderDelegate.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t ReceiptionistCaptionsProvider.participantCaptionsProviderDelegate.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_5();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*ReceiptionistCaptionsProvider.participantCaptionsProviderDelegate.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 40);
  v3[3] = Strong;
  v3[4] = v5;
  return ReceiptionistCaptionsProvider.participantCaptionsProviderDelegate.modify;
}

Swift::Void __swiftcall ReceiptionistCaptionsProvider.enableCaptions(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  type metadata accessor for MainActor();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(v11 + 32) = v2;
  *(v11 + 40) = a1;
  OUTLINED_FUNCTION_59();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5();
}

uint64_t closure #1 in ReceiptionistCaptionsProvider.enableCaptions(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 88) = a5;
  *(v5 + 40) = a1;
  *(v5 + 48) = a4;
  type metadata accessor for MainActor();
  *(v5 + 56) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 64) = v7;
  *(v5 + 72) = v6;

  return MEMORY[0x1EEE6DFA0](closure #1 in ReceiptionistCaptionsProvider.enableCaptions(_:), v7, v6);
}

uint64_t closure #1 in ReceiptionistCaptionsProvider.enableCaptions(_:)()
{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v2 = *(v1 + 72);
  *(v0 + 80) = v2;
  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in ReceiptionistCaptionsProvider.enableCaptions(_:), v2, 0);
  }

  else
  {

    **(v0 + 40) = *(v0 + 80) == 0;
    OUTLINED_FUNCTION_13();

    return v3();
  }
}

{
  OUTLINED_FUNCTION_24_0();
  [*(*(v0 + 80) + 168) enableCaptions_];

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return MEMORY[0x1EEE6DFA0](closure #1 in ReceiptionistCaptionsProvider.enableCaptions(_:), v1, v2);
}

{
  OUTLINED_FUNCTION_24_0();

  **(v0 + 40) = *(v0 + 80) == 0;
  OUTLINED_FUNCTION_13();

  return v1();
}

uint64_t ReceiptionistCaptionsProvider.callUUID.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t ReceiptionistCaptionsProvider.client.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
}

void ReceiptionistCaptionsProvider.updateCaption(_:with:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore23CallScreeningTranscriptVSgMd);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v50 - v8;
  v53 = type metadata accessor for CallScreeningTranscript();
  OUTLINED_FUNCTION_1();
  v51 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v50 = v13 - v12;
  v52 = type metadata accessor for Participant.Caption(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  v17 = v16 - v15;
  swift_beginAccess();
  v18 = specialized Dictionary.subscript.getter(v3, *(v0 + 120));
  swift_endAccess();
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  v54[2] = v5;

  v20 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in ReceiptionistCaptionsProvider.updateCaption(_:with:), v54, v19);
  v22 = v21;

  if (v22)
  {
    outlined init with copy of Participant.Caption(v5, v17);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v19 = v47;
    }

    v23 = *(v19 + 16);
    if (v23 >= *(v19 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v19 = v48;
    }

    *(v19 + 16) = v23 + 1;
    OUTLINED_FUNCTION_23_37();
    outlined init with take of Participant.Caption(v17, v24 + v25 * v23);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  specialized _ArrayBuffer._consumeAndCreateNew()();
  v19 = v49;
  if ((v20 & 0x8000000000000000) != 0)
  {
    goto LABEL_26;
  }

LABEL_12:
  if (v20 >= *(v19 + 16))
  {
LABEL_27:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_23_37();
  outlined assign with copy of Participant.Caption(v5, v26 + v27 * v20);
LABEL_14:
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55 = *(v0 + 120);
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, v3, isUniquelyReferenced_nonNull_native, v29, v30, v31, v32, v33, v50, v51, v52, v53, v54[0], v54[1]);
  *(v0 + 120) = v55;
  swift_endAccess();
  if ((v3 - 1) <= 1 && *(v5 + *(v52 + 32)) == 1)
  {
    v34 = v50;
    ReceiptionistCaptionsProvider.convert(_:state:)(v19, v3, v50);
    v35 = CallScreeningTranscript.text.getter();
    v37 = v36;

    v38 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v38 = v35 & 0xFFFFFFFFFFFFLL;
    }

    v39 = v53;
    v40 = v51;
    if (v38)
    {
      (*(v51 + 16))(v9, v34, v53);
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v41, v42, v43, v39);
      CurrentValueSubject.send(_:)();
      outlined destroy of TapInteractionHandler?(v9, &_s20CommunicationsUICore23CallScreeningTranscriptVSgMd);
    }

    CallScreeningTranscript.text.getter();
    TranscriptionViewModel.initialScreeningResponse.setter();
    (*(v40 + 8))(v34, v39);
  }

  if (*(v1 + 112) == 1)
  {
    ReceiptionistCaptionsProvider.convert(_:state:)(v19, v3, v9);

    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v53);
    CurrentValueSubject.send(_:)();
    outlined destroy of TapInteractionHandler?(v9, &_s20CommunicationsUICore23CallScreeningTranscriptVSgMd);
  }

  else
  {
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t ReceiptionistCaptionsProvider.convert(_:state:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Participant.Caption(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v25 = a2;
    v26 = a3;
    v27 = v8;
    v30 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v13 = v27;
    v12 = v30;
    v14 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v15 = *(v7 + 72);
    do
    {
      outlined init with copy of Participant.Caption(v14, v10);
      v16 = &v10[*(v13 + 28)];
      v17 = *v16;
      v18 = *(v16 + 1);

      outlined destroy of Participant.Caption(v10);
      v30 = v12;
      v19 = *(v12 + 16);
      if (v19 >= *(v12 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v13 = v27;
        v12 = v30;
      }

      *(v12 + 16) = v19 + 1;
      v20 = v12 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v18;
      v14 += v15;
      --v11;
    }

    while (v11);
    a2 = v25;
  }

  v30 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
  BidirectionalCollection<>.joined(separator:)();

  v21 = *(v28 + 64);
  v30 = *(v28 + 56);
  v31 = v21;

  MEMORY[0x1BFB20B10](32, 0xE100000000000000);
  v29 = a2;
  v22 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1BFB20B10](v22);

  ReceiptionistCaptionsProvider.callerName.getter();
  return CallScreeningTranscript.init(identifier:name:title:text:isAssistant:isRinging:isReasonForCalling:)();
}

void ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.init(call:provider:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v38 - v8;
  swift_defaultActor_initialize();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *(v0 + 112) = (*(*static Defaults.shared + 776))();
  swift_weakInit();
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  *(v0 + 176) = 0;
  *(v0 + 184) = 1;
  v10 = [v5 uniqueProxyIdentifier];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  *(v1 + 120) = v11;
  *(v1 + 128) = v13;
  v14 = [v5 isScreening];
  if (v14)
  {
    v14 = [v5 receptionistState];
  }

  *(v1 + 144) = v14;
  *(v1 + 152) = [v5 answeringMachineStreamToken];
  swift_weakAssign();
  v15 = type metadata accessor for ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient();
  v41.receiver = v1;
  v41.super_class = v15;
  v16 = objc_msgSendSuper2(&v41, sel_init);
  v17 = *(v16 + 36);
  v18 = *(v16 + 15);
  v19 = *(v16 + 16);
  v20 = one-time initialization token for logger;
  v21 = v16;

  if (v20 != -1)
  {
    OUTLINED_FUNCTION_0_136();
  }

  v22 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v22, logger);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v38[1] = v3;
    v26 = v25;
    v27 = swift_slowAlloc();
    v38[0] = v9;
    v40 = v27;
    *v26 = 136315394;
    v39 = v17;
    type metadata accessor for TUCallReceptionistState(0);
    v28 = String.init<A>(reflecting:)();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v40);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v40);

    *(v26 + 14) = v31;
    _os_log_impl(&dword_1BBC58000, v23, v24, "init caption client %s call: %s", v26, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.observeReceptionistStates()();
  type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  OUTLINED_FUNCTION_109();
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = v21;
  v36[5] = v5;
  v37 = v5;
  OUTLINED_FUNCTION_59();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

  OUTLINED_FUNCTION_30_0();
}

uint64_t partial apply for closure #1 in ReceiptionistCaptionsProvider.enableCaptions(_:)()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_16(v1);
  OUTLINED_FUNCTION_319();

  return closure #1 in ReceiptionistCaptionsProvider.enableCaptions(_:)(v3, v4, v5, v6, v7);
}

uint64_t outlined init with copy of Participant.Caption(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Participant.Caption(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t closure #1 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.init(call:provider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.init(call:provider:), a4, 0);
}

uint64_t closure #1 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.init(call:provider:)()
{
  OUTLINED_FUNCTION_24_0();
  ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.setupTUCaptionsClient(_:)();
  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.updateMaxId(_:completed:)(uint64_t result, char a2)
{
  v3 = *(v2 + 160);
  if (v3 <= result)
  {
    v3 = result;
  }

  *(v2 + 160) = v3;
  if (a2)
  {
    v4 = __CFADD__(v3, 1);
    v5 = v3 + 1;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      *(v2 + 164) = v5;
    }
  }

  return result;
}

void ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.setupTUCaptionsClient(_:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v88 - v9;
  v11 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v88 - v18;
  v20 = type metadata accessor for LanguageManager();
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_8();
  v95 = (v25 - v24);
  v26 = *(v2 + 152);
  if (v26 && (*(v2 + 184) & 1) == 0 && v26 == *(v2 + 176))
  {
    if (one-time initialization token for logger == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

  if (*(v2 + 168) && ([v4 isEndpointOnCurrentDevice] & 1) == 0)
  {
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_0_136();
    }

    v47 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v47, logger);

    v95 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v95, v48))
    {
      goto LABEL_20;
    }

    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v97 = v50;
    *v49 = 136315138;
    *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 120), *(v2 + 128), &v97);
    OUTLINED_FUNCTION_33_25(&dword_1BBC58000, v51, v52, "Client for call %s is already created.");
    __swift_destroy_boxed_opaque_existential_1(v50);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();

LABEL_32:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v92 = v20;
  v93 = v10;
  v90 = v1;
  v91 = v22;
  v94 = [objc_allocWithZone(MEMORY[0x1E69D8AE0]) initWithDelegate:v2 call:v4];
  [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  LanguageManager.init(featureFlags:)();
  static Locale.current.getter();
  LanguageManager.mappedASRAssetIdentifier(for:useCase:)();
  v32 = *(v13 + 8);
  v32(v19, v11);

  v33 = [objc_allocWithZone(MEMORY[0x1E6986578]) init];
  static Locale.current.getter();
  LanguageManager.mappedASRLocale(for:useCase:)();
  v32(v16, v11);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v32(v19, v11);
  [v33 setLocale_];

  [v33 setUsage_];
  [v33 setExplicitLanguageFilterEnabled_];
  v35 = TUTranscriptionAvailability.avcTaskHint.getter();
  if ((v35 & 0x100) == 0)
  {
    [v33 setTaskHint_];
  }

  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_136();
  }

  v36 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v36, logger);

  v37 = v33;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  v40 = os_log_type_enabled(v38, v39);
  v41 = v93;
  if (v40)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v97 = v89;
    *v42 = 136315906;
    v44 = [v37 locale];
    if (v44)
    {
      v45 = v44;
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      v46 = 0;
    }

    else
    {
      v46 = 1;
    }

    __swift_storeEnumTagSinglePayload(v41, v46, 1, v11);
    specialized >> prefix<A>(_:)(v41, v56, v57, v58, v59, v60, v61, v62, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);
    v64 = v63;
    v66 = v65;
    outlined destroy of TapInteractionHandler?(v41, &_s10Foundation6LocaleVSgMd);
    v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, &v97);

    *(v42 + 4) = v67;
    *(v42 + 12) = 2080;
    HIDWORD(v96) = *(v2 + 144);
    type metadata accessor for TUCallReceptionistState(0);
    v68 = String.init<A>(reflecting:)();
    v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, &v97);

    *(v42 + 14) = v70;
    *(v42 + 22) = 2080;
    *(v42 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 120), *(v2 + 128), &v97);
    *(v42 + 32) = 2112;
    *(v42 + 34) = v37;
    *v43 = v37;
    v71 = v37;
    _os_log_impl(&dword_1BBC58000, v38, v39, "Captions client configure with locale: %s state: %s call: %s config: %@", v42, 0x2Au);
    outlined destroy of TapInteractionHandler?(v43, &_sSo8NSObjectCSgMd);
    OUTLINED_FUNCTION_27();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v72 = v94;
  [v94 configureCaptions_];
  v73 = *(v2 + 168);
  *(v2 + 168) = v72;
  v74 = v72;

  v75 = *(v2 + 152);
  *(v2 + 176) = v75;
  *(v2 + 184) = 0;
  v76 = *(v2 + 160);
  v77 = __CFADD__(v76, 1);
  v78 = v76 + 1;
  if (!v77)
  {
    *(v2 + 164) = v78;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v80 = Strong;
      type metadata accessor for TaskPriority();
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v81, v82, v83, v84);
      type metadata accessor for MainActor();

      v85 = static MainActor.shared.getter();
      OUTLINED_FUNCTION_109();
      v86 = swift_allocObject();
      v87 = MEMORY[0x1E69E85E0];
      v86[2] = v85;
      v86[3] = v87;
      v86[4] = v80;
      v86[5] = v75;
      OUTLINED_FUNCTION_59();
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

      (*(v91 + 8))(v95, v92);
    }

    else
    {
      (*(v91 + 8))(v95, v92);
    }

    goto LABEL_32;
  }

  __break(1u);
LABEL_34:
  OUTLINED_FUNCTION_0_136();
LABEL_5:
  v27 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v27, logger);

  v95 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v95, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134217984;
    *(v29 + 4) = *(v2 + 152);

    OUTLINED_FUNCTION_33_25(&dword_1BBC58000, v30, v31, "Client for token %ld is already created.");
    OUTLINED_FUNCTION_27();
LABEL_20:
    OUTLINED_FUNCTION_30_0();

    return;
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.setupTUCaptionsClient(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.setupTUCaptionsClient(_:), v7, v6);
}

uint64_t closure #1 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.setupTUCaptionsClient(_:)()
{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_3_5();
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  OUTLINED_FUNCTION_13();

  return v3();
}

void ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.observeReceptionistStates()()
{
  v0 = objc_opt_self();
  v1 = [v0 defaultCenter];
  OUTLINED_FUNCTION_34_25(v1, v2, v3, v4, *MEMORY[0x1E69D8DD8]);

  v8 = [v0 defaultCenter];
  OUTLINED_FUNCTION_34_25(v8, v5, v6, v7, *MEMORY[0x1E69D8E50]);
}

void ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.streamTokenDidChange(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_16_4();
  Notification.object.getter();
  if (v16)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v3 = [v14 callUUID];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    if (v4 == *(v0 + 120) && v6 == *(v0 + 128))
    {
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {

        return;
      }
    }

    type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    OUTLINED_FUNCTION_109();
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v0;
    v13[5] = v14;

    OUTLINED_FUNCTION_59();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  }

  else
  {
    outlined destroy of TapInteractionHandler?(v15, &_sypSgMd);
  }
}

uint64_t closure #1 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.streamTokenDidChange(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.streamTokenDidChange(_:), a4, 0);
}

uint64_t closure #1 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.streamTokenDidChange(_:)()
{
  OUTLINED_FUNCTION_24_0();
  ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.update(call:)(*(v0 + 24));
  OUTLINED_FUNCTION_13();

  return v1();
}

void ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.update(call:)(void *a1)
{
  v2 = v1;
  v4 = [a1 answeringMachineStreamToken];
  if ([a1 isScreening])
  {
    v5 = [a1 receptionistState];
  }

  else
  {
    v5 = 0;
  }

  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_136();
  }

  v6 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v6, logger);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315394;
    type metadata accessor for TUCallReceptionistState(0);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v14);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2048;
    *(v9 + 14) = v4;
    _os_log_impl(&dword_1BBC58000, v7, v8, "Answered machine token changed %s token: %ld", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  *(v2 + 152) = v4;
  *(v2 + 144) = v5;
  ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.setupTUCaptionsClient(_:)();
}

uint64_t ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.captionsClient(_:didEnableCaptions:error:)(uint64_t a1, char a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16_4();
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_136();
  }

  v7 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v7, logger);
  v8 = a3;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 67109378;
    *(v11 + 4) = a2 & 1;
    *(v11 + 8) = 2112;
    if (a3)
    {
      v13 = a3;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      v15 = v14;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    *(v11 + 10) = v14;
    *v12 = v15;
    _os_log_impl(&dword_1BBC58000, v9, v10, "Captions enabled: %{BOOL}d; error: %@", v11, 0x12u);
    outlined destroy of TapInteractionHandler?(v12, &_sSo8NSObjectCSgMd);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  static MainActor.shared.getter();
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_26_33(v20, MEMORY[0x1E69E85E0]);
  OUTLINED_FUNCTION_59();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.captionsClient(_:didEnableCaptions:error:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 112) = a5;
  *(v5 + 64) = a4;
  type metadata accessor for MainActor();
  *(v5 + 72) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 80) = v7;
  *(v5 + 88) = v6;

  return MEMORY[0x1EEE6DFA0](closure #1 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.captionsClient(_:didEnableCaptions:error:), v7, v6);
}

uint64_t closure #1 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.captionsClient(_:didEnableCaptions:error:)()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_8_73();
  Strong = swift_weakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.captionsClient(_:didEnableCaptions:error:), Strong, 0);
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v2();
  }
}

{
  OUTLINED_FUNCTION_24_0();
  v0[13] = swift_weakLoadStrong();
  v1 = v0[10];
  v2 = v0[11];

  return MEMORY[0x1EEE6DFA0](closure #1 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.captionsClient(_:didEnableCaptions:error:), v1, v2);
}

{
  v1 = *(v0 + 104);

  if (v1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v0 + 112);
      v3 = *(*(v0 + 104) + 40);
      ObjectType = swift_getObjectType();
      v5 = *(v3 + 16);

      v5(v6, &protocol witness table for ReceiptionistCaptionsProvider, v2, ObjectType, v3);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_13();

  return v7();
}

void ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.captionsClient(_:didUpdateCaptions:)()
{
  OUTLINED_FUNCTION_29();
  v75 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_2();
  v6 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v12 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v65 - v14;
  if (one-time initialization token for logger != -1)
  {
LABEL_29:
    OUTLINED_FUNCTION_0_136();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, logger);
  v17 = v3;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v20 = os_log_type_enabled(v18, v19);
  v71 = v8;
  v72 = v6;
  v74 = v1;
  v69 = v10;
  v70 = v12;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v80[0] = v22;
    *v21 = 136315138;
    v78 = v17;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCaptionsResult);
    v23 = v17;
    v24 = String.init<A>(reflecting:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v80);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_1BBC58000, v18, v19, "Captions updated: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v73 = v15;
  Date.init()();
  v27 = [v17 text];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v29;

  v80[0] = v28;
  v80[1] = v6;
  v78 = 39;
  v79 = 0xE100000000000000;
  v76 = 10060002;
  v77 = 0xA300000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v3 = v80;
  OUTLINED_FUNCTION_3_0();
  v30 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v67 = v31;
  v68 = v30;

  v65 = [v17 utteranceNumber];
  v66 = [v17 utteranceComplete];
  v32 = [v17 tokens];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCaption);
  v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = MEMORY[0x1E69E7CC0];
  v80[0] = MEMORY[0x1E69E7CC0];
  v10 = specialized Array.count.getter(v33);
  v34 = 0;
  v12 = (v33 & 0xC000000000000001);
  v1 = v33 & 0xFFFFFFFFFFFFFF8;
  v8 = &selRef_initWithSuggestion_selectedActivity_type_;
  while (v10 != v34)
  {
    if (v12)
    {
      v35 = MEMORY[0x1BFB22010](v34, v33);
    }

    else
    {
      if (v34 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v35 = *(v33 + 8 * v34 + 32);
    }

    v6 = v35;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    [v35 confidence];
    if (v36 >= *(v75 + 112))
    {
    }

    else
    {
      v3 = v80;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    ++v34;
  }

  v37 = v80[0];
  v38 = specialized Array.count.getter(v80[0]);
  if (!v38)
  {

    v41 = MEMORY[0x1E69E7CC0];
LABEL_26:
    type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
    OUTLINED_FUNCTION_20();
    v53 = swift_allocObject();
    swift_weakInit();
    v55 = v70;
    v54 = v71;
    v56 = v72;
    (v71[2])(v70, v73, v72);
    type metadata accessor for MainActor();

    v57 = static MainActor.shared.getter();
    v58 = (*(v54 + 80) + 44) & ~*(v54 + 80);
    v59 = (v58 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
    v60 = (v58 + v69 + 31) & 0xFFFFFFFFFFFFFFF8;
    v61 = swift_allocObject();
    v62 = MEMORY[0x1E69E85E0];
    *(v61 + 16) = v57;
    *(v61 + 24) = v62;
    *(v61 + 32) = v53;
    *(v61 + 40) = v65;
    (v54[4])(v61 + v58, v55, v56);
    v63 = v61 + v59;
    v64 = v67;
    *v63 = v68;
    *(v63 + 8) = v64;
    *(v63 + 16) = v66;
    *(v61 + v60) = v41;

    OUTLINED_FUNCTION_59();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

    (v54[1])(v73, v56);
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v39 = v38;
  v80[0] = v15;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  if ((v39 & 0x8000000000000000) == 0)
  {
    v40 = 0;
    v41 = v80[0];
    do
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x1BFB22010](v40, v37);
      }

      else
      {
        v42 = *(v37 + 8 * v40 + 32);
      }

      v43 = v42;
      v44 = [v42 range];
      v46 = v45;

      v80[0] = v41;
      v47 = *(v41 + 16);
      if (v47 >= *(v41 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v41 = v80[0];
      }

      ++v40;
      *(v41 + 16) = v47 + 1;
      v48 = v41 + 16 * v47;
      *(v48 + 32) = v44;
      *(v48 + 40) = v46;
    }

    while (v39 != v40);

    goto LABEL_26;
  }

  __break(1u);
}

uint64_t closure #2 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.captionsClient(_:didUpdateCaptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = a8;
  *(v8 + 96) = v15;
  *(v8 + 192) = v14;
  *(v8 + 72) = a6;
  *(v8 + 80) = a7;
  *(v8 + 176) = a5;
  *(v8 + 64) = a4;
  v9 = type metadata accessor for Participant.Caption(0);
  *(v8 + 104) = v9;
  *(v8 + 112) = *(v9 - 8);
  *(v8 + 120) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 128) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 136) = v11;
  *(v8 + 144) = v10;

  return MEMORY[0x1EEE6DFA0](closure #2 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.captionsClient(_:didUpdateCaptions:), v11, v10);
}

uint64_t closure #2 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.captionsClient(_:didUpdateCaptions:)()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_8_73();
  Strong = swift_weakLoadStrong();
  *(v0 + 152) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](closure #2 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.captionsClient(_:didUpdateCaptions:), Strong, 0);
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v2();
  }
}

{
  OUTLINED_FUNCTION_24_0();
  v0[20] = swift_weakLoadStrong();
  v1 = v0[17];
  v2 = v0[18];

  return MEMORY[0x1EEE6DFA0](closure #2 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.captionsClient(_:didUpdateCaptions:), v1, v2);
}

{
  OUTLINED_FUNCTION_24_0();
  if (*(v0 + 160))
  {
    v1 = *(v0 + 152);

    return MEMORY[0x1EEE6DFA0](closure #2 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.captionsClient(_:didUpdateCaptions:), v1, 0);
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v2();
  }
}

{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  *(v0 + 180) = *(v2 + 164);
  *(v0 + 184) = *(v2 + 144);
  return MEMORY[0x1EEE6DFA0](closure #2 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.captionsClient(_:didUpdateCaptions:), *(v0 + 136), v1);
}

{
  OUTLINED_FUNCTION_24_0();
  ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.updateMaxId(_:completed:)(*(v0 + 188), *(v0 + 192));
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return MEMORY[0x1EEE6DFA0](closure #2 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.captionsClient(_:didUpdateCaptions:), v1, v2);
}

{
  v1 = *(v0 + 120);

  outlined destroy of Participant.Caption(v1);

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t closure #2 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.captionsClient(_:didUpdateCaptions:)(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 176);
  v4 = *(v3 + 180);
  v6 = (v5 + v4);
  *(v3 + 188) = v6;
  if (__CFADD__(v5, v4))
  {
    __break(1u);
  }

  else
  {
    v8 = *(v3 + 112);
    v7 = *(v3 + 120);
    v26 = *(v3 + 192);
    v9 = *(v3 + 104);
    v27 = *(v3 + 96);
    v24 = *(v3 + 80);
    v25 = *(v3 + 88);
    v10 = *(v3 + 72);
    v11 = v9[5];
    v12 = type metadata accessor for Date();
    v13 = *(*(v12 - 8) + 16);
    v13(&v7[v11], v10, v12);
    v13(&v7[v9[6]], v10, v12);
    *v7 = v6;
    v14 = &v7[v9[7]];
    *v14 = v24;
    *(v14 + 1) = v25;
    v7[v9[8]] = v26;
    *&v7[v9[9]] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantV7CaptionVGMd);
    v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v16 = swift_allocObject();
    *(v3 + 168) = v16;
    *(v16 + 16) = xmmword_1BC4BA940;
    outlined init with copy of Participant.Caption(v7, v16 + v15);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v18 = *(v3 + 160);
    if (Strong)
    {
      v19 = *(v18 + 40);
      ObjectType = swift_getObjectType();
      v21 = *(v19 + 8);
      swift_retain_n();

      v21(v18, &protocol witness table for ReceiptionistCaptionsProvider, v18, &protocol witness table for ReceiptionistCaptionsProvider, v16, ObjectType, v19);
      swift_unknownObjectRelease();
    }

    else
    {
    }

    v22 = *(v3 + 152);
    ReceiptionistCaptionsProvider.updateCaption(_:with:)();
    a1 = closure #2 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.captionsClient(_:didUpdateCaptions:);
    a2 = v22;
    a3 = 0;
  }

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.captionsClient(_:didDetectGibberish:)(uint64_t a1, char a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16_4();
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_136();
  }

  v5 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v5, logger);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = a2 & 1;
    _os_log_impl(&dword_1BBC58000, v6, v7, "Captions updated isGibberish: %{BOOL}d", v8, 8u);
    OUTLINED_FUNCTION_27();
  }

  type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  static MainActor.shared.getter();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_26_33(v13, MEMORY[0x1E69E85E0]);
  OUTLINED_FUNCTION_59();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.captionsClient(_:didDetectGibberish:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 112) = a5;
  *(v5 + 64) = a4;
  type metadata accessor for MainActor();
  *(v5 + 72) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 80) = v7;
  *(v5 + 88) = v6;

  return MEMORY[0x1EEE6DFA0](closure #1 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.captionsClient(_:didDetectGibberish:), v7, v6);
}

uint64_t closure #1 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.captionsClient(_:didDetectGibberish:)()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_8_73();
  Strong = swift_weakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.captionsClient(_:didDetectGibberish:), Strong, 0);
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v2();
  }
}

{
  OUTLINED_FUNCTION_24_0();
  v0[13] = swift_weakLoadStrong();
  v1 = v0[10];
  v2 = v0[11];

  return MEMORY[0x1EEE6DFA0](closure #1 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.captionsClient(_:didDetectGibberish:), v1, v2);
}

{
  v1 = *(v0 + 104);

  if (v1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v0 + 112);
      v3 = *(*(v0 + 104) + 40);
      ObjectType = swift_getObjectType();
      v5 = *(v3 + 24);

      v5(v6, &protocol witness table for ReceiptionistCaptionsProvider, v2, ObjectType, v3);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_13();

  return v7();
}

void ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.deinit()
{

  swift_weakDestroy();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.__deallocating_deinit()
{
  ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t (*protocol witness for ParticipantCaptionsProvider.participantCaptionsProviderDelegate.modify in conformance ReceiptionistCaptionsProvider(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 40);
  v3[3] = Strong;
  v3[4] = v5;
  return protocol witness for ParticipantCaptionsProvider.participantCaptionsProviderDelegate.modify in conformance ReceiptionistCaptionsProvider;
}

uint64_t ReceiptionistCaptionsProvider.callerNamePublisher.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCySSs5NeverOGGMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySSs5NeverOGMd);
  OUTLINED_FUNCTION_0_86();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v2, v3);
  Publisher<>.removeDuplicates()();
  OUTLINED_FUNCTION_4_101();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v4, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCySSs5NeverOGGMd);
  Publisher.eraseToAnyPublisher()();
  v5 = OUTLINED_FUNCTION_5_54();
  v6(v5);
  return v0;
}

void ReceiptionistCaptionsProvider.transcriptsPublisher.getter()
{
  OUTLINED_FUNCTION_29();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCy20CommunicationsUICore23CallScreeningTranscriptVSgs5NeverOGAJGMd);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v16 - v5;
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AC10CompactMapVy_AA19CurrentValueSubjectCy20CommunicationsUICore23CallScreeningTranscriptVSgs5NeverOGALGGMd);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v16 - v10;
  v16[1] = *(v0 + 88);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy20CommunicationsUICore23CallScreeningTranscriptVSgs5NeverOGMd);
  type metadata accessor for CallScreeningTranscript();
  OUTLINED_FUNCTION_0_86();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v12, v13);
  Publisher.compactMap<A>(_:)();

  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.CompactMap<CurrentValueSubject<CallScreeningTranscript?, Never>, CallScreeningTranscript> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCy20CommunicationsUICore23CallScreeningTranscriptVSgs5NeverOGAJGMd);
  lazy protocol witness table accessor for type TUCallReceptionistState and conformance TUCallReceptionistState(&lazy protocol witness table cache variable for type CallScreeningTranscript and conformance CallScreeningTranscript, MEMORY[0x1E6995F58]);
  Publisher<>.removeDuplicates()();
  (*(v3 + 8))(v6, v1);
  OUTLINED_FUNCTION_4_101();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v14, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC10CompactMapVy_AA19CurrentValueSubjectCy20CommunicationsUICore23CallScreeningTranscriptVSgs5NeverOGALGGMd);
  v15 = v16[0];
  Publisher.eraseToAnyPublisher()();
  (*(v8 + 8))(v11, v15);
  OUTLINED_FUNCTION_30_0();
}

uint64_t ReceiptionistCaptionsProvider.callerInitialResponsePublisher.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCy20CommunicationsUICore23CallScreeningTranscriptVSgs5NeverOGGMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy20CommunicationsUICore23CallScreeningTranscriptVSgs5NeverOGMd);
  OUTLINED_FUNCTION_0_86();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v2, v3);
  lazy protocol witness table accessor for type CallScreeningTranscript? and conformance <A> A?();
  Publisher<>.removeDuplicates()();
  OUTLINED_FUNCTION_4_101();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v4, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCy20CommunicationsUICore23CallScreeningTranscriptVSgs5NeverOGGMd);
  Publisher.eraseToAnyPublisher()();
  v5 = OUTLINED_FUNCTION_5_54();
  v6(v5);
  return v0;
}

Swift::Void __swiftcall ReceiptionistCaptionsProvider.startObserveTranscripts()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_136();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BBC58000, v3, v4, "start observing transcripts", v5, 2u);
    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_7_74();
  closure #1 in ReceiptionistCaptionsProvider.startObserveTranscripts()(v6, v7);
  OUTLINED_FUNCTION_7_74();
  closure #1 in ReceiptionistCaptionsProvider.startObserveTranscripts()(v8, v9);
  OUTLINED_FUNCTION_7_74();
  closure #1 in ReceiptionistCaptionsProvider.startObserveTranscripts()(v10, v11);
  OUTLINED_FUNCTION_7_74();
  closure #1 in ReceiptionistCaptionsProvider.startObserveTranscripts()(v12, v13);
  OUTLINED_FUNCTION_7_74();
  closure #1 in ReceiptionistCaptionsProvider.startObserveTranscripts()(v14, v15);
  OUTLINED_FUNCTION_7_74();
  closure #1 in ReceiptionistCaptionsProvider.startObserveTranscripts()(v16, v17);
  *(v1 + 112) = 1;
}

uint64_t closure #1 in ReceiptionistCaptionsProvider.startObserveTranscripts()(unsigned int *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore23CallScreeningTranscriptVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  v7 = *a1;
  swift_beginAccess();
  v8 = specialized Dictionary.subscript.getter(v7, *(a2 + 120));
  if (v8)
  {
    v9 = v8;
    swift_endAccess();
    ReceiptionistCaptionsProvider.convert(_:state:)(v9, v7, v6);

    v10 = type metadata accessor for CallScreeningTranscript();
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
    CurrentValueSubject.send(_:)();
    outlined destroy of TapInteractionHandler?(v6, &_s20CommunicationsUICore23CallScreeningTranscriptVSgMd);
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();
  v11 = specialized Dictionary.subscript.getter(v7, *(a2 + 128));
  if (!v11)
  {
    return swift_endAccess();
  }

  v12 = v11;
  swift_endAccess();
  ReceiptionistCaptionsProvider.convert(_:state:)(v12);

  v13 = type metadata accessor for CallScreeningTranscript();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v13);
  CurrentValueSubject.send(_:)();
  return outlined destroy of TapInteractionHandler?(v6, &_s20CommunicationsUICore23CallScreeningTranscriptVSgMd);
}

void ReceiptionistCaptionsProvider.convert(_:state:)(uint64_t a1)
{
  v21 = MEMORY[0x1E69E7CC0];
  v2 = specialized Array.count.getter(a1);
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1BFB22010](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if ([v4 isMe])
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }
  }

  v6 = v21;
  v7 = specialized Array.count.getter(v21);
  if (!v7)
  {
LABEL_24:

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
    BidirectionalCollection<>.joined(separator:)();

    MEMORY[0x1BFB20B10](32, 0xE100000000000000);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1BFB20B10](v19);

    MEMORY[0x1BFB20B10](1414812192, 0xE400000000000000);
    ReceiptionistCaptionsProvider.callerName.getter();
    CallScreeningTranscript.init(identifier:name:title:text:isAssistant:isRinging:isReasonForCalling:)();
    return;
  }

  v22 = MEMORY[0x1E69E7CC0];
  v20 = v7;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  v8 = v20;
  if ((v20 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_27;
      }

      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1BFB22010](v9, v6);
      }

      else
      {
        if (v9 >= *(v6 + 16))
        {
          goto LABEL_28;
        }

        v11 = *(v6 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = outlined bridged method (pb) of @objc RTTUtterance.text.getter(v11);
      if (!v14)
      {
        goto LABEL_30;
      }

      v15 = v13;
      v16 = v14;

      v17 = *(v22 + 16);
      if (v17 >= *(v22 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v20;
      }

      *(v22 + 16) = v17 + 1;
      v18 = v22 + 16 * v17;
      *(v18 + 32) = v15;
      *(v18 + 40) = v16;
      ++v9;
      if (v10 == v8)
      {
        goto LABEL_24;
      }
    }
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

void ReceiptionistCaptionsProvider.updateDisplayContextState()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v1 = outlined bridged method (pb) of @objc TUCall.suggestedDisplayName.getter(Strong);
    if (v2)
    {
      v3 = v1;
      v4 = v2;
      v5 = [objc_opt_self() conversationKit];
      v15._object = 0xE000000000000000;
      v6.value._countAndFlagsBits = 0x61737265766E6F43;
      v6.value._object = 0xEF74694B6E6F6974;
      v7._object = 0x80000001BC4FDAC0;
      v7._countAndFlagsBits = 0xD000000000000020;
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
      v15._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v6, v5, v8, v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1BC4BA940;
      *(v9 + 56) = MEMORY[0x1E69E6158];
      *(v9 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v9 + 32) = v3;
      *(v9 + 40) = v4;
      v10 = String.init(format:_:)();
      v12 = v11;

      ReceiptionistCaptionsProvider.callerName.setter(v10, v12);
    }
  }
}

void ReceiptionistCaptionsProvider.setupRTTMessageObserverIfNecessary()()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if ((([Strong isRTT] & 1) != 0 || objc_msgSend(v10, sel_isTTY)) && !*(v0 + 136))
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      __swift_project_value_buffer(v3, logger);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_1BBC58000, v4, v5, "call is RTT, fetching RTT conversation", v6, 2u);
        MEMORY[0x1BFB23DF0](v6, -1, -1);
      }

      v7 = objc_opt_self();
      v8 = swift_unknownObjectWeakLoadStrong();
      aBlock[4] = partial apply for closure #1 in ReceiptionistCaptionsProvider.setupRTTMessageObserverIfNecessary();
      aBlock[5] = v1;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed AVCaptureDevice?) -> ();
      aBlock[3] = &block_descriptor_57;
      v9 = _Block_copy(aBlock);

      [v7 conversationWithCall:v8 withCallback:v9];
      _Block_release(v9);

      ReceiptionistCaptionsProvider.setupRTTMessageObserver()();
    }

    else
    {
    }
  }
}

uint64_t closure #1 in ReceiptionistCaptionsProvider.setupRTTMessageObserverIfNecessary()(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();
  v7 = a1;

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v6;
  v9[5] = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in closure #1 in ReceiptionistCaptionsProvider.setupRTTMessageObserverIfNecessary()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore23CallScreeningTranscriptVSgMd);
  v5[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ReceiptionistCaptionsProvider.setupRTTMessageObserverIfNecessary(), v7, v6);
}

uint64_t closure #1 in closure #1 in ReceiptionistCaptionsProvider.setupRTTMessageObserverIfNecessary()()
{
  OUTLINED_FUNCTION_44();

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      v5 = *(v0 + 72);
      v6 = *(v2 + 136);
      *(v2 + 136) = v5;
      v7 = v5;

      ReceiptionistCaptionsProvider.updateRTTUtterances()();
      if ([v4 isScreening])
      {
        v8 = [v4 receptionistState];
      }

      else
      {
        v8 = 0;
      }

      if (*(v2 + 112) == 1)
      {
        OUTLINED_FUNCTION_32_19();
        if (specialized Dictionary.subscript.getter(v8, *(v2 + 128)))
        {
          v9 = *(v0 + 80);
          swift_endAccess();
          OUTLINED_FUNCTION_25_34();

          type metadata accessor for CallScreeningTranscript();
          OUTLINED_FUNCTION_12();
          __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
          CurrentValueSubject.send(_:)();

          outlined destroy of TapInteractionHandler?(v9, &_s20CommunicationsUICore23CallScreeningTranscriptVSgMd);
          goto LABEL_11;
        }

        swift_endAccess();
      }
    }

LABEL_11:
  }

  OUTLINED_FUNCTION_13();

  return v14();
}

void ReceiptionistCaptionsProvider.updateRTTUtterances()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BBC58000, v3, v4, "updating RTT utterances", v5, 2u);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(v1 + 136);
    if (v8)
    {
      v11 = v7;
      v9 = [v8 utterances];
      if (v9)
      {
        v10 = v9;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for RTTUtterance);
        static Array._conditionallyBridgeFromObjectiveC(_:result:)();
      }
    }

    else
    {
    }
  }
}