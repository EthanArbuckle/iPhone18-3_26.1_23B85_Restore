void sub_1CF066960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v128 = a4;
  v131 = a2;
  v133 = type metadata accessor for SyncState();
  v129 = *(v133 - 8);
  v8 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v135 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v134 = &v127 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v127 - v13;
  if (!*(v5 + 88))
  {
    *(v5 + 88) = os_transaction_create();
  }

  v130 = a3;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = a1 + 32;
    while (1)
    {
      v25 = *(v16 + 1) | ((*(v16 + 5) | (*(v16 + 7) << 16)) << 32);
      v26 = *v16;
      v27 = *(v16 + 8);
      v28 = *(v16 + 16);
      v29 = *(v16 + 24);
      v30 = *v16 | (v25 << 8);
      if (v29 <= 2)
      {
        break;
      }

      if (*(v16 + 24) <= 4u)
      {
        if (v29 != 3)
        {
          v80 = *(v5 + 80);
          v81 = *v16;
          sub_1CF796430(v26, *(v16 + 8), *(v16 + 16), 4u);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v80 = sub_1CF1F6AB4(0, *(v80 + 2) + 1, 1, v80);
          }

          v83 = *(v80 + 2);
          v82 = *(v80 + 3);
          if (v83 >= v82 >> 1)
          {
            v80 = sub_1CF1F6AB4((v82 > 1), v83 + 1, 1, v80);
          }

          *(v80 + 2) = v83 + 1;
          v84 = &v80[8 * v83];
          v84[32] = v81;
          *(v84 + 33) = v25;
          v84[39] = BYTE6(v25);
          *(v84 + 37) = WORD2(v25);
          *(v5 + 80) = v80;
          goto LABEL_13;
        }

        sub_1CF796430(v26, *(v16 + 8), *(v16 + 16), 3u);
        v31 = *(v5 + 56);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v136 = *(v5 + 56);
        v33 = v136;
        v34 = sub_1CEFE863C(v30);
        v36 = v33[2];
        v37 = (v35 & 1) == 0;
        v38 = __OFADD__(v36, v37);
        v39 = v36 + v37;
        if (v38)
        {
          goto LABEL_123;
        }

        v40 = v35;
        if (v33[3] < v39)
        {
          sub_1CF7C9A00(v39, isUniquelyReferenced_nonNull_native);
          v34 = sub_1CEFE863C(v30);
          if ((v40 & 1) != (v41 & 1))
          {
            goto LABEL_129;
          }

          goto LABEL_58;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_58:
          v33 = v136;
          if ((v40 & 1) == 0)
          {
            goto LABEL_75;
          }
        }

        else
        {
          v98 = v34;
          sub_1CF7D1F60();
          v34 = v98;
          v33 = v136;
          if ((v40 & 1) == 0)
          {
LABEL_75:
            v33[(v34 >> 6) + 8] |= 1 << v34;
            *(v33[6] + 8 * v34) = v30;
            v99 = v33[7] + 16 * v34;
            *v99 = v27;
            *(v99 + 8) = v28 & 1;
            v100 = v33[2];
            v38 = __OFADD__(v100, 1);
            v101 = v100 + 1;
            if (v38)
            {
              goto LABEL_126;
            }

            v33[2] = v101;
            *(v5 + 56) = v33;
            goto LABEL_13;
          }
        }

        v86 = v33[7] + 16 * v34;
        *v86 = v27;
        *(v86 + 8) = v28 & 1;

        *(v5 + 56) = v33;
        goto LABEL_13;
      }

      if (v29 != 5)
      {
        if (v28 | v27 | v30)
        {
          if (v30 == 1 && (v28 | v27) == 0)
          {
            *(v5 + 65) = 1;
          }

          else
          {
            *(v5 + 66) = 1;
          }
        }

        else
        {
          *(v5 + 64) = 1;
        }

        v22 = 0;
        v23 = v28;
        v24 = 6;
LABEL_12:
        sub_1CF796430(v26, v22, v23, v24);
        goto LABEL_13;
      }

      sub_1CF796430(v26, *(v16 + 8), *(v16 + 16), 5u);
      v52 = *(v5 + 8);
      v53 = swift_isUniquelyReferenced_nonNull_native();
      v136 = *(v5 + 8);
      v33 = v136;
      v55 = sub_1CEFE863C(v30);
      v56 = v33[2];
      v57 = (v54 & 1) == 0;
      v58 = v56 + v57;
      if (__OFADD__(v56, v57))
      {
        goto LABEL_122;
      }

      v59 = v54;
      if (v33[3] >= v58)
      {
        if (v53)
        {
          v33 = v136;
          if ((v54 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        else
        {
          sub_1CF7D1E04();
          v33 = v136;
          if ((v59 & 1) == 0)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        sub_1CF7C9744(v58, v53);
        v60 = sub_1CEFE863C(v30);
        if ((v59 & 1) != (v61 & 1))
        {
          goto LABEL_129;
        }

        v55 = v60;
        v33 = v136;
        if ((v59 & 1) == 0)
        {
LABEL_32:
          v33[(v55 >> 6) + 8] |= 1 << v55;
          *(v33[6] + 8 * v55) = v30;
          *(v33[7] + v55) = v27;
          v62 = v33[2];
          v38 = __OFADD__(v62, 1);
          v63 = v62 + 1;
          if (v38)
          {
            goto LABEL_125;
          }

          v33[2] = v63;
          *(v5 + 8) = v33;
          goto LABEL_13;
        }
      }

      *(v33[7] + v55) = v27;

      *(v5 + 8) = v33;
LABEL_13:
      v16 += 32;
      if (!--v15)
      {
        goto LABEL_82;
      }
    }

    if (!*(v16 + 24))
    {
      v64 = *(v5 + 65);
      if (v64 == 1)
      {
        LOBYTE(v64) = 2;
      }

      *(v5 + 65) = v64;
      v65 = *(v5 + 64);
      if (v65 == 1)
      {
        LOBYTE(v65) = 2;
      }

      *(v5 + 64) = v65;
      v66 = *(v5 + 16);
      v67 = *(v66 + 16);
      sub_1CF796430(v26, v27, v28, 0);
      if (v67)
      {
        v68 = sub_1CEFE863C(v30);
        if ((v69 & 1) != 0 && !*(*(v66 + 56) + 24 * v68 + 8))
        {
          v91 = *(v5 + 56);
          v92 = sub_1CEFE863C(v30);
          if (v93)
          {
            v94 = v92;
            v95 = *(v5 + 56);
            v96 = swift_isUniquelyReferenced_nonNull_native();
            v97 = *(v5 + 56);
            v136 = v97;
            if (!v96)
            {
              sub_1CF7D1F60();
              v97 = v136;
            }

            sub_1CF1CFD5C(v94, v97);

            *(v5 + 56) = v97;
          }

          else
          {
          }

          goto LABEL_13;
        }
      }

      v70 = v30;
      v71 = *(v5 + 16);
      v72 = swift_isUniquelyReferenced_nonNull_native();
      v136 = *(v5 + 16);
      v33 = v136;
      v73 = sub_1CEFE863C(v70);
      v75 = v33[2];
      v76 = (v74 & 1) == 0;
      v38 = __OFADD__(v75, v76);
      v77 = v75 + v76;
      if (v38)
      {
        goto LABEL_124;
      }

      v78 = v74;
      if (v33[3] < v77)
      {
        sub_1CF7C9CD4(v77, v72);
        v33 = v136;
        v73 = sub_1CEFE863C(v70);
        if ((v78 & 1) != (v79 & 1))
        {
LABEL_129:
          type metadata accessor for NSFileProviderItemIdentifier(0);
          sub_1CF9E8108();
          __break(1u);
          return;
        }

        goto LABEL_64;
      }

      if (v72)
      {
LABEL_64:
        v87 = v136;
        if ((v78 & 1) == 0)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v33 = &v136;
        v102 = v73;
        sub_1CF7D20D0();
        v73 = v102;
        v87 = v136;
        if ((v78 & 1) == 0)
        {
LABEL_80:
          v87[(v73 >> 6) + 8] |= 1 << v73;
          *(v87[6] + 8 * v73) = v70;
          v103 = (v87[7] + 24 * v73);
          *v103 = v70;
          v103[1] = v27;
          v103[2] = v28;
          v104 = v87[2];
          v38 = __OFADD__(v104, 1);
          v105 = v104 + 1;
          if (v38)
          {
            goto LABEL_127;
          }

          v87[2] = v105;
          *(v5 + 16) = v87;
          goto LABEL_13;
        }
      }

      v88 = v87[7] + 24 * v73;
      v90 = *v88;
      v89 = *(v88 + 8);
      v132 = *(v88 + 16);
      *v88 = v70;
      *(v88 + 8) = v27;
      *(v88 + 16) = v28;

      *(v5 + 16) = v87;
      goto LABEL_13;
    }

    if (v29 == 1)
    {
      v42 = *(v5 + 16);
      sub_1CF796430(v26, *(v16 + 8), *(v16 + 16), 1u);
      v43 = sub_1CEFE863C(v30);
      if (v44)
      {
        v45 = v43;
        v46 = *(v5 + 16);
        v47 = swift_isUniquelyReferenced_nonNull_native();
        v48 = *(v5 + 16);
        v136 = v48;
        if (!v47)
        {
          sub_1CF7D20D0();
          v48 = v136;
        }

        v49 = *(v48 + 56) + 24 * v45;
        v50 = *(v49 + 8);
        v51 = *(v49 + 16);

        sub_1CF1CFF30(v45, v48);

        *(v5 + 16) = v48;
      }

      else
      {
      }

      goto LABEL_13;
    }

    v17 = *(v5 + 32);
    v18 = *(v5 + 40);
    v19 = *(v5 + 48);
    if (v17 == 2)
    {
      v18 = *(v16 + 8);
      v19 = *(v16 + 16);
      v17 = *v16;
    }

    *(v5 + 32) = v17 & 1;
    *(v5 + 40) = v18;
    *(v5 + 48) = v19 & 1;
    v20 = *(v5 + 65);
    if (v20 == 1)
    {
      LOBYTE(v20) = 2;
    }

    *(v5 + 65) = v20;
    v21 = *(v5 + 64);
    if (v21 == 1)
    {
      LOBYTE(v21) = 2;
    }

    *(v5 + 64) = v21;
    v22 = v27;
    v23 = v28;
    v24 = 2;
    goto LABEL_12;
  }

LABEL_82:
  v106 = *(v131 + 16);
  if (v106)
  {
    v27 = v131 + ((*(v129 + 80) + 32) & ~*(v129 + 80));
    v107 = *(v129 + 72);
    while (1)
    {
      sub_1CEFE505C(v27, v14, type metadata accessor for SyncState);
      sub_1CEFE505C(v14, v134, type metadata accessor for SyncState);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        if (EnumCaseMultiPayload > 1)
        {
          if (EnumCaseMultiPayload == 2)
          {
            sub_1CF007CB8(v134, type metadata accessor for SyncState);
            v110 = 2;
          }

          else
          {
            v110 = 3;
          }
        }

        else if (EnumCaseMultiPayload)
        {
          v110 = 1;
        }

        else
        {
          sub_1CF007CB8(v134, type metadata accessor for SyncState);
          v110 = 0;
        }
      }

      else if (EnumCaseMultiPayload <= 5)
      {
        if (EnumCaseMultiPayload == 4)
        {
          sub_1CF007CB8(v134, type metadata accessor for SyncState);
          v110 = 4;
        }

        else
        {
          sub_1CF007CB8(v134, type metadata accessor for SyncState);
          v110 = 5;
        }
      }

      else
      {
        if (EnumCaseMultiPayload == 7)
        {
          v109 = 7;
        }

        else
        {
          v109 = 8;
        }

        if (EnumCaseMultiPayload == 6)
        {
          v110 = 6;
        }

        else
        {
          v110 = v109;
        }
      }

      sub_1CEFE505C(v14, v135, type metadata accessor for SyncState);
      v111 = *(v5 + 24);
      v112 = swift_isUniquelyReferenced_nonNull_native();
      v136 = *(v5 + 24);
      v33 = v136;
      v113 = sub_1CF7BF4F4(v110);
      v115 = v33[2];
      v116 = (v114 & 1) == 0;
      v38 = __OFADD__(v115, v116);
      v117 = v115 + v116;
      if (v38)
      {
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
        v27 = sub_1CF1F6A6C(0, *(v27 + 16) + 1, 1, v27);
LABEL_116:
        v125 = *(v27 + 16);
        v124 = *(v27 + 24);
        if (v125 >= v124 >> 1)
        {
          v27 = sub_1CF1F6A6C((v124 > 1), v125 + 1, 1, v27);
        }

        *(v27 + 16) = v125 + 1;
        v126 = v27 + 16 * v125;
        *(v126 + 32) = sub_1CF2B1738;
        *(v126 + 40) = v33;
        *(v5 + 72) = v27;
        return;
      }

      v118 = v114;
      if (v33[3] < v117)
      {
        break;
      }

      if (v112)
      {
        goto LABEL_109;
      }

      v122 = v113;
      sub_1CF7CFBE4();
      v113 = v122;
      v33 = v136;
      if (v118)
      {
LABEL_84:
        sub_1CF1D5818(v135, v33[7] + v113 * v107);
        sub_1CF007CB8(v14, type metadata accessor for SyncState);
        goto LABEL_85;
      }

LABEL_110:
      v33[(v113 >> 6) + 8] |= 1 << v113;
      *(v33[6] + v113) = v110;
      sub_1CEFE4E00(v135, v33[7] + v113 * v107, type metadata accessor for SyncState);
      sub_1CF007CB8(v14, type metadata accessor for SyncState);
      v120 = v33[2];
      v38 = __OFADD__(v120, 1);
      v121 = v120 + 1;
      if (v38)
      {
        goto LABEL_121;
      }

      v33[2] = v121;
LABEL_85:
      *(v5 + 24) = v33;
      v27 += v107;
      if (!--v106)
      {
        goto LABEL_114;
      }
    }

    sub_1CF7C4B2C(v117, v112);
    v113 = sub_1CF7BF4F4(v110);
    if ((v118 & 1) != (v119 & 1))
    {
      sub_1CF9E8108();
      __break(1u);
      goto LABEL_129;
    }

LABEL_109:
    v33 = v136;
    if (v118)
    {
      goto LABEL_84;
    }

    goto LABEL_110;
  }

LABEL_114:
  v123 = v130;
  if (v130)
  {
    v33 = swift_allocObject();
    v33[2] = v123;
    v33[3] = v128;
    v27 = *(v5 + 72);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_116;
  }
}

uint64_t sub_1CF0674AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF0674E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12 = 0;
  v13 = -1;
  v6 = swift_allocObject();
  v6[2] = &v12;
  v6[3] = a1;
  v6[4] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1CF480F6C;
  *(v7 + 24) = v6;
  v11[4] = sub_1CF1C0B54;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1CEFFD02C;
  v11[3] = &block_descriptor_800;
  v8 = _Block_copy(v11);

  [v3 runIfPossible_];
  _Block_release(v8);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (v13 == 255)
    {

      return 0;
    }

    else
    {
      v10 = v12;
      if (v13)
      {
        v11[0] = v12;
        sub_1CF480F78(v12, 1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        swift_willThrowTypedImpl();
      }

      sub_1CF480F84(v12, v13);
    }

    return v10;
  }

  return result;
}

void sub_1CF06771C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1CF9E57E8();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1CF06779C(uint64_t a1, uint64_t a2)
{
  v11 = 1;
  v5 = swift_allocObject();
  v5[2] = &v11;
  v5[3] = a1;
  v5[4] = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1CF982328;
  *(v6 + 24) = v5;
  aBlock[4] = sub_1CF1C0B54;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFFD02C;
  aBlock[3] = &block_descriptor_48;
  v7 = _Block_copy(aBlock);

  [v2 runIfPossible_];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF067934()
{
  v1 = *v0;
  swift_beginAccess();

  v3 = *(v1 + 200);
  v4 = *(v1 + 216);
  type metadata accessor for FSOrFPJob();
  sub_1CF9E6E58();
  sub_1CF9E6E18();
  return swift_endAccess();
}

void sub_1CF0679E4(void *a1@<X8>)
{
  v3 = [*v1 itemID];
  v4 = [v3 identifier];

  *a1 = v4;
}

uint64_t sub_1CF067A50()
{
  v1 = *v0;
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E81D8();
  sub_1CF9E69C8();
  v2 = sub_1CF9E8228();

  return v2;
}

id sub_1CF067B30(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  (*(*(*((*MEMORY[0x1E69E7D40] & *v1) + 0x50) - 8) + 16))(&v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x60)], a1);
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1CF067BE8(void *a1)
{
  v1 = a1;
  v2 = sub_1CF067C24();

  return v2;
}

uint64_t sub_1CF067C24()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *(*((*MEMORY[0x1E69E7D40] & *v0) + 0x58) + 40);
  v3 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  return sub_1CF9E6768();
}

uint64_t sub_1CF067C98()
{
  v1 = *v0;
  v2 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v3 = MEMORY[0x1D3868D90](v2);

  return v3;
}

void sub_1CF067D38(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v5 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v59 = v7;
  v8 = *(v7 + 84);
  v50 = swift_getAssociatedTypeWitness();
  v9 = *(v50 - 8);
  v58 = v9;
  v10 = *(v9 + 84);
  v49 = swift_getAssociatedTypeWitness();
  v11 = *(v49 - 8);
  v57 = v11;
  v51 = v10;
  v48 = *(v11 + 84);
  if (v10 <= v48)
  {
    v10 = *(v11 + 84);
  }

  if (v10 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = v10;
  }

  v52 = v12;
  v54 = v8;
  if (v12 > v8)
  {
    v8 = v12;
  }

  v13 = *(sub_1CF9E5CF8() - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  v16 = *(v7 + 64);
  if (v15 <= 0x7FFFFFFE)
  {
    v17 = 2147483646;
  }

  else
  {
    v17 = *(v13 + 84);
  }

  v18 = *(v7 + 80);
  v19 = *(v11 + 80);
  v20 = *(v9 + 64);
  v21 = *(v13 + 80);
  v22 = *(v13 + 64);
  if (v8 <= v17)
  {
    v23 = v17;
  }

  else
  {
    v23 = v8;
  }

  if (v23 <= 0x7FFFFFFF)
  {
    v24 = 0x7FFFFFFF;
  }

  else
  {
    v24 = v23;
  }

  v25 = *(v9 + 80) & 0xF8 | v19 | 7;
  v26 = v20 + 7;
  v27 = ((((*(v11 + 64) + ((v19 + 8 + ((v20 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v19) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v28 = (v21 | 7) + 16;
  v29 = ((v21 + ((((((((v22 + ((v22 + v21 + ((v21 + 12) & ~v21)) & ~v21) + 12) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 21) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 10) & ~v21) + v22;
  if (v15)
  {
    v30 = ((v21 + ((((((((v22 + ((v22 + v21 + ((v21 + 12) & ~v21)) & ~v21) + 12) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 21) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 10) & ~v21) + v22;
  }

  else
  {
    v30 = v29 + 1;
  }

  v31 = ((((((((((((((v30 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + ((v28 + ((v16 + ((v16 + v18) & ~v18) + v25) & ~v25) + v27) & ~(v21 | 7)) + 335) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v24 >= a3)
  {
    v34 = 0;
  }

  else
  {
    if (((((((((((((((v30 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) + 25) & 0xFFFFFFF8) + ((v28 + ((v16 + ((v16 + v18) & ~v18) + v25) & ~v25) + v27) & ~(v21 | 7)) + 335) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v32 = a3 - v24 + 1;
    }

    else
    {
      v32 = 2;
    }

    if (v32 >= 0x10000)
    {
      v33 = 4;
    }

    else
    {
      v33 = 2;
    }

    if (v32 < 0x100)
    {
      v33 = 1;
    }

    if (v32 >= 2)
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }
  }

  if (a2 > v24)
  {
    if (v31)
    {
      v35 = 1;
    }

    else
    {
      v35 = a2 - v24;
    }

    if (v31)
    {
      v36 = ~v24 + a2;
      bzero(a1, v31);
      *a1 = v36;
    }

    if (v34 > 1)
    {
      if (v34 == 2)
      {
        *(a1 + v31) = v35;
      }

      else
      {
        *(a1 + v31) = v35;
      }
    }

    else if (v34)
    {
      *(a1 + v31) = v35;
    }

    return;
  }

  if (v34 > 1)
  {
    v37 = a1;
    if (v34 != 2)
    {
      *(a1 + v31) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_51;
    }

    *(a1 + v31) = 0;
  }

  else
  {
    v37 = a1;
    if (v34)
    {
      *(a1 + v31) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_51;
    }
  }

  if (!a2)
  {
    return;
  }

LABEL_51:
  if (v54 == v24)
  {
    v38 = *(v59 + 56);
    v39 = a2;
    v40 = v54;
    v41 = AssociatedTypeWitness;
LABEL_53:

    v38(v37, v39, v40, v41);
    return;
  }

  v42 = ((((v16 + v18 + v37) & ~v18) + v16 + v25) & ~v25);
  if (v10 == v24)
  {
    if (v52 >= a2)
    {
      v40 = v51;
      if (v51 == v52)
      {
        v38 = *(v58 + 56);
        v37 = (((v16 + v18 + v37) & ~v18) + v16 + v25) & ~v25;
        v39 = a2;
        v41 = v50;
      }

      else
      {
        v38 = *(v57 + 56);
        v37 = (v19 + 8 + ((v42 + v26) & 0xFFFFFFFFFFFFFFF8)) & ~v19;
        v39 = a2;
        v40 = v48;
        v41 = v49;
      }

      goto LABEL_53;
    }

    if (!v27)
    {
      return;
    }

    v43 = ~v52;
LABEL_71:
    v46 = v43 + a2;
    bzero(v42, v27);
    *v42 = v46;
    return;
  }

  v44 = (v42 + v27);
  if ((v23 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *v44 = a2 & 0x7FFFFFFF;
      v44[1] = 0;
    }

    else
    {
      v44[1] = a2 - 1;
    }

    return;
  }

  v42 = ((v44 + v28) & ~(v21 | 7));
  if (v17 < a2)
  {
    v45 = (((((((((v29 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) + 25) & 0xFFFFFFF8;
    v27 = (v45 + 16);
    if (v45 == -16)
    {
      return;
    }

    v43 = ~v17;
    goto LABEL_71;
  }

  v47 = *(v14 + 56);

  v47((v42 + v21 + 12) & ~v21, a2);
}

uint64_t sub_1CF0682F8(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v51 = swift_getAssociatedTypeWitness();
  v8 = *(v51 - 8);
  v56 = v8;
  v9 = *(v8 + 84);
  v50 = swift_getAssociatedTypeWitness();
  v10 = *(v50 - 8);
  v52 = v9;
  v49 = *(v10 + 84);
  if (v9 <= v49)
  {
    v11 = *(v10 + 84);
  }

  else
  {
    v11 = v9;
  }

  if (v11 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = v11;
  }

  v54 = v7;
  if (v12 > v7)
  {
    v7 = v12;
  }

  v13 = *(sub_1CF9E5CF8() - 8);
  v14 = *(v13 + 84);
  v15 = *(v6 + 64);
  v16 = *(v6 + 80);
  v17 = *(v8 + 80);
  v18 = *(v10 + 80);
  v19 = *(v8 + 64);
  v20 = *(v13 + 80);
  if (v14 <= v7)
  {
    v22 = v7;
  }

  else
  {
    v22 = *(v13 + 84);
  }

  if (v22 <= 0x7FFFFFFF)
  {
    v23 = 0x7FFFFFFF;
  }

  else
  {
    v23 = v22;
  }

  if (v14)
  {
    v24 = 7;
  }

  else
  {
    v24 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v25 = v15 + v16;
  v26 = v17 & 0xF8 | v18 | 7;
  v27 = v19 + 7;
  v28 = ((((*(v10 + 64) + ((v18 + 8 + (v27 & 0xFFFFFFFFFFFFFFF8)) & ~v18) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v29 = v20 | 7;
  v30 = (v20 | 7) + 16;
  v31 = v20 + 12;
  v32 = a1;
  if (v23 >= a2)
  {
    goto LABEL_41;
  }

  v21 = *(v13 + 64);
  v33 = ((((((v30 + ((v15 + (v25 & ~v16) + v26) & ~v26) + v28) & ~v29) + ((((((((((v24 + v21 + ((v20 + ((((((((v21 + ((v21 + v20 + (v31 & ~v20)) & ~v20) + 12) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 21) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 10) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 335) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v34 = v33 & 0xFFFFFFF8;
  if ((v33 & 0xFFFFFFF8) != 0)
  {
    v35 = 2;
  }

  else
  {
    v35 = a2 - v23 + 1;
  }

  if (v35 >= 0x10000)
  {
    v36 = 4;
  }

  else
  {
    v36 = 2;
  }

  if (v35 < 0x100)
  {
    v36 = 1;
  }

  if (v35 >= 2)
  {
    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  if (v37 <= 1)
  {
    if (!v37)
    {
      goto LABEL_41;
    }

    v38 = *(a1 + v33);
    if (!v38)
    {
      goto LABEL_41;
    }

LABEL_38:
    v40 = v38 - 1;
    if (v34)
    {
      v40 = 0;
      v41 = *a1;
    }

    else
    {
      v41 = 0;
    }

    return v23 + (v41 | v40) + 1;
  }

  if (v37 == 2)
  {
    v38 = *(a1 + v33);
    if (v38)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v38 = *(a1 + v33);
    if (v38)
    {
      goto LABEL_38;
    }
  }

LABEL_41:
  if (v54 == v23)
  {
    v42 = *(v6 + 48);
    v43 = v54;
    v44 = AssociatedTypeWitness;
    goto LABEL_43;
  }

  v32 = (((a1 + v25) & ~v16) + v15 + v26) & ~v26;
  if (v11 == v23)
  {
    v43 = v52;
    if (v52 == v12)
    {
      v42 = *(v56 + 48);
      v44 = v51;
    }

    else
    {
      v42 = *(v10 + 48);
      v32 = (v18 + 8 + ((v27 + v32) & 0xFFFFFFFFFFFFFFF8)) & ~v18;
      v43 = v49;
      v44 = v50;
    }

LABEL_43:

    return v42(v32, v43, v44);
  }

  v45 = v28 + v32;
  if ((v22 & 0x80000000) != 0)
  {
    v47 = v31 + ((v30 + v45) & ~v29);
    v48 = *(v13 + 48);

    return v48(v47 & ~v20);
  }

  else
  {
    v46 = *(v45 + 8);
    if (v46 >= 0xFFFFFFFF)
    {
      LODWORD(v46) = -1;
    }

    return (v46 + 1);
  }
}

uint64_t sub_1CF0687FC@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*v1 filename];
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

  sub_1CEFE4E68();
  v4 = sub_1CF9E7668();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
  return result;
}

uint64_t sub_1CF0688E0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = *v4;
  if (*a3 != -1)
  {
    v14 = *v4;
    v15 = a4;
    swift_once();
    a4 = v15;
  }

  v6 = *a4;
  v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v9 = v8;
  if (v7 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1CF9E8048();
  }

  return v12 & 1;
}

id sub_1CF0689B8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1CF0689E4();
  *a1 = result;
  return result;
}

id sub_1CF0689E4()
{
  v1 = [v0 itemID];
  v2 = [v1 identifier];

  v3 = *MEMORY[0x1E6967258];
  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v6 = v5;
  if (v4 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v6 == v7)
  {

    goto LABEL_11;
  }

  v9 = sub_1CF9E8048();

  if (v9)
  {
LABEL_11:
    v12 = [v0 itemID];
    v13 = [v12 identifier];
LABEL_12:
    v14 = v13;

    return v14;
  }

  if (![v0 isTrashed])
  {
    v12 = [v0 parentItemID];
    v13 = [v12 identifier];
    goto LABEL_12;
  }

  v10 = *MEMORY[0x1E6967280];

  return v10;
}

uint64_t sub_1CF068B74()
{
  v1 = *v0;
  swift_beginAccess();
  v6 = v0[2];
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  type metadata accessor for JobLockRule();

  swift_getWitnessTable();
  sub_1CF9E7068();
  swift_getWitnessTable();
  v2 = sub_1CF9E6BF8();

  return v2 & 1;
}

uint64_t sub_1CF068C90(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = type metadata accessor for JobLockRule();
  return sub_1CF068CFC(a1, v6) & 1;
}

uint64_t sub_1CF068CFC(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v183 = &v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v184 = &v169 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v182 = &v169 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v176 = &v169 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v185 = &v169 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v173 = &v169 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v190 = &v169 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v170 = &v169 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v189 = &v169 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v169 = &v169 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v186 = &v169 - v27;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v192 = *(TupleTypeMetadata2 - 8);
  v28 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v196 = &v169 - v29;
  v30 = *(a2 + 16);
  v31 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v195 = *(AssociatedTypeWitness - 8);
  v33 = *(v195 + 64);
  v34 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v36 = &v169 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = &v169 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37);
  v177 = &v169 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v44 = &v169 - v43;
  v45 = MEMORY[0x1EEE9AC00](v42);
  v172 = &v169 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v171 = &v169 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v174 = &v169 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v181 = &v169 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v180 = &v169 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v179 = &v169 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v178 = &v169 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v188 = &v169 - v60;
  MEMORY[0x1EEE9AC00](v59);
  v187 = &v169 - v61;
  v193 = v31;
  if (sub_1CF0537B0(v2, a1, v30, v31) & 1) != 0 && (sub_1CF527F60(a2))
  {
    v62 = 1;
    return v62 & 1;
  }

  v175 = v30;
  v194 = AssociatedTypeWitness;
  v63 = v196;
  v64 = &v196[*(TupleTypeMetadata2 + 48)];
  v191 = v5;
  v65 = *(v5 + 16);
  v65(v196, v2, a2);
  v65(v64, a1, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_70;
        }

        goto LABEL_60;
      }

      v80 = v183;
      v65(v183, v63, a2);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v86 = v194;
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v88 = &v64[*(TupleTypeMetadata3 + 48)];
        v89 = &v64[*(TupleTypeMetadata3 + 64)];
        goto LABEL_37;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          goto LABEL_70;
        }

        v77 = v194;
        v78 = sub_1CF9E75D8();
        v79 = swift_getTupleTypeMetadata2();
        (*(*(v78 - 8) + 8))(&v64[*(v79 + 48)], v78);
        (*(v195 + 8))(v64, v77);
        (*(v191 + 8))(v63, a2);
LABEL_21:
        v62 = 1;
        return v62 & 1;
      }

      v80 = v182;
      v65(v182, v63, a2);
      if (!swift_getEnumCaseMultiPayload())
      {
        v69 = v194;
        v70 = v195;
        v124 = *(v195 + 32);
        v76 = v187;
        v124(v187, v80, v194);
        v73 = v188;
        v124(v188, v64, v69);
        (*(v191 + 8))(v63, a2);
LABEL_57:
        v138 = *(*(swift_getAssociatedConformanceWitness() + 40) + 8);
        v62 = sub_1CF9E6868();
        v139 = *(v70 + 8);
        v139(v73, v69);
        v139(v76, v69);
        return v62 & 1;
      }
    }

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v80 = v186;
      v65(v186, v63, a2);
      v81 = sub_1CF9E75D8();
      v82 = swift_getTupleTypeMetadata2();
      v83 = &v80[*(v82 + 48)];
      v84 = swift_getEnumCaseMultiPayload();
      if (v84 <= 1)
      {
        if (!v84)
        {
          v163 = v169;
          v65(v169, v64, a2);
          v69 = v194;
          v70 = v195;
          if ((*(v195 + 48))(v83, 1, v194) != 1)
          {
            v167 = *(v70 + 32);
            v76 = v187;
            v167();
            v73 = v188;
            (v167)(v188, v163, v69);
            (*(v70 + 8))(v80, v69);
            v168 = *(v191 + 8);
            v168(v64, a2);
            v168(v196, a2);
            goto LABEL_57;
          }

          v63 = v196;
          v135 = v191;
          v134 = v163;
LABEL_67:
          v164 = *(v70 + 8);
          v164(v134, v69);
          v164(v80, v69);
          goto LABEL_61;
        }

        if (v84 == 1)
        {
          v114 = v189;
          v65(v189, v64, a2);
          v86 = v194;
          v115 = swift_getTupleTypeMetadata3();
          TupleTypeMetadata2 = *(v115 + 48);
          v116 = *(v115 + 64);
          v117 = v80;
          v118 = v195;
          v119 = *(v195 + 32);
          v119(v178, v117, v86);
          v119(v179, v114, v86);
          v97 = *(v118 + 8);
          v97(&v114[v116], v86);
          v97(&v114[TupleTypeMetadata2], v86);
          (*(*(v81 - 8) + 8))(v83, v81);
          v120 = *(v191 + 8);
          v120(v64, a2);
          v120(v196, a2);
          goto LABEL_44;
        }

        goto LABEL_68;
      }

      if (v84 == 2)
      {
        v65(v189, v64, a2);
        v192 = *(v82 + 48);
        TupleTypeMetadata2 = v64;
        v147 = v195;
        v148 = *(v195 + 32);
        v149 = v80;
        v150 = v194;
        v148(v39, v149, v194);
        v151 = v189;
        v148(v36, v189, v150);
        v152 = *(*(swift_getAssociatedConformanceWitness() + 40) + 8);
        v62 = sub_1CF9E6868();
        v153 = *(v147 + 8);
        v153(v36, v150);
        v153(v39, v150);
        v154 = *(*(v81 - 8) + 8);
        v154(&v151[v192], v81);
        v154(v83, v81);
        v155 = *(v191 + 8);
        v155(TupleTypeMetadata2, a2);
        v155(v196, a2);
        return v62 & 1;
      }

      if (v84 != 3)
      {
        if (v84 == 4)
        {
          (*(*(v81 - 8) + 8))(v83, v81);
          (*(v195 + 8))(v80, v194);
          v85 = *(v191 + 8);
          v85(v64, a2);
          v85(v196, a2);
          goto LABEL_21;
        }

LABEL_68:
        (*(*(v81 - 8) + 8))(v83, v81);
        (*(v195 + 8))(v80, v194);
        v63 = v196;
        goto LABEL_70;
      }

      v143 = v170;
      v65(v170, v64, a2);
      v141 = v194;
      v142 = v195;
      v156 = (*(v195 + 48))(v83, 1, v194);
      v144 = v143;
      v140 = v80;
      v63 = v196;
      if (v156 != 1)
      {
LABEL_64:
        v176 = v140;
        v157 = *(v142 + 32);
        v158 = v171;
        v157(v171, v83, v141);
        v159 = v172;
        v157(v172, v144, v141);
        v160 = *(v142 + 8);
        v160(v176, v141);
        v161 = *(v191 + 8);
        v161(v64, a2);
        v161(v63, a2);
        v162 = *(*(swift_getAssociatedConformanceWitness() + 40) + 8);
        v62 = sub_1CF9E6868();
        v160(v159, v141);
        v160(v158, v141);
        return v62 & 1;
      }

      goto LABEL_59;
    }

    v80 = v185;
    v65(v185, v63, a2);
    v98 = swift_getEnumCaseMultiPayload();
    if (v98 > 1)
    {
      if (v98 == 2)
      {
        v140 = v176;
        v65(v176, v64, a2);
        v141 = v194;
        sub_1CF9E75D8();
        v83 = &v140[*(swift_getTupleTypeMetadata2() + 48)];
        v142 = v195;
        v143 = v140;
        v144 = v80;
        if ((*(v195 + 48))(v83, 1, v141) != 1)
        {
          goto LABEL_64;
        }

LABEL_59:
        v145 = *(v142 + 8);
        v145(v143, v141);
        v145(v80, v141);
        goto LABEL_60;
      }

      if (v98 == 7)
      {
        (*(v195 + 8))(v80, v194);
LABEL_60:
        v135 = v191;
LABEL_61:
        v146 = *(v135 + 8);
        v146(v64, a2);
        v146(v63, a2);
        v62 = 1;
        return v62 & 1;
      }
    }

    else
    {
      if (!v98)
      {
        v65(v189, v64, a2);
        v69 = v194;
        v70 = v195;
        v71 = *(v195 + 32);
        v76 = v187;
        v71(v187, v80, v194);
        v73 = v188;
        v75 = v189;
        v74 = v188;
        goto LABEL_56;
      }

      if (v98 == 1)
      {
        v99 = v189;
        v65(v189, v64, a2);
        v86 = v194;
        v100 = swift_getTupleTypeMetadata3();
        v101 = *(v100 + 64);
        v102 = v195;
        v103 = *(v195 + 32);
        v103(v180, &v99[*(v100 + 48)], v86);
        v103(v181, &v99[v101], v86);
        v104 = v174;
        v103(v174, v80, v86);
        v105 = *(v102 + 8);
        v106 = v99;
        v107 = v104;
        v105(v106, v86);
        v108 = *(v191 + 8);
        v108(v64, a2);
        goto LABEL_47;
      }
    }

LABEL_30:
    (*(v195 + 8))(v80, v194);
    goto LABEL_70;
  }

  if (!EnumCaseMultiPayload)
  {
    v65(v190, v63, a2);
    v67 = swift_getEnumCaseMultiPayload();
    if (v67 != 2)
    {
      if (v67 == 5 || v67 == 3)
      {
        v68 = v189;
        v65(v189, v64, a2);
        v69 = v194;
        v70 = v195;
        v71 = *(v195 + 32);
        v72 = v187;
        v71(v187, v190, v194);
        v73 = v188;
        v74 = v188;
        v75 = v68;
        v76 = v72;
LABEL_56:
        v71(v74, v75, v69);
        v137 = *(v191 + 8);
        v137(v64, a2);
        v137(v63, a2);
        goto LABEL_57;
      }

      (*(v195 + 8))(v190, v194);
LABEL_70:
      (*(v192 + 8))(v63, TupleTypeMetadata2);
      v62 = 0;
      return v62 & 1;
    }

    v131 = v173;
    v65(v173, v64, a2);
    v69 = v194;
    v132 = sub_1CF9E75D8();
    v133 = *(swift_getTupleTypeMetadata2() + 48);
    v70 = v195;
    if ((*(v195 + 48))(&v131[v133], 1, v69) != 1)
    {
      (*(*(v132 - 8) + 8))(&v131[v133], v132);
      v165 = *(v70 + 8);
      v165(v131, v69);
      v165(v190, v69);
      goto LABEL_70;
    }

    v134 = v131;
    v80 = v190;
    v135 = v191;
    goto LABEL_67;
  }

  v80 = v184;
  v65(v184, v63, a2);
  v86 = v194;
  v90 = swift_getTupleTypeMetadata3();
  v88 = &v80[*(v90 + 48)];
  v89 = &v80[*(v90 + 64)];
  v91 = swift_getEnumCaseMultiPayload();
  if (v91 == 6)
  {
LABEL_37:
    v109 = v195;
    v110 = *(v195 + 32);
    v110(v44, v80, v86);
    v111 = v177;
    v110(v177, v64, v86);
    v112 = *(v109 + 8);
    v112(v89, v86);
    v112(v88, v86);
    (*(v191 + 8))(v196, a2);
    v113 = *(*(swift_getAssociatedConformanceWitness() + 40) + 8);
    v62 = sub_1CF9E6868();
    v112(v111, v86);
    v112(v44, v86);
    return v62 & 1;
  }

  if (v91 != 3)
  {
    if (v91 != 2)
    {
      v136 = *(v195 + 8);
      v136(v89, v86);
      v136(v88, v86);
      v136(v80, v86);
      goto LABEL_70;
    }

    v92 = sub_1CF9E75D8();
    v93 = *(swift_getTupleTypeMetadata2() + 48);
    v94 = v80;
    v95 = v195;
    v96 = *(v195 + 32);
    v96(v178, v94, v86);
    v96(v179, v64, v86);
    (*(*(v92 - 8) + 8))(&v64[v93], v92);
    v97 = *(v95 + 8);
    v97(v89, v86);
    v97(v88, v86);
    (*(v191 + 8))(v196, a2);
LABEL_44:
    v121 = *(*(swift_getAssociatedConformanceWitness() + 40) + 8);
    v122 = v178;
    v123 = v179;
    v62 = sub_1CF9E6868();
    v97(v123, v86);
    v97(v122, v86);
    return v62 & 1;
  }

  v125 = v195;
  v126 = *(v195 + 32);
  v126(v180, v88, v86);
  v126(v181, v89, v86);
  v107 = v174;
  v126(v174, v64, v86);
  v105 = *(v125 + 8);
  v105(v80, v86);
  v108 = *(v191 + 8);
LABEL_47:
  v108(v196, a2);
  v127 = *(*(swift_getAssociatedConformanceWitness() + 40) + 8);
  v128 = v180;
  v129 = sub_1CF9E6868();
  v105(v128, v86);
  if (v129)
  {
    v62 = 1;
    v130 = v181;
  }

  else
  {
    v130 = v181;
    v62 = sub_1CF9E6868();
  }

  v105(v107, v86);
  v105(v130, v86);
  return v62 & 1;
}

uint64_t sub_1CF06A3F0()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 256))(result);

    return v1 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF06A45C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 192);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 56);

  return v6(a1, 1, 1, AssociatedTypeWitness);
}

uint64_t sub_1CF06A504(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for JobLockRule();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v31 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v33 = &v30 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v30 - v17;
  if (!a2)
  {
LABEL_14:
    v24 = 0xD000000000000016;
    sub_1CF657A18(0xD000000000000016, 0x80000001CFA552A0, 0, 2u);
    return v24;
  }

  if (a3)
  {
    return 0;
  }

  v30 = v16;
  if (!sub_1CF9E6DF8())
  {
LABEL_15:
    if (sub_1CF9E6DF8())
    {
      v25 = 0;
      v26 = (v7 + 8);
      v27 = v31;
      while (1)
      {
        v28 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        if (v28)
        {
          (*(v7 + 16))(v33, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v25, v6);
          v29 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            goto LABEL_25;
          }
        }

        else
        {
          result = sub_1CF9E7998();
          if (v30 != 8)
          {
            goto LABEL_31;
          }

          v34 = result;
          (*(v7 + 16))(v33, &v34, v6);
          swift_unknownObjectRelease();
          v29 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
LABEL_25:
            __break(1u);
            return 0;
          }
        }

        (*(v7 + 32))(v27, v33, v6);
        if (sub_1CF06AA3C())
        {
          break;
        }

        (*v26)(v27, v6);
        ++v25;
        if (v29 == sub_1CF9E6DF8())
        {
          return 0;
        }
      }

      v34 = 0;
      v35 = 0xE000000000000000;
      MEMORY[0x1D3868CC0](0x20656C7572, 0xE500000000000000);
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x7973756220736920, 0xE800000000000000);
      v24 = v34;
      (*v26)(v27, v6);
      return v24;
    }

    return 0;
  }

  v19 = 0;
  v32 = (v7 + 16);
  v20 = (v7 + 8);
  while (1)
  {
    v21 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v21)
    {
      (*(v7 + 16))(v18, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19, v6);
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    }

    result = sub_1CF9E7998();
    if (v30 != 8)
    {
      break;
    }

    v34 = result;
    (*v32)(v18, &v34, v6);
    swift_unknownObjectRelease();
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

LABEL_7:
    (*(v7 + 32))(v15, v18, v6);
    if (sub_1CF068B74())
    {
      v34 = 0;
      v35 = 0xE000000000000000;
      MEMORY[0x1D3868CC0](0x20656C7572, 0xE500000000000000);
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x7973756220736920, 0xE800000000000000);
      v24 = v34;
      sub_1CF657A18(v34, v35, 0, 2u);

      (*v20)(v15, v6);
      return v24;
    }

    (*v20)(v15, v6);
    ++v19;
    if (v22 == sub_1CF9E6DF8())
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1CF06AA3C()
{
  v1 = *v0;
  swift_beginAccess();
  v6 = v0[3];
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  type metadata accessor for JobLockRule();

  swift_getWitnessTable();
  sub_1CF9E7068();
  swift_getWitnessTable();
  v2 = sub_1CF9E6BF8();

  return v2 & 1;
}

unint64_t sub_1CF06AB58(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(v7 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v51 - v17;
  v19 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v2, a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v30 = *v21;
        v31 = *(v21 + 1);
        v32 = v21[16];
        v55 = 0;
        v56 = 0xE000000000000000;
        sub_1CF9E7948();
        if (v30)
        {
          v33 = 0x6465727265666564;
        }

        else
        {
          v33 = 0;
        }

        if (v30)
        {
          v34 = 0xE900000000000020;
        }

        else
        {
          v34 = 0xE000000000000000;
        }

        MEMORY[0x1D3868CC0](v33, v34);

        MEMORY[0x1D3868CC0](0x7473207465736572, 0xEE00203A6D616572);
        v35 = sub_1CF953A9C(v31, v32);
        MEMORY[0x1D3868CC0](v35);

        return v55;
      }

      v39 = &v21[*(swift_getTupleTypeMetadata2() + 48)];
      v40 = *v39;
      v41 = v39[8];
      (*(v11 + 32))(v18, v21, AssociatedTypeWitness);
      v55 = 0;
      v56 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x62206E6163736572, 0xED000020776F6C65);
      v42 = *(swift_getAssociatedConformanceWitness() + 16);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
      v43 = sub_1CF953A9C(v40, v41);
      MEMORY[0x1D3868CC0](v43);
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v25 = sub_1CF9E75D8();
        type metadata accessor for JobLockAggregator();
        sub_1CF9E75D8();
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v52 = *(TupleTypeMetadata3 + 48);
        if (*&v21[*(TupleTypeMetadata3 + 64)])
        {
          v27 = v25;

          v28 = v52;
          if ((*(v5 + 48))(&v21[v52], 1, v4) == 1)
          {
            (*(v11 + 32))(v18, v21, AssociatedTypeWitness);
            v55 = 0;
            v56 = 0xE000000000000000;
            MEMORY[0x1D3868CC0](0x616863206D657469, 0xED0000206465676ELL);
            v29 = *(swift_getAssociatedConformanceWitness() + 16);
            sub_1CF9E7FE8();
            v24 = v55;
            (*(v11 + 8))(v18, AssociatedTypeWitness);
            (*(*(v27 - 8) + 8))(&v21[v28], v27);
          }

          else
          {
            (*(v5 + 32))(v9, &v21[v28], v4);
            v55 = 0;
            v56 = 0xE000000000000000;
            MEMORY[0x1D3868CC0](0x616863206D657469, 0xED0000206465676ELL);
            v48 = *(v53 + 8);
            sub_1CF9E7FE8();
            v24 = v55;
            (*(v5 + 8))(v9, v4);
            (*(v11 + 8))(v21, AssociatedTypeWitness);
          }
        }

        else
        {
          (*(v11 + 32))(v18, v21, AssociatedTypeWitness);
          v55 = 0;
          v56 = 0xE000000000000000;
          sub_1CF9E7948();
          MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA464B0);
          v47 = *(swift_getAssociatedConformanceWitness() + 16);
          sub_1CF9E7FE8();
          v24 = v55;
          (*(v11 + 8))(v18, AssociatedTypeWitness);
          (*(*(v25 - 8) + 8))(&v21[v52], v25);
        }

        return v24;
      }

      (*(v11 + 32))(v18, v21, AssociatedTypeWitness);
      v55 = 0;
      v56 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA5A480);
      v38 = *(swift_getAssociatedConformanceWitness() + 16);
      sub_1CF9E7FE8();
    }

    v24 = v55;
    (*(v11 + 8))(v18, AssociatedTypeWitness);
    return v24;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      return 0xD000000000000035;
    }

    if (EnumCaseMultiPayload == 7)
    {
      return 0xD000000000000030;
    }

    return 0xD000000000000013;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v36 = *v21;
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_1CF9E7948();

    v55 = 0xD000000000000013;
    v56 = 0x80000001CFA5A3C0;
    v54 = v36;
    v37 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v37);

    MEMORY[0x1D3868CC0](0x72757020746F6720, 0xEB00000000646567);
    return v55;
  }

  v44 = v21[*(swift_getTupleTypeMetadata2() + 48)];
  (*(v11 + 32))(v15, v21, AssociatedTypeWitness);
  v55 = 0;
  v56 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA5A3A0);
  if (v44 > 1)
  {
    if (v44 == 2)
    {
      v45 = 0xE700000000000000;
      v46 = 0x6B6E696C6D7973;
    }

    else
    {
      v45 = 0xE500000000000000;
      v46 = 0x7361696C61;
    }
  }

  else if (v44)
  {
    v45 = 0xE300000000000000;
    v46 = 7498084;
  }

  else
  {
    v45 = 0xE300000000000000;
    v46 = 6516580;
  }

  MEMORY[0x1D3868CC0](v46, v45);

  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  v49 = *(swift_getAssociatedConformanceWitness() + 16);
  sub_1CF9E7FE8();
  v24 = v55;
  (*(v11 + 8))(v15, AssociatedTypeWitness);
  return v24;
}

uint64_t sub_1CF06B4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1CF9E75D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v25 - v12;
  v14 = *(a2 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v11);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v25 - v19;
  (*(v9 + 16))(v13, a1, v8);
  if ((*(v14 + 48))(v13, 1, a2) == 1)
  {
    v21 = *(v9 + 8);
    v21(a1, v8);
    v21(v13, v8);
    v22 = 1;
  }

  else
  {
    (*(v14 + 32))(v20, v13, a2);
    (*(v14 + 16))(v18, v20, a2);
    sub_1CF06B77C(v18, a2, a3, a4);
    (*(v9 + 8))(a1, v8);
    (*(v14 + 8))(v20, a2);
    v22 = 0;
  }

  v23 = type metadata accessor for SnapshotItem();
  return (*(*(v23 - 8) + 56))(a4, v22, 1, v23);
}

uint64_t sub_1CF06B77C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70 = *(AssociatedTypeWitness - 8);
  v8 = *(v70 + 64);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v64 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v63 - v11;
  v13 = type metadata accessor for SnapshotItem();
  v14 = a4 + v13[13];
  sub_1CEFE528C(v76);
  v15 = v76[13];
  *(v14 + 192) = v76[12];
  *(v14 + 208) = v15;
  *(v14 + 224) = v76[14];
  *(v14 + 240) = v77;
  v16 = v76[9];
  *(v14 + 128) = v76[8];
  *(v14 + 144) = v16;
  v17 = v76[11];
  *(v14 + 160) = v76[10];
  *(v14 + 176) = v17;
  v18 = v76[5];
  *(v14 + 64) = v76[4];
  *(v14 + 80) = v18;
  v19 = v76[7];
  *(v14 + 96) = v76[6];
  *(v14 + 112) = v19;
  v20 = v76[1];
  *v14 = v76[0];
  *(v14 + 16) = v20;
  v21 = v76[3];
  *(v14 + 32) = v76[2];
  *(v14 + 48) = v21;
  v22 = a4 + v13[14];
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 1;
  v66 = v13;
  v67 = a4;
  v23 = a4 + v13[15];
  *v23 = 0;
  *(v23 + 8) = 0;
  *(v23 + 16) = 1;
  v24 = *(a3 + 64);
  v25 = v65;
  v24(a2, a3);
  v26 = v12;
  v27 = v25;
  v68 = v24;
  v24(a2, a3);
  v69 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = AssociatedTypeWitness;
  LOBYTE(v25) = (*(AssociatedConformanceWitness + 72))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v30 = *(v70 + 8);
  v31 = v26;
  v32 = v27;
  v70 += 8;
  v30(v31, v29);
  if (v25 & 1) != 0 || (v33 = v64, v68(v69, a3), v34 = (*(AssociatedConformanceWitness + 64))(v29, AssociatedConformanceWitness), v30(v33, v29), (v34))
  {
    v36 = v66;
    v35 = v67;
    v37 = v67 + v66[9];
    v38 = v69;
    v68(v69, a3);
  }

  else
  {
    v36 = v66;
    v35 = v67;
    v39 = v67 + v66[9];
    v38 = v69;
    (*(a3 + 72))(v69, a3);
  }

  v40 = v35 + v36[10];
  (*(a3 + 112))(v38, a3);
  (*(a3 + 80))(v74, v38, a3);
  v41 = *(&v74[0] + 1);
  v42 = (v35 + v36[11]);
  *v42 = *&v74[0];
  v42[1] = v41;
  v43 = v35 + v36[12];
  (*(a3 + 104))(v38, a3);
  (*(a3 + 120))(v72, v38, a3);
  v44 = *(v14 + 208);
  v74[12] = *(v14 + 192);
  v74[13] = v44;
  v74[14] = *(v14 + 224);
  v75 = *(v14 + 240);
  v45 = *(v14 + 144);
  v74[8] = *(v14 + 128);
  v74[9] = v45;
  v46 = *(v14 + 176);
  v74[10] = *(v14 + 160);
  v74[11] = v46;
  v47 = *(v14 + 80);
  v74[4] = *(v14 + 64);
  v74[5] = v47;
  v48 = *(v14 + 112);
  v74[6] = *(v14 + 96);
  v74[7] = v48;
  v49 = *(v14 + 16);
  v74[0] = *v14;
  v74[1] = v49;
  v50 = *(v14 + 48);
  v74[2] = *(v14 + 32);
  v74[3] = v50;
  sub_1CF06CF28(v74);
  v51 = v72[13];
  *(v14 + 192) = v72[12];
  *(v14 + 208) = v51;
  *(v14 + 224) = v72[14];
  *(v14 + 240) = v73;
  v52 = v72[9];
  *(v14 + 128) = v72[8];
  *(v14 + 144) = v52;
  v53 = v72[11];
  *(v14 + 160) = v72[10];
  *(v14 + 176) = v53;
  v54 = v72[5];
  *(v14 + 64) = v72[4];
  *(v14 + 80) = v54;
  v55 = v72[7];
  *(v14 + 96) = v72[6];
  *(v14 + 112) = v55;
  v56 = v72[1];
  *v14 = v72[0];
  *(v14 + 16) = v56;
  v57 = v72[3];
  *(v14 + 32) = v72[2];
  *(v14 + 48) = v57;
  (*(a3 + 136))(&v71, v38, a3);
  *(v35 + v36[16]) = v71;
  v58 = (*(a3 + 144))(v38, a3);
  v60 = v59;
  result = (*(*(v38 - 8) + 8))(v32, v38);
  v62 = (v35 + v36[17]);
  *v62 = v58;
  v62[1] = v60;
  return result;
}

void sub_1CF06BC9C(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = &selRef_initWithTarget_;
  v5 = [v1 itemVersion];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 contentVersion];

    v8 = sub_1CF9E5B88();
    v52 = v9;
  }

  else
  {
    v8 = 0;
    v52 = 0xC000000000000000;
  }

  v10 = [v2 itemVersion];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 equivalentContentVersions];

    v13 = sub_1CF9E6D48();
    v14 = *(v13 + 16);
    if (v14)
    {
      v49 = v2;
      v50 = v8;
      v53 = MEMORY[0x1E69E7CC0];
      sub_1CF06C14C(0, v14, 0);
      v15 = v53;
      v16 = (v13 + 40);
      do
      {
        v17 = *(v16 - 1);
        v18 = *v16;
        sub_1CEFE42D4(v17, *v16);
        v20 = *(v53 + 16);
        v19 = *(v53 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1CF06C14C((v19 > 1), v20 + 1, 1);
        }

        v16 += 2;
        *(v53 + 16) = v20 + 1;
        v21 = v53 + 16 * v20;
        *(v21 + 32) = v17;
        *(v21 + 40) = v18;
        --v14;
      }

      while (v14);

      v2 = v49;
      v8 = v50;
    }

    else
    {

      v15 = MEMORY[0x1E69E7CC0];
    }

    v4 = &selRef_initWithTarget_;
  }

  else
  {
    v15 = 0;
  }

  v22 = [v2 itemVersion];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 metadataVersion];

    v25 = sub_1CF9E5B88();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0xC000000000000000;
  }

  v28 = [v2 itemVersion];
  if (v28)
  {
    v47 = v25;
    v48 = v27;
    v29 = v28;
    v30 = [v28 equivalentMetadataVersions];

    v31 = sub_1CF9E6D48();
    v32 = *(v31 + 16);
    if (v32)
    {
      v51 = v8;
      v46 = a1;
      v54 = MEMORY[0x1E69E7CC0];
      sub_1CF06C14C(0, v32, 0);
      v33 = v54;
      v34 = (v31 + 40);
      do
      {
        v36 = *(v34 - 1);
        v35 = *v34;
        sub_1CEFE42D4(v36, *v34);
        v38 = *(v54 + 16);
        v37 = *(v54 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_1CF06C14C((v37 > 1), v38 + 1, 1);
        }

        v34 += 2;
        *(v54 + 16) = v38 + 1;
        v39 = v54 + 16 * v38;
        *(v39 + 32) = v36;
        *(v39 + 40) = v35;
        --v32;
      }

      while (v32);

      a1 = v46;
      v8 = v51;
      v4 = &selRef_initWithTarget_;
    }

    else
    {

      v33 = MEMORY[0x1E69E7CC0];
    }

    v25 = v47;
    v27 = v48;
  }

  else
  {
    v33 = 0;
  }

  v40 = [v2 v4[114]];
  if (v40 && (v41 = v40, v42 = [v40 lastEditorDeviceName], v41, v42))
  {
    v43 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  *a1 = v8;
  a1[1] = v52;
  a1[2] = v15;
  a1[3] = v25;
  a1[4] = v27;
  a1[5] = v33;
  a1[6] = v43;
  a1[7] = v45;
}

char *sub_1CF06C040(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2280, &qword_1CFA107C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1CF06C14C(char *a1, int64_t a2, char a3)
{
  result = sub_1CF06C040(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1CF06C190@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v144 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1180, &unk_1CFA18170);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v120 - v8;
  v10 = [v2 ownerNameComponents];
  if (v10)
  {
    v11 = v10;
    sub_1CF9E5738();

    v12 = sub_1CF9E5748();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  else
  {
    v13 = sub_1CF9E5748();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = [v2 preformattedOwnerName];
  if (v14)
  {
    v15 = v14;
    v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = sub_1CF06CCB8(v16, v18);
  v142 = v20;
  v143 = v19;

  sub_1CEFCCC44(v9, &qword_1EC4C1180, &unk_1CFA18170);
  v21 = [v2 mostRecentEditorNameComponents];
  if (v21)
  {
    v22 = v21;
    sub_1CF9E5738();

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = sub_1CF9E5748();
  (*(*(v24 - 8) + 56))(v7, v23, 1, v24);
  v25 = [v2 preformattedMostRecentEditorName];
  if (v25)
  {
    v26 = v25;
    v27 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  v30 = sub_1CF06CCB8(v27, v29);
  v140 = v31;
  v141 = v30;

  sub_1CEFCCC44(v7, &qword_1EC4C1180, &unk_1CFA18170);
  v32 = [v2 decorations];
  if (v32)
  {
    type metadata accessor for NSFileProviderItemDecorationIdentifier(0);
    v33 = sub_1CF9E6D48();

    v34 = *(v33 + 16);
    if (v34)
    {
      v35 = v2;
      *&v152 = MEMORY[0x1E69E7CC0];
      sub_1CEFE95CC(0, v34, 0);
      v36 = 32;
      v32 = v152;
      do
      {
        v37 = *(v33 + v36);
        v38 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        *&v152 = v32;
        v41 = v32[2];
        v40 = v32[3];
        if (v41 >= v40 >> 1)
        {
          v43 = v38;
          v44 = v39;
          sub_1CEFE95CC((v40 > 1), v41 + 1, 1);
          v39 = v44;
          v38 = v43;
          v32 = v152;
        }

        v32[2] = v41 + 1;
        v42 = &v32[2 * v41];
        v42[4] = v38;
        v42[5] = v39;
        v36 += 8;
        --v34;
      }

      while (v34);

      v2 = v35;
    }

    else
    {

      v32 = 0;
    }
  }

  v139 = v32;
  v45 = [v2 userInfo];
  if (v45)
  {
    v46 = v45;
    v47 = sub_1CF9E6638();

    if (*(v47 + 16))
    {
      v48 = objc_allocWithZone(MEMORY[0x1E69674A8]);
      v49 = sub_1CF9E6618();

      v50 = [v48 initWithUserInfo_];

      v51 = [v50 keys];
      v138 = sub_1CF9E6D48();

      v52 = [v50 values];
      v137 = sub_1CF9E6D48();

      goto LABEL_26;
    }
  }

  v137 = 0;
  v138 = 0;
LABEL_26:
  v53 = [v2 conflictingVersions];
  if (!v53)
  {
    v148 = 0;
    goto LABEL_44;
  }

  v54 = v53;
  sub_1CEFD57E0(0, &unk_1EDEAB5A0, 0x1E69674E8);
  v55 = sub_1CF9E6D48();

  if (v55 >> 62)
  {
    v56 = sub_1CF9E7818();
    if (v56)
    {
      goto LABEL_29;
    }

LABEL_43:

    v148 = MEMORY[0x1E69E7CC0];
    goto LABEL_44;
  }

  v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v56)
  {
    goto LABEL_43;
  }

LABEL_29:
  *&v152 = MEMORY[0x1E69E7CC0];
  result = sub_1CF680B2C(0, v56 & ~(v56 >> 63), 0);
  if (v56 < 0)
  {
    __break(1u);
    return result;
  }

  v136 = v2;
  v58 = 0;
  v59 = v152;
  v60 = v55;
  v145 = v55 & 0xC000000000000001;
  v146 = v56;
  v147 = v55;
  do
  {
    v61 = v59;
    if (v145)
    {
      v62 = MEMORY[0x1D3869C30](v58, v60);
    }

    else
    {
      v62 = v60[v58 + 4];
    }

    v63 = v62;
    v64 = [v62 contentVersion];
    v148 = sub_1CF9E5B88();
    v66 = v65;

    v67 = [v63 metadataVersion];
    v68 = sub_1CF9E5B88();
    v70 = v69;

    v71 = [v63 lastEditorDeviceName];
    if (v71)
    {
      v72 = v71;
      v73 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v75 = v74;
    }

    else
    {

      v73 = 0;
      v75 = 0;
    }

    v59 = v61;
    *&v152 = v61;
    v76 = *(v61 + 16);
    v77 = *(v59 + 24);
    if (v76 >= v77 >> 1)
    {
      sub_1CF680B2C((v77 > 1), v76 + 1, 1);
      v59 = v152;
    }

    v58 = v58 + 1;
    *(v59 + 16) = v76 + 1;
    v78 = (v59 + (v76 << 6));
    v60 = v147;
    v78[4] = v148;
    v78[5] = v66;
    v78[6] = 0;
    v78[7] = v68;
    v78[8] = v70;
    v78[9] = 0;
    v78[10] = v73;
    v78[11] = v75;
  }

  while (v146 != v58);
  v148 = v59;

  v2 = v136;
LABEL_44:
  v147 = [v2 collaborationIdentifier];
  v146 = [v2 capabilities];
  LODWORD(v145) = [v2 isUploading];
  LODWORD(v136) = [v2 isUploaded];
  v135 = [v2 uploadingError];
  v134 = [v2 downloadingError];
  v133 = [v2 isShared];
  v132 = [v2 isTopLevelSharedItem];
  v131 = [v2 isSharedByCurrentUser];
  v130 = [v2 fp_isLastModifiedByCurrentUser];
  v79 = [v2 sharingPermissions];
  if (v79)
  {
    v80 = v79;
    v81 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v128 = v82;
    v129 = v81;
  }

  else
  {
    v128 = 0;
    v129 = 0;
  }

  v127 = [v2 isContainer];
  v126 = [v2 isContainerPristine];
  v83 = [v2 fp_appContainerBundleIdentifier];
  if (v83)
  {
    v84 = v83;
    v85 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v124 = v86;
    v125 = v85;
  }

  else
  {
    v124 = 0;
    v125 = 0;
  }

  v87 = [v2 cloudContainerIdentifier];
  if (v87)
  {
    v88 = v87;
    v89 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v122 = v90;
    v123 = v89;
  }

  else
  {
    v122 = 0;
    v123 = 0;
  }

  v91 = [v2 containerDisplayName];
  if (v91)
  {
    v92 = v91;
    v121 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v94 = v93;
  }

  else
  {
    v121 = 0;
    v94 = 0;
  }

  v95 = [v2 fp_displayName];
  if (v95)
  {
    v96 = v95;
    v97 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v99 = v98;

    *&v152 = v97;
    *(&v152 + 1) = v99;
    *&v151[0] = 58;
    *(&v151[0] + 1) = 0xE100000000000000;
    v149 = 47;
    v150 = 0xE100000000000000;
    sub_1CEFE4E68();
    v100 = sub_1CF9E7668();
    v102 = v101;
  }

  else
  {
    v100 = 0;
    v102 = 0;
  }

  v103 = [v2 hasUnresolvedConflicts];
  if (v103)
  {
    v104 = v103;
    v105 = [v103 BOOLValue];
  }

  else
  {
    v105 = 0;
  }

  v106 = [v2 contentPolicy];
  sub_1CF06BC9C(&v152);
  v107 = v147;

  v151[0] = v152;
  v151[1] = v153;
  v151[2] = v154;
  v151[3] = v155;
  v108 = v155;

  sub_1CEFCCC44(v151, &unk_1EC4BF250, &unk_1CFA01B50);
  *&v152 = v146;
  BYTE8(v152) = v145;
  BYTE9(v152) = v136;
  *&v153 = v135;
  *(&v153 + 1) = v134;
  LOBYTE(v154) = v133;
  BYTE1(v154) = v132;
  BYTE2(v154) = v131;
  *(&v154 + 1) = v143;
  *&v155 = v142;
  *(&v155 + 1) = v141;
  *&v156 = v140;
  BYTE8(v156) = v130;
  *&v157 = v129;
  *(&v157 + 1) = v128;
  *&v158 = v107;
  BYTE8(v158) = v127;
  BYTE9(v158) = v126;
  *&v159 = v125;
  *(&v159 + 1) = v124;
  *&v160 = v123;
  *(&v160 + 1) = v122;
  *&v161 = v121;
  *(&v161 + 1) = v94;
  *&v162 = v100;
  *(&v162 + 1) = v102;
  LOBYTE(v163) = v105;
  *(&v163 + 1) = v139;
  *&v164 = v138;
  *(&v164 + 1) = v137;
  v165 = v106;
  *v166 = v148;
  *&v166[8] = v108;
  result = nullsub_1(&v152);
  v109 = v165;
  v110 = *v166;
  v111 = v163;
  v112 = v144;
  *(v144 + 192) = v164;
  *(v112 + 208) = v109;
  *(v112 + 224) = v110;
  v113 = v161;
  v114 = v162;
  v115 = v159;
  *(v112 + 128) = v160;
  *(v112 + 144) = v113;
  *(v112 + 160) = v114;
  *(v112 + 176) = v111;
  v116 = v157;
  v117 = v158;
  v118 = v155;
  *(v112 + 64) = v156;
  *(v112 + 80) = v116;
  *(v112 + 240) = *&v166[16];
  *(v112 + 96) = v117;
  *(v112 + 112) = v115;
  v119 = v153;
  *v112 = v152;
  *(v112 + 16) = v119;
  *(v112 + 32) = v154;
  *(v112 + 48) = v118;
  return result;
}

uint64_t sub_1CF06CCB8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1180, &unk_1CFA18170);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v18 - v7;
  v9 = sub_1CF9E5748();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    sub_1CEFCCBDC(v2, v8, &qword_1EC4C1180, &unk_1CFA18170);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_1CEFCCC44(v8, &qword_1EC4C1180, &unk_1CFA18170);
      a1 = 0;
    }

    else
    {
      (*(v10 + 32))(v13, v8, v9);
      if (qword_1EC4BCCE0 != -1)
      {
        swift_once();
      }

      v14 = qword_1EC4EBCA8;
      v15 = sub_1CF9E5728();
      v16 = [v14 stringFromPersonNameComponents_];

      a1 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      (*(v10 + 8))(v13, v9);
    }
  }

  return a1;
}

uint64_t sub_1CF06CF28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BECF0, &unk_1CF9FEEB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

FileProviderDaemon::Fields sub_1CF06CF90()
{
  v1 = [*v0 unsupportedFields];

  return Fields.init(_:)(v1);
}

FileProviderDaemon::Fields __swiftcall Fields.init(_:)(FileProviderDaemon::Fields result)
{
  v2 = (result.rawValue >> 1) & 3;
  if ((result.rawValue & 0x100) != 0)
  {
    v2 = (result.rawValue >> 1) & 3 | 0x3004;
  }

  *v1 = (16 * result.rawValue) & 0xC00 | (8 * (result.rawValue & 1)) & 0x1F | (32 * ((result.rawValue >> 3) & 7)) & 0xFFFBBFFFFFFFFFFFLL | (result.rawValue >> 1) & 0x100 | (((result.rawValue >> 10) & 1) << 46) & 0xFFFBFFFFFFFFFFFFLL | (((result.rawValue >> 31) & 1) << 50) | v2;
  return result;
}

unint64_t get_enum_tag_for_layout_string_18FileProviderDaemon11SyncabilityO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1CF06D058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, ValueMetadata *a11)
{
  v81 = a6;
  v82 = a7;
  v78 = a5;
  LODWORD(v80) = a4;
  v79 = a3;
  v83 = a8;
  v84 = a9;
  v85 = a11;
  v13 = type metadata accessor for SnapshotItem();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v77 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v75 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v76 = &v75 - v21;
  v22 = sub_1CF9E75D8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v24 = *(*(TupleTypeMetadata2 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v27 = &v75 - v26;
  v28 = *(v25 + 56);
  v29 = *(*(v22 - 8) + 16);
  v29(&v75 - v26, a1, v22);
  v29(&v27[v28], a2, v22);
  v30 = *(v14 + 48);
  LODWORD(a1) = v30(v27, 1, v13);
  v31 = v30(&v27[v28], 1, v13);
  if (a1 == 1)
  {
    if (v31 == 1)
    {
      v32 = v85;
      v33 = v83;
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v35 = *(AssociatedConformanceWitness + 64);
      v36 = swift_checkMetadataState();
      v37 = v79;
      v38 = v35(v36, AssociatedConformanceWitness);
      if (v38)
      {
        v39 = v84;
        *v84 = 0xD00000000000001ALL;
        v39[1] = 0x80000001CFA45E10;
        v87 = v33;
        v88 = v33;
        v89 = v32;
        v90 = v32;
        type metadata accessor for ItemChange();
        return swift_storeEnumTagMultiPayload();
      }

      MEMORY[0x1EEE9AC00](v38);
      strcpy(&v75 - 32, "  isRecursive reason ");
      v87 = v36;
      v88 = v22;
      v89 = MEMORY[0x1E69E6370];
      v90 = MEMORY[0x1E69E6158];
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v64 = TupleTypeMetadata[12];
      v65 = TupleTypeMetadata[16];
      v66 = v84;
      v67 = (v84 + TupleTypeMetadata[20]);
      (*(*(v36 - 8) + 16))(v84, v37, v36);
      (*(v14 + 56))(&v66[v64], 1, 1, v13);
      v66[v65] = v78 & 1;
      v68 = v82;
      *v67 = v81;
      v67[1] = v68;
      v87 = v33;
      v88 = v33;
      v89 = v32;
      v90 = v32;
      type metadata accessor for ItemChange();
    }

    else
    {
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v50 = *(TupleTypeMetadata3 + 48);
      v51 = v84;
      v52 = (v84 + *(TupleTypeMetadata3 + 64));
      (*(v14 + 32))(v84, &v27[v28], v13);
      *(v51 + v50) = v80 & 1;
      v53 = v82;
      *v52 = v81;
      v52[1] = v53;
      v87 = v83;
      v88 = v83;
      v89 = v85;
      v90 = v85;
      type metadata accessor for ItemChange();
    }
  }

  else
  {
    v75 = v14;
    v40 = *(v14 + 32);
    if (v31 == 1)
    {
      v41 = v76;
      v40(v76, v27, v13);
      v80 = v40;
      v42 = v83;
      swift_getAssociatedTypeWitness();
      v43 = swift_getAssociatedConformanceWitness();
      v44 = *(v43 + 64);
      v45 = swift_checkMetadataState();
      v46 = v44(v45, v43);
      if (v46)
      {
        (*(v75 + 8))(v41, v13);
        v47 = v84;
        *v84 = 0xD00000000000001ALL;
        v47[1] = 0x80000001CFA45E10;
        v87 = v42;
        v88 = v42;
        v89 = v85;
        v90 = v85;
        type metadata accessor for ItemChange();
        return swift_storeEnumTagMultiPayload();
      }

      MEMORY[0x1EEE9AC00](v46);
      strcpy(&v75 - 32, "  isRecursive reason ");
      v87 = v45;
      v88 = v22;
      v89 = MEMORY[0x1E69E6370];
      v90 = MEMORY[0x1E69E6158];
      v69 = swift_getTupleTypeMetadata();
      v70 = v69[12];
      v71 = v69[16];
      v72 = v84;
      v73 = (v84 + v69[20]);
      (*(*(v45 - 8) + 16))(v84, v79, v45);
      v80(&v72[v70], v41, v13);
      (*(v75 + 56))(&v72[v70], 0, 1, v13);
      v72[v71] = v78 & 1;
      v74 = v82;
      *v73 = v81;
      v73[1] = v74;
      v87 = v42;
      v88 = v42;
      v89 = v85;
      v90 = v85;
      type metadata accessor for ItemChange();
    }

    else
    {
      v40(v20, v27, v13);
      v54 = v77;
      v40(v77, &v27[v28], v13);
      swift_getWitnessTable();
      v55 = sub_1CF937F9C(v54);
      v56 = v85;
      if ((v80 & 1) != 0 && v86 && (v86 & 0x80000000000) == 0)
      {
        v86 |= 0x80000000000uLL;
      }

      MEMORY[0x1EEE9AC00](v55);
      strcpy(&v75 - 48, "oldItem newItem diffs reason ");
      v87 = v13;
      v88 = v13;
      v89 = &type metadata for Fields;
      v90 = MEMORY[0x1E69E6158];
      v57 = swift_getTupleTypeMetadata();
      v58 = v57[12];
      v59 = v57[16];
      v60 = v84;
      v61 = (v84 + v57[20]);
      v40(v84, v20, v13);
      v40(&v60[v58], v54, v13);
      *&v60[v59] = v86;
      v62 = v82;
      *v61 = v81;
      v61[1] = v62;
      v87 = v83;
      v88 = v83;
      v89 = v56;
      v90 = v56;
      type metadata accessor for ItemChange();
    }
  }

  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1CF06D940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = type metadata accessor for ItemMetadata();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 104))(a1, a2);
  LOBYTE(a2) = *v9;
  result = sub_1CF06DA00(v9);
  *a3 = a2;
  return result;
}

uint64_t sub_1CF06DA00(uint64_t a1)
{
  v2 = type metadata accessor for ItemMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CF06DA84(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 24) = 2 * a2;
  return result;
}

uint64_t sub_1CF06DA94(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x204553414328, 0xE600000000000000);
  MEMORY[0x1D3868CC0](a1, a2);
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA4D770);
  v4 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v4);

  MEMORY[0x1D3868CC0](0x204E4548540ALL, 0xE600000000000000);
  MEMORY[0x1D3868CC0](a1, a2);
  MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA4D790);
  v5 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v5);

  MEMORY[0x1D3868CC0](0x204E4548540ALL, 0xE600000000000000);
  v6 = sub_1CF06DCFC(a1, a2);
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](0x204E4548570ALL, 0xE600000000000000);
  v7 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](0x204E4548540ALL, 0xE600000000000000);
  MEMORY[0x1D3868CC0](a1, a2);
  MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA4D7C0);
  MEMORY[0x1D3868CC0](a1, a2);
  MEMORY[0x1D3868CC0](0xD00000000000001ELL, 0x80000001CFA4D7F0);
  return 0;
}

uint64_t sub_1CF06DCFC(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x204553414328, 0xE600000000000000);
  MEMORY[0x1D3868CC0](a1, a2);
  MEMORY[0x1D3868CC0](0xD00000000000002BLL, 0x80000001CFA4D810);
  v4 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v4);

  MEMORY[0x1D3868CC0](0x20200A4E45485420, 0xEA00000000002020);
  v5 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v5);

  MEMORY[0x1D3868CC0](0x204E45485720200ALL, 0xE800000000000000);
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](0x20200A4E45485420, 0xEA00000000002020);
  v7 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](0x204E45485720200ALL, 0xE800000000000000);
  v8 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v8);

  MEMORY[0x1D3868CC0](0x20200A4E45485420, 0xEA00000000002020);
  v9 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v9);

  MEMORY[0x1D3868CC0](0x204E45485720200ALL, 0xE800000000000000);
  v10 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](0x20200A4E45485420, 0xEE00202020202020);
  v11 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v11);

  MEMORY[0x1D3868CC0](0x204E45485720200ALL, 0xE800000000000000);
  v12 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v12);

  MEMORY[0x1D3868CC0](0x20200A4E45485420, 0xEE00202020202020);
  v13 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v13);

  MEMORY[0x1D3868CC0](0xA45534C4520200ALL, 0xEC00000020202020);
  v14 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v14);

  MEMORY[0x1D3868CC0](0x29444E45200ALL, 0xE600000000000000);
  return 0;
}

uint64_t sub_1CF06E094()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = sub_1CF06E0D8();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1CF06E0D8()
{
  v1 = *(v0 + 80);
  if ((v1 & 0x20000) != 0)
  {
    v2 = 3;
  }

  else
  {
    v2 = 1;
  }

  if ((v1 & 0x200) != 0)
  {
    return v2;
  }

  else
  {
    return (v1 & 0x20000uLL) >> 16;
  }
}

uint64_t sub_1CF06E110(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  v3 = *(swift_getAssociatedConformanceWitness() + 8);
  v4 = *(v3 + 32);
  v5 = swift_checkMetadataState();
  return v4(a2, v5, v3);
}

uint64_t sub_1CF06E1CC@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
  v11 = (MEMORY[0x1EEE9AC00])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v7)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

uint64_t sub_1CF06E474(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  result = swift_weakLoadStrong();
  if (result)
  {
    v9[0] = v5;
    v9[1] = v6;
    v8 = sub_1CF06E4F0(v9, a2, a3);

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1CF06E4F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  v8 = a1[1];
  v9 = v4[3];
  v10 = *(*v4 + 632);
  v14[0] = *(*v4 + 616);
  v14[1] = v10;
  type metadata accessor for SQLJobRegistry();
  v11 = swift_dynamicCastClass();
  if (v11 && *(*(v11 + 32) + qword_1EDEBBB18))
  {
    *&v14[0] = v7;
    *(&v14[0] + 1) = v8;

    v12 = (sub_1CF06E608(v14, a3) & 1) != 0 && sub_1CF5A7CE8(a2);
  }

  else
  {
    return 0;
  }

  return v12;
}

uint64_t sub_1CF06E608(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v37 - v8;
  v10 = sub_1CF9E5CF8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v37 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = v37 - v19;
  v22 = *a1;
  v21 = a1[1];
  sub_1CF06EAD4(a2, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1CEFCCC44(v9, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
LABEL_10:
    v30 = 0;
    return v30 & 1;
  }

  (*(v11 + 32))(v20, v9, v10);
  v38 = v22;
  v39 = v21;
  v37[4] = 47;
  v37[5] = 0xE100000000000000;
  v37[2] = 58;
  v37[3] = 0xE100000000000000;
  v35 = sub_1CEFE4E68();
  v36 = v35;
  v34[0] = MEMORY[0x1E69E6158];
  v34[1] = v35;
  sub_1CF9E7668();
  v23 = sub_1CF9E6888();

  v24 = [v23 pathExtension];

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v25 = sub_1CF9E6958();
  v27 = v26;

  v28 = objc_sync_enter(v3);
  if (v28)
  {
    MEMORY[0x1EEE9AC00](v28);
    v35 = v3;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v34, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CF360398(v3, v25, v27, &v38);
  v29 = objc_sync_exit(v3);
  if (v29)
  {
    MEMORY[0x1EEE9AC00](v29);
    v35 = v3;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v34, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  if ((v39 & 1) != 0 || v38 < 1)
  {
    (*(v11 + 8))(v20, v10);
    goto LABEL_10;
  }

  if (v38 == 0x7FFFFFFFFFFFFFFFLL)
  {
    (*(v11 + 8))(v20, v10);
    v30 = 1;
  }

  else
  {
    sub_1CF9E5CC8();
    sub_1CF9E5C38();
    v32 = *(v11 + 8);
    v32(v15, v10);
    sub_1CF364624(&qword_1EDEAB3B8, MEMORY[0x1E6969530]);
    v33 = sub_1CF9E67E8();
    v32(v18, v10);
    v32(v20, v10);
    v30 = v33 ^ 1;
  }

  return v30 & 1;
}

uint64_t sub_1CF06EAD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF06EB8C(uint64_t a1)
{
  v3 = *(*v1 + 216);
  v9[0] = *(*v1 + 200);
  v9[1] = v3;
  v4 = type metadata accessor for ReconciliationMutation();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(v9 - v6, a1, v4);
  swift_beginAccess();
  sub_1CF9E6E58();
  sub_1CF9E6E18();
  return swift_endAccess();
}

uint64_t sub_1CF06ECB4(uint64_t a1)
{
  v3 = *(*v1 + 200);
  v10[0] = *(*v1 + 216);
  v10[1] = v3;
  v10[2] = v3;
  v10[3] = v10[0];
  v4 = type metadata accessor for Mutation();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = type metadata accessor for SnapshotMutation();
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_1CF9E6E58();
  sub_1CF9E6E18();
  return swift_endAccess();
}

uint64_t *sub_1CF06EDF4()
{
  if (qword_1EDEABDE0 != -1)
  {
    swift_once();
  }

  return &qword_1EDEABDE8;
}

uint64_t sub_1CF06EE90(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v29 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = v29 - v10;
  v12 = *(v2 + 16);
  v12(v29 - v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v18 = (v12)(v6, v11, a1);
    MEMORY[0x1EEE9AC00](v18);
    strcpy(&v29[-4], "from to  reason ");
    v19 = *(a1 + 16);
    v20 = *(a1 + 24);
    v29[0] = type metadata accessor for SnapshotItem();
    v29[1] = v29[0];
    v29[2] = &type metadata for Fields;
    v29[3] = MEMORY[0x1E69E6158];
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v22 = TupleTypeMetadata[12];
    v23 = *&v6[TupleTypeMetadata[16]];
    v24 = *&v6[TupleTypeMetadata[20] + 8];

    v25 = type metadata accessor for SnapshotItem();
    v26 = *(*(v25 - 8) + 8);
    v26(&v6[v22], v25);
    v26(v6, v25);
    if (!v23)
    {
      goto LABEL_6;
    }

LABEL_5:
    v27 = sub_1CF9E72C8();
    (*(v2 + 8))(v11, a1);
    return v27;
  }

  if (EnumCaseMultiPayload != 5)
  {
    goto LABEL_5;
  }

  (v12)(v9, v11, a1);
  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *&v9[*(swift_getTupleTypeMetadata2() + 48) + 8];

  (*(*(AssociatedTypeWitness - 8) + 8))(v9, AssociatedTypeWitness);
LABEL_6:
  (*(v2 + 8))(v11, a1);
  return sub_1CF9E7298();
}

uint64_t sub_1CF06F1D8(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v69 = *(AssociatedTypeWitness - 8);
  v7 = *(v69 + 64);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v67 = &v66 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v66 - v13;
  v15 = type metadata accessor for SnapshotItem();
  v68 = *(v15 - 8);
  v16 = *(v68 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v66 - v18;
  v20 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, v2, a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
        strcpy(&v66 - 32, "from to  reason ");
        v70 = v15;
        v71 = v15;
        v72 = &type metadata for Fields;
        v73 = MEMORY[0x1E69E6158];
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        v26 = *&v22[TupleTypeMetadata[16]];
        v27 = &v22[TupleTypeMetadata[20]];
        v29 = *v27;
        v28 = *(v27 + 1);
        v30 = v68;
        (*(v68 + 32))(v19, &v22[TupleTypeMetadata[12]], v15);
        v70 = 0;
        v71 = 0xE000000000000000;
        sub_1CF9E7948();
        MEMORY[0x1D3868CC0](0x657461647075, 0xE600000000000000);
        swift_getWitnessTable();
        sub_1CF9E7FE8();
        MEMORY[0x1D3868CC0](0x3A736666696420, 0xE700000000000000);
        v31 = sub_1CF071470(v26);
        MEMORY[0x1D3868CC0](v31);

        MEMORY[0x1D3868CC0](0x3A79687720, 0xE500000000000000);
        MEMORY[0x1D3868CC0](v29, v28);

        v32 = v70;
        v33 = *(v30 + 8);
        v33(v19, v15);
        v33(v22, v15);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC4C5730, &qword_1CF9FCCE0);
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v55 = v22[*(TupleTypeMetadata3 + 48)];
        v56 = &v22[*(TupleTypeMetadata3 + 64)];
        v58 = *v56;
        v57 = *(v56 + 1);
        v59 = v69;
        (*(v69 + 32))(v14, v22, AssociatedTypeWitness);
        v70 = 0;
        v71 = 0xE000000000000000;
        sub_1CF9E7948();
        MEMORY[0x1D3868CC0](0x693C6574656C6564, 0xEA00000000003A64);
        v60 = *(swift_getAssociatedConformanceWitness() + 16);
        sub_1CF9E7FE8();
        if (v55)
        {
          v61 = 0x6973727563657220;
        }

        else
        {
          v61 = 0;
        }

        if (v55)
        {
          v62 = 0xEA00000000006576;
        }

        else
        {
          v62 = 0xE000000000000000;
        }

        MEMORY[0x1D3868CC0](v61, v62);

        MEMORY[0x1D3868CC0](0x3A79687720, 0xE500000000000000);
        MEMORY[0x1D3868CC0](v58, v57);

        MEMORY[0x1D3868CC0](62, 0xE100000000000000);
        v32 = v70;
        (*(v59 + 8))(v14, AssociatedTypeWitness);
      }
    }

    else
    {
      v43 = &v22[*(swift_getTupleTypeMetadata2() + 48)];
      v45 = *v43;
      v44 = *(v43 + 1);
      v46 = v68;
      (*(v68 + 32))(v19, v22, v15);
      v70 = 0;
      v71 = 0xE000000000000000;
      MEMORY[0x1D3868CC0](0x747265736E69, 0xE600000000000000);
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x3A79687720, 0xE500000000000000);
      MEMORY[0x1D3868CC0](v45, v44);

      v32 = v70;
      (*(v46 + 8))(v19, v15);
    }

    return v32;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v47 = &v22[*(swift_getTupleTypeMetadata2() + 48)];
    v49 = *v47;
    v48 = *(v47 + 1);
    v50 = v69;
    v51 = v67;
    (*(v69 + 32))(v67, v22, AssociatedTypeWitness);
    v70 = 0;
    v71 = 0xE000000000000000;
    sub_1CF9E7948();
    v52 = 0x614C6574656C6564;
    v53 = 0xEE003A64693C797ALL;
LABEL_24:
    MEMORY[0x1D3868CC0](v52, v53);
    v64 = *(swift_getAssociatedConformanceWitness() + 16);
    sub_1CF9E7FE8();
    MEMORY[0x1D3868CC0](0x3A79687720, 0xE500000000000000);
    MEMORY[0x1D3868CC0](v49, v48);

    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v32 = v70;
    (*(v50 + 8))(v51, AssociatedTypeWitness);
    return v32;
  }

  if (EnumCaseMultiPayload != 4)
  {
    v63 = &v22[*(swift_getTupleTypeMetadata2() + 48)];
    v49 = *v63;
    v48 = *(v63 + 1);
    v50 = v69;
    v51 = v67;
    (*(v69 + 32))(v67, v22, AssociatedTypeWitness);
    v70 = 0;
    v71 = 0xE000000000000000;
    sub_1CF9E7948();
    v52 = 0x3A64693C656E6F6ELL;
    v53 = 0xE800000000000000;
    goto LABEL_24;
  }

  v34 = swift_getTupleTypeMetadata3();
  v35 = v22[*(v34 + 48)];
  v36 = &v22[*(v34 + 64)];
  v38 = *v36;
  v37 = *(v36 + 1);
  v39 = v69;
  (*(v69 + 32))(v10, v22, AssociatedTypeWitness);
  v70 = 0;
  v71 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA5D2E0);
  v40 = *(swift_getAssociatedConformanceWitness() + 16);
  sub_1CF9E7FE8();
  if (v35)
  {
    v41 = 0x6973727563657220;
  }

  else
  {
    v41 = 0;
  }

  if (v35)
  {
    v42 = 0xEA00000000006576;
  }

  else
  {
    v42 = 0xE000000000000000;
  }

  MEMORY[0x1D3868CC0](v41, v42);

  MEMORY[0x1D3868CC0](0x3A79687720, 0xE500000000000000);
  MEMORY[0x1D3868CC0](v38, v37);

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  v32 = v70;
  (*(v39 + 8))(v10, AssociatedTypeWitness);
  return v32;
}

uint64_t sub_1CF06FB20(uint64_t a1)
{
  v2 = v1;
  v4 = (v1 + *(a1 + 52));
  v5 = v4[13];
  v102 = v4[12];
  v103 = v5;
  v104 = v4[14];
  v105 = *(v4 + 30);
  v6 = v4[9];
  v98 = v4[8];
  v99 = v6;
  v7 = v4[11];
  v100 = v4[10];
  v101 = v7;
  v8 = v4[5];
  v94 = v4[4];
  v95 = v8;
  v9 = v4[7];
  v96 = v4[6];
  v97 = v9;
  v10 = v4[1];
  v90 = *v4;
  v91 = v10;
  v11 = v4[3];
  v92 = v4[2];
  v93 = v11;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v90) == 1)
  {
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  else
  {
    v85 = v102;
    v86 = v103;
    v87 = v104;
    v88 = v105;
    v81 = v98;
    v82 = v99;
    v83 = v100;
    v84 = v101;
    v77 = v94;
    v78 = v95;
    v79 = v96;
    v80 = v97;
    v74 = v91;
    v75 = v92;
    v76 = v93;
    v14 = ItemNonSyncableAttributes.description.getter();
    *&v73 = 0x3A72747461736E20;
    *(&v73 + 1) = 0xE800000000000000;
    MEMORY[0x1D3868CC0](v14);

    v13 = 0xE800000000000000;
    v12 = 0x3A72747461736E20;
  }

  v15 = (v1 + *(a1 + 56));
  if (v15[4])
  {
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  else
  {
    v18 = v15[2];
    v19 = v15[3];
    v20 = *v15;
    v21 = v15[1];
    v22 = sub_1CF686424();
    *&v73 = 0x3A63657220;
    *(&v73 + 1) = 0xE500000000000000;
    MEMORY[0x1D3868CC0](v22);

    v17 = 0xE500000000000000;
    v16 = 0x3A63657220;
  }

  v23 = (v1 + *(a1 + 60));
  if (v23[2])
  {
    v24 = 0;
    v25 = 0xE000000000000000;
  }

  else
  {
    v26 = *v23;
    v27 = v23[1];
    v28 = sub_1CF6865D8();
    *&v73 = 0x3A63657220;
    *(&v73 + 1) = 0xE500000000000000;
    MEMORY[0x1D3868CC0](v28);

    v25 = 0xE500000000000000;
    v24 = 0x3A63657220;
  }

  v29 = *(v1 + *(a1 + 64));
  if (v29)
  {
    strcpy(&v73, " unsupported:");
    HIWORD(v73) = -4864;
    v30 = sub_1CF071470(v29);
    MEMORY[0x1D3868CC0](v30);

    v31 = *(&v73 + 1);
    v66 = v73;
  }

  else
  {
    v66 = 0;
    v31 = 0xE000000000000000;
  }

  v67 = v31;
  v68 = v24;
  v32 = (v1 + *(a1 + 68));
  v33 = *v32;
  v34 = v32[1] >> 62;
  v72 = v12;
  v70 = v16;
  v71 = v17;
  v69 = v25;
  if (!v34)
  {
    v35 = 1852270888;
    goto LABEL_17;
  }

  if (v34 == 1)
  {
    v35 = 1886221352;
LABEL_17:
    *&v73 = v35 & 0xFFFF0000FFFFFFFFLL | 0x3A00000000;
    *(&v73 + 1) = 0xE500000000000000;
    v36 = fpfs_tempfile_pattern_t.description.getter(v33);
    MEMORY[0x1D3868CC0](v36);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    v37 = 0xE500000000000000;
    v65 = v73;
    goto LABEL_19;
  }

  v65 = 0;
  v37 = 0xE000000000000000;
LABEL_19:
  v64 = v37;
  WitnessTable = swift_getWitnessTable();
  sub_1CF06D940(a1, WitnessTable, &v73);
  v39 = 47;
  if (v73 != 1)
  {
    v39 = 0;
  }

  v63 = v39;
  if (v73 == 1)
  {
    v40 = 0xE100000000000000;
  }

  else
  {
    v40 = 0xE000000000000000;
  }

  *&v73 = 0;
  *(&v73 + 1) = 0xE000000000000000;
  sub_1CF9E7948();
  v89 = v73;
  MEMORY[0x1D3868CC0](3830588, 0xE300000000000000);
  v41 = *(a1 + 16);
  v42 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v43 = *(swift_getAssociatedConformanceWitness() + 16);
  sub_1CF9E7FE8();
  MEMORY[0x1D3868CC0](3829792, 0xE300000000000000);
  v44 = *(a1 + 36);
  sub_1CF9E7FE8();
  MEMORY[0x1D3868CC0](574254624, 0xE400000000000000);
  v45 = (v1 + *(a1 + 44));
  v46 = *v45;
  v47 = v45[1];
  v48 = sub_1CF9E6888();
  v49 = [v48 fp_obfuscatedFilename];

  v50 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v52 = v51;

  MEMORY[0x1D3868CC0](v50, v52);

  MEMORY[0x1D3868CC0](v63, v40);

  MEMORY[0x1D3868CC0](34, 0xE100000000000000);
  MEMORY[0x1D3868CC0](v65, v64);

  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  v53 = v2 + *(a1 + 48);
  v54 = sub_1CF0720C8();
  MEMORY[0x1D3868CC0](v54);

  MEMORY[0x1D3868CC0](v66, v67);

  MEMORY[0x1D3868CC0](3831328, 0xE300000000000000);
  v55 = *(a1 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v59 = swift_getAssociatedConformanceWitness();
  *&v73 = AssociatedTypeWitness;
  *(&v73 + 1) = v57;
  *&v74 = AssociatedConformanceWitness;
  *(&v74 + 1) = v59;
  type metadata accessor for FileItemVersion();
  swift_getWitnessTable();
  sub_1CF9E7FE8();
  v60 = v89;
  *&v73 = v72;
  *(&v73 + 1) = v13;
  MEMORY[0x1D3868CC0](v70, v71);

  MEMORY[0x1D3868CC0](v68, v69);

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  v61 = v73;
  v73 = v60;

  MEMORY[0x1D3868CC0](v61, *(&v61 + 1));

  return v73;
}

uint64_t ItemNonSyncableAttributes.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = v0[2];
  v5 = v0[3];
  v126 = *(v0 + 32);
  v114 = *(v0 + 33);
  v115 = *(v0 + 34);
  v106 = v0[5];
  v107 = v0[7];
  v108 = v0[6];
  v109 = v0[8];
  v116 = *(v0 + 72);
  v117 = v0[11];
  v118 = v0[12];
  v127 = *(v0 + 104);
  v122 = *(v0 + 105);
  v110 = v0[10];
  v111 = v0[14];
  v119 = v0[15];
  v120 = v0[17];
  v112 = v0[16];
  v113 = v0[18];
  v121 = v0[19];
  v6 = v0[20];
  v7 = v0[21];
  v8 = *(v0 + 176);
  v135 = 0x3A7061633CLL;
  v136 = 0xE500000000000000;
  if (v1)
  {
    v9 = 114;
  }

  else
  {
    v9 = 45;
  }

  v128 = v0[23];
  v129 = v0[24];
  v125 = v0[27];
  v130 = v0[26];
  v131 = v0[28];
  v123 = v0[25];
  v124 = v0[29];
  v132 = v0[30];
  MEMORY[0x1D3868CC0](v9, 0xE100000000000000);

  if ((v1 & 2) != 0)
  {
    v10 = 119;
  }

  else
  {
    v10 = 45;
  }

  MEMORY[0x1D3868CC0](v10, 0xE100000000000000);

  if ((v1 & 0x20) != 0)
  {
    v11 = 100;
  }

  else
  {
    v11 = 45;
  }

  MEMORY[0x1D3868CC0](v11, 0xE100000000000000);

  if ((v1 & 4) != 0)
  {
    v12 = 112;
  }

  else
  {
    v12 = 45;
  }

  MEMORY[0x1D3868CC0](v12, 0xE100000000000000);

  if ((v1 & 8) != 0)
  {
    v13 = 102;
  }

  else
  {
    v13 = 45;
  }

  MEMORY[0x1D3868CC0](v13, 0xE100000000000000);

  if ((v1 & 0x10) != 0)
  {
    v14 = 84;
  }

  else
  {
    v14 = 45;
  }

  MEMORY[0x1D3868CC0](v14, 0xE100000000000000);

  if ((v1 & 0x40) != 0)
  {
    v15 = 101;
  }

  else
  {
    v15 = 45;
  }

  MEMORY[0x1D3868CC0](v15, 0xE100000000000000);

  if ((v1 & 0x80) != 0)
  {
    v16 = 120;
  }

  else
  {
    v16 = 45;
  }

  MEMORY[0x1D3868CC0](v16, 0xE100000000000000);

  if ((*MEMORY[0x1E6967220] & ~v1) != 0)
  {
    v17 = 45;
  }

  else
  {
    v17 = 83;
  }

  MEMORY[0x1D3868CC0](v17, 0xE100000000000000);

  if (v7)
  {
    *&v137[0] = 574254112;
    *(&v137[0] + 1) = 0xE400000000000000;
    v18 = sub_1CF9E6888();
    v19 = [v18 fp_obfuscatedFilename];

    v20 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v22 = v21;

    MEMORY[0x1D3868CC0](v20, v22);

    MEMORY[0x1D3868CC0](34, 0xE100000000000000);
    MEMORY[0x1D3868CC0](574254112, 0xE400000000000000);
  }

  if (v8)
  {
    MEMORY[0x1D3868CC0](0x63696C666E6F6320, 0xE900000000000074);
  }

  if (v3)
  {
    MEMORY[0x1D3868CC0](980186400, 0xE400000000000000);
    v23 = sub_1CF0710C0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    if (v25 >= v24 >> 1)
    {
      v23 = sub_1CF0710C0((v24 > 1), v25 + 1, 1, v23);
    }

    *(v23 + 2) = v25 + 1;
    v26 = &v23[16 * v25];
    *(v26 + 4) = 0x646564616F6C7075;
    *(v26 + 5) = 0xE800000000000000;
    if (!v2)
    {
      goto LABEL_47;
    }

    goto LABEL_42;
  }

  if (v4)
  {
    v27 = 1;
  }

  else
  {
    v27 = v2;
  }

  if (v27 != 1)
  {
    goto LABEL_54;
  }

  MEMORY[0x1D3868CC0](980186400, 0xE400000000000000);
  v23 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
LABEL_42:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1CF0710C0(0, *(v23 + 2) + 1, 1, v23);
    }

    v29 = *(v23 + 2);
    v28 = *(v23 + 3);
    if (v29 >= v28 >> 1)
    {
      v23 = sub_1CF0710C0((v28 > 1), v29 + 1, 1, v23);
    }

    *(v23 + 2) = v29 + 1;
    v30 = &v23[16 * v29];
    *(v30 + 4) = 0x6E6964616F6C7075;
    *(v30 + 5) = 0xE900000000000067;
  }

LABEL_47:
  if (v4)
  {
    *&v137[0] = 0;
    *(&v137[0] + 1) = 0xE000000000000000;
    v31 = v4;
    MEMORY[0x1D3868CC0](0x28726F727265, 0xE600000000000000);
    v133[0] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CF9E7B58();
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    v32 = v137[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1CF0710C0(0, *(v23 + 2) + 1, 1, v23);
    }

    v34 = *(v23 + 2);
    v33 = *(v23 + 3);
    if (v34 >= v33 >> 1)
    {
      v23 = sub_1CF0710C0((v33 > 1), v34 + 1, 1, v23);
    }

    *(v23 + 2) = v34 + 1;
    *&v23[16 * v34 + 32] = v32;
  }

  *&v137[0] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CF0711CC();
  v35 = sub_1CF9E67D8();
  v37 = v36;

  MEMORY[0x1D3868CC0](v35, v37);

LABEL_54:
  if (v5)
  {
    *&v137[0] = 0;
    *(&v137[0] + 1) = 0xE000000000000000;
    v38 = v5;
    MEMORY[0x1D3868CC0](0x726F7272653A6C64, 0xE900000000000028);
    v133[0] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CF9E7B58();
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    MEMORY[0x1D3868CC0](0, 0xE000000000000000);
  }

  if (!v126)
  {
    if (!v127)
    {
      goto LABEL_58;
    }

    goto LABEL_78;
  }

  MEMORY[0x1D3868CC0](0x3A64657261687320, 0xE90000000000003CLL);
  if (v114)
  {
    MEMORY[0x1D3868CC0](0x206C766C2D706F74, 0xE800000000000000);
  }

  if (v115)
  {
    MEMORY[0x1D3868CC0](0x3E656D3C3A7962, 0xE700000000000000);
    if (!v116)
    {
      goto LABEL_64;
    }

LABEL_73:
    MEMORY[0x1D3868CC0](0x3A726F7469646520, 0xEC0000003E656D3CLL);
    if (!v117)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  *&v137[0] = 3832162;
  *(&v137[0] + 1) = 0xE300000000000000;
  if (v108)
  {
    v45 = sub_1CF9E6888();
    v46 = [v45 fp_obfuscatedFilename];

    v47 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v49 = v48;
  }

  else
  {
    v47 = 0x6E776F6E6B6E753CLL;
    v49 = 0xE90000000000003ELL;
  }

  MEMORY[0x1D3868CC0](v47, v49);

  MEMORY[0x1D3868CC0](*&v137[0], *(&v137[0] + 1));

  if (v116)
  {
    goto LABEL_73;
  }

LABEL_64:
  *&v137[0] = 0x3A726F7469646520;
  *(&v137[0] + 1) = 0xE800000000000000;
  if (v109)
  {
    v40 = sub_1CF9E6888();
    v41 = [v40 fp_obfuscatedFilename];

    v42 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v44 = v43;
  }

  else
  {
    v42 = 0x6E776F6E6B6E753CLL;
    v44 = 0xE90000000000003ELL;
  }

  MEMORY[0x1D3868CC0](v42, v44);

  MEMORY[0x1D3868CC0](*&v137[0], *(&v137[0] + 1));

  if (v117)
  {
LABEL_74:
    *&v137[0] = 3829792;
    *(&v137[0] + 1) = 0xE300000000000000;
    MEMORY[0x1D3868CC0](v110);
    MEMORY[0x1D3868CC0](3829792, 0xE300000000000000);
  }

LABEL_75:
  if (v118)
  {
    *&v137[0] = 979985184;
    *(&v137[0] + 1) = 0xE400000000000000;
    v50 = v118;
    v51 = [v50 fp_obfuscatedFilename];
    v52 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v54 = v53;

    MEMORY[0x1D3868CC0](v52, v54);

    MEMORY[0x1D3868CC0](979985184, 0xE400000000000000);
  }

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  if (!v127)
  {
LABEL_58:
    v39 = v128;
    if (!v128)
    {
      goto LABEL_89;
    }

    goto LABEL_87;
  }

LABEL_78:
  MEMORY[0x1D3868CC0](0x3C3A70706120, 0xE600000000000000);
  if (v119)
  {
    *&v137[0] = 0x3A656C646E7562;
    *(&v137[0] + 1) = 0xE700000000000000;
    v55 = sub_1CF9E6888();
    v56 = [v55 fp_obfuscatedDotSeparatedComponents];

    v57 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v59 = v58;

    MEMORY[0x1D3868CC0](v57, v59);

    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    MEMORY[0x1D3868CC0](0x3A656C646E7562, 0xE700000000000000);
  }

  if (v120)
  {
    *&v137[0] = 0x656E6961746E6F63;
    *(&v137[0] + 1) = 0xEA00000000003A72;
    v60 = sub_1CF9E6888();
    v61 = [v60 fp_obfuscatedDotSeparatedComponents];

    v62 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v64 = v63;

    MEMORY[0x1D3868CC0](v62, v64);

    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    MEMORY[0x1D3868CC0](0x656E6961746E6F63, 0xEA00000000003A72);
  }

  if (v121)
  {
    *&v137[0] = 0x3A79616C70736964;
    *(&v137[0] + 1) = 0xE900000000000022;
    v65 = sub_1CF9E6888();
    v66 = [v65 fp_obfuscatedFilename];

    v67 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v69 = v68;

    MEMORY[0x1D3868CC0](v67, v69);

    MEMORY[0x1D3868CC0](8226, 0xE200000000000000);
    MEMORY[0x1D3868CC0](0x3A79616C70736964, 0xE900000000000022);
  }

  if (v122)
  {
    MEMORY[0x1D3868CC0](0x656E697473697270, 0xE800000000000000);
  }

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  v39 = v128;
  if (v128)
  {
LABEL_87:
    if (*(v39 + 16))
    {
      *&v137[0] = 0x3C3A6F63656420;
      *(&v137[0] + 1) = 0xE700000000000000;
      v133[0] = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
      sub_1CF0711CC();
      v70 = sub_1CF9E67D8();
      MEMORY[0x1D3868CC0](v70);

      MEMORY[0x1D3868CC0](62, 0xE100000000000000);
      MEMORY[0x1D3868CC0](0x3C3A6F63656420, 0xE700000000000000);
    }
  }

LABEL_89:
  if (v129)
  {
    v71 = objc_allocWithZone(MEMORY[0x1E69674A8]);
    v72 = sub_1CF9E6D28();
    v73 = sub_1CF9E6D28();
    v74 = [v71 initWithKeys:v72 values:v73];

    v75 = [v74 keys];
    v76 = sub_1CF9E6D48();

    v77 = *(v76 + 16);

    if (v77)
    {
      *&v137[0] = 0x666E497265737520;
      *(&v137[0] + 1) = 0xEB000000003C3A6FLL;
      v78 = [v74 keys];
      v79 = sub_1CF9E6D48();

      v80 = *(v79 + 16);

      v133[0] = v80;
      v81 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v81);

      MEMORY[0x1D3868CC0](0x3E7379656B20, 0xE600000000000000);
      MEMORY[0x1D3868CC0](0x666E497265737520, 0xEB000000003C3A6FLL);
    }

    else
    {
    }
  }

  if (v130 == 501)
  {
LABEL_96:
    *&v137[0] = 980443936;
    *(&v137[0] + 1) = 0xE400000000000000;
    v82 = NSFileProviderContentPolicy.description.getter(v130);
    MEMORY[0x1D3868CC0](v82);

    MEMORY[0x1D3868CC0](40, 0xE100000000000000);
    v83 = NSFileProviderContentPolicy.description.getter(v125);
    MEMORY[0x1D3868CC0](v83);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    goto LABEL_98;
  }

  if (!v130)
  {
    if (!v125)
    {
      MEMORY[0x1D3868CC0](0x747379733A706320, 0xEA00000000006D65);
      if (!v131)
      {
        goto LABEL_105;
      }

      goto LABEL_99;
    }

    goto LABEL_96;
  }

  *&v137[0] = 980443936;
  *(&v137[0] + 1) = 0xE400000000000000;
  v84 = NSFileProviderContentPolicy.description.getter(v130);
  MEMORY[0x1D3868CC0](v84);

LABEL_98:
  MEMORY[0x1D3868CC0](*&v137[0], *(&v137[0] + 1));

  if (!v131)
  {
    goto LABEL_105;
  }

LABEL_99:
  v85 = *(v131 + 16);
  if (v85)
  {
    v134 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v85, 0);
    v86 = v134;
    v87 = (v131 + 32);
    do
    {
      v88 = *v87;
      v89 = v87[1];
      v90 = v87[3];
      v137[2] = v87[2];
      v137[3] = v90;
      v137[0] = v88;
      v137[1] = v89;
      sub_1CF6809C8(v137, v133);
      v91 = sub_1CF680318();
      v93 = v92;
      sub_1CF680A38(v137);
      v134 = v86;
      v95 = *(v86 + 16);
      v94 = *(v86 + 24);
      if (v95 >= v94 >> 1)
      {
        sub_1CEFE95CC((v94 > 1), v95 + 1, 1);
        v86 = v134;
      }

      *(v86 + 16) = v95 + 1;
      v96 = v86 + 16 * v95;
      *(v96 + 32) = v91;
      *(v96 + 40) = v93;
      v87 += 4;
      --v85;
    }

    while (v85);
    v133[0] = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
    sub_1CF0711CC();
    v97 = sub_1CF9E67D8();
    v99 = v98;

    strcpy(v133, " conflicts:<");
    BYTE5(v133[1]) = 0;
    HIWORD(v133[1]) = -5120;
    MEMORY[0x1D3868CC0](v97, v99);

    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    MEMORY[0x1D3868CC0](v133[0], v133[1]);
  }

LABEL_105:
  if (v132)
  {
    strcpy(v133, " device:<");
    WORD1(v133[1]) = 0;
    HIDWORD(v133[1]) = -385875968;
    v100 = sub_1CF9E6888();
    v101 = [v100 fp_obfuscatedFilename];

    v102 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v104 = v103;

    MEMORY[0x1D3868CC0](v102, v104);

    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    MEMORY[0x1D3868CC0](v133[0], v133[1]);
  }

  v133[0] = v135;
  v133[1] = v136;

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);

  return v133[0];
}

char *sub_1CF0710C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C11D0, &unk_1CF9FE760);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1CF0711CC()
{
  result = qword_1EDEAB670;
  if (!qword_1EDEAB670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB670);
  }

  return result;
}

uint64_t NSFileProviderContentPolicy.description.getter(uint64_t a1)
{
  result = 0x6574697265686E69;
  if (a1 <= 500)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return result;
      }

      if (a1 == 1)
      {
        return 2038063468;
      }
    }

    else
    {
      switch(a1)
      {
        case 2:
          return 0x7463697665;
        case 3:
          return 0x6E776F447065656BLL;
        case 500:
          return 0x63617073656D616ELL;
      }
    }

LABEL_27:
    strcpy(v4, "unsupported(");
    v3 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v3);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    return v4[0];
  }

  if (a1 > 1000)
  {
    switch(a1)
    {
      case 1001:
        return 0x63617073656D616ELL;
      case 1002:
        return 0xD000000000000016;
      case 1003:
        return 0xD00000000000001ELL;
    }

    goto LABEL_27;
  }

  if (a1 != 501)
  {
    if (a1 == 502)
    {
      return 0xD000000000000014;
    }

    if (a1 == 1000)
    {
      return 0x63617073656D616ELL;
    }

    goto LABEL_27;
  }

  if (fpfs_supports_indexAllRemoteItems())
  {
    return 0x6574697265686E69;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1CF071470(uint64_t a1)
{
  if (qword_1EDEABDE0 != -1)
  {
    swift_once();
  }

  if ((qword_1EDEABDE8 & ~a1) != 0)
  {
    result = 0;
    v3 = 0xE000000000000000;
    if (!a1)
    {
      return result;
    }
  }

  else
  {
    result = 7105633;
    v3 = 0xE300000000000000;
    a1 &= ~qword_1EDEABDE8;
    if (!a1)
    {
      return result;
    }
  }

  v18 = result;
  v19 = MEMORY[0x1E69E7CC0];
  sub_1CEFE95CC(0, 0, 0);
  v4 = v19;
  do
  {
    v5 = a1 & -a1;
    v6 = Fields.bitDescription.getter();
    if (!v7)
    {
      sub_1CF056E98();
      v8 = sub_1CF9E6B28();
      MEMORY[0x1D3868CC0](v8);

      v6 = 30768;
      v7 = 0xE200000000000000;
    }

    v20 = v4;
    v10 = *(v4 + 16);
    v9 = *(v4 + 24);
    if (v10 >= v9 >> 1)
    {
      v17 = v6;
      v13 = v7;
      sub_1CEFE95CC((v9 > 1), v10 + 1, 1);
      v7 = v13;
      v6 = v17;
      v4 = v20;
    }

    *(v4 + 16) = v10 + 1;
    v11 = v4 + 16 * v10;
    *(v11 + 32) = v6;
    *(v11 + 40) = v7;
    v12 = a1 == v5;
    a1 ^= v5;
  }

  while (!v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
  v14 = sub_1CF9E67D8();
  v16 = v15;

  if ((v3 & 0x300000000000000) != 0)
  {

    MEMORY[0x1D3868CC0](124, 0xE100000000000000);
    MEMORY[0x1D3868CC0](v14, v16);

    v14 = v18;
  }

  return v14;
}

uint64_t Fields.bitDescription.getter()
{
  v1 = *v0;
  if (qword_1EDEABDE0 != -1)
  {
    swift_once();
  }

  if (qword_1EDEABDE8 == v1)
  {
    return 7105633;
  }

  if (qword_1EDEA4788 != -1)
  {
    swift_once();
  }

  if (qword_1EDEBB6B0 == v1)
  {
    return 0x70662D6C6C61;
  }

  result = 0;
  if (v1 > 0xFFFFFFF)
  {
    if (v1 > 0x7FFFFFFFFFFLL)
    {
      if (v1 <= 0x3FFFFFFFFFFFFLL)
      {
        if (v1 <= 0x3FFFFFFFFFFFLL)
        {
          switch(v1)
          {
            case 0x80000000000:
              return 0x6165726C4179616DLL;
            case 0x100000000000:
              return 0x746F6F72636E7973;
            case 0x200000000000:
              return 0x6567616B636170;
          }

          return result;
        }

        if (v1 <= 0xFFFFFFFFFFFFLL)
        {
          if (v1 == 0x400000000000)
          {
            return 0x43646E4165707974;
          }

          if (v1 == 0x800000000000)
          {
            return 0x6E756F436B6E696CLL;
          }

          return result;
        }

        if (v1 != 0x1000000000000)
        {
          if (v1 == 0x2000000000000)
          {
            return 0x50746E65746E6F63;
          }

          return result;
        }

        return 0xD000000000000017;
      }

      if (v1 <= 0x1FFFFFFFFFFFFFLL)
      {
        if (v1 != 0x4000000000000)
        {
          if (v1 == 0x8000000000000)
          {
            return 0xD000000000000014;
          }

          if (v1 == 0x10000000000000)
          {
            return 0x6465686361746564;
          }

          return result;
        }

        return 0xD000000000000013;
      }

      if (v1 <= 0xFFFFFFFFFFFFFFLL)
      {
        if (v1 == 0x20000000000000)
        {
          return 0x73756150636E7973;
        }

        if (v1 != 0x40000000000000)
        {
          return result;
        }

        return 0xD000000000000020;
      }

      if (v1 == 0x100000000000000)
      {
        return 0x6E6F697463697665;
      }

      if (v1 != 0x400000000000000)
      {
        return result;
      }
    }

    else
    {
      if (v1 <= 0x7FFFFFFFFLL)
      {
        if (v1 > 0x7FFFFFFF)
        {
          if (v1 > 0x1FFFFFFFFLL)
          {
            if (v1 == 0x200000000)
            {
              return 0xD00000000000001CLL;
            }

            if (v1 == 0x400000000)
            {
              return 0xD000000000000018;
            }

            return result;
          }

          if (v1 == 0x80000000)
          {
            return 0x6961746E6F437369;
          }

          if (v1 != 0x100000000)
          {
            return result;
          }

          return 0xD000000000000013;
        }

        if (v1 != 0x10000000)
        {
          if (v1 != 0x20000000)
          {
            if (v1 == 0x40000000)
            {
              return 0xD000000000000012;
            }

            return result;
          }

          return 0xD000000000000017;
        }

        return 0xD000000000000020;
      }

      if (v1 > 0x3FFFFFFFFFLL)
      {
        if (v1 > 0xFFFFFFFFFFLL)
        {
          if (v1 == 0x10000000000)
          {
            return 1684957547;
          }

          else if (v1 == 0x20000000000)
          {
            return 0x7275746375727473;
          }
        }

        else if (v1 == 0x4000000000)
        {
          return 0x6F6365446D657469;
        }

        else if (v1 == 0x8000000000)
        {
          return 0x6F666E4972657375;
        }

        return result;
      }

      if (v1 == 0x800000000)
      {
        return 0xD000000000000014;
      }

      if (v1 == 0x1000000000)
      {
        return 0x4E79616C70736964;
      }

      if (v1 != 0x2000000000)
      {
        return result;
      }
    }

    return 0xD000000000000016;
  }

  if (v1 < 0x4000)
  {
    if (v1 > 127)
    {
      if (v1 <= 1023)
      {
        switch(v1)
        {
          case 128:
            return 0x657469726F766166;
          case 256:
            return 0x737274746178;
          case 512:
            return 0x64656B636F6CLL;
        }
      }

      else if (v1 > 4095)
      {
        if (v1 == 4096)
        {
          return 0x6E6564646968;
        }

        else if (v1 == 0x2000)
        {
          return 0x6564646948747865;
        }
      }

      else if (v1 == 1024)
      {
        return 0x656D697462;
      }

      else if (v1 == 2048)
      {
        return 0x656D69746DLL;
      }
    }

    else
    {
      if (v1 > 7)
      {
        if (v1 > 31)
        {
          if (v1 == 32)
          {
            return 0x646573557473616CLL;
          }

          else if (v1 == 64)
          {
            return 1936154996;
          }
        }

        else if (v1 == 8)
        {
          return 0x746E65746E6F63;
        }

        else if (v1 == 16)
        {
          return 0x7373656C61746164;
        }

        return result;
      }

      switch(v1)
      {
        case 1:
          return 0x656D616E656C6966;
        case 2:
          return 0x4449746E65726170;
        case 4:
          return 0xD000000000000010;
      }
    }

    return result;
  }

  if (v1 >= 0x200000)
  {
    if (v1 <= 0xFFFFFF)
    {
      switch(v1)
      {
        case 0x200000:
          return 0x6E6964616F6C7075;
        case 0x400000:
          return 0xD000000000000010;
        case 0x800000:
          return 0x65726F6E6769;
      }
    }

    else if (v1 > 0x3FFFFFF)
    {
      if (v1 == 0x4000000 || v1 == 0x8000000)
      {
        return 0xD000000000000015;
      }
    }

    else if (v1 == 0x1000000)
    {
      return 0x6465726168537369;
    }

    else if (v1 == 0x2000000)
    {
      return 0xD000000000000014;
    }

    return result;
  }

  if (v1 >= 0x20000)
  {
    if (v1 >= 0x80000)
    {
      if (v1 == 0x80000 || v1 == 0x100000)
      {
        return 0x64616F6C70557369;
      }
    }

    else if (v1 == 0x20000)
    {
      return 0x64656E6E6970;
    }

    else if (v1 == 0x40000)
    {
      return 0x696C696261706163;
    }

    return result;
  }

  switch(v1)
  {
    case 0x4000:
      return 0x6572646C6968636ELL;
    case 0x8000:
      return 0x7272757365527369;
    case 0x10000:
      return 0x6E6F697463697665;
  }

  return result;
}

uint64_t sub_1CF0720C8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v73 - v4;
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v73 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0 > 1u)
  {
    if (*v0 != 2)
    {
      v77 = 0x7361696C61;
      v12 = 0xE500000000000000;
      goto LABEL_11;
    }

    v11 = 7040620;
  }

  else if (*v0)
  {
    v11 = 7498084;
  }

  else
  {
    v10 = type metadata accessor for ItemMetadata();
    v11 = 6516580;
    if (v0[*(v10 + 112)])
    {
      v11 = 6777712;
    }
  }

  v77 = v11;
  v12 = 0xE300000000000000;
LABEL_11:
  v78 = v12;
  v13 = type metadata accessor for ItemMetadata();
  if (v0[v13[20]] == 1)
  {
    MEMORY[0x1D3868CC0](1936483360, 0xE400000000000000);
    v14 = v0[v13[22]];
    if (v0[v13[22]])
    {
      v76[0] = 58;
      v76[1] = 0xE100000000000000;
      if (v14 <= 2)
      {
        if (v14 == 1)
        {
          v15 = 0xEB00000000657465;
          v16 = 0x6C65446568636163;
        }

        else
        {
          v15 = 0xE400000000000000;
          v16 = 1919251317;
        }
      }

      else if (v14 == 3)
      {
        v15 = 0xEA00000000006E6FLL;
        v16 = 0x697461646E756F66;
      }

      else if (v14 == 4)
      {
        v15 = 0xE200000000000000;
        v16 = 28774;
      }

      else
      {
        v15 = 0xEC00000065746164;
        v16 = 0x705565746F6D6572;
      }

      MEMORY[0x1D3868CC0](v16, v15);

      MEMORY[0x1D3868CC0](v76[0], v76[1]);
    }
  }

  if (*v0 != 1)
  {
    v76[0] = 981103392;
    v76[1] = 0xE400000000000000;
    v75 = *&v0[v13[26]];
    v17 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v17);

    MEMORY[0x1D3868CC0](v76[0], v76[1]);
  }

  if ((v0[8] & 1) == 0)
  {
    v18 = *(v0 + 1);
    strcpy(v76, " child:");
    v76[1] = 0xE700000000000000;
    LODWORD(v75) = v18;
    v19 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v19);

    MEMORY[0x1D3868CC0](v76[0], v76[1]);
  }

  v20 = &v0[v13[37]];
  if ((v20[4] & 1) == 0)
  {
    v21 = *v20;
    if (v21 >= 2)
    {
      strcpy(v76, " links:");
      v76[1] = 0xE700000000000000;
      LODWORD(v75) = v21;
      v22 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v22);

      MEMORY[0x1D3868CC0](v76[0], v76[1]);
    }
  }

  MEMORY[0x1D3868CC0](3829024, 0xE300000000000000);
  v23 = *(v0 + 5);
  if ((v23 & 0x100) != 0)
  {
    v24 = 114;
  }

  else
  {
    v24 = 45;
  }

  MEMORY[0x1D3868CC0](v24, 0xE100000000000000);
  if ((v23 & 0x80) != 0)
  {
    v25 = 119;
  }

  else
  {
    v25 = 45;
  }

  MEMORY[0x1D3868CC0](v25, 0xE100000000000000);
  if ((v23 & 0x40) != 0)
  {
    v26 = 120;
  }

  else
  {
    v26 = 45;
  }

  MEMORY[0x1D3868CC0](v26, 0xE100000000000000);
  if (v0[v13[10]] == 1)
  {
    MEMORY[0x1D3868CC0](104, 0xE100000000000000);
  }

  if (v0[v13[13]] == 1)
  {
    MEMORY[0x1D3868CC0](101, 0xE100000000000000);
  }

  if (v0[v13[9]] == 1)
  {
    MEMORY[0x1D3868CC0](108, 0xE100000000000000);
  }

  if (v0[v13[29]] == 1)
  {
    MEMORY[0x1D3868CC0](66, 0xE100000000000000);
  }

  if (v0[v13[15]] == 1)
  {
    MEMORY[0x1D3868CC0](83, 0xE100000000000000);
  }

  v74 = v7;
  if (v0[v13[18]] == 1)
  {
    MEMORY[0x1D3868CC0](68, 0xE100000000000000);
  }

  v27 = v13[21];
  v28 = v0[v27];
  v29 = v0[v13[23]];
  if (v29 == 6)
  {
    if (!v0[v27])
    {
      goto LABEL_99;
    }

    v76[0] = 15397;
    v76[1] = 0xE200000000000000;
    v75 = *&v0[v13[19]];
    v30 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v30);

    MEMORY[0x1D3868CC0](58, 0xE100000000000000);
    v31 = v0[v27];
    if (v31 > 2)
    {
      if (v31 == 3)
      {
        v32 = 0xE300000000000000;
        v33 = 6579565;
      }

      else if (v31 == 4)
      {
        v32 = 0xE400000000000000;
        v33 = 1751607656;
      }

      else
      {
        v32 = 0xE200000000000000;
        v33 = 21843;
      }
    }

    else if (v0[v27])
    {
      if (v31 == 1)
      {
        v32 = 0xE700000000000000;
        v33 = 0x6E776F6E6B6E75;
      }

      else
      {
        v33 = 7827308;
        v32 = 0xE300000000000000;
      }
    }

    else
    {
      v33 = 0x74636976456E6F6ELL;
      v32 = 0xEC000000656C6261;
    }
  }

  else if (v0[v27])
  {
    v76[0] = 15397;
    v76[1] = 0xE200000000000000;
    v75 = *&v0[v13[19]];
    v34 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v34);

    MEMORY[0x1D3868CC0](58, 0xE100000000000000);
    v35 = v0[v27];
    if (v35 > 2)
    {
      if (v35 == 3)
      {
        v36 = 0xE300000000000000;
        v37 = 6579565;
      }

      else if (v35 == 4)
      {
        v36 = 0xE400000000000000;
        v37 = 1751607656;
      }

      else
      {
        v36 = 0xE200000000000000;
        v37 = 21843;
      }
    }

    else if (v0[v27])
    {
      if (v35 == 1)
      {
        v36 = 0xE700000000000000;
        v37 = 0x6E776F6E6B6E75;
      }

      else
      {
        v37 = 7827308;
        v36 = 0xE300000000000000;
      }
    }

    else
    {
      v37 = 0x74636976456E6F6ELL;
      v36 = 0xEC000000656C6261;
    }

    MEMORY[0x1D3868CC0](v37, v36);

    MEMORY[0x1D3868CC0](58, 0xE100000000000000);
    if (v29 > 2)
    {
      if (v29 == 3)
      {
        v33 = 0xD000000000000011;
        v32 = 0x80000001CFA56190;
      }

      else if (v29 == 4)
      {
        v33 = 0x4C64657461657263;
        v32 = 0xEE00796C6C61636FLL;
      }

      else
      {
        v33 = 0x7571655272657375;
        v32 = 0xED00006465747365;
      }
    }

    else if (v29)
    {
      if (v29 == 1)
      {
        v32 = 0x80000001CFA561E0;
        v33 = 0xD000000000000012;
      }

      else
      {
        v32 = 0x80000001CFA561B0;
        v33 = 0xD000000000000029;
      }
    }

    else
    {
      v33 = 0x73746E65636572;
      v32 = 0xE700000000000000;
    }
  }

  else
  {
    v76[0] = 976895013;
    v76[1] = 0xE400000000000000;
    if (v29 > 2)
    {
      if (v29 == 3)
      {
        v33 = 0xD000000000000011;
        v32 = 0x80000001CFA56190;
      }

      else if (v29 == 4)
      {
        v33 = 0x4C64657461657263;
        v32 = 0xEE00796C6C61636FLL;
      }

      else
      {
        v33 = 0x7571655272657375;
        v32 = 0xED00006465747365;
      }
    }

    else if (v29)
    {
      if (v29 == 1)
      {
        v32 = 0x80000001CFA561E0;
        v33 = 0xD000000000000012;
      }

      else
      {
        v32 = 0x80000001CFA561B0;
        v33 = 0xD000000000000029;
      }
    }

    else
    {
      v33 = 0x73746E65636572;
      v32 = 0xE700000000000000;
    }
  }

  MEMORY[0x1D3868CC0](v33, v32);

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  MEMORY[0x1D3868CC0](v76[0], v76[1]);

LABEL_99:
  if (v0[v13[11]])
  {
    MEMORY[0x1D3868CC0](0x3A6E697020, 0xE500000000000000);
    v38 = 1718379891;
    v39 = 0xE400000000000000;
  }

  else
  {
    if (v0[v13[12]] != 1)
    {
      goto LABEL_104;
    }

    MEMORY[0x1D3868CC0](0x3A6E697020, 0xE500000000000000);
    v38 = 0x746E65726170;
    v39 = 0xE600000000000000;
  }

  MEMORY[0x1D3868CC0](v38, v39);
LABEL_104:
  v40 = &v0[v13[14]];
  if (*(v40 + 1))
  {
    v41 = *v40;
    strcpy(v76, " orig-name:");
    BYTE5(v76[1]) = 0;
    HIWORD(v76[1]) = -5120;
    v42 = sub_1CF9E6888();
    v43 = [v42 fp_obfuscatedFilename];

    v44 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v46 = v45;

    MEMORY[0x1D3868CC0](v44, v46);

    MEMORY[0x1D3868CC0](34, 0xE100000000000000);
    MEMORY[0x1D3868CC0](v76[0], v76[1]);
  }

  v47 = *&v1[v13[31]];
  if (v47)
  {
    v76[0] = 3830816;
    v76[1] = 0xE300000000000000;
    v48 = sub_1CF66099C(v47);
    MEMORY[0x1D3868CC0](v48);

    MEMORY[0x1D3868CC0](v76[0], v76[1]);
  }

  v76[0] = 0;
  v76[1] = 0xE000000000000000;
  MEMORY[0x1D3868CC0](980706080, 0xE400000000000000);
  v49 = &v1[v13[7]];
  sub_1CF9E5C98();
  sub_1CF9E6F78();
  MEMORY[0x1D3868CC0](v76[0], v76[1]);

  v76[0] = 0;
  v76[1] = 0xE000000000000000;
  MEMORY[0x1D3868CC0](980708640, 0xE400000000000000);
  v50 = &v1[v13[8]];
  sub_1CF9E5C98();
  sub_1CF9E6F78();
  MEMORY[0x1D3868CC0](v76[0], v76[1]);

  sub_1CEFCCBDC(&v1[v13[30]], v5, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v51 = v74;
  if ((*(v74 + 48))(v5, 1, v6) == 1)
  {
    sub_1CEFCCC44(v5, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  }

  else
  {
    v52 = v73;
    (*(v51 + 32))(v73, v5, v6);
    v76[0] = 0;
    v76[1] = 0xE000000000000000;
    MEMORY[0x1D3868CC0](980773920, 0xE400000000000000);
    sub_1CF9E5C98();
    sub_1CF9E6F78();
    MEMORY[0x1D3868CC0](v76[0], v76[1]);

    (*(v51 + 8))(v52, v6);
  }

  v53 = &v1[v13[32]];
  if ((v53[8] & 1) == 0)
  {
    v54 = *v53;
    v76[0] = 980837920;
    v76[1] = 0xE400000000000000;
    v75 = v54;
    v55 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v55);

    MEMORY[0x1D3868CC0](v76[0], v76[1]);
  }

  v56 = *&v1[v13[33]];
  if (v56)
  {
    MEMORY[0x1D3868CC0](979466272, 0xE400000000000000);
    v76[0] = sub_1CF6770AC(v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
    sub_1CF0711CC();
    v57 = sub_1CF9E67D8();
    v59 = v58;

    MEMORY[0x1D3868CC0](v57, v59);
  }

  if (*&v1[v13[34] + 8] >> 60 != 15)
  {
    MEMORY[0x1D3868CC0](1853124896, 0xE400000000000000);
  }

  if (v1[v13[16]])
  {
    v60 = 0xE400000000000000;
    v61 = 1953460082;
LABEL_119:
    strcpy(v76, " ignore:");
    BYTE1(v76[1]) = 0;
    WORD1(v76[1]) = 0;
    HIDWORD(v76[1]) = -402653184;
    MEMORY[0x1D3868CC0](v61, v60);

    MEMORY[0x1D3868CC0](v76[0], v76[1]);

    goto LABEL_123;
  }

  v62 = v1[v13[17]];
  if (v62 != 2 && (v62 & 1) != 0)
  {
    v61 = 0x646C696863;
    v60 = 0xE500000000000000;
    goto LABEL_119;
  }

LABEL_123:
  v63 = &v1[v13[35]];
  if ((v63[8] & 1) == 0)
  {
    v64 = *v63;
    v76[0] = 0;
    v76[1] = 0xE000000000000000;
    MEMORY[0x1D3868CC0](0x3A65707974736F20, 0xE800000000000000);
    v75 = v64;
    type metadata accessor for NSFileProviderTypeAndCreator(0);
    sub_1CF9E7B58();
    MEMORY[0x1D3868CC0](v76[0], v76[1]);
  }

  v65 = &v1[v13[38]];
  if (*(v65 + 1))
  {
    v66 = *v65;
    strcpy(v76, " collabID:");
    HIDWORD(v76[1]) = -352321536;
    v67 = sub_1CF9E6888();
    v68 = [v67 fp_obfuscatedFilename];

    v69 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v71 = v70;

    MEMORY[0x1D3868CC0](v69, v71);

    MEMORY[0x1D3868CC0](34, 0xE100000000000000);
    MEMORY[0x1D3868CC0](v76[0], v76[1]);
  }

  if (v1[v13[24]] == 1)
  {
    MEMORY[0x1D3868CC0](2342314528, 0xA400000000000000);
  }

  if (v1[v13[25]] == 1)
  {
    MEMORY[0x1D3868CC0](0x83949FF020, 0xA500000000000000);
  }

  return v77;
}

uint64_t FileItemVersion.description.getter(uint64_t a1)
{
  v3 = *(a1 + 60);
  if (*(v1 + v3))
  {
    v20 = *(v1 + v3);
    v4 = *(a1 + 24);
    sub_1CF9E6E58();
    swift_getWitnessTable();
    if ((sub_1CF9E7128() & 1) == 0)
    {
      MEMORY[0x1D3868CC0](980510012, 0xE400000000000000);
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    }
  }

  v5 = *(a1 + 52);
  if (*(v1 + v5))
  {
    v21 = *(v1 + v5);
    v6 = *(a1 + 16);
    sub_1CF9E6E58();
    swift_getWitnessTable();
    if ((sub_1CF9E7128() & 1) == 0)
    {
      MEMORY[0x1D3868CC0](980510012, 0xE400000000000000);
      swift_getWitnessTable();
      sub_1CF9E7FE8();
    }
  }

  v7 = (v1 + *(a1 + 64));
  if (v7[1])
  {
    v8 = *v7;
    v9 = sub_1CF9E6888();
    v10 = [v9 fp_obfuscatedFilename];

    v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v13 = v12;

    MEMORY[0x1D3868CC0](v11, v13);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    v15 = 0x3A65636976656420;
    v14 = 0xE800000000000000;
  }

  else
  {
    v15 = 0;
    v14 = 0xE000000000000000;
  }

  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x3A72657673, 0xE500000000000000);
  v16 = *(a1 + 56);
  v17 = *(a1 + 24);
  sub_1CF9E7FD8();
  MEMORY[0x1D3868CC0](0, 0xE000000000000000);

  MEMORY[0x1D3868CC0](0x3A7265766320, 0xE600000000000000);
  v18 = *(a1 + 16);
  sub_1CF9E7FD8();
  MEMORY[0x1D3868CC0](0, 0xE000000000000000);

  MEMORY[0x1D3868CC0](v15, v14);

  return 0;
}

uint64_t sub_1CF073320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF01E0C4(a2, *(a3 + 8));
  v7 = sub_1CF073398(v6, a1, a2, a3);

  return v7;
}

uint64_t sub_1CF073398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a2;
  v44 = sub_1CF9E75D8();
  v7 = *(v44 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v44);
  v11 = &v31 - v10;
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v36 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a4;
  v15 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v46 = &v31 - v22;
  if (sub_1CF9E6DF8())
  {
    v23 = 0;
    v39 = (v7 + 16);
    v40 = (v17 + 32);
    v38 = (v12 + 48);
    v33 = v37 + 16;
    v34 = (v12 + 32);
    v35 = (v12 + 8);
    v41 = (v17 + 8);
    v42 = (v17 + 16);
    v32 = (v7 + 8);
    do
    {
      v24 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v24)
      {
        (*(v17 + 16))(v46, a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v23, AssociatedTypeWitness);
        v25 = v44;
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_12;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        v25 = v44;
        if (v31 != 8)
        {
          __break(1u);
          return result;
        }

        v47[0] = result;
        (*v42)(v46, v47, AssociatedTypeWitness);
        swift_unknownObjectRelease();
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      (*v40)(v21, v46, AssociatedTypeWitness);
      (*v39)(v11, v43, v25);
      if ((*v38)(v11, 1, a3) == 1)
      {
        (*v32)(v11, v25);
      }

      else
      {
        v27 = v36;
        (*v34)(v36, v11, a3);
        (*(v37 + 16))(v21, v45, a3);

        (*v35)(v27, a3);
      }

      (*v41)(v21, AssociatedTypeWitness);
      ++v23;
    }

    while (v26 != sub_1CF9E6DF8());
  }

  sub_1CF9E6DF8();
  result = sub_1CF9E6B18();
  v47[0] = result;
  v47[1] = v29;
  v30 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v30 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v30)
  {
    sub_1CF03DE28(2);
    return v47[0];
  }

  return result;
}

uint64_t sub_1CF073914(unsigned __int8 a1, void *a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v39 - v12;
  if (a1 <= 0x1Eu)
  {
    switch(a1)
    {
      case 0x1Cu:
        swift_getAssociatedTypeWitness();
        v27 = *(swift_getAssociatedConformanceWitness() + 8);
        v28 = *(v27 + 32);
        v29 = swift_checkMetadataState();
        break;
      case 0x1Du:
        v36 = *(a3 + 36);
        swift_getAssociatedTypeWitness();
        v27 = *(swift_getAssociatedConformanceWitness() + 8);
        v28 = *(v27 + 32);
        v29 = swift_checkMetadataState();
        break;
      case 0x1Eu:
        v17 = (v3 + *(a3 + 44));
        v18 = v17[1];
        if (v18)
        {
          v19 = *v17;
          v20 = v17[1];

          v21 = MEMORY[0x1E69E6158];
        }

        else
        {

          v19 = 0;
          v21 = 0;
          v41 = 0;
        }

        v39 = v19;
        v40 = v18;
        v42 = v21;
        v33 = sub_1CEFF8EA0(&v39);
        v38 = v37;
        sub_1CEFCCC44(&v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        if (v38)
        {
          return v33;
        }

        result = sub_1CF9E7B68();
        __break(1u);
        return result;
      default:
LABEL_15:
        v30 = v3 + *(a3 + 48);
        return sub_1CF073E1C(a1, a2);
    }

    return v28(a2, v29, v27);
  }

  if (a1 <= 0x20u)
  {
    if (a1 != 31)
    {
      if (a1 == 32)
      {
        (*(v11 + 16))(v13, v3 + *(a3 + 40), AssociatedTypeWitness);
        swift_dynamicCast();
        v14 = [a2 bindUnsignedIntegerParameter_];
        v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

        return v15;
      }

      goto LABEL_15;
    }

    (*(v11 + 16))(v13, v3 + *(a3 + 40), AssociatedTypeWitness);
    swift_dynamicCast();
    v31 = sub_1CF9E8268();
    v32 = [a2 bindObjectParameter_];

    v33 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    return v33;
  }

  if (a1 != 33)
  {
    if (a1 == 34)
    {
      v22 = v3 + *(a3 + 40);
      v23 = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v25 = swift_getAssociatedConformanceWitness();
      v39 = AssociatedTypeWitness;
      v40 = v23;
      v41 = AssociatedConformanceWitness;
      v42 = v25;
      v26 = *(type metadata accessor for FileItemVersion() + 56);
      return (*(*(v25 + 8) + 32))(a2, v23);
    }

    goto LABEL_15;
  }

  v34 = *(a3 + 40);
  v35 = swift_getAssociatedConformanceWitness();
  return (*(*(v35 + 8) + 32))(a2, AssociatedTypeWitness);
}

uint64_t sub_1CF073E1C(char a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v40 - v7;
  switch(a1)
  {
    case 1:
      v11 = [a2 bindBooleanParameter_];
      goto LABEL_36;
    case 2:
      v23 = *(type metadata accessor for ItemMetadata() + 104);
      return sub_1CF0744FC(*&v2[v23], 0);
    case 3:
      v11 = [a2 bindBooleanParameter_];
      goto LABEL_36;
    case 4:
      v11 = [a2 bindUnsignedShortParameter_];
      goto LABEL_36;
    case 5:
      v26 = *(type metadata accessor for ItemMetadata() + 28);
      goto LABEL_30;
    case 6:
      v26 = *(type metadata accessor for ItemMetadata() + 32);
LABEL_30:
      v28 = sub_1CF9E5CF8();
      v29 = *(v28 - 8);
      (*(v29 + 16))(v8, &v2[v26], v28);
      (*(v29 + 56))(v8, 0, 1, v28);
      v2 = sub_1CF074698(v8);
      sub_1CEFCCC44(v8, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      return v2;
    case 7:
      v24 = type metadata accessor for ItemMetadata();
      return sub_1CF074698(&v2[*(v24 + 120)]);
    case 8:
      v30 = type metadata accessor for ItemMetadata();
      return sub_1CF0748F0(*&v2[*(v30 + 124)]);
    case 9:
      v17 = type metadata accessor for ItemMetadata();
      return sub_1CF074ABC(*&v2[*(v17 + 128)], v2[*(v17 + 128) + 8]);
    case 10:
      v11 = [a2 bindBooleanParameter_];
      goto LABEL_36;
    case 11:
      v11 = [a2 bindBooleanParameter_];
      goto LABEL_36;
    case 12:
      v11 = [a2 bindBooleanParameter_];
      goto LABEL_36;
    case 13:
      v27 = *(v2 + 1);
      LOBYTE(v40[0]) = v2[8];
      return sub_1CF074C58(v27 | (LOBYTE(v40[0]) << 32));
    case 14:
      v15 = type metadata accessor for ItemMetadata();
      return sub_1CF1DF550(*&v2[*(v15 + 132)]);
    case 15:
      v23 = *(type metadata accessor for ItemMetadata() + 108);
      return sub_1CF0744FC(*&v2[v23], 0);
    case 16:
      v12 = type metadata accessor for ItemMetadata();
      v13 = v2[*(v12 + 92)];
      if (v13 == 6)
      {
        v14 = 0;
      }

      else
      {
        v14 = (v13 + 1) << 16;
      }

      v11 = [a2 bindUnsignedIntegerParameter_];
      goto LABEL_36;
    case 17:
      v11 = [a2 bindBooleanParameter_];
      goto LABEL_36;
    case 18:
      v11 = [a2 bindBooleanParameter_];
      goto LABEL_36;
    case 19:
      v32 = type metadata accessor for ItemMetadata();
      return sub_1CF074DF4(*&v2[*(v32 + 56)], *&v2[*(v32 + 56) + 8]);
    case 20:
      v25 = type metadata accessor for ItemMetadata();
      return sub_1CF04E5D8(*&v2[*(v25 + 136)], *&v2[*(v25 + 136) + 8]);
    case 21:
      v11 = [a2 bindBooleanParameter_];
      goto LABEL_36;
    case 22:
      v11 = [a2 bindBooleanParameter_];
      goto LABEL_36;
    case 23:
      v33 = *&v2[*(type metadata accessor for ItemMetadata() + 76)];
      v34 = sub_1CF9E8268();
      v35 = [a2 bindObjectParameter_];

      goto LABEL_45;
    case 24:
      v22 = type metadata accessor for ItemMetadata();
      return sub_1CF074EDC(*&v2[*(v22 + 140)], v2[*(v22 + 140) + 8]);
    case 25:
      v18 = 0;
      v19 = &v2[*(type metadata accessor for ItemMetadata() + 148)];
      if ((v19[4] & 1) == 0)
      {
        v20 = *v19;
        v18 = sub_1CF9E8258();
      }

      v21 = [a2 bindObjectParameter_];
      swift_unknownObjectRelease();
      goto LABEL_37;
    case 26:
      v36 = &v2[*(type metadata accessor for ItemMetadata() + 152)];
      if (*(v36 + 1))
      {
        v37 = *v36;
        v38 = sub_1CF9E6888();
      }

      else
      {
        v38 = 0;
      }

      v35 = [a2 bindObjectParameter_];
      swift_unknownObjectRelease();
LABEL_45:
      v39 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

      return v39;
    case 27:
      goto LABEL_4;
    default:
      v9 = qword_1CF9FDE78[*v2];
      v40[3] = MEMORY[0x1E69E6530];
      v40[0] = v9;
      v2 = sub_1CEFF8EA0(v40);
      a2 = v10;
      sub_1CEFCCC44(v40, &unk_1EC4BEC50, &qword_1CF9FB4B0);
      if (a2)
      {
        return v2;
      }

      sub_1CF9E7B68();
      __break(1u);
LABEL_4:
      v11 = [a2 bindBooleanParameter_];
LABEL_36:
      v21 = v11;
LABEL_37:
      v31 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

      return v31;
  }
}

uint64_t sub_1CF0744FC(uint64_t a1, char a2)
{
  v13[4] = a1;
  v14 = a2 & 1;
  if (a2)
  {
    a1 = 0;
    v2 = 0;
    v13[1] = 0;
    v13[2] = 0;
  }

  else
  {
    v2 = MEMORY[0x1E69E7360];
  }

  v13[0] = a1;
  v13[3] = v2;
  v3 = sub_1CEFF8EA0(v13);
  v5 = v4;
  sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v5)
  {
    v6 = sub_1CF9E56C8();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE4F0, &unk_1CF9FEF40);
    sub_1CF1E0F44();
    v9 = sub_1CF9E56A8();
    v11 = v10;
    v3 = sub_1CF04E5D8(v9, v10);

    sub_1CEFE4714(v9, v11);
  }

  return v3;
}

uint64_t sub_1CF074698(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19[-v4];
  sub_1CF06EAD4(a1, &v19[-v4]);
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1CEFCCC44(v5, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v20 = 0u;
    v21 = 0u;
  }

  else
  {
    *(&v21 + 1) = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v20);
    (*(v7 + 32))(boxed_opaque_existential_0, v5, v6);
  }

  v9 = sub_1CEFF8EA0(&v20);
  v11 = v10;
  sub_1CEFCCC44(&v20, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v11)
  {
    v12 = sub_1CF9E56C8();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    sub_1CF1E0C04();
    v15 = sub_1CF9E56A8();
    v17 = v16;
    v9 = sub_1CF04E5D8(v15, v16);

    sub_1CEFE4714(v15, v17);
  }

  return v9;
}

uint64_t sub_1CF0748F0(uint64_t a1)
{
  v13[4] = a1;
  if (a1)
  {
    v1 = &type metadata for Tags;
    v2 = a1;
  }

  else
  {
    v2 = 0;
    v1 = 0;
    v13[1] = 0;
    v13[2] = 0;
  }

  v13[0] = v2;
  v13[3] = v1;

  v3 = sub_1CEFF8EA0(v13);
  v5 = v4;
  sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v5)
  {
    v6 = sub_1CF9E56C8();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE488, &qword_1CF9FDDA8);
    sub_1CF04EE34(&qword_1EC4BE4D0, &qword_1EC4BE488, &qword_1CF9FDDA8, sub_1CF1E0CB8);
    v9 = sub_1CF9E56A8();
    v11 = v10;
    v3 = sub_1CF04E5D8(v9, v10);

    sub_1CEFE4714(v9, v11);
  }

  return v3;
}

uint64_t sub_1CF074ABC(uint64_t a1, char a2)
{
  v13[4] = a1;
  v14 = a2 & 1;
  if (a2)
  {
    a1 = 0;
    v2 = 0;
    v13[1] = 0;
    v13[2] = 0;
  }

  else
  {
    v2 = MEMORY[0x1E69E76D8];
  }

  v13[0] = a1;
  v13[3] = v2;
  v3 = sub_1CEFF8EA0(v13);
  v5 = v4;
  sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v5)
  {
    v6 = sub_1CF9E56C8();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE490, &unk_1CF9FF020);
    sub_1CF1E0D0C();
    v9 = sub_1CF9E56A8();
    v11 = v10;
    v3 = sub_1CF04E5D8(v9, v10);

    sub_1CEFE4714(v9, v11);
  }

  return v3;
}

uint64_t sub_1CF074C58(uint64_t a1)
{
  v13 = a1;
  v14 = BYTE4(a1) & 1;
  if ((a1 & 0x100000000) != 0)
  {
    v1 = 0;
    memset(v12, 0, 24);
  }

  else
  {
    LODWORD(v12[0]) = a1;
    v1 = MEMORY[0x1E69E7668];
  }

  v12[3] = v1;
  v2 = sub_1CEFF8EA0(v12);
  v4 = v3;
  sub_1CEFCCC44(v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v4)
  {
    v5 = sub_1CF9E56C8();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE480, &qword_1CF9FEF30);
    sub_1CF1E0D88();
    v8 = sub_1CF9E56A8();
    v10 = v9;
    v2 = sub_1CF04E5D8(v8, v9);

    sub_1CEFE4714(v8, v10);
  }

  return v2;
}

uint64_t sub_1CF074DF4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    v4 = MEMORY[0x1E69E6158];
  }

  else
  {

    a1 = 0;
    v4 = 0;
    v9[2] = 0;
  }

  v9[0] = a1;
  v9[1] = a2;
  v9[3] = v4;
  v5 = sub_1CEFF8EA0(v9);
  v7 = v6;
  sub_1CEFCCC44(v9, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v7)
  {
    return v5;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF074EDC(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = 0;
    v8[1] = 0;
    v8[2] = 0;
  }

  else
  {
    v2 = __ROR8__(a1, 32);
    v3 = MEMORY[0x1E69E76D8];
  }

  v8[0] = v2;
  v8[3] = v3;
  v4 = sub_1CEFF8EA0(v8);
  v6 = v5;
  sub_1CEFCCC44(v8, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v6)
  {
    return v4;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF074FA8(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = sub_1CF9E5B48();
  v6 = [a1 bindObjectParameter_];

  v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  return v7;
}

uint64_t sub_1CF07501C(uint64_t a1, __int128 *a2)
{
  v3 = a2[13];
  v59 = a2[12];
  v60 = v3;
  v61 = a2[14];
  v4 = a2[9];
  v55 = a2[8];
  v56 = v4;
  v5 = a2[11];
  v57 = a2[10];
  v58 = v5;
  v6 = a2[5];
  v51 = a2[4];
  v52 = v6;
  v7 = a2[7];
  v53 = a2[6];
  v54 = v7;
  v8 = a2[1];
  v47 = *a2;
  v48 = v8;
  v9 = a2[3];
  v49 = a2[2];
  v62 = *(a2 + 30);
  v50 = v9;
  if (*(a1 + 16))
  {
    v11 = (a1 + 32);
    v12 = *(a1 + 16);
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = a2[13];
      v45[12] = a2[12];
      v45[13] = v15;
      v45[14] = a2[14];
      v46 = *(a2 + 30);
      v16 = a2[9];
      v45[8] = a2[8];
      v45[9] = v16;
      v17 = a2[11];
      v45[10] = a2[10];
      v45[11] = v17;
      v18 = a2[5];
      v45[4] = a2[4];
      v45[5] = v18;
      v19 = a2[7];
      v45[6] = a2[6];
      v45[7] = v19;
      v20 = a2[1];
      v45[0] = *a2;
      v45[1] = v20;
      v21 = a2[3];
      v45[2] = a2[2];
      v45[3] = v21;
      if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v45) == 1)
      {
      }

      else
      {
        v44 = v62;
        v41 = v59;
        v42 = v60;
        v43 = v61;
        v37 = v55;
        v38 = v56;
        v39 = v57;
        v40 = v58;
        v33 = v51;
        v34 = v52;
        v35 = v53;
        v36 = v54;
        v29 = v47;
        v30 = v48;
        v31 = v49;
        v32 = v50;
        v27[12] = v59;
        v27[13] = v60;
        v27[14] = v61;
        v28 = v62;
        v27[8] = v55;
        v27[9] = v56;
        v27[10] = v57;
        v27[11] = v58;
        v27[4] = v51;
        v27[5] = v52;
        v27[6] = v53;
        v27[7] = v54;
        v27[0] = v47;
        v27[1] = v48;
        v27[2] = v49;
        v27[3] = v50;
        sub_1CEFF7474(v27, v25);
        sub_1CF0753A8(v13, v2);

        v25[12] = v41;
        v25[13] = v42;
        v25[14] = v43;
        v26 = v44;
        v25[8] = v37;
        v25[9] = v38;
        v25[10] = v39;
        v25[11] = v40;
        v25[4] = v33;
        v25[5] = v34;
        v25[6] = v35;
        v25[7] = v36;
        v25[0] = v29;
        v25[1] = v30;
        v25[2] = v31;
        v25[3] = v32;
        sub_1CF07574C(v25);
      }

      --v12;
    }

    while (v12);
  }

  result = sub_1CF9E6B18();
  *&v29 = result;
  *(&v29 + 1) = v23;
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    sub_1CF03DE28(2);
    return v29;
  }

  return result;
}

void *sub_1CF0753A8(char a1, id a2)
{
  result = v2[2];
  switch(a1)
  {
    case 1:
      v10 = [a2 bindBooleanParameter_];
      goto LABEL_32;
    case 2:
      v10 = [a2 bindBooleanParameter_];
      goto LABEL_32;
    case 3:
      if (!result)
      {
        goto LABEL_38;
      }

      swift_getErrorValue();
      v12 = v22;
      v13 = v23;
      goto LABEL_16;
    case 4:
      if (!v2[3])
      {
        goto LABEL_37;
      }

      v11 = v2[3];
      swift_getErrorValue();
      v12 = v24;
      v13 = v25;
LABEL_16:
      result = sub_1CF4C2330(v12, v13);
      if (v3)
      {
        return result;
      }

      goto LABEL_39;
    case 5:
      v10 = [a2 bindBooleanParameter_];
      goto LABEL_32;
    case 6:
      v10 = [a2 bindBooleanParameter_];
      goto LABEL_32;
    case 7:
      v10 = [a2 bindBooleanParameter_];
      goto LABEL_32;
    case 8:
      v10 = [a2 bindBooleanParameter_];
      goto LABEL_32;
    case 9:
      v8 = v2[5];
      v9 = v2[6];
      return sub_1CF0757A0(v8, v9);
    case 10:
      v8 = v2[7];
      v9 = v2[8];
      return sub_1CF0757A0(v8, v9);
    case 11:
      v10 = [a2 bindBooleanParameter_];
      goto LABEL_32;
    case 12:
      v8 = v2[10];
      v9 = v2[11];
      return sub_1CF0757A0(v8, v9);
    case 13:
      v10 = [a2 bindBooleanParameter_];
      goto LABEL_32;
    case 14:
      v10 = [a2 bindBooleanParameter_];
      goto LABEL_32;
    case 15:
      v8 = v2[14];
      v9 = v2[15];
      return sub_1CF0757A0(v8, v9);
    case 16:
      v8 = v2[16];
      v9 = v2[17];
      return sub_1CF0757A0(v8, v9);
    case 17:
      v8 = v2[18];
      v9 = v2[19];
      return sub_1CF0757A0(v8, v9);
    case 18:
      return sub_1CF074DF4(v2[20], v2[21]);
    case 19:
      v10 = [a2 bindBooleanParameter_];
LABEL_32:
      v15 = v10;
      v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

      return v16;
    case 20:
      return sub_1CF075944(v2[23]);
    case 21:
      return sub_1CF075B2C(v2[24], v2[25]);
    case 22:
      v6 = v2[26];
      goto LABEL_34;
    case 23:
      v6 = v2[27];
LABEL_34:
      v7 = MEMORY[0x1E69E6530];
      goto LABEL_35;
    case 24:
      return sub_1CF075F44(v2[28]);
    case 25:
      v8 = v2[29];
      v9 = v2[30];
      return sub_1CF0757A0(v8, v9);
    default:
      v6 = *v2;
      v7 = MEMORY[0x1E69E6810];
LABEL_35:
      v26[3] = v7;
      v26[0] = v6;
      v17 = sub_1CEFF8EA0(v26);
      v19 = v18;
      sub_1CF0248E0(v26);
      if (!v19)
      {
        sub_1CF9E7B68();
        __break(1u);
LABEL_37:
        result = 0;
LABEL_38:
        v14 = 0xF000000000000000;
LABEL_39:
        v20 = result;
        v21 = v14;
        v17 = sub_1CF04E5D8(result, v14);
        sub_1CEFE48D8(v20, v21);
      }

      return v17;
  }
}

uint64_t sub_1CF0757A0(uint64_t a1, uint64_t a2)
{
  v14[4] = a1;
  v14[5] = a2;
  if (a2)
  {
    v2 = MEMORY[0x1E69E6158];
    v3 = a2;
  }

  else
  {
    a1 = 0;
    v3 = 0;
    v2 = 0;
    v14[2] = 0;
  }

  v14[0] = a1;
  v14[1] = v3;
  v14[3] = v2;

  v4 = sub_1CEFF8EA0(v14);
  v6 = v5;
  sub_1CEFCCC44(v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v6)
  {
    v7 = sub_1CF9E56C8();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C10D0, &unk_1CF9FEEF0);
    sub_1CF1E1420();
    v10 = sub_1CF9E56A8();
    v12 = v11;
    v4 = sub_1CF04E5D8(v10, v11);

    sub_1CEFE4714(v10, v12);
  }

  return v4;
}

uint64_t sub_1CF075944(uint64_t a1)
{
  v14[4] = a1;
  if (a1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
    v3 = a1;
  }

  else
  {
    v3 = 0;
    v2 = 0;
    v14[1] = 0;
    v14[2] = 0;
  }

  v14[0] = v3;
  v14[3] = v2;

  v4 = sub_1CEFF8EA0(v14);
  v6 = v5;
  sub_1CEFCCC44(v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v6)
  {
    v7 = sub_1CF9E56C8();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE558, &unk_1CF9FEEE0);
    sub_1CF04EE34(&qword_1EC4BE560, &qword_1EC4BE558, &unk_1CF9FEEE0, sub_1CF1E14F0);
    v10 = sub_1CF9E56A8();
    v12 = v11;
    v4 = sub_1CF04E5D8(v10, v11);

    sub_1CEFE4714(v10, v12);
  }

  return v4;
}

uint64_t sub_1CF075B2C(uint64_t a1, uint64_t a2)
{
  v15[4] = a1;
  v15[5] = a2;
  if (a1)
  {
    v2 = &type metadata for UserInfo;
    v3 = a1;
    v4 = a2;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v2 = 0;
    v15[2] = 0;
  }

  v15[0] = v3;
  v15[1] = v4;
  v15[3] = v2;
  sub_1CF075D00(a1);
  v5 = sub_1CEFF8EA0(v15);
  v7 = v6;
  sub_1CEFCCC44(v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v7)
  {
    v8 = sub_1CF9E56C8();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE568, &qword_1CF9FDDD8);
    sub_1CF04EE34(&qword_1EDEA42B8, &qword_1EC4BE568, &qword_1CF9FDDD8, sub_1CF1E156C);
    v11 = sub_1CF9E56A8();
    v13 = v12;
    v5 = sub_1CF04E5D8(v11, v12);

    sub_1CEFE4714(v11, v13);
  }

  return v5;
}

uint64_t sub_1CF075D00(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1CF075D40(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2278, &unk_1CFA107B8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEFE7B7C();
  sub_1CF9E82A8();
  v16 = a2;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFE7C14(&qword_1EDEA3780);
  sub_1CF9E7F08();
  if (!v3)
  {
    v16 = a3;
    v15 = 1;
    sub_1CF9E7F08();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1CF075F44(uint64_t a1)
{
  v14[4] = a1;
  if (a1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF630, &unk_1CF9FEEC0);
    v3 = a1;
  }

  else
  {
    v3 = 0;
    v2 = 0;
    v14[1] = 0;
    v14[2] = 0;
  }

  v14[0] = v3;
  v14[3] = v2;

  v4 = sub_1CEFF8EA0(v14);
  v6 = v5;
  sub_1CEFCCC44(v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v6)
  {
    v7 = sub_1CF9E56C8();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE570, &unk_1CF9FEED0);
    sub_1CF04EE34(&qword_1EDEA37F8, &qword_1EC4BE570, &unk_1CF9FEED0, sub_1CF1E15C0);
    v10 = sub_1CF9E56A8();
    v12 = v11;
    v4 = sub_1CF04E5D8(v10, v11);

    sub_1CEFE4714(v10, v12);
  }

  return v4;
}

uint64_t sub_1CF07612C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v8(a2, a3, a4);
}

uint64_t sub_1CF0761B4(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_1CF0761F4(a1);
  return v5;
}

uint64_t sub_1CF0761F4(uint64_t a1)
{
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  v6 = type metadata accessor for SnapshotItem();
  (*(*(v6 - 8) + 32))(v1 + v3, a1, v6);
  return v1;
}

uint64_t sub_1CF07629C()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = type metadata accessor for SnapshotItem();
  (*(*(v4 - 8) + 8))(v0 + v1, v4);
  return v0;
}

uint64_t sub_1CF076334()
{
  sub_1CF07629C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1CF07638C(uint64_t a1, unint64_t a2)
{
  if ((a2 >> 62) <= 1)
  {
  }

  return result;
}

uint64_t sub_1CF0763AC(uint64_t a1, void *a2)
{
  v65 = a2;
  v69 = a1;
  v3 = *(*v2 + 80);
  v4 = *(*v2 + 88);
  v5 = *(*v2 + 96);
  v6 = *(*v2 + 104);
  v70 = v3;
  v71 = v4;
  v72 = v5;
  v73 = v6;
  v7 = type metadata accessor for ReconciliationMutation();
  v68 = *(v7 - 8);
  v8 = *(v68 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v66 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v56 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = swift_getAssociatedTypeWitness();
  v61 = v3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v62 = v6;
  v63 = v4;
  v16 = v68;
  v17 = swift_getAssociatedConformanceWitness();
  v70 = AssociatedTypeWitness;
  v71 = v14;
  v72 = AssociatedConformanceWitness;
  v73 = v17;
  v18 = type metadata accessor for ReconciliationID();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v67 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v56 - v23;
  v65 = *v65;
  v25 = *(v16 + 16);
  v25(v12, v69, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v64 = v19;
  if (EnumCaseMultiPayload != 10)
  {
    (*(v16 + 8))(v12, v7);
    goto LABEL_10;
  }

  v59 = v7;
  v27 = type metadata accessor for ReconciliationSideMutation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v29 = &v12[*(TupleTypeMetadata2 + 48)];
  v30 = v12;
  v31 = *(v19 + 32);
  v31(v24, v30, v18);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v19 + 8))(v24, v18);
    (*(*(v27 - 8) + 8))(v29, v27);
  }

  else
  {
    v58 = TupleTypeMetadata2;
    v32 = *(v29 + 1);
    v61 = *v29;
    v33 = *(v29 + 2);
    v34 = *(v60 + 32);
    if (sub_1CF056558() && (v61 & v65) != 0)
    {
      v56 = v33;
      v57 = v32;
      v16 = v68;
      v35 = v69;
      v36 = v59;
      (*(v68 + 8))(v69, v59);
      v37 = v31;
      v38 = (v35 + *(v58 + 48));
      v37(v35, v24, v18);
      *v38 = v61 & ~v65;
      v39 = v56;
      v38[1] = v57;
      v38[2] = v39;
      v7 = v36;
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      goto LABEL_10;
    }

    (*(v64 + 8))(v24, v18);
  }

  v16 = v68;
  v7 = v59;
LABEL_10:
  v40 = v66;
  v25(v66, v69, v7);
  v41 = swift_getEnumCaseMultiPayload();
  v42 = v67;
  if (v41 != 9)
  {
    return (*(v16 + 8))(v40, v7);
  }

  v43 = type metadata accessor for ReconciliationSideMutation();
  v44 = swift_getTupleTypeMetadata2();
  v45 = &v40[*(v44 + 48)];
  v46 = v64;
  v47 = v40;
  v48 = *(v64 + 32);
  v48(v42, v47, v18);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v46 + 8))(v42, v18);
    return (*(*(v43 - 8) + 8))(v45, v43);
  }

  else
  {
    v66 = v48;
    v50 = *v45;
    v63 = *(v45 + 1);
    v51 = *(v45 + 2);
    v52 = *(v60 + 40);
    if (sub_1CF056558() && (v50 & v65) != 0)
    {
      v53 = v51;
      v54 = v69;
      (*(v16 + 8))(v69, v7);
      v55 = (v54 + *(v44 + 48));
      (v66)(v54, v67, v18);
      *v55 = v50 & ~v65;
      v55[1] = v63;
      v55[2] = v53;
      swift_storeEnumTagMultiPayload();
      return swift_storeEnumTagMultiPayload();
    }

    else
    {
      return (*(v46 + 8))(v67, v18);
    }
  }
}

uint64_t sub_1CF0769FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v144 = a2;
  v3 = a1[2];
  v4 = a1[4];
  v5 = type metadata accessor for ReconciliationSideMutation();
  v137 = *(v5 - 8);
  v138 = v5;
  v6 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v136 = &v132 - v7;
  v8 = a1[3];
  v9 = a1[5];
  v10 = type metadata accessor for ReconciliationSideMutation();
  v134 = *(v10 - 8);
  v135 = v10;
  v11 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v133 = &v132 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v132 = *(AssociatedTypeWitness - 8);
  v14 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v132 - v15;
  v17 = swift_getAssociatedTypeWitness();
  *(&v142 + 1) = v3;
  v143 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v141 = v9;
  *&v142 = v8;
  v19 = swift_getAssociatedConformanceWitness();
  v20 = AssociatedTypeWitness;
  *&v145 = AssociatedTypeWitness;
  *(&v145 + 1) = v17;
  v21 = v17;
  *&v139 = v19;
  *(&v139 + 1) = AssociatedConformanceWitness;
  *&v146 = AssociatedConformanceWitness;
  *(&v146 + 1) = v19;
  v22 = type metadata accessor for ReconciliationID();
  v23 = v22[-1].i64[1];
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v132 - v28;
  v30 = *(*(a1 - 1) + 64);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v132 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v35 + 16))(v34, v140, a1, v32);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v98 = v20;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v100 = *(TupleTypeMetadata3 + 48);
      v101 = v34[*(TupleTypeMetadata3 + 64)];
      v102 = *(v132 + 32);
      v102(v16, v34, v98);
      v103 = swift_getTupleTypeMetadata3();
      v104 = *(v103 + 48);
      v105 = *(v103 + 64);
      v106 = &v34[v100];
      v107 = v144;
      (*(*(v21 - 8) + 32))(v144, v106, v21);
      v102((v107 + v104), v16, v98);
      *(v107 + v105) = v101;
      *&v108 = v141;
      *(&v108 + 1) = v143;
      v146 = v108;
      v145 = v142;
      type metadata accessor for ReconciliationMutation();
      break;
    case 4u:
      (*(v23 + 32))(v29, v34, v22);
      sub_1CF050768(v22, v144);
      (*(v23 + 8))(v29, v22);
      *&v62 = v141;
      *(&v62 + 1) = v143;
      v146 = v62;
      v145 = v142;
      type metadata accessor for ReconciliationMutation();
      break;
    case 5u:
    case 6u:
    case 0x10u:
      v109 = v22;
      v110 = *&v34[*(swift_getTupleTypeMetadata2() + 48)];
      (*(v23 + 32))(v29, v34, v109);
      *&v145 = v17;
      *(&v145 + 1) = v20;
      v146 = v139;
      type metadata accessor for ReconciliationID();
      v111 = *(swift_getTupleTypeMetadata2() + 48);
      v112 = v29;
      v113 = v144;
      sub_1CF050768(v109, v144);
      (*(v23 + 8))(v112, v109);
      *(v113 + v111) = v110;
      *&v114 = v141;
      *(&v114 + 1) = v143;
      v146 = v114;
      v145 = v142;
      type metadata accessor for ReconciliationMutation();
      break;
    case 7u:
      v90 = *(swift_getTupleTypeMetadata2() + 48);
      v91 = v22;
      v92 = *(v23 + 32);
      v92(v29, v34, v91);
      v92(v26, &v34[v90], v91);
      *&v145 = v21;
      *(&v145 + 1) = v20;
      v146 = v139;
      type metadata accessor for ReconciliationID();
      v93 = *(swift_getTupleTypeMetadata2() + 48);
      v94 = v29;
      v95 = v144;
      sub_1CF050768(v91, v144);
      v96 = *(v23 + 8);
      v96(v94, v91);
      sub_1CF050768(v91, v95 + v93);
      v96(v26, v91);
      *&v97 = v141;
      *(&v97 + 1) = v143;
      v146 = v97;
      v145 = v142;
      type metadata accessor for ReconciliationMutation();
      break;
    case 8u:
      v123 = *(swift_getTupleTypeMetadata2() + 48);
      v124 = v22;
      v125 = *(v23 + 32);
      v125(v29, v34, v124);
      v125(v26, &v34[v123], v124);
      *&v145 = v21;
      *(&v145 + 1) = v20;
      v146 = v139;
      type metadata accessor for ReconciliationID();
      v126 = *(swift_getTupleTypeMetadata2() + 48);
      v127 = v29;
      v128 = v144;
      sub_1CF050768(v124, v144);
      v129 = *(v23 + 8);
      v129(v127, v124);
      sub_1CF050768(v124, v128 + v126);
      v129(v26, v124);
      *&v130 = v141;
      *(&v130 + 1) = v143;
      v146 = v130;
      v145 = v142;
      type metadata accessor for ReconciliationMutation();
      break;
    case 9u:
      v72 = v135;
      v73 = *(swift_getTupleTypeMetadata2() + 48);
      (*(v23 + 32))(v29, v34, v22);
      v140 = *(v134 + 32);
      v74 = &v34[v73];
      v75 = v133;
      v140(v133, v74, v72);
      *&v145 = v21;
      *(&v145 + 1) = v20;
      v146 = v139;
      type metadata accessor for ReconciliationID();
      v76 = *(swift_getTupleTypeMetadata2() + 48);
      v77 = v29;
      v78 = v144;
      sub_1CF050768(v22, v144);
      (*(v23 + 8))(v77, v22);
      v140((v78 + v76), v75, v72);
      *&v79 = v141;
      *(&v79 + 1) = v143;
      v146 = v79;
      v145 = v142;
      type metadata accessor for ReconciliationMutation();
      break;
    case 0xAu:
      v115 = v138;
      v116 = *(swift_getTupleTypeMetadata2() + 48);
      (*(v23 + 32))(v29, v34, v22);
      v140 = *(v137 + 32);
      v117 = &v34[v116];
      v118 = v136;
      v140(v136, v117, v115);
      *&v145 = v21;
      *(&v145 + 1) = v20;
      v146 = v139;
      type metadata accessor for ReconciliationID();
      v119 = *(swift_getTupleTypeMetadata2() + 48);
      v120 = v29;
      v121 = v144;
      sub_1CF050768(v22, v144);
      (*(v23 + 8))(v120, v22);
      v140((v121 + v119), v118, v115);
      *&v122 = v141;
      *(&v122 + 1) = v143;
      v146 = v122;
      v145 = v142;
      type metadata accessor for ReconciliationMutation();
      break;
    case 0xBu:
      v53 = &v34[*(swift_getTupleTypeMetadata2() + 48)];
      v54 = v22;
      v55 = *v53;
      v56 = v23;
      v57 = v53[8];
      (*(v56 + 32))(v29, v34, v54);
      *&v145 = v17;
      *(&v145 + 1) = v20;
      v146 = v139;
      type metadata accessor for ReconciliationID();
      v58 = v144 + *(swift_getTupleTypeMetadata2() + 48);
      sub_1CF050768(v54, v144);
      (*(v56 + 8))(v29, v54);
      *v58 = v55;
      *&v60 = v141;
      v59 = v142;
      v61 = v143;
      *(v58 + 8) = v57;
      *(&v60 + 1) = v61;
      v146 = v60;
      v145 = v59;
      type metadata accessor for ReconciliationMutation();
      break;
    case 0xCu:
      v63 = &v34[*(swift_getTupleTypeMetadata2() + 48)];
      v64 = v22;
      v65 = v23;
      v66 = *v63;
      v67 = *(v63 + 1);
      (*(v65 + 32))(v29, v34, v64);
      *&v145 = v17;
      *(&v145 + 1) = v20;
      v146 = v139;
      type metadata accessor for ReconciliationID();
      v68 = (v144 + *(swift_getTupleTypeMetadata2() + 48));
      sub_1CF050768(v64, v144);
      (*(v65 + 8))(v29, v64);
      *&v70 = v141;
      v69 = v142;
      v71 = v143;
      *v68 = v66;
      v68[1] = v67;
      *(&v70 + 1) = v71;
      v146 = v70;
      v145 = v69;
      type metadata accessor for ReconciliationMutation();
      break;
    case 0xEu:
      v42 = swift_getTupleTypeMetadata3();
      v43 = v22;
      v44 = *&v34[*(v42 + 48)];
      v45 = v23;
      v46 = *&v34[*(v42 + 64)];
      (*(v45 + 32))(v29, v34, v43);
      *&v145 = v17;
      *(&v145 + 1) = v20;
      v146 = v139;
      type metadata accessor for ReconciliationID();
      v47 = swift_getTupleTypeMetadata3();
      v48 = *(v47 + 48);
      v49 = *(v47 + 64);
      v50 = v29;
      v51 = v144;
      sub_1CF050768(v43, v144);
      (*(v45 + 8))(v50, v43);
      *(v51 + v48) = v44;
      *(v51 + v49) = v46;
      *&v52 = v141;
      *(&v52 + 1) = v143;
      v146 = v52;
      v145 = v142;
      type metadata accessor for ReconciliationMutation();
      break;
    case 0xFu:
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE9A8, &unk_1CF9FEF60);
      v80 = swift_getTupleTypeMetadata3();
      v81 = v34[*(v80 + 48)];
      v82 = v23;
      v83 = v34[*(v80 + 64)];
      (*(v82 + 32))(v29, v34, v22);
      *&v145 = v17;
      *(&v145 + 1) = v20;
      v146 = v139;
      type metadata accessor for ReconciliationID();
      v84 = swift_getTupleTypeMetadata3();
      v85 = *(v84 + 48);
      v86 = *(v84 + 64);
      v87 = v29;
      v88 = v144;
      sub_1CF050768(v22, v144);
      (*(v82 + 8))(v87, v22);
      *(v88 + v85) = v81;
      *(v88 + v86) = v83;
      *&v89 = v141;
      *(&v89 + 1) = v143;
      v146 = v89;
      v145 = v142;
      type metadata accessor for ReconciliationMutation();
      break;
    default:
      v36 = v22;
      v37 = v34[*(swift_getTupleTypeMetadata2() + 48)];
      (*(v23 + 32))(v29, v34, v36);
      *&v145 = v17;
      *(&v145 + 1) = v20;
      v146 = v139;
      type metadata accessor for ReconciliationID();
      v38 = *(swift_getTupleTypeMetadata2() + 48);
      v39 = v29;
      v40 = v144;
      sub_1CF050768(v36, v144);
      (*(v23 + 8))(v39, v36);
      *(v40 + v38) = v37;
      *&v41 = v141;
      *(&v41 + 1) = v143;
      v146 = v41;
      v145 = v142;
      type metadata accessor for ReconciliationMutation();
      break;
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1CF077DEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = *(*(a1 - 1) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = a1[4];
  v9 = a1[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = a1[5];
  v12 = a1[3];
  v13 = swift_getAssociatedTypeWitness();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v32 = *(swift_getTupleTypeMetadata3() + 48);
      (*(*(AssociatedTypeWitness - 8) + 32))(v33, v5, AssociatedTypeWitness);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v27 = swift_getAssociatedConformanceWitness();
      v34 = AssociatedTypeWitness;
      v35 = v13;
      v36 = AssociatedConformanceWitness;
      v37 = v27;
      type metadata accessor for ReconciliationID();
      swift_storeEnumTagMultiPayload();
      result = (*(*(v13 - 8) + 8))(&v5[v32], v13);
      break;
    case 7:
    case 8:
      v18 = swift_getAssociatedConformanceWitness();
      v19 = swift_getAssociatedConformanceWitness();
      v34 = AssociatedTypeWitness;
      v35 = v13;
      v36 = v18;
      v37 = v19;
      v20 = type metadata accessor for ReconciliationID();
      v21 = *(swift_getTupleTypeMetadata2() + 48);
      v22 = *(v20 - 8);
      (*(v22 + 32))(v33, v5, v20);
      result = (*(v22 + 8))(&v5[v21], v20);
      break;
    case 9:
      v28 = swift_getAssociatedConformanceWitness();
      v29 = swift_getAssociatedConformanceWitness();
      v34 = AssociatedTypeWitness;
      v35 = v13;
      v36 = v28;
      v37 = v29;
      v25 = type metadata accessor for ReconciliationID();
      goto LABEL_8;
    case 10:
      v23 = swift_getAssociatedConformanceWitness();
      v24 = swift_getAssociatedConformanceWitness();
      v34 = AssociatedTypeWitness;
      v35 = v13;
      v36 = v23;
      v37 = v24;
      v25 = type metadata accessor for ReconciliationID();
LABEL_8:
      v30 = type metadata accessor for ReconciliationSideMutation();
      v31 = *(swift_getTupleTypeMetadata2() + 48);
      (*(*(v25 - 8) + 32))(v33, v5, v25);
      result = (*(*(v30 - 8) + 8))(&v5[v31], v30);
      break;
    default:
      v14 = swift_getAssociatedConformanceWitness();
      v15 = swift_getAssociatedConformanceWitness();
      v34 = AssociatedTypeWitness;
      v35 = v13;
      v36 = v14;
      v37 = v15;
      v16 = type metadata accessor for ReconciliationID();
      result = (*(*(v16 - 8) + 32))(v33, v5, v16);
      break;
  }

  return result;
}

uint64_t sub_1CF078348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *(*v2 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  v8 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v40 = &v35 - v9;
  v10 = *(v4 + 96);
  v11 = *(v4 + 80);
  v12 = swift_getAssociatedTypeWitness();
  v37 = *(v12 - 8);
  v13 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v35 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedConformanceWitness();
  *&v41 = v12;
  *(&v41 + 1) = AssociatedTypeWitness;
  *&v42 = AssociatedConformanceWitness;
  *(&v42 + 1) = v16;
  v17 = type metadata accessor for ReconciliationID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v35 - v20;
  sub_1CF078804(v11, v6, v10, v5, a2);
  (*(v18 + 16))(v21, v39, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = v38;
    v23 = *(v38 + 32);
    v23(v40, v21, AssociatedTypeWitness);
    *&v24 = v11;
    *(&v24 + 1) = v6;
    *&v25 = v10;
    *(&v25 + 1) = v5;
    v41 = v24;
    v42 = v25;
    v26 = *(type metadata accessor for ItemReconciliation() + 52);
    v27 = type metadata accessor for ItemReconciliationHalf();
    (*(*(v27 - 8) + 8))(a2 + v26, v27);
    sub_1CF078A84(a2 + v26);
    v28 = sub_1CF9E75D8();
    (*(*(v28 - 8) + 8))(a2 + v26, v28);
    v23((a2 + v26), v40, AssociatedTypeWitness);
    return (*(v22 + 56))(a2 + v26, 0, 1, AssociatedTypeWitness);
  }

  else
  {
    v31 = v36;
    v30 = v37;
    v32 = *(v37 + 32);
    v32(v36, v21, v12);
    v33 = type metadata accessor for ItemReconciliationHalf();
    (*(*(v33 - 8) + 8))(a2, v33);
    sub_1CF078A84(a2);
    v34 = sub_1CF9E75D8();
    (*(*(v34 - 8) + 8))(a2, v34);
    v32(a2, v31, v12);
    return (*(v30 + 56))(a2, 0, 1, v12);
  }
}

uint64_t sub_1CF078804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1CF9E5CF8();
  v27 = *(v10 - 8);
  v28 = v10;
  v11 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF078A84(a5);
  v29 = a1;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v14 = type metadata accessor for ItemReconciliation();
  sub_1CF078A84(a5 + v14[13]);
  *(a5 + v14[14]) = 4;
  v26 = v14[15];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedConformanceWitness();
  v29 = AssociatedTypeWitness;
  v30 = v16;
  v31 = AssociatedConformanceWitness;
  v32 = v18;
  type metadata accessor for ReconciliationID();
  *(a5 + v26) = sub_1CF9E6DA8();
  v19 = v14[16];
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v21 = v20;
  result = (*(v27 + 8))(v13, v28);
  v23 = v21 * 1000000000.0;
  if (COERCE__INT64(fabs(v21 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v23 < 9.22337204e18)
  {
    v24 = (a5 + v19);
    *v24 = 0x2000000000000000;
    v24[1] = v23;
    *(a5 + v14[17]) = 0;
    *(a5 + v14[18]) = 0;
    *(a5 + v14[19]) = 0;
    *(a5 + v14[20]) = 0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

double sub_1CF078A84@<D0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(a1, 1, 1, AssociatedTypeWitness);
  v3 = type metadata accessor for ItemReconciliationHalf();
  *(a1 + v3[9]) = 0;
  *(a1 + v3[10]) = 0;
  *(a1 + v3[11]) = 5;
  v4 = v3[12];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for FileItemVersion();
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  *(a1 + v3[13]) = 0;
  *(a1 + v3[14]) = 6;
  *(a1 + v3[15]) = 0;
  v6 = a1 + v3[16];
  *v6 = xmmword_1CF9FD920;
  *(v6 + 16) = 4;
  v7 = a1 + v3[17];
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0xB000000000000000;
  result = 0.0;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(a1 + v3[18]) = 0;
  *(a1 + v3[19]) = 0;
  return result;
}

uint64_t sub_1CF078C8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = *(*(a1 - 1) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v6;
  (*(v6 + 16))(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = a1[4];
  v9 = a1[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = a1[5];
  v12 = a1[3];
  v13 = swift_getAssociatedTypeWitness();
  if (EnumCaseMultiPayload == 1)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v15 = v24;
    (*(*(v13 - 8) + 32))(v24, &v5[*(TupleTypeMetadata3 + 48)], v13);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = swift_getAssociatedConformanceWitness();
    v25 = AssociatedTypeWitness;
    v26 = v13;
    v27 = AssociatedConformanceWitness;
    v28 = v17;
    v18 = type metadata accessor for ReconciliationID();
    swift_storeEnumTagMultiPayload();
    (*(*(v18 - 8) + 56))(v15, 0, 1, v18);
    return (*(*(AssociatedTypeWitness - 8) + 8))(v5, AssociatedTypeWitness);
  }

  else
  {
    v20 = swift_getAssociatedConformanceWitness();
    v21 = swift_getAssociatedConformanceWitness();
    v25 = AssociatedTypeWitness;
    v26 = v13;
    v27 = v20;
    v28 = v21;
    v22 = type metadata accessor for ReconciliationID();
    (*(*(v22 - 8) + 56))(v24, 1, 1, v22);
    return (*(v23 + 8))(v5, a1);
  }
}

uint64_t sub_1CF078FAC(void *a1)
{
  v3 = a1[5];
  v47 = a1[3];
  v4 = type metadata accessor for ReconciliationSideMutation();
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44 - v6;
  v8 = a1[2];
  v9 = a1[4];
  v10 = type metadata accessor for ReconciliationSideMutation();
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v44 - v13;
  v15 = *(a1 - 1);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v1, a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 9:
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v36 = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v38 = swift_getAssociatedConformanceWitness();
      v48 = AssociatedTypeWitness;
      v49 = v36;
      v50 = AssociatedConformanceWitness;
      v51 = v38;
      v39 = type metadata accessor for ReconciliationID();
      v40 = v46;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v42 = v45;
      (*(v45 + 32))(v7, &v18[*(TupleTypeMetadata2 + 48)], v40);
      v27 = sub_1CF07CB20(v40);
      (*(v42 + 8))(v7, v40);
      (*(*(v39 - 8) + 8))(v18, v39);
      break;
    case 12:
      v28 = swift_getAssociatedTypeWitness();
      v29 = swift_getAssociatedTypeWitness();
      v30 = swift_getAssociatedConformanceWitness();
      v31 = swift_getAssociatedConformanceWitness();
      v48 = v28;
      v49 = v29;
      v50 = v30;
      v51 = v31;
      v32 = type metadata accessor for ReconciliationID();
      v33 = &v18[*(swift_getTupleTypeMetadata2() + 48)];
      v27 = *v33;
      v34 = v33[1];
      (*(*(v32 - 8) + 8))(v18, v32);
      break;
    case 10:
      v20 = swift_getAssociatedTypeWitness();
      v21 = swift_getAssociatedTypeWitness();
      v22 = swift_getAssociatedConformanceWitness();
      v23 = swift_getAssociatedConformanceWitness();
      v48 = v20;
      v49 = v21;
      v50 = v22;
      v51 = v23;
      v24 = type metadata accessor for ReconciliationID();
      v25 = swift_getTupleTypeMetadata2();
      v26 = v44;
      (*(v44 + 32))(v14, &v18[*(v25 + 48)], v10);
      v27 = sub_1CF07CB20(v10);
      (*(v26 + 8))(v14, v10);
      (*(*(v24 - 8) + 8))(v18, v24);
      break;
    default:
      (*(v15 + 8))(v18, a1);
      return 0;
  }

  return v27;
}

uint64_t sub_1CF079564(unint64_t a1, char a2, uint64_t a3, unsigned __int8 a4)
{
  if (a2 == -1 || a2 == 2 && a1 == 3)
  {
    if (a4 <= 1u)
    {
      return 3;
    }

    return a3;
  }

  if (a4 < 2u)
  {
    return a1;
  }

  if (a4 == 2)
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        return a3;
      }

      v5 = a3 == 3;
      a3 = a1;
      if (v5)
      {
        return a3;
      }
    }

    else if (a3)
    {
      if (a3 == 1 && a2 == 2 && a1 < 2)
      {
        return 1;
      }
    }

    else if (a2 == 2 && a1 < 2)
    {
      return a1;
    }
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF079694@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  v12 = *a5;
  v13 = *a6;
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  v14 = type metadata accessor for ReconciliationTable.CachedEntry();
  v15 = v14[13];
  v16 = type metadata accessor for ItemReconciliation();
  v17 = *(*(v16 - 8) + 32);
  v17(a9 + v15, a3, v16);
  v17(a9 + v14[14], a4, v16);
  v18 = (a9 + v14[15]);
  *v18 = v12;
  v18[1] = v13;
  v19 = a9 + v14[16];
  *v19 = a7;
  *(v19 + 8) = a8;
  v20 = v14[17];
  v21 = sub_1CF9E75D8();
  return (*(*(v21 - 8) + 32))(a9 + v20, a10, v21);
}

BOOL sub_1CF0797FC(uint64_t a1, uint64_t a2)
{
  v160 = a1;
  v3 = *(a2 + 40);
  v4 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1CF9E75D8();
  v152 = *(v6 - 8);
  v153 = v6;
  v7 = *(v152 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v151 = &v130 - v9;
  v155 = *(AssociatedTypeWitness - 8);
  v10 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v161 = &v130 - v11;
  v12 = *(a2 + 32);
  v13 = *(a2 + 16);
  v14 = swift_getAssociatedTypeWitness();
  v162 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v163 = v4;
  *&v164 = v3;
  v16 = swift_getAssociatedConformanceWitness();
  v166 = AssociatedTypeWitness;
  *&v167 = v14;
  *(&v167 + 1) = AssociatedTypeWitness;
  *&v168 = AssociatedConformanceWitness;
  v156 = v16;
  v157 = AssociatedConformanceWitness;
  *(&v168 + 1) = v16;
  v17 = type metadata accessor for ReconciliationID();
  v18 = sub_1CF9E75D8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v140 = *(TupleTypeMetadata2 - 8);
  v19 = *(v140 + 64);
  v20 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v139 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v142 = &v130 - v23;
  v154 = v18;
  v150 = *(v18 - 8);
  v24 = v150[8];
  v25 = MEMORY[0x1EEE9AC00](v22);
  v137 = &v130 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v141 = &v130 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v144 = &v130 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v138 = &v130 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v145 = &v130 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v148 = &v130 - v36;
  v159 = v17;
  v37 = *(v17 - 8);
  v38 = *(v37 + 64);
  v39 = MEMORY[0x1EEE9AC00](v35);
  v41 = &v130 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v130 - v42;
  v44 = sub_1CF9E75D8();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  v47 = MEMORY[0x1EEE9AC00](v44);
  v49 = &v130 - v48;
  v50 = *(v14 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v47);
  *&v165 = &v130 - v52;
  v53 = *(v45 + 16);
  v158 += *(a2 + 56);
  v53(v49);
  v54 = (*(v50 + 48))(v49, 1, v14);
  v147 = v37;
  v146 = v43;
  v143 = v41;
  if (v54 == 1)
  {
    v55 = v159;
    (*(v45 + 8))(v49, v44);
    v57 = v161;
    v56 = v162;
    v58 = v163;
    v59 = v164;
    goto LABEL_3;
  }

  v69 = v165;
  (*(v50 + 32))(v165, v49, v14);
  v133 = v13;
  *&v70 = v13;
  *(&v70 + 1) = v163;
  *&v71 = v162;
  *(&v71 + 1) = v164;
  v168 = v71;
  v167 = v70;
  v135 = type metadata accessor for ReconciliationMutation();
  sub_1CF077DEC(v135, v43);
  v134 = *(v50 + 16);
  v134(v41, v69, v14);
  v72 = v50;
  v73 = v159;
  swift_storeEnumTagMultiPayload();
  v74 = sub_1CF024490(v43, v41, v14, v166);
  v75 = *(v37 + 8);
  v75(v41, v73);
  v132 = v37 + 8;
  v131 = v75;
  v75(v43, v73);
  if ((v74 & 1) == 0)
  {
    v84 = v37;
    v130 = v72;
    v85 = v148;
    sub_1CF078C8C(v135, v148);
    v86 = v145;
    v134(v145, v165, v14);
    swift_storeEnumTagMultiPayload();
    (*(v37 + 56))(v86, 0, 1, v73);
    v87 = *(TupleTypeMetadata2 + 48);
    v88 = v150;
    v89 = v150[2];
    v90 = v142;
    v91 = v85;
    v92 = v154;
    v89(v142, v91, v154);
    v135 = v87;
    v89(&v87[v90], v86, v92);
    v93 = *(v84 + 48);
    v94 = v93(v90, 1, v73);
    v95 = v165;
    if (v94 == 1)
    {
      v96 = v88[1];
      v97 = v86;
      v98 = v154;
      v96(v97, v154);
      v96(v148, v98);
      (*(v130 + 8))(v95, v14);
      v55 = v73;
      if (v93(&v135[v90], 1, v73) == 1)
      {
        v96(v90, v98);
        return 1;
      }
    }

    else
    {
      v111 = v138;
      v112 = v154;
      v89(v138, v90, v154);
      v113 = v135;
      if (v93(&v135[v90], 1, v73) != 1)
      {
        v120 = v146;
        (*(v147 + 32))(v146, &v113[v90], v73);
        LODWORD(v135) = sub_1CF024490(v111, v120, v14, v166);
        v121 = v90;
        v122 = v131;
        v131(v120, v73);
        v123 = v150[1];
        v123(v145, v112);
        v123(v148, v112);
        (*(v130 + 8))(v95, v14);
        v55 = v73;
        v122(v111, v73);
        v123(v121, v112);
        v57 = v161;
        v56 = v162;
        v58 = v163;
        v59 = v164;
        v13 = v133;
        if (v135)
        {
          return 1;
        }

LABEL_3:
        v136 = v14;
        *&v60 = v13;
        *(&v60 + 1) = v58;
        *&v61 = v56;
        *(&v61 + 1) = v59;
        v164 = v61;
        v165 = v60;
        v168 = v61;
        v167 = v60;
        v62 = type metadata accessor for ItemReconciliation();
        v64 = v152;
        v63 = v153;
        v65 = v151;
        (*(v152 + 16))(v151, v158 + *(v62 + 52), v153);
        v66 = v155;
        v67 = v166;
        if ((*(v155 + 48))(v65, 1, v166) == 1)
        {
          (*(v64 + 8))(v65, v63);
          return 0;
        }

        (*(v66 + 32))(v57, v65, v67);
        v168 = v164;
        v167 = v165;
        v76 = type metadata accessor for ReconciliationMutation();
        v77 = v146;
        *&v165 = v76;
        sub_1CF077DEC(v76, v146);
        v78 = v143;
        *&v164 = *(v66 + 16);
        (v164)(v143, v57, v67);
        v79 = v55;
        swift_storeEnumTagMultiPayload();
        v80 = sub_1CF024490(v77, v78, v136, v67);
        v81 = v147;
        v82 = v147 + 8;
        v83 = *(v147 + 8);
        v83(v78, v79);
        v162 = v83;
        v163 = v82;
        v83(v77, v79);
        if (v80)
        {
          (*(v66 + 8))(v161, v166);
          return 1;
        }

        v99 = v144;
        sub_1CF078C8C(v165, v144);
        v100 = v141;
        v101 = v166;
        (v164)(v141, v161, v166);
        swift_storeEnumTagMultiPayload();
        (*(v81 + 56))(v100, 0, 1, v79);
        v102 = *(TupleTypeMetadata2 + 48);
        v103 = v150;
        v104 = v150[2];
        v105 = v139;
        v106 = v99;
        v107 = v154;
        v104(v139, v106, v154);
        *&v165 = v102;
        v104(&v105[v102], v100, v107);
        v108 = *(v81 + 48);
        if (v108(v105, 1, v79) == 1)
        {
          v109 = v103[1];
          v109(v100, v107);
          v109(v144, v107);
          (*(v155 + 8))(v161, v101);
          v110 = v105;
          if (v108(&v105[v165], 1, v79) == 1)
          {
            v109(v105, v107);
            return 1;
          }
        }

        else
        {
          v115 = v137;
          v116 = v107;
          v104(v137, v105, v107);
          v117 = v165;
          v118 = v79;
          v110 = v105;
          if (v108(&v105[v165], 1, v79) != 1)
          {
            v124 = &v105[v117];
            v125 = v146;
            (*(v147 + 32))(v146, v124, v79);
            v126 = sub_1CF024490(v115, v125, v136, v101);
            v127 = v79;
            v128 = v162;
            v162(v125, v127);
            v129 = v150[1];
            v129(v141, v116);
            v129(v144, v116);
            (*(v155 + 8))(v161, v101);
            v128(v115, v118);
            v129(v105, v116);
            return (v126 & 1) != 0;
          }

          v119 = v150[1];
          v119(v141, v116);
          v119(v144, v116);
          (*(v155 + 8))(v161, v101);
          v162(v115, v79);
        }

        (*(v140 + 8))(v110, TupleTypeMetadata2);
        return 0;
      }

      v114 = v150[1];
      v114(v145, v112);
      v114(v148, v112);
      (*(v130 + 8))(v95, v14);
      v55 = v73;
      v131(v111, v73);
    }

    (*(v140 + 8))(v90, TupleTypeMetadata2);
    v57 = v161;
    v56 = v162;
    v58 = v163;
    v59 = v164;
    v13 = v133;
    goto LABEL_3;
  }

  (*(v72 + 8))(v165, v14);
  return 1;
}

uint64_t sub_1CF07A814(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), void *a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(char *, uint64_t, uint64_t))
{
  v339 = a2;
  v340 = a8;
  v307 = a7;
  v299 = a6;
  v328 = a5;
  v337 = a4;
  v338 = a1;
  v325 = a3;
  v341 = a9;
  v10 = *v9;
  v11 = sub_1CF9E6118();
  v302 = *(v11 - 8);
  v303 = v11;
  v12 = *(v302 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v309 = &v292 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v10[12];
  v15 = v10[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_1CF9E75D8();
  v297 = *(v17 - 8);
  v298 = v17;
  v18 = *(v297 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v296 = &v292 - v20;
  v300 = *(AssociatedTypeWitness - 8);
  v21 = *(v300 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v292 = &v292 - v22;
  v23 = v10[13];
  v332 = v9;
  v24 = v10[11];
  v25 = swift_getAssociatedTypeWitness();
  v326 = sub_1CF9E75D8();
  v305 = *(v326 - 8);
  v26 = *(v305 + 64);
  v27 = MEMORY[0x1EEE9AC00](v326);
  v304 = &v292 - v28;
  v306 = *(v25 - 8);
  v29 = *(v306 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v293 = &v292 - v30;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32 = swift_getAssociatedConformanceWitness();
  v301 = AssociatedTypeWitness;
  *&v353 = AssociatedTypeWitness;
  *(&v353 + 1) = v25;
  v308 = v25;
  *&v354 = AssociatedConformanceWitness;
  *(&v354 + 1) = v32;
  v327 = type metadata accessor for ReconciliationID();
  v322 = *(v327 - 8);
  v33 = *(v322 + 64);
  v34 = MEMORY[0x1EEE9AC00](v327);
  v310 = &v292 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v319 = &v292 - v36;
  *&v37 = v15;
  *(&v37 + 1) = v24;
  *&v38 = v14;
  *(&v38 + 1) = v23;
  v353 = v37;
  v354 = v38;
  v39 = type metadata accessor for PersistenceTrigger();
  v317 = *(v39 - 8);
  v318 = v39;
  v40 = *(v317 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v316 = (&v292 - v41);
  v42 = swift_getAssociatedTypeWitness();
  v295 = *(v42 - 8);
  v43 = *(v295 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v315 = &v292 - v44;
  v45 = swift_getAssociatedTypeWitness();
  v294 = *(v45 - 8);
  v46 = *(v294 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v314 = &v292 - v47;
  v48 = swift_getAssociatedConformanceWitness();
  v49 = swift_getAssociatedConformanceWitness();
  v320 = v45;
  v321 = v42;
  *&v353 = v45;
  *(&v353 + 1) = v42;
  v312 = v49;
  v313 = v48;
  *&v354 = v48;
  *(&v354 + 1) = v49;
  v50 = type metadata accessor for FileItemVersion();
  v51 = sub_1CF9E75D8();
  v329 = *(v51 - 8);
  v330 = v51;
  v52 = *(v329 + 64);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v311 = &v292 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x1EEE9AC00](v53);
  v323 = &v292 - v56;
  v324 = v50;
  v331 = *(v50 - 8);
  v57 = *(v331 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v333 = &v292 - v58;
  v334 = swift_getAssociatedTypeWitness();
  v59 = sub_1CF9E75D8();
  v335 = *(v59 - 8);
  v336 = v59;
  v60 = *(v335 + 64);
  v61 = MEMORY[0x1EEE9AC00](v59);
  v63 = &v292 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x1EEE9AC00](v61);
  v66 = &v292 - v65;
  v67 = MEMORY[0x1EEE9AC00](v64);
  v69 = &v292 - v68;
  v70 = MEMORY[0x1EEE9AC00](v67);
  v72 = &v292 - v71;
  v73 = MEMORY[0x1EEE9AC00](v70);
  v75 = &v292 - v74;
  v76 = MEMORY[0x1EEE9AC00](v73);
  v78 = &v292 - v77;
  MEMORY[0x1EEE9AC00](v76);
  v80 = &v292 - v79;
  v81 = type metadata accessor for ReconciliationSideMutation();
  v82 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81);
  v84 = &v292 - v83;
  LODWORD(v337) = *v337;
  (*(v85 + 16))(&v292 - v83, v338, v81);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v145 = *v84;
      v147 = v335;
      v146 = v336;
      v148 = v339;
      (*(v335 + 16))(v78, v339, v336);
      v149 = (*(*(v334 - 8) + 48))(v78, 1);
      (*(v147 + 8))(v78, v146);
      if (v149 == 1)
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 518);
      }

      v150 = type metadata accessor for ItemReconciliationHalf();
      *(v148 + *(v150 + 40)) &= ~v145;
      v151 = *(v150 + 36);
      v152 = *(v148 + v151);
      if ((v152 & 1) == 0)
      {
        return 1;
      }

      *(v148 + v151) = v152 & 0xFFFFFFFFFFFFFFFELL;
      return 1;
    case 2u:
      v131 = type metadata accessor for ItemReconciliationHalf();
      v132 = *(v131 + 36);
      v133 = v339;
      if ((*(v339 + v132) & 9) == 1)
      {
        goto LABEL_37;
      }

      v134 = *(v339 + v132) & 0xFFFFFFFFFFFFFFF6 | 1;
      goto LABEL_36;
    case 3u:
      v135 = *v84;
      v137 = v335;
      v136 = v336;
      v138 = v339;
      (*(v335 + 16))(v72, v339, v336);
      v139 = (*(*(v334 - 8) + 48))(v72, 1);
      (*(v137 + 8))(v72, v136);
      if (v139 == 1)
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 574);
      }

      v140 = *(type metadata accessor for ItemReconciliationHalf() + 36);
      v141 = *(v138 + v140);
      if (v135)
      {
        result = 0;
        if ((v141 & 2) == 0)
        {
          *(v138 + v140) = v141 | 2;
        }
      }

      else
      {
        if ((v141 & 0x22) == 0)
        {
          return 0;
        }

        result = 0;
        *(v138 + v140) = v141 & 0xFFFFFFFFFFFFFFDDLL;
      }

      return result;
    case 4u:
      v117 = *v84;
      v119 = v335;
      v118 = v336;
      v120 = v339;
      (*(v335 + 16))(v66, v339, v336);
      v121 = (*(*(v334 - 8) + 48))(v66, 1);
      (*(v119 + 8))(v66, v118);
      if (v121 == 1)
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 593);
      }

      v122 = *(type metadata accessor for ItemReconciliationHalf() + 36);
      v123 = *(v120 + v122);
      result = 0;
      if (v117)
      {
        if ((v123 & 4) == 0)
        {
          *(v120 + v122) = v123 | 4;
        }
      }

      else if ((v123 & 4) != 0)
      {
        *(v120 + v122) = v123 & 0xFFFFFFFFFFFFFFFBLL;
      }

      return result;
    case 5u:
      v153 = *v84;
      v155 = v335;
      v154 = v336;
      v100 = v339;
      (*(v335 + 16))(v63, v339, v336);
      v156 = (*(*(v334 - 8) + 48))(v63, 1);
      (*(v155 + 8))(v63, v154);
      if (v156 == 1)
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 602);
      }

      v104 = *(type metadata accessor for ItemReconciliationHalf() + 36);
      v157 = *(v100 + v104);
      if (v153)
      {
        result = 0;
        if ((v157 & 0x10) != 0)
        {
          return result;
        }

        v106 = v157 | 0x10;
      }

      else
      {
        if ((v157 & 0x30) == 0)
        {
          return 0;
        }

        result = 0;
        v106 = v157 & 0xFFFFFFFFFFFFFFCFLL;
      }

      goto LABEL_96;
    case 6u:
      v174 = *v84;
      v175 = *(type metadata accessor for ItemReconciliationHalf() + 36);
      v176 = *(v339 + v175);
      if (v174 == 1)
      {
        result = 0;
        if ((v176 & 0x20) == 0)
        {
          *(v339 + v175) = v176 | 0x20;
        }
      }

      else
      {
        result = 0;
        if ((v176 & 0x20) != 0)
        {
          *(v339 + v175) = v176 & 0xFFFFFFFFFFFFFFDFLL;
        }
      }

      return result;
    case 7u:
      v142 = *v84;
      v143 = *(type metadata accessor for ItemReconciliationHalf() + 36);
      v144 = *(v339 + v143);
      if (v142 == 1)
      {
        result = 0;
        if ((v144 & 0x40) == 0)
        {
          *(v339 + v143) = v144 | 0x40;
        }
      }

      else
      {
        result = 0;
        if ((v144 & 0x40) != 0)
        {
          *(v339 + v143) = v144 & 0xFFFFFFFFFFFFFFBFLL;
        }
      }

      return result;
    case 8u:
      v185 = v324;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      LODWORD(v337) = v84[*(TupleTypeMetadata3 + 48)];
      LODWORD(v338) = v84[*(TupleTypeMetadata3 + 64)];
      v187 = v331;
      (*(v331 + 32))(v333, v84, v185);
      v189 = v335;
      v188 = v336;
      v190 = v339;
      (*(v335 + 16))(v75, v339, v336);
      v191 = (*(*(v334 - 8) + 48))(v75, 1);
      (*(v189 + 8))(v75, v188);
      if (v191 == 1)
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 557);
      }

      v192 = v190 + *(type metadata accessor for ItemReconciliationHalf() + 48);
      v194 = v329;
      v193 = v330;
      v195 = v323;
      (*(v329 + 16))(v323, v192, v330);
      v196 = *(v187 + 48);
      v197 = v196(v195, 1, v185);
      (*(v194 + 8))(v195, v193);
      if (v197 == 1)
      {
        v198 = v314;
        v199 = *(v313 + 40);
        v200 = v333;
        v341 = v196;
        v201 = v320;
        v199(v333, v320, v313);
        v202 = &v200[*(v185 + 56)];
        v203 = v315;
        v204 = v321;
        (*(v312 + 40))(v202, v321, v312);
        v205 = v311;
        v206 = v203;
        v187 = v331;
        v207 = v201;
        v196 = v341;
        sub_1CF023878(v198, 0, v206, 0, 0, 0, v207, v204, v311);
        (*(v187 + 56))(v205, 0, 1, v185);
        (*(v329 + 40))(v192, v205, v330);
      }

      if (v337 && !v196(v192, 1, v185))
      {
        (*(v294 + 24))(v192, v333, v320);
      }

      if (v338 && !v196(v192, 1, v185))
      {
        (*(v295 + 24))(&v192[*(v185 + 56)], &v333[*(v185 + 56)], v321);
      }

      v208 = *(v187 + 8);
      v209 = v333;
      v210 = v185;
      goto LABEL_76;
    case 9u:
      v128 = *v84;
      v129 = *(type metadata accessor for ItemReconciliationHalf() + 72);
      v130 = v339;

      result = 0;
      *(v130 + v129) = v128;
      return result;
    case 0xAu:
      v177 = *v84;
      v178 = type metadata accessor for ItemReconciliationHalf();
      v179 = *(v178 + 52);
      v180 = v339;
      v181 = *(v339 + v179);
      if (v181 <= 1)
      {
        v182 = v327;
        v183 = v328;
        v184 = v326;
        if (!*(v339 + v179))
        {
          if (v177 - 1 < 3)
          {
            goto LABEL_114;
          }

LABEL_140:
          if (v181 != v177)
          {
            v269 = fpfs_current_or_default_log();
            v270 = v309;
            sub_1CF9E6128();
            v271 = sub_1CF9E6108();
            v272 = sub_1CF9E72A8();
            if (os_log_type_enabled(v271, v272))
            {
              v273 = 0xED00006465747365;
              v274 = 0x7265746E49746F6ELL;
              v275 = swift_slowAlloc();
              v276 = swift_slowAlloc();
              *&v353 = v276;
              *v275 = 136446466;
              v277 = v177;
              if (v181 <= 1)
              {
                v278 = 0x7265746E49746F6ELL;
                v279 = 0xED00006465747365;
                if (v181)
                {
                  v278 = 0x746F687370616E73;
                  v279 = 0xEC000000676E6974;
                }
              }

              else if (v181 == 2)
              {
                v279 = 0xE800000000000000;
                v278 = 0x676E696863746177;
              }

              else if (v181 == 3)
              {
                v278 = 0xD000000000000011;
                v279 = 0x80000001CFA45AC0;
              }

              else
              {
                v279 = 0x80000001CFA45AA0;
                v278 = 0xD000000000000015;
              }

              v289 = sub_1CEFD0DF0(v278, v279, &v353);

              *(v275 + 4) = v289;
              *(v275 + 12) = 2082;
              if (v277 <= 1)
              {
                v290 = v309;
                if (v277)
                {
                  v274 = 0x746F687370616E73;
                  v273 = 0xEC000000676E6974;
                }
              }

              else
              {
                v290 = v309;
                if (v277 == 2)
                {
                  v273 = 0xE800000000000000;
                  v274 = 0x676E696863746177;
                }

                else if (v277 == 3)
                {
                  v274 = 0xD000000000000011;
                  v273 = 0x80000001CFA45AC0;
                }

                else
                {
                  v273 = 0x80000001CFA45AA0;
                  v274 = 0xD000000000000015;
                }
              }

              v291 = sub_1CEFD0DF0(v274, v273, &v353);

              *(v275 + 14) = v291;
              _os_log_impl(&dword_1CEFC7000, v271, v272, "❌  invalid transition %{public}s -> %{public}s", v275, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1D386CDC0](v276, -1, -1);
              MEMORY[0x1D386CDC0](v275, -1, -1);

              (*(v302 + 8))(v290, v303);
            }

            else
            {

              (*(v302 + 8))(v270, v303);
            }
          }

          return 3;
        }

        if (v177 == 1)
        {
          goto LABEL_140;
        }
      }

      else
      {
        v182 = v327;
        v183 = v328;
        v184 = v326;
        if (v181 != 2)
        {
          if (v181 == 3)
          {
            if (v177 >= 3)
            {
              goto LABEL_140;
            }

            goto LABEL_116;
          }

          if (v177 - 1 >= 2)
          {
            if (!v177)
            {
              return 3;
            }

            goto LABEL_140;
          }

LABEL_114:
          *(v339 + v179) = v177;
          goto LABEL_122;
        }

        if (v177 && v177 != 3)
        {
          if (v177 == 1 && v337 != 1 && v337 != 4)
          {
            goto LABEL_114;
          }

          goto LABEL_140;
        }
      }

LABEL_116:
      *(v339 + v179) = v177;
      if (!v177)
      {
        v212 = v182;
        v213 = v180 + *(v178 + 68);
        v214 = *(v213 + 1);
        v353 = *v213;
        v354 = v214;
        v215 = *(v213 + 3);
        v355 = *(v213 + 2);
        v356 = v215;
        v349 = v353;
        *&v350 = *(v213 + 2);
        v216 = *(&v214 + 1);
        v342 = v355;
        v343 = v215;
        if (*(&v214 + 1) >> 60 != 11)
        {
          Strong = swift_weakLoadStrong();
          if (Strong)
          {
            v218 = Strong;
            v219 = v316;
            *v316 = v349;
            *(v219 + 2) = v350;
            *(v219 + 3) = v216;
            v220 = v343;
            v219[2] = v342;
            v219[3] = v220;
            v221 = v318;
            swift_storeEnumTagMultiPayload();
            v222 = *(*v218 + 312);
            v345 = v353;
            v346 = v354;
            v347 = v355;
            v348 = v356;
            sub_1CF023C28(&v353, v344);
            sub_1CF1AE1DC(&v345, v344);
            v222(v219);

            sub_1CEFCCC44(&v353, &unk_1EC4BF260, &unk_1CFA01B60);
            v223 = v221;
            v212 = v327;
            v183 = v328;
            (*(v317 + 8))(v219, v223);
          }

          v224 = *(v213 + 1);
          v345 = *v213;
          v346 = v224;
          v225 = *(v213 + 3);
          v347 = *(v213 + 2);
          v348 = v225;
          sub_1CEFCCC44(&v345, &unk_1EC4BF260, &unk_1CFA01B60);
          *v213 = 0;
          *(v213 + 1) = 0;
          *(v213 + 2) = 0;
          *(v213 + 3) = 0xB000000000000000;
          *(v213 + 2) = 0u;
          *(v213 + 3) = 0u;
        }

        v184 = v326;
        v182 = v212;
      }

LABEL_122:
      LODWORD(v340) = v181;
      LODWORD(v341) = v177;
      v226 = v322;
      v227 = v322 + 16;
      v228 = *(v322 + 16);
      v229 = v319;
      v228(v319, v183, v182);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v231 = *(v226 + 8);
      v231(v229, v182);
      if (EnumCaseMultiPayload != 1)
      {
        v337 = v231;
        v338 = v227;
        v339 = v228;
        v232 = v304;
        v233 = v305;
        (*(v305 + 16))(v304, v307, v184);
        v234 = v306;
        v235 = v308;
        if ((*(v306 + 48))(v232, 1, v308) != 1)
        {
          v252 = v293;
          (*(v234 + 32))(v293, v232, v235);
          v253 = swift_weakLoadStrong();
          v242 = v235;
          v254 = v234;
          if (v253)
          {
            v255 = v253;
            v256 = v182;
            *&v353 = v182;
            *(&v353 + 1) = sub_1CF9E75D8();
            *&v354 = &type metadata for ContentStatus;
            *(&v354 + 1) = &type metadata for ContentStatus;
            TupleTypeMetadata = swift_getTupleTypeMetadata();
            v258 = TupleTypeMetadata[12];
            v259 = TupleTypeMetadata[16];
            v337 = TupleTypeMetadata[20];
            v260 = v316;
            v339(v316, v183, v256);
            (*(v254 + 16))(&v260[v258], v252, v242);
            swift_storeEnumTagMultiPayload();
            (*(v322 + 56))(&v260[v258], 0, 1, v256);
            v260[v259] = v340;
            *(v337 + v260) = v341;
            v261 = v318;
            swift_storeEnumTagMultiPayload();
            (*(*v255 + 312))(v260);

            (*(v317 + 8))(v260, v261);
          }

          v208 = *(v254 + 8);
          v209 = v252;
LABEL_149:
          v210 = v242;
LABEL_76:
          v208(v209, v210);
          return 0;
        }

        (*(v233 + 8))(v232, v184);
        v228 = v339;
        v231 = v337;
      }

      v236 = v310;
      v228(v310, v183, v182);
      v237 = swift_getEnumCaseMultiPayload();
      v231(v236, v182);
      v238 = v341;
      if (v237 != 1)
      {
        goto LABEL_128;
      }

      v339 = v228;
      v240 = v296;
      v239 = v297;
      v241 = v298;
      (*(v297 + 16))(v296, v299, v298);
      v243 = v300;
      v242 = v301;
      if ((*(v300 + 48))(v240, 1, v301) != 1)
      {
        v280 = v292;
        (*(v243 + 32))(v292, v240, v242);
        v281 = swift_weakLoadStrong();
        if (!v281)
        {
          (*(v243 + 8))(v280, v242);
          return 0;
        }

        v282 = v281;
        *&v353 = v182;
        *(&v353 + 1) = sub_1CF9E75D8();
        *&v354 = &type metadata for ContentStatus;
        *(&v354 + 1) = &type metadata for ContentStatus;
        v283 = swift_getTupleTypeMetadata();
        v284 = v243;
        v285 = v283[12];
        v286 = v283[16];
        v338 = v283[20];
        v287 = v316;
        v339(v316, v328, v182);
        (*(v284 + 16))(&v287[v285], v280, v242);
        swift_storeEnumTagMultiPayload();
        (*(v322 + 56))(&v287[v285], 0, 1, v182);
        v287[v286] = v340;
        v287[v338] = v341;
        v288 = v318;
        swift_storeEnumTagMultiPayload();
        (*(*v282 + 312))(v287);

        (*(v317 + 8))(v287, v288);
        v208 = *(v284 + 8);
        v209 = v280;
        goto LABEL_149;
      }

      (*(v239 + 8))(v240, v241);
      v238 = v341;
      v228 = v339;
LABEL_128:
      result = swift_weakLoadStrong();
      if (!result)
      {
        return result;
      }

      v244 = result;
      *&v353 = v182;
      *(&v353 + 1) = sub_1CF9E75D8();
      *&v354 = &type metadata for ContentStatus;
      *(&v354 + 1) = &type metadata for ContentStatus;
      v245 = swift_getTupleTypeMetadata();
      v246 = v245[12];
      v247 = v228;
      v248 = v245[16];
      v249 = v245[20];
      v250 = v316;
      v247(v316, v328, v182);
      (*(v322 + 56))(&v250[v246], 1, 1, v182);
      v250[v248] = v340;
      v250[v249] = v238;
      v251 = v318;
      swift_storeEnumTagMultiPayload();
      (*(*v244 + 312))(v250);

      (*(v317 + 8))(v250, v251);
      return 0;
    case 0xBu:
      v108 = *v84;
      v107 = *(v84 + 1);
      v109 = v84[16];
      v110 = type metadata accessor for ItemReconciliationHalf();
      v111 = v339 + *(v110 + 64);
      v112 = *v111;
      v113 = *(v111 + 1);
      v114 = v111[16];
      if (v114 > 2)
      {
        if (v114 != 3)
        {
          if (v114 != 4 || v112 != 1 || v113 || v109 != 2)
          {
            goto LABEL_106;
          }

LABEL_105:
          result = 0;
          *v111 = v108;
          *(v111 + 1) = v107;
          v111[16] = v109;
          return result;
        }

        if (v109 != 2)
        {
          goto LABEL_106;
        }

        v211 = 3;
      }

      else
      {
        if (v114 != 1)
        {
          if (v114 == 2 && (v109 == 3 || v109 == 4 && __PAIR128__(v107, v108) < 2))
          {
            sub_1CF03D7A8(v112, v113, 2u);
            v115 = *(v110 + 36);
            v116 = *(v339 + v115);
            if ((v116 & 8) != 0)
            {
              *(v339 + v115) = v116 & 0xFFFFFFFFFFFFFFF7;
            }

            goto LABEL_105;
          }

LABEL_106:
          sub_1CF03D7A8(v108, v107, v109);
          return 3;
        }

        if (v109 != 2)
        {
          goto LABEL_106;
        }

        v211 = 1;
      }

      sub_1CF03D7A8(v112, v113, v211);
      goto LABEL_105;
    case 0xCu:
      v124 = *v84;
      v125 = v84[1];
      v126 = v339;
      if (v124 != 5 && *(v126 + *(type metadata accessor for ItemReconciliationHalf() + 44)) != v124)
      {
        return 3;
      }

      v127 = type metadata accessor for ItemReconciliationHalf();
      *(v126 + *(v127 + 44)) = v125;
      result = 0;
      if (((1 << v125) & 0x2E) == 0)
      {
        result = 0;
        *(v126 + *(v127 + 60)) = 0;
      }

      return result;
    case 0xDu:
      v158 = *(v84 + 1);
      v353 = *v84;
      v354 = v158;
      v159 = *(v84 + 3);
      v355 = *(v84 + 2);
      v356 = v159;
      v160 = v84[65];
      v161 = v339;
      if (v84[64] == 1 && !v84[65])
      {
        goto LABEL_136;
      }

      v162 = (v161 + *(type metadata accessor for ItemReconciliationHalf() + 68));
      v163 = v162[1];
      v345 = *v162;
      v346 = v163;
      v164 = v162[3];
      v347 = v162[2];
      v348 = v164;
      v350 = v164;
      v351 = v345;
      v352 = *(v162 + 2);
      v165 = *(&v163 + 1);
      v349 = v347;
      if (*(&v163 + 1) >> 60 == 11)
      {
        goto LABEL_136;
      }

      v166 = swift_weakLoadStrong();
      v167 = v166;
      if (v160)
      {
        if (!v166)
        {
          goto LABEL_136;
        }

        v168 = v327;
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        v170 = v316;
        v171 = v316 + *(TupleTypeMetadata2 + 48);
        (*(v322 + 16))(v316, v328, v168);
        v172 = v350;
        *v171 = v351;
        *(v171 + 2) = v352;
        *(v171 + 3) = v165;
        *(v171 + 2) = v349;
        *(v171 + 3) = v172;
        v173 = v318;
      }

      else
      {
        if (!v166)
        {
          goto LABEL_136;
        }

        v262 = v350;
        v170 = v316;
        *v316 = v351;
        *(v170 + 2) = v352;
        *(v170 + 3) = v165;
        v170[2] = v349;
        v170[3] = v262;
        v173 = v318;
      }

      swift_storeEnumTagMultiPayload();
      v263 = *(*v167 + 312);
      v344[0] = v345;
      v344[1] = v346;
      v344[2] = v347;
      v344[3] = v348;
      sub_1CF023C28(&v345, &v342);
      sub_1CF1AE1DC(v344, &v342);
      v263(v170);

      sub_1CEFCCC44(&v345, &unk_1EC4BF260, &unk_1CFA01B60);
      (*(v317 + 8))(v170, v173);
LABEL_136:
      v264 = (v161 + *(type metadata accessor for ItemReconciliationHalf() + 68));
      v265 = v264[1];
      v345 = *v264;
      v346 = v265;
      v266 = v264[3];
      v347 = v264[2];
      v348 = v266;
      v267 = v356;
      v264[2] = v355;
      v264[3] = v267;
      v268 = v354;
      *v264 = v353;
      v264[1] = v268;
      sub_1CF023C28(&v353, v344);
      sub_1CEFCCC44(&v345, &unk_1EC4BF260, &unk_1CFA01B60);
      if (*(&v354 + 1) >> 60 == 11)
      {
        return 0;
      }

      sub_1CEFCCC44(&v353, &unk_1EC4BF260, &unk_1CFA01B60);
      return 1;
    case 0xEu:
      v97 = *v84;
      v99 = v335;
      v98 = v336;
      v100 = v339;
      (*(v335 + 16))(v69, v339, v336);
      v101 = (*(*(v334 - 8) + 48))(v69, 1);
      (*(v99 + 8))(v69, v98);
      if (v101 == 1)
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 584);
      }

      v102 = swift_weakLoadStrong();
      if (!v102)
      {
        __break(1u);
LABEL_167:
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 508);
      }

      v103 = (*(*v102 + 152))(v102);

      v104 = *(type metadata accessor for ItemReconciliationHalf() + 36);
      v105 = *(v100 + v104);
      result = 0;
      if ((((v103 & 0x4000) != 0) & v97) != 0)
      {
        if ((v105 & 0x80) != 0)
        {
          return result;
        }

        v106 = v105 | 0x80;
      }

      else
      {
        if ((v105 & 0x80) == 0)
        {
          return result;
        }

        v106 = v105 & 0xFFFFFFFFFFFFFF7FLL;
      }

LABEL_96:
      *(v100 + v104) = v106;
      return result;
    case 0xFu:
      v131 = type metadata accessor for ItemReconciliationHalf();
      v132 = *(v131 + 36);
      v133 = v339;
      if ((*(v339 + v132) & 9) == 8)
      {
        goto LABEL_37;
      }

      v134 = ~*(v339 + v132) & 8 | *(v339 + v132) & 0xFFFFFFFFFFFFFFFELL;
LABEL_36:
      *(v133 + v132) = v134;
LABEL_37:
      result = 0;
      *(v133 + *(v131 + 40)) = 0;
      return result;
    case 0x10u:
      v96 = *(type metadata accessor for ItemReconciliationHalf() + 60);
      result = 1;
      *(v339 + v96) = 1;
      return result;
    default:
      v86 = *v84;
      v88 = v335;
      v87 = v336;
      v89 = v339;
      (*(v335 + 16))(v80, v339, v336);
      v90 = (*(*(v334 - 8) + 48))(v80, 1);
      (*(v88 + 8))(v80, v87);
      if (v90 == 1)
      {
        goto LABEL_167;
      }

      if ((v86 & ~*v325) != 0)
      {
        *v325 |= v86;
      }

      if (qword_1EDEABDE0 != -1)
      {
        swift_once();
      }

      v91 = v86 & 0xFFFFFFFFFF7FFFEFLL & (qword_1EDEABDE8 | 0x409000000C000);
      v92 = type metadata accessor for ItemReconciliationHalf();
      *(v89 + *(v92 + 40)) |= v91;
      v93 = *(v92 + 36);
      v94 = *(v89 + v93);
      if ((v94 & 9) == 0)
      {
        return 1;
      }

      *(v89 + v93) = v94 & 0xFFFFFFFFFFFFFFF6;
      return 1;
  }
}