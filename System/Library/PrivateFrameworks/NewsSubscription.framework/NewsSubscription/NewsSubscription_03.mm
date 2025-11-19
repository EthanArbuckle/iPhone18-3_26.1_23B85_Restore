void sub_1D7789FC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7789B30();
    v7 = a3(a1, &type metadata for HideMyEmailShareSelection.Keys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D778A02C()
{
  result = qword_1EE08EC18;
  if (!qword_1EE08EC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08EC18);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16NewsSubscription25HideMyEmailShareSelectionO(uint64_t a1)
{
  if ((*(a1 + 48) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 48) & 3;
  }
}

uint64_t sub_1D778A0B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_1D778A0FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D778A150(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for HideMyEmailShareSelection.Keys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HideMyEmailShareSelection.Keys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D778A2FC()
{
  sub_1D78B5D14();
}

uint64_t sub_1D778A400@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D778AB50();
  *a1 = result;
  return result;
}

void sub_1D778A430(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000657079546ELL;
  v4 = 0x6F697463656C6553;
  v5 = 0xEA00000000006C69;
  v6 = 0x616D4579786F7270;
  v7 = 0x6E69616D6F64;
  if (v2 != 4)
  {
    v7 = 0x64496D616574;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xE600000000000000;
  }

  v8 = 0xE700000000000000;
  v9 = 0x6E776F6E6B6E75;
  if (v2 != 1)
  {
    v9 = 0x69616D456C616572;
    v8 = 0xE90000000000006CLL;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_1D778A4FC()
{
  v1 = *v0;
  v2 = 0x6F697463656C6553;
  v3 = 0x616D4579786F7270;
  v4 = 0x6E69616D6F64;
  if (v1 != 4)
  {
    v4 = 0x64496D616574;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E776F6E6B6E75;
  if (v1 != 1)
  {
    v5 = 0x69616D456C616572;
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

uint64_t sub_1D778A5C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D778AB50();
  *a1 = result;
  return result;
}

uint64_t sub_1D778A5F8(uint64_t a1)
{
  v2 = sub_1D7789B30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D778A634(uint64_t a1)
{
  v2 = sub_1D7789B30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D778A674()
{
  result = qword_1EC9C9C08;
  if (!qword_1EC9C9C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9C08);
  }

  return result;
}

uint64_t sub_1D778A6D4()
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

uint64_t sub_1D778A790()
{
  sub_1D78B5D14();
}

uint64_t sub_1D778A838()
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

uint64_t sub_1D778A8F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D778ABF0();
  *a1 = result;
  return result;
}

void sub_1D778A920(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE500000000000000;
  v5 = 0x6572616873;
  if (*v1 != 2)
  {
    v5 = 1701079400;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x616853746F4E6F64;
    v2 = 0xEA00000000006572;
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

unint64_t sub_1D778A99C()
{
  result = qword_1EC9C9C10;
  if (!qword_1EC9C9C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9C10);
  }

  return result;
}

unint64_t sub_1D778AAA4()
{
  result = qword_1EE08EC08;
  if (!qword_1EE08EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08EC08);
  }

  return result;
}

unint64_t sub_1D778AAFC()
{
  result = qword_1EE08EC10;
  if (!qword_1EE08EC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08EC10);
  }

  return result;
}

uint64_t sub_1D778AB50()
{
  v0 = sub_1D78B6594();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D778AB9C()
{
  result = qword_1EE08EC20;
  if (!qword_1EE08EC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08EC20);
  }

  return result;
}

uint64_t sub_1D778ABF0()
{
  v0 = sub_1D78B6594();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

id sub_1D778ACA0()
{
  sub_1D778AF9C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78BCB50;
  v1 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v2 = sub_1D773F004(0, &qword_1EE08FC10);
  v3 = v1;
  *(inited + 40) = sub_1D78B61B4();
  v4 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v2;
  *(inited + 72) = v4;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 labelColor];
  *(inited + 104) = sub_1D773F004(0, &qword_1EE08FC00);
  *(inited + 80) = v7;
  sub_1D77FED68(inited);
  swift_setDeallocating();
  sub_1D778AFF4();
  swift_arrayDestroy();
  v8 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v9 = sub_1D78B5C44();
  type metadata accessor for Key(0);
  sub_1D778B060();
  v10 = sub_1D78B5BB4();

  v11 = [v8 initWithString:v9 attributes:v10];

  return v11;
}

void sub_1D778AE84(void *a1)
{
  v2 = objc_opt_self();
  v3 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.97254902 alpha:1.0];
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0274509804 alpha:1.0];
  v5 = [v2 ts:v3 dynamicColor:v4 withDarkStyleVariant:?];

  [a1 setBackgroundColor_];
  v6 = [a1 layer];
  [v6 setCornerRadius_];
}

void sub_1D778AF9C()
{
  if (!qword_1EE08FA30)
  {
    sub_1D778AFF4();
    v0 = sub_1D78B66F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE08FA30);
    }
  }
}

void sub_1D778AFF4()
{
  if (!qword_1EE08FD30)
  {
    type metadata accessor for Key(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE08FD30);
    }
  }
}

unint64_t sub_1D778B060()
{
  result = qword_1EE08FD60;
  if (!qword_1EE08FD60)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08FD60);
  }

  return result;
}

uint64_t PaywallPurchaseModelFactory.init(offerManager:configurationManager:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void PaywallPurchaseModelFactory.purchaseModel(for:tag:)(unsigned __int8 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = &v136;
  v8 = type metadata accessor for OfferAction();
  v9 = *(v8 - 8);
  v107 = v8;
  v108 = v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v101 - v13;
  v15 = *a1;
  v16 = v3[1];
  v17 = v3[2];
  v18 = 1 << (v15 >> 4);
  if ((v18 & 0x1B3) == 0)
  {
    if ((v18 & 0xC) != 0)
    {
      if (a2)
      {
        v23 = [a2 prefetchPurchaseOffer];
        if (v23)
        {
          v24 = v23;
          v25 = [v23 purchaseID];

          if (v25)
          {
            v26 = sub_1D78B5C74();
            v27 = a3;
            v29 = v28;

            *&v109 = v26;
            *(&v109 + 1) = v29;
            sub_1D778CF84(&v109);
            v190 = v110[9];
            v191 = v110[10];
            v192 = v111;
            v186 = v110[5];
            v187 = v110[6];
            v189 = v110[8];
            v188 = v110[7];
            v182 = v110[1];
            v183 = v110[2];
            v185 = v110[4];
            v184 = v110[3];
            v181 = v110[0];
            v180 = v109;
            nullsub_1(&v180);
            v30 = v191;
            *(v27 + 160) = v190;
            *(v27 + 176) = v30;
            *(v27 + 192) = v192;
            v31 = v187;
            *(v27 + 96) = v186;
            *(v27 + 112) = v31;
            v32 = v189;
            *(v27 + 128) = v188;
            *(v27 + 144) = v32;
            v33 = v183;
            *(v27 + 32) = v182;
            *(v27 + 48) = v33;
            v34 = v185;
            *(v27 + 64) = v184;
            *(v27 + 80) = v34;
            v35 = v181;
            *v27 = v180;
            *(v27 + 16) = v35;
            return;
          }
        }
      }

      v109 = 0uLL;
      sub_1D778CF84(&v109);
      goto LABEL_65;
    }

    if (v15 == 96)
    {
LABEL_44:
      sub_1D778CCE8(&v180);
LABEL_66:
      v69 = v191;
      *(a3 + 160) = v190;
      *(a3 + 176) = v69;
      *(a3 + 192) = v192;
      v70 = v187;
      *(a3 + 96) = v186;
      *(a3 + 112) = v70;
      v71 = v189;
      *(a3 + 128) = v188;
      *(a3 + 144) = v71;
      v72 = v183;
      *(a3 + 32) = v182;
      *(a3 + 48) = v72;
      v73 = v185;
      *(a3 + 64) = v184;
      *(a3 + 80) = v73;
      v74 = v181;
      *a3 = v180;
      *(a3 + 16) = v74;
      return;
    }
  }

  v19 = *v3;
  ObjectType = swift_getObjectType();
  LOBYTE(v109) = v15;
  v21 = ObjectType;
  v22 = Paywall.PaywallType.fcPaywallType.getter();
  sub_1D7873170(v22, &v147);
  (*(v16 + 32))(&v180, &v147, v21, v16);
  v166 = v188;
  v167 = v189;
  v168 = v190;
  v162 = v184;
  v163 = v185;
  v165 = v187;
  v164 = v186;
  v158 = v180;
  v159 = v181;
  v161 = v183;
  v160 = v182;
  v177 = v188;
  v178 = v189;
  v179 = v190;
  v173 = v184;
  v174 = v185;
  v176 = v187;
  v175 = v186;
  v169 = v180;
  v170 = v181;
  v172 = v183;
  v171 = v182;
  if (sub_1D775F3CC(&v169) == 1)
  {
LABEL_47:
    LOBYTE(v180) = 4;
    (*(v16 + 40))(&v136, &v180, v21, v16);
    v155 = v144;
    v156 = v145;
    v157 = v146;
    v151 = v140;
    v152 = v141;
    v153 = v142;
    v154 = v143;
    v147 = v136;
    v148 = v137;
    v149 = v138;
    v150 = v139;
    if (sub_1D775F3CC(&v147) == 1)
    {
      goto LABEL_50;
    }

    v188 = v155;
    v189 = v156;
    *&v190 = v157;
    v184 = v151;
    v185 = v152;
    v187 = v154;
    v186 = v153;
    v180 = v147;
    v181 = v148;
    v183 = v150;
    v182 = v149;
    v133 = v144;
    v134 = v145;
    v135 = v146;
    v129 = v140;
    v130 = v141;
    v131 = v142;
    v132 = v143;
    v125 = v136;
    v126 = v137;
    v127 = v138;
    v128 = v139;
    sub_1D778CEAC(&v125, &v109);
    if (Offer.isLegacyOffer.getter())
    {
      sub_1D7782600(&v136);
LABEL_50:
      v62 = [v17 configuration];
      if (!v62)
      {
        __break(1u);
        return;
      }

      v63 = v62;
      if ([v62 respondsToSelector_])
      {
        v64 = [v63 paidBundleConfig];
        swift_unknownObjectRelease();
        v65 = [v64 offeredBundlePurchaseIDs];

        if (v65)
        {
          v43 = sub_1D78B5EB4();

          goto LABEL_56;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v43 = MEMORY[0x1E69E7CC0];
LABEL_56:
      v38 = a3;
      if (qword_1EE08FB98 == -1)
      {
        goto LABEL_57;
      }

      goto LABEL_85;
    }

    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D78B60A4();
    sub_1D78B42C4();
    sub_1D7782600(&v158);
    sub_1D7782600(&v136);
    v110[7] = v155;
    v110[8] = v156;
    *&v110[9] = v157;
    v110[3] = v151;
    v110[4] = v152;
    v110[5] = v153;
    v110[6] = v154;
    v109 = v147;
    v110[0] = v148;
    v110[1] = v149;
    v110[2] = v150;
    sub_1D778CF08(&v109);
LABEL_65:
    v190 = v110[9];
    v191 = v110[10];
    v192 = v111;
    v186 = v110[5];
    v187 = v110[6];
    v189 = v110[8];
    v188 = v110[7];
    v182 = v110[1];
    v183 = v110[2];
    v185 = v110[4];
    v184 = v110[3];
    v181 = v110[0];
    v180 = v109;
    nullsub_1(&v180);
    goto LABEL_66;
  }

  v104 = v19;
  if (*(&v174 + 1))
  {
    if (__PAIR128__(0x80000001D78CF0C0, 0xD000000000000019) == v177)
    {
      v188 = v166;
      v189 = v167;
      *&v190 = v168;
      v184 = v162;
      v185 = v163;
      v187 = v165;
      v186 = v164;
      v180 = v158;
      v181 = v159;
      v183 = v161;
      v182 = v160;
      sub_1D778CEAC(&v180, &v109);
      goto LABEL_13;
    }

    v56 = sub_1D78B6724();
    v188 = v166;
    v189 = v167;
    *&v190 = v168;
    v184 = v162;
    v185 = v163;
    v187 = v165;
    v186 = v164;
    v180 = v158;
    v181 = v159;
    v183 = v161;
    v182 = v160;
    sub_1D778CEAC(&v180, &v109);
    if ((v56 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v188 = v166;
    v189 = v167;
    *&v190 = v168;
    v184 = v162;
    v185 = v163;
    v187 = v165;
    v186 = v164;
    v180 = v158;
    v181 = v159;
    v183 = v161;
    v182 = v160;
    sub_1D778CEAC(&v180, &v109);
    if (!AMSMarketingItem.isCIPOffer()())
    {
LABEL_30:
      v103 = a3;
      sub_1D7782600(&v158);
      v151 = v162;
      v152 = v163;
      v149 = v160;
      v150 = v161;
      v157 = v168;
      v155 = v166;
      v156 = v167;
      v153 = v164;
      v154 = v165;
      v147 = v158;
      v148 = v159;
      v57 = v160;
      v7 = *(v160 + 16);
      if (v7)
      {
        v101 = v16;
        v102 = v17;
        v38 = v160 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
        v144 = v166;
        v145 = v167;
        v146 = v168;
        v140 = v162;
        v141 = v163;
        v142 = v164;
        v143 = v165;
        v136 = v158;
        v137 = v159;
        v138 = v160;
        v139 = v161;
        sub_1D778CEAC(&v136, &v180);
        v43 = 0;
        while (v43 < *(v57 + 16))
        {
          sub_1D778CF14(v38 + *(v108 + 72) * v43, v12);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload)
          {
            if (EnumCaseMultiPayload == 1)
            {
              sub_1D77826E8();

              v59 = sub_1D78B3294();
              (*(*(v59 - 8) + 8))(v12, v59);
            }
          }

          else
          {
            v60 = v21;
            v61 = *(v12 + 2);
            v105 = *(v12 + 10);
            v106 = v12[90];

            if ((v106 - 1) < 2)
            {
              *&v114 = v104;
              *(&v114 + 1) = v101;
              *&v115 = v102;
              v188 = v166;
              v189 = v167;
              *&v190 = v168;
              v184 = v162;
              v185 = v163;
              v187 = v165;
              v186 = v164;
              v180 = v158;
              v181 = v159;
              v183 = v161;
              v182 = v160;
              sub_1D778CEAC(&v147, &v109);
              v97 = sub_1D778C638(&v180);
              v99 = v98;
              v133 = v188;
              v134 = v189;
              v135 = v190;
              v129 = v184;
              v130 = v185;
              v131 = v186;
              v132 = v187;
              v125 = v180;
              v126 = v181;
              v127 = v182;
              v128 = v183;
              sub_1D7782600(&v125);
              if (v99)
              {
                if (qword_1EE08FB98 != -1)
                {
                  swift_once();
                }

                sub_1D774FE1C();
                v100 = swift_allocObject();
                *(v100 + 16) = xmmword_1D78BCAB0;
                *(v100 + 56) = MEMORY[0x1E69E6158];
                *(v100 + 64) = sub_1D775ABD4();
                *(v100 + 32) = v97;
                *(v100 + 40) = v99;

                sub_1D78B60A4();
                sub_1D78B42C4();
                sub_1D7782600(&v158);

                *(&v110[7] + 8) = v154;
                *(&v110[8] + 8) = v155;
                *(&v110[9] + 8) = v156;
                *(&v110[3] + 8) = v150;
                *(&v110[4] + 8) = v151;
                *(&v110[5] + 8) = v152;
                *(&v110[6] + 8) = v153;
                *(v110 + 8) = v147;
                *(&v110[1] + 8) = v148;
                *(&v110[10] + 1) = v157;
                *(&v110[2] + 8) = v149;
                *&v109 = v97;
                *(&v109 + 1) = v99;
                *&v110[0] = v61;
                goto LABEL_27;
              }

              sub_1D7782600(&v158);
              if (qword_1EE08FB98 != -1)
              {
                swift_once();
              }

              sub_1D78B60A4();
              sub_1D78B42C4();
              sub_1D7782600(&v158);

              sub_1D778CCE8(&v180);
              goto LABEL_28;
            }

            v21 = v60;
          }

          if (v7 == ++v43)
          {
            sub_1D7782600(&v158);
            v17 = v102;
            a3 = v103;
            v7 = &v136;
            v16 = v101;
            goto LABEL_47;
          }
        }

        goto LABEL_84;
      }

      a3 = v103;
      v7 = &v136;
      goto LABEL_47;
    }
  }

LABEL_13:
  *&v125 = v104;
  *(&v125 + 1) = v16;
  *&v126 = v17;
  v144 = v177;
  v145 = v178;
  v146 = v179;
  v140 = v173;
  v141 = v174;
  v142 = v175;
  v143 = v176;
  v136 = v169;
  v137 = v170;
  v138 = v171;
  v139 = v172;
  nullsub_1(&v136);
  v188 = v144;
  v189 = v145;
  *&v190 = v146;
  v184 = v140;
  v185 = v141;
  v187 = v143;
  v186 = v142;
  v180 = v136;
  v181 = v137;
  v183 = v139;
  v182 = v138;
  sub_1D778CEAC(&v169, &v109);
  v105 = sub_1D778C638(&v180);
  v37 = v36;
  v155 = v188;
  v156 = v189;
  v157 = v190;
  v151 = v184;
  v152 = v185;
  v153 = v186;
  v154 = v187;
  v147 = v180;
  v148 = v181;
  v149 = v182;
  v150 = v183;
  sub_1D7782600(&v147);
  v104 = v37;
  if (!v37)
  {
    sub_1D7782600(&v158);
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D78B60A4();
    sub_1D78B42C4();
    sub_1D7782600(&v158);
    goto LABEL_44;
  }

  v103 = a3;
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v38 = qword_1EE09C268;
  sub_1D774FE1C();
  v7 = swift_allocObject();
  v7[1] = xmmword_1D78BCAB0;
  *(v7 + 7) = MEMORY[0x1E69E6158];
  *(v7 + 8) = sub_1D775ABD4();
  v39 = v104;
  *(v7 + 4) = v105;
  *(v7 + 5) = v39;

  sub_1D78B60A4();
  sub_1D78B42C4();

  v40 = v171;
  v41 = *(v171 + 16);
  if (v41)
  {
    v42 = 0;
    v43 = v171 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
    while (v42 < *(v40 + 16))
    {
      sub_1D778CF14(v43 + *(v108 + 72) * v42, v14);
      v45 = swift_getEnumCaseMultiPayload();
      if (v45)
      {
        if (v45 == 1)
        {
          sub_1D77826E8();
          v47 = &v14[*(v46 + 48)];
          v38 = *(v47 + 3);
          v7 = *(v47 + 7);

          v48 = sub_1D78B3294();
          (*(*(v48 - 8) + 8))(v14, v48);
        }
      }

      else
      {
        v44 = *(v14 + 2);
        v38 = *(v14 + 4);
        v7 = *(v14 + 6);
        v106 = v14[90];

        if ((v106 - 1) < 2)
        {
          sub_1D7782600(&v158);
          goto LABEL_26;
        }
      }

      if (v41 == ++v42)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    swift_once();
LABEL_57:
    sub_1D774FE1C();
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_1D78BCAB0;
    sub_1D778CE54(0, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    *(v66 + 56) = v67;
    *(v66 + 64) = sub_1D778CD74();
    *(v66 + 32) = v43;

    sub_1D78B60A4();
    sub_1D78B42C4();

    v133 = v144;
    v134 = v145;
    v135 = v146;
    v129 = v140;
    v130 = v141;
    v131 = v142;
    v132 = v143;
    v125 = v136;
    v126 = v137;
    v127 = v138;
    v128 = v139;
    v68 = 0;
    if (sub_1D775F3CC(&v125) != 1 && !BYTE8(v127))
    {
      if (*(&v130 + 1))
      {
        if (__PAIR128__(0x80000001D78CF100, 0xD000000000000025) == v133)
        {
          v68 = 1;
        }

        else
        {
          v68 = sub_1D78B6724();
        }
      }

      else
      {
        v188 = v144;
        v189 = v145;
        *&v190 = v146;
        v184 = v140;
        v185 = v141;
        v187 = v143;
        v186 = v142;
        v180 = v136;
        v181 = v137;
        v183 = v139;
        v182 = v138;
        sub_1D778CEAC(&v180, &v109);
        v68 = AMSMarketingItem.isBundleHardwareOffer()();
        sub_1D7782600(&v136);
      }
    }

    v122 = v144;
    v123 = v145;
    v124 = v146;
    v118 = v140;
    v119 = v141;
    v120 = v142;
    v121 = v143;
    v114 = v136;
    v115 = v137;
    v116 = v138;
    v117 = v139;
    if (sub_1D775F3CC(&v114) == 1)
    {
      sub_1D778C858(MEMORY[0x1E69E7CC8]);
      v75 = objc_allocWithZone(MEMORY[0x1E698C988]);
      sub_1D778CDF0();
      v76 = sub_1D78B5BB4();

      v77 = [v75 initWithDictionary_];

      if (qword_1EE093E80 != -1)
      {
        swift_once();
      }

      v78 = byte_1EE09C310;
      v80 = qword_1EE09C318;
      v79 = unk_1EE09C320;

      sub_1D7782600(&v158);
      v81 = 0;
      v82 = 0;
      v83 = 0uLL;
      v84 = MEMORY[0x1E69E7CC0];
      v85 = 0uLL;
      v86 = 0uLL;
      v87 = 0uLL;
      v88 = 0uLL;
      v89 = 0uLL;
      v90 = 0uLL;
    }

    else
    {
      sub_1D7782600(&v158);
      v89 = v136;
      v90 = v137;
      v84 = v138;
      v81 = BYTE8(v138);
      v113[0] = *(v7 + 41);
      *(v113 + 3) = HIDWORD(v138);
      v78 = v139;
      v112[0] = *(v7 + 49);
      *(v112 + 3) = DWORD1(v139);
      v80 = *(&v139 + 1);
      v77 = *(&v140 + 1);
      v79 = v140;
      v83 = v141;
      v85 = v142;
      v86 = v143;
      v87 = v144;
      v88 = v145;
      v82 = v146;
    }

    *&v109 = v43;
    BYTE8(v109) = v68 & 1;
    v110[0] = v89;
    v110[1] = v90;
    *&v110[2] = v84;
    BYTE8(v110[2]) = v81;
    *(&v110[2] + 9) = v113[0];
    HIDWORD(v110[2]) = *(v113 + 3);
    LOBYTE(v110[3]) = v78;
    *(&v110[3] + 1) = v112[0];
    DWORD1(v110[3]) = *(v112 + 3);
    *(&v110[3] + 1) = v80;
    *&v110[4] = v79;
    *(&v110[4] + 1) = v77;
    v110[5] = v83;
    v110[6] = v85;
    v110[7] = v86;
    v110[8] = v87;
    v110[9] = v88;
    *&v110[10] = v82;
    sub_1D778CEA4(&v109);
    v190 = v110[9];
    v191 = v110[10];
    v192 = v111;
    v186 = v110[5];
    v187 = v110[6];
    v189 = v110[8];
    v188 = v110[7];
    v182 = v110[1];
    v183 = v110[2];
    v185 = v110[4];
    v184 = v110[3];
    v181 = v110[0];
    v180 = v109;
    nullsub_1(&v180);
    v91 = v191;
    *(v38 + 160) = v190;
    *(v38 + 176) = v91;
    *(v38 + 192) = v192;
    v92 = v187;
    *(v38 + 96) = v186;
    *(v38 + 112) = v92;
    v93 = v189;
    *(v38 + 128) = v188;
    *(v38 + 144) = v93;
    v94 = v183;
    *(v38 + 32) = v182;
    *(v38 + 48) = v94;
    v95 = v185;
    *(v38 + 64) = v184;
    *(v38 + 80) = v95;
    v96 = v181;
    *v38 = v180;
    *(v38 + 16) = v96;
    return;
  }

LABEL_25:
  sub_1D7782600(&v158);
  v44 = 0;
LABEL_26:
  *(&v110[7] + 8) = v176;
  *(&v110[8] + 8) = v177;
  *(&v110[9] + 8) = v178;
  *(&v110[3] + 8) = v172;
  *(&v110[4] + 8) = v173;
  *(&v110[5] + 8) = v174;
  *(&v110[6] + 8) = v175;
  *(v110 + 8) = v169;
  *(&v110[1] + 8) = v170;
  *(&v110[10] + 1) = v179;
  *(&v110[2] + 8) = v171;
  *&v109 = v105;
  *(&v109 + 1) = v104;
  *&v110[0] = v44;
LABEL_27:
  sub_1D778CF78(&v109);
  v190 = v110[9];
  v191 = v110[10];
  v192 = v111;
  v186 = v110[5];
  v187 = v110[6];
  v189 = v110[8];
  v188 = v110[7];
  v182 = v110[1];
  v183 = v110[2];
  v185 = v110[4];
  v184 = v110[3];
  v181 = v110[0];
  v180 = v109;
  nullsub_1(&v180);
LABEL_28:
  v49 = v191;
  v50 = v103;
  *(v103 + 160) = v190;
  *(v50 + 176) = v49;
  *(v50 + 192) = v192;
  v51 = v187;
  *(v50 + 96) = v186;
  *(v50 + 112) = v51;
  v52 = v189;
  *(v50 + 128) = v188;
  *(v50 + 144) = v52;
  v53 = v183;
  *(v50 + 32) = v182;
  *(v50 + 48) = v53;
  v54 = v185;
  *(v50 + 64) = v184;
  *(v50 + 80) = v54;
  v55 = v181;
  *v50 = v180;
  *(v50 + 16) = v55;
}

id sub_1D778C638(__int128 *a1)
{
  v3 = *(v1 + 16);
  v4 = a1[9];
  v46 = a1[8];
  v47 = v4;
  v48 = *(a1 + 20);
  v5 = a1[5];
  v42 = a1[4];
  v43 = v5;
  v6 = a1[7];
  v44 = a1[6];
  v45 = v6;
  v7 = a1[1];
  v38 = *a1;
  v39 = v7;
  v8 = a1[3];
  v40 = a1[2];
  v41 = v8;
  if (sub_1D775F3CC(&v38) != 1)
  {
    v9 = a1[9];
    v34[8] = a1[8];
    v34[9] = v9;
    v35 = *(a1 + 20);
    v10 = a1[5];
    v34[4] = a1[4];
    v34[5] = v10;
    v11 = a1[7];
    v34[6] = a1[6];
    v34[7] = v11;
    v12 = a1[1];
    v34[0] = *a1;
    v34[1] = v12;
    v13 = a1[3];
    v34[2] = a1[2];
    v34[3] = v13;
    v31 = v46;
    v32 = v47;
    v33 = v48;
    v27 = v42;
    v28 = v43;
    v29 = v44;
    v30 = v45;
    v23 = v38;
    v24 = v39;
    v25 = v40;
    v26 = v41;
    sub_1D778CEAC(v34, v22);
    v14 = Offer.purchaseID()();
    v36[8] = v31;
    v36[9] = v32;
    v37 = v33;
    v36[4] = v27;
    v36[5] = v28;
    v36[6] = v29;
    v36[7] = v30;
    v36[0] = v23;
    v36[1] = v24;
    v36[2] = v25;
    v36[3] = v26;
    sub_1D778D0B0(v36);
    if (v14.value._object)
    {
      return v14.value._countAndFlagsBits;
    }
  }

  result = [v3 configuration];
  if (result)
  {
    v16 = result;
    if ([result respondsToSelector_])
    {
      v17 = [v16 paidBundleConfig];
      swift_unknownObjectRelease();
      v18 = [v17 offeredBundlePurchaseIDs];
      if (v18)
      {
        v19 = v18;
        v20 = sub_1D78B5EB4();

        if (*(v20 + 16))
        {
          v21 = *(v20 + 32);

          return v21;
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D778C858(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1D778D104();
    v2 = sub_1D78B6564();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v16 = *v14;
        v15 = v14[1];
        v17 = *(*(a1 + 56) + 8 * v13);

        v18 = v17;
        result = sub_1D777BBB4(v16, v15);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          *(v2[7] + 8 * v10) = v18;
          result = swift_unknownObjectRelease();
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v16;
          v20[1] = v15;
          *(v2[7] + 8 * result) = v18;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1D778CA2C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1D778D03C();
    v2 = sub_1D78B6564();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1D777BE08(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1D778D0A0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1D778D0A0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1D778D0A0(v31, v32);
    result = sub_1D78B63D4();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
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
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1D778D0A0(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

double sub_1D778CCE8(uint64_t a1)
{
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 192) = -1;
  return result;
}

unint64_t sub_1D778CD10()
{
  result = qword_1EE08F9D0;
  if (!qword_1EE08F9D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE08F9D0);
  }

  return result;
}

unint64_t sub_1D778CD74()
{
  result = qword_1EE08FFF8;
  if (!qword_1EE08FFF8)
  {
    sub_1D778CE54(255, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08FFF8);
  }

  return result;
}

unint64_t sub_1D778CDF0()
{
  result = qword_1EE08FBA0;
  if (!qword_1EE08FBA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE08FBA0);
  }

  return result;
}

void sub_1D778CE54(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D778CF14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfferAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D778CFA4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D778CFEC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_1D778D03C()
{
  if (!qword_1EE08FAF0)
  {
    v0 = sub_1D78B6574();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE08FAF0);
    }
  }
}

_OWORD *sub_1D778D0A0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1D778D104()
{
  if (!qword_1EC9C9C18)
  {
    sub_1D778CDF0();
    v0 = sub_1D78B6574();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9C9C18);
    }
  }
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_1D778D198(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 160))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D778D1B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 160) = v3;
  return result;
}

char *sub_1D778D21C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_contentView;
  *&v5[v11] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v12 = OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_gradientMaskView;
  *&v5[v12] = [objc_allocWithZone(sub_1D78B4564()) initWithFrame_];
  v13 = OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_titleTextView;
  *&v5[v13] = [objc_allocWithZone(MEMORY[0x1E69DD168]) initWithFrame_];
  v14 = OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_descriptionTextView;
  type metadata accessor for UnselectableLinkEnabledTextView();
  *&v5[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  v15 = OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_subscribeButton;
  v16 = objc_allocWithZone(sub_1D78B4864());
  *&v5[v15] = sub_1D78B4854();
  v17 = OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_webAuthButton;
  *&v5[v17] = [objc_allocWithZone(sub_1D78B4524()) initWithFrame_];
  v18 = OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_bottomHairline;
  *&v5[v18] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v22.receiver = v5;
  v22.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a1, a2, a3, a4);
  [v19 setClipsToBounds_];
  [v19 addSubview_];
  v20 = OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_contentView;
  [v19 addSubview_];
  [v19 addSubview_];
  [*&v19[v20] addSubview_];
  [*&v19[v20] addSubview_];
  [*&v19[v20] addSubview_];
  [*&v19[v20] addSubview_];

  return v19;
}

void sub_1D778D5CC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_contentView;
  *(v1 + v2) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v3 = OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_gradientMaskView;
  *(v1 + v3) = [objc_allocWithZone(sub_1D78B4564()) initWithFrame_];
  v4 = OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_titleTextView;
  *(v1 + v4) = [objc_allocWithZone(MEMORY[0x1E69DD168]) initWithFrame_];
  v5 = OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_descriptionTextView;
  type metadata accessor for UnselectableLinkEnabledTextView();
  *(v1 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  v6 = OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_subscribeButton;
  v7 = objc_allocWithZone(sub_1D78B4864());
  *(v1 + v6) = sub_1D78B4854();
  v8 = OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_webAuthButton;
  *(v1 + v8) = [objc_allocWithZone(sub_1D78B4524()) initWithFrame_];
  v9 = OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_bottomHairline;
  *(v1 + v9) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  sub_1D78B6524();
  __break(1u);
}

uint64_t sub_1D778D798(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 328))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 288);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D778D7E0(uint64_t result, int a2, int a3)
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 312) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 328) = 1;
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
      *(result + 288) = (a2 - 1);
      return result;
    }

    *(result + 328) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t AlreadySubscribedAlert.title.getter()
{
  if (*v0)
  {
    v1 = [*v0 name];
    v2 = sub_1D78B5C74();
    v4 = v3;

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    sub_1D78B3134();

    sub_1D774FE1C();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D78BCAB0;
    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 64) = sub_1D775ABD4();
    *(v7 + 32) = v2;
    *(v7 + 40) = v4;
    v8 = sub_1D78B5C94();
  }

  else
  {
    type metadata accessor for Localized();
    v9 = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    v8 = sub_1D78B3134();
  }

  return v8;
}

uint64_t AlreadySubscribedAlert.message.getter()
{
  if (*v0)
  {
    v1 = [*v0 name];
    v2 = sub_1D78B5C74();
    v4 = v3;

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    sub_1D78B3134();

    sub_1D774FE1C();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D78BCAB0;
    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 64) = sub_1D775ABD4();
    *(v7 + 32) = v2;
    *(v7 + 40) = v4;
    v8 = sub_1D78B5C94();
  }

  else
  {
    type metadata accessor for Localized();
    v9 = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    v8 = sub_1D78B3134();
  }

  return v8;
}

uint64_t AlreadySubscribedAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t AlreadySubscribedAlert.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v2 = sub_1D78B5CE4();

  return v2;
}

id sub_1D778DDEC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_1EE08E648 != -1)
  {
    swift_once();
  }

  v3 = sub_1D78B4304();
  __swift_project_value_buffer(v3, qword_1EE09C1F0);
  v4 = sub_1D78B42E4();
  v5 = sub_1D78B60A4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1D7739000, v4, v5, "De-initializing BundleSubscriptionManager!", v6, 2u);
    MEMORY[0x1DA7043F0](v6, -1, -1);
  }

  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

void sub_1D778DFEC()
{
  swift_getObjectType();
  sub_1D7752C3C();
  sub_1D78B41F4();
  v0 = sub_1D78B4014();
  sub_1D78B40B4();

  v1 = sub_1D78B4014();
  sub_1D78B40D4();
}

void sub_1D778E268(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = sub_1D78B3E24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D778E9CC();
  if (v10 <= 2)
  {
    if (v10)
    {
      v11 = *(v2 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_postPurchaseOnboardingManager + 24);
      v12 = *(v2 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_postPurchaseOnboardingManager + 32);
      if (v10 == 1)
      {
        __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_postPurchaseOnboardingManager), *(v2 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_postPurchaseOnboardingManager + 24));
        (*(v12 + 16))(6, a1, a2, v11, v12);
      }

      else
      {
        __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_postPurchaseOnboardingManager), *(v2 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_postPurchaseOnboardingManager + 24));
        (*(v12 + 16))(5, a1, a2, v11, v12);
      }
    }

    else
    {
      sub_1D773F004(0, &qword_1EE08FB80);
      v35 = sub_1D78B6284();
      sub_1D78B60A4();
      sub_1D78B42C4();
      v27 = v35;
    }

    return;
  }

  if (v10 == 3)
  {
    v28 = *(v2 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_postPurchaseOnboardingManager + 24);
    v29 = *(v2 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_postPurchaseOnboardingManager + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_postPurchaseOnboardingManager), v28);
    (*(v29 + 16))(4, a1, a2, v28, v29);
    return;
  }

  if (v10 != 4)
  {
    v30 = *(v2 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_postPurchaseOnboardingManager + 24);
    v31 = *(v2 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_postPurchaseOnboardingManager + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_postPurchaseOnboardingManager), v30);
    (*(v31 + 16))(7, a1, a2, v30, v31);
    return;
  }

  v13 = [*(v2 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_configurationManager) configuration];
  if (!v13)
  {
    __break(1u);
    return;
  }

  v14 = v13;
  if ([v13 respondsToSelector_])
  {
    v15 = [v14 paidBundleConfig];
    swift_unknownObjectRelease();
    v16 = [v15 familySharingLandingPageArticleID];

    if (v16)
    {
      v17 = sub_1D78B5C74();
      v19 = v18;

      if (a1)
      {
        v33[1] = *(v3 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_completionEventManager);
        sub_1D778F850(0, &qword_1EE08E4D8, MEMORY[0x1E69E6F90]);
        v34 = v17;
        v35 = v19;
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_1D78BCB50;

        sub_1D78B3DF4();
        v19 = v35;
        sub_1D78B3E14();
        v36 = v21;
        sub_1D7752B44(&qword_1EE08F240, 255, MEMORY[0x1E69D6810]);
        sub_1D778F850(0, &unk_1EE08E608, MEMORY[0x1E69E62F8]);
        sub_1D778F8B0();
        sub_1D78B6324();
        v22 = swift_allocObject();
        *(v22 + 16) = a1;
        *(v22 + 24) = a2;

        sub_1D78B3964();
        v17 = v34;

        sub_1D7744A7C(a1);
        (*(v7 + 8))(v9, v6);
      }

      if (qword_1EC9C8688 != -1)
      {
        swift_once();
      }

      v37 = 1;
      sub_1D7752B44(&qword_1EC9C9CA8, v20, type metadata accessor for BundleSubscriptionDetectionManager);
      sub_1D78B3724();
      v23 = *(v3 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_router + 24);
      v24 = *(v3 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_router + 32);
      __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_router), v23);
      v26 = sub_1D7752B44(&unk_1EC9C9CB0, v25, type metadata accessor for BundleSubscriptionDetectionManager);
      (*(v24 + 16))(v17, v19, 0, 0, 0, 0, v3, v26, v23, v24);

      return;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_1D773F004(0, &qword_1EE08FB80);
  v32 = sub_1D78B6284();
  sub_1D78B60A4();
  sub_1D78B42C4();

  if (a1)
  {
    a1();
  }
}

uint64_t sub_1D778E86C()
{
  v0 = sub_1D778E9CC();
  if (qword_1EE08E648 != -1)
  {
    swift_once();
  }

  v1 = sub_1D78B4304();
  __swift_project_value_buffer(v1, qword_1EE09C1F0);
  v2 = sub_1D78B42E4();
  v3 = sub_1D78B60A4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v0 != 0;
    _os_log_impl(&dword_1D7739000, v2, v3, "Post Purchase Onboarding Requires Presentation: %{BOOL}d.", v4, 8u);
    MEMORY[0x1DA7043F0](v4, -1, -1);
  }

  sub_1D7756C58(0, &qword_1EE095240, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4104();
}

uint64_t sub_1D778E9CC()
{
  swift_getObjectType();
  v1 = [*(v0 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_bundleSubscriptionManager) cachedSubscription];
  if (objc_getAssociatedObject(v1, v1 + 1))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (*(&v19 + 1))
  {
    sub_1D773F004(0, &qword_1EE08FBD0);
    if (swift_dynamicCast())
    {
      v2 = v17;
      v3 = [v17 integerValue];
      if (v3 == -1)
      {
        goto LABEL_18;
      }

      goto LABEL_10;
    }
  }

  else
  {
    sub_1D7756B84(&v20);
  }

  v2 = 0;
  v3 = 0;
LABEL_10:
  if (objc_getAssociatedObject(v1, ~v3))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (*(&v19 + 1))
  {
    sub_1D773F004(0, &qword_1EE08FBD0);
    if (swift_dynamicCast())
    {
      v4 = v17;
      v5 = [v4 integerValue];

      if ((((v5 - 182) ^ v3) & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }
  }

  else
  {
    sub_1D7756B84(&v20);
  }

LABEL_18:

  if (((v3 ^ 0xFFFFFF4A) & 1) == 0)
  {
LABEL_27:

    return 0;
  }

LABEL_19:
  result = [*(v0 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_configurationManager) configuration];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v7 = result;
  if (([result respondsToSelector_] & 1) == 0)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v8 = [v7 paidBundleConfig];
  swift_unknownObjectRelease();
  if (![v8 areMagazinesEnabled])
  {

    goto LABEL_27;
  }

  if ([v1 isPaidBundleViaOfferActivated])
  {
    v9 = sub_1D778FB9C(7, v8);

    if (v9)
    {
      return 5;
    }

    return 0;
  }

  if ([v1 isAmplifyUser])
  {
    v10 = sub_1D778FB9C(6, v8);

    return (v10 & 1) != 0;
  }

  if ([v1 isServicesBundleUser])
  {
    v11 = sub_1D778FB9C(5, v8);

    if ((v11 & 1) == 0)
    {
      return 0;
    }

    return 2;
  }

  else if (sub_1D778FB9C(4, v8))
  {
    v13 = [v1 isPurchaser];

    if (v13)
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    if (qword_1EC9C8688 != -1)
    {
      swift_once();
    }

    sub_1D7752B44(&unk_1EC9C9C98, v12, type metadata accessor for BundleSubscriptionDetectionManager);
    sub_1D78B3574();
    if (v20 & 1) != 0 || ([v1 isPurchaser])
    {

      return 0;
    }

    v14 = [v8 familySharingLandingPageArticleID];
    if (!v14)
    {
      sub_1D773F004(0, &qword_1EE08FB80);
      v16 = sub_1D78B6284();
      sub_1D78B60A4();
      sub_1D78B42C4();

      return 0;
    }

    v15 = v14;

    return 4;
  }
}

void sub_1D778EE6C()
{
  sub_1D78B6094();
  sub_1D774FE1C();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D78BCAB0;
  sub_1D773C9B8(0, &qword_1EE08F9F0);
  sub_1D78B6504();
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1D775ABD4();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_1D773F004(0, &qword_1EE08FB80);
  v1 = sub_1D78B6284();
  sub_1D78B42C4();
}

void sub_1D778EF80(void (*a1)(void *, uint64_t), uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (sub_1D778F0EC())
    {
      v6 = swift_allocObject();
      *(v6 + 16) = a1;
      *(v6 + 24) = a2;

      sub_1D778E268(sub_1D778FDAC, v6);

      return;
    }
  }

  v7 = sub_1D78B4B64();
  sub_1D7752B44(&qword_1EC9C9CD0, 255, MEMORY[0x1E69D8050]);
  v8 = swift_allocError();
  (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69D8048], v7);
  a1(v8, 1);
}

uint64_t sub_1D778F0EC()
{
  v1 = sub_1D78B3394();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v39[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v39[-v7];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v39[-v9];
  v11 = [*(v0 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_bundleSubscriptionManager) cachedSubscription];
  v12 = [v11 initialPurchaseTimestamp];

  if (!v12)
  {
    return 0;
  }

  result = [*(v0 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_configurationManager) configuration];
  if (!result)
  {
    goto LABEL_17;
  }

  v14 = result;
  if (([result respondsToSelector_] & 1) == 0)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v15 = [v14 paidBundleConfig];
  swift_unknownObjectRelease();
  [v12 doubleValue];
  sub_1D78B3354();
  sub_1D78B3384();
  sub_1D78B3304();
  v17 = v16;
  v18 = v16;
  v19 = *(v2 + 8);
  result = (v19)(v8, v1);
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if ([v15 maxAllowedSubscriptionDetectionTime] < v17)
  {
    v20 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    [v20 setTimeStyle_];
    [v20 setDateStyle_];
    (*(v2 + 16))(v5, v10, v1);
    sub_1D773F004(0, &qword_1EE08FB80);
    v21 = v15;
    v22 = v20;
    v23 = sub_1D78B6284();
    v24 = sub_1D78B60A4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v41 = v19;
      v26 = v25;
      v44 = swift_slowAlloc();
      v45 = v44;
      *v26 = 136315394;
      v42 = v23;
      v27 = sub_1D78B3324();
      v28 = [v22 stringFromDate_];
      v43 = v22;
      v29 = v28;

      v30 = sub_1D78B5C74();
      v40 = v24;
      v32 = v31;

      v33 = v5;
      v34 = v41;
      v41(v33, v1);
      v35 = sub_1D77AD82C(v30, v32, &v45);

      *(v26 + 4) = v35;
      *(v26 + 12) = 2048;
      v36 = [v21 maxAllowedSubscriptionDetectionTime];

      *(v26 + 14) = v36;
      v37 = v42;
      _os_log_impl(&dword_1D7739000, v42, v40, "BundleSubscriptionDetectionManager: User does not qualify for onboarding flow since the purchase date=%s has surpassed maximum allowed subscription detection time=%lld. Nothing will be presented.", v26, 0x16u);
      v38 = v44;
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x1DA7043F0](v38, -1, -1);
      MEMORY[0x1DA7043F0](v26, -1, -1);

      v34(v10, v1);
    }

    else
    {

      v19(v5, v1);
      v19(v10, v1);
    }

    return 0;
  }

  v19(v10, v1);

  return 1;
}

uint64_t sub_1D778F5E4()
{
  sub_1D7752C3C();
  sub_1D78B41F4();
  v0 = sub_1D78B4014();
  sub_1D78B40A4();

  v1 = sub_1D78B4014();
  v2 = sub_1D78B40D4();

  return v2;
}

void (*sub_1D778F6C8())(void (*a1)(void *, uint64_t), uint64_t a2)
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1D778FDA4;
}

uint64_t sub_1D778F724(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47B40](a1, ObjectType);
}

uint64_t sub_1D778F774(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47B30](a1, ObjectType);
}

void sub_1D778F850(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D78B3E24();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D778F8B0()
{
  result = qword_1EE08E600;
  if (!qword_1EE08E600)
  {
    sub_1D778F850(255, &unk_1EE08E608, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08E600);
  }

  return result;
}

void sub_1D778F924(char a1)
{
  swift_getObjectType();
  if (a1)
  {
    sub_1D773F004(0, &qword_1EE08FB80);
    v7 = sub_1D78B6284();
    sub_1D78B60A4();
    sub_1D78B42C4();
  }

  else
  {
    if (*(v1 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_presentationOperationManager))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1D78B4DE4();
      sub_1D78B3AF4();

      v3 = sub_1D78B4C84();
      if (v3)
      {
        MEMORY[0x1EEE9AC00](v3);
        sub_1D7752C3C();
        sub_1D78B41F4();
        v4 = sub_1D78B4014();
        sub_1D78B40B4();

        v5 = sub_1D78B4014();
        sub_1D78B40D4();
        swift_unknownObjectRelease();

        return;
      }

      swift_unknownObjectRelease();
    }

    sub_1D773F004(0, &qword_1EE08FB80);
    v6 = sub_1D78B6284();
    sub_1D78B60A4();
    sub_1D78B42C4();
  }
}

uint64_t sub_1D778FB9C(uint64_t a1, id a2)
{
  result = [a2 postPurchaseOnboardingConfigurationsByType];
  if (result)
  {
    v4 = result;
    sub_1D773F004(0, &qword_1EE08FBD0);
    sub_1D778FCD4();
    sub_1D778FD3C();
    v5 = sub_1D78B5BC4();

    v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    v7 = v6;
    if (*(v5 + 16) && (v8 = sub_1D777BC98(v6), (v9 & 1) != 0))
    {
      v10 = *(*(v5 + 56) + 8 * v8);

      if (v10 >> 62)
      {
        v11 = sub_1D78B6534();
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v11)
      {
        return 1;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

void sub_1D778FCD4()
{
  if (!qword_1EC9CA440)
  {
    sub_1D773F004(255, &unk_1EC9C9CC0);
    v0 = sub_1D78B5F34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9CA440);
    }
  }
}

unint64_t sub_1D778FD3C()
{
  result = qword_1EE08FBC0;
  if (!qword_1EE08FBC0)
  {
    sub_1D773F004(255, &qword_1EE08FBD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08FBC0);
  }

  return result;
}

char *sub_1D778FE38(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC16NewsSubscription36HideMyEmailSignupBlueprintHeaderView_publisherLogo;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v11 = OBJC_IVAR____TtC16NewsSubscription36HideMyEmailSignupBlueprintHeaderView_headline;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v12 = OBJC_IVAR____TtC16NewsSubscription36HideMyEmailSignupBlueprintHeaderView_subheadline;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = *&v13[OBJC_IVAR____TtC16NewsSubscription36HideMyEmailSignupBlueprintHeaderView_publisherLogo];
  v15 = v13;
  [v15 addSubview_];
  [v15 addSubview_];
  [v15 addSubview_];

  return v15;
}

void sub_1D7790074()
{
  sub_1D7790100(&qword_1EC9C9CF8);

  JUMPOUT(0x1DA702390);
}

uint64_t sub_1D7790100(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HideMyEmailSignupBlueprintHeaderView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D7790140()
{
  v1 = OBJC_IVAR____TtC16NewsSubscription36HideMyEmailSignupBlueprintHeaderView_publisherLogo;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v2 = OBJC_IVAR____TtC16NewsSubscription36HideMyEmailSignupBlueprintHeaderView_headline;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v3 = OBJC_IVAR____TtC16NewsSubscription36HideMyEmailSignupBlueprintHeaderView_subheadline;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  sub_1D78B6524();
  __break(1u);
}

char *sub_1D7790234(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_contentView;
  *&v5[v11] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v12 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_logoImageView;
  *&v5[v12] = [objc_allocWithZone(sub_1D78B5204()) initWithFrame_];
  v13 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_accessLabel1;
  *&v5[v13] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v14 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_subscribeButton1;
  v15 = sub_1D78B4864();
  v16 = objc_allocWithZone(v15);
  *&v5[v14] = sub_1D78B4854();
  v17 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_accessLabel2;
  *&v5[v17] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v18 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_subscribeButton2;
  v19 = objc_allocWithZone(v15);
  *&v5[v18] = sub_1D78B4854();
  v20 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_accessLabel3;
  *&v5[v20] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v21 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_subscribeButton3;
  v22 = objc_allocWithZone(v15);
  *&v5[v21] = sub_1D78B4854();
  v23 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_webAuthButton;
  *&v5[v23] = [objc_allocWithZone(sub_1D78B4524()) initWithFrame_];
  v24 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_learnMoreLabel;
  *&v5[v24] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v28.receiver = v5;
  v28.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v28, sel_initWithFrame_, a1, a2, a3, a4);
  [v25 setClipsToBounds_];
  v26 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_contentView;
  [v25 addSubview_];
  [*&v25[v26] addSubview_];
  [*&v25[v26] addSubview_];
  [*&v25[v26] addSubview_];
  [*&v25[v26] addSubview_];
  [*&v25[v26] addSubview_];
  [*&v25[v26] addSubview_];
  [*&v25[v26] addSubview_];
  [*&v25[v26] addSubview_];
  [*&v25[v26] addSubview_];

  return v25;
}

void sub_1D77906E4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_contentView;
  *(v1 + v2) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v3 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_logoImageView;
  *(v1 + v3) = [objc_allocWithZone(sub_1D78B5204()) initWithFrame_];
  v4 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_accessLabel1;
  *(v1 + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v5 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_subscribeButton1;
  v6 = sub_1D78B4864();
  v7 = objc_allocWithZone(v6);
  *(v1 + v5) = sub_1D78B4854();
  v8 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_accessLabel2;
  *(v1 + v8) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v9 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_subscribeButton2;
  v10 = objc_allocWithZone(v6);
  *(v1 + v9) = sub_1D78B4854();
  v11 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_accessLabel3;
  *(v1 + v11) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v12 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_subscribeButton3;
  v13 = objc_allocWithZone(v6);
  *(v1 + v12) = sub_1D78B4854();
  v14 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_webAuthButton;
  *(v1 + v14) = [objc_allocWithZone(sub_1D78B4524()) initWithFrame_];
  v15 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_learnMoreLabel;
  *(v1 + v15) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  sub_1D78B6524();
  __break(1u);
}

uint64_t sub_1D7790930()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of MetricsProviderType.metrics(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 16))();
}

{
  return (*(a3 + 32))();
}

id sub_1D7790A00()
{
  v0 = sub_1D7790A8C();
  v1 = sub_1D78B31E4();
  v7 = MEMORY[0x1E69E6158];
  *&v6 = v1;
  *(&v6 + 1) = v2;
  sub_1D778D0A0(&v6, v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D782E03C(v5, 0x4C5255666572, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  return v0;
}

id sub_1D7790A8C()
{
  v1 = v0;
  v2 = 0xEE007377656E2E65;
  v3 = 0x6C7070612E6D6F63;
  v4 = sub_1D77FEE78(MEMORY[0x1E69E7CC0]);
  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleIdentifier];

  v7 = MEMORY[0x1E69E6158];
  if (v6)
  {
    v8 = sub_1D78B5C74();
    v10 = v9;

    *(&v36 + 1) = v7;
    if (v10)
    {
      v3 = v8;
      v2 = v10;
    }
  }

  else
  {
    *(&v36 + 1) = MEMORY[0x1E69E6158];
  }

  *&v35 = v3;
  *(&v35 + 1) = v2;
  sub_1D778D0A0(&v35, v33);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v46 = v4;
  sub_1D782E03C(v33, 7368801, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
  v12 = v46;
  result = [*(v1 + 16) configuration];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v14 = result;
  v15 = 0xEF73635F7377656ELL;
  v16 = 0x5F737070615F7078;
  if (([result respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v17 = [v14 paidBundleConfig];
  swift_unknownObjectRelease();
  v18 = [v17 servicesBundleMetricsTopicName];

  if (!v18)
  {
LABEL_11:
    *(&v36 + 1) = v7;
    goto LABEL_12;
  }

  v19 = sub_1D78B5C74();
  v21 = v20;

  *(&v36 + 1) = v7;
  if (v21)
  {
    v16 = v19;
    v15 = v21;
  }

LABEL_12:
  *&v35 = v16;
  *(&v35 + 1) = v15;
  sub_1D778D0A0(&v35, v33);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  *&v46 = v12;
  sub_1D782E03C(v33, 0x6369706F74, 0xE500000000000000, v22);
  v23 = v46;
  v24 = [objc_opt_self() sharedInstance];
  v25 = [v24 feldsparID];

  if (!v25)
  {
    v26 = 0;
    v47 = v7;
    goto LABEL_16;
  }

  v26 = sub_1D78B5C74();
  v28 = v27;

  v47 = v7;
  if (!v28)
  {
    v26 = 0;
LABEL_16:
    v28 = 0xE000000000000000;
  }

  *&v46 = v26;
  *(&v46 + 1) = v28;
  sub_1D778D0A0(&v46, &v35);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  *&v33[0] = v23;
  sub_1D782E03C(&v35, 0x72617073646C6566, 0xEA00000000006449, v29);
  v30 = *&v33[0];
  v31 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  LOBYTE(v35) = 4;
  (*(v31 + 40))(v33, &v35, ObjectType, v31);
  v43 = v33[8];
  v44 = v33[9];
  v45 = v34;
  v39 = v33[4];
  v40 = v33[5];
  v41 = v33[6];
  v42 = v33[7];
  v35 = v33[0];
  v36 = v33[1];
  v37 = v33[2];
  v38 = v33[3];
  if (sub_1D775F3CC(&v35) != 1)
  {
    if (!BYTE8(v37) && !*(&v40 + 1))
    {
      AMSMarketingItem.isBundleHardwareOffer()();
    }

    sub_1D7791888(v33, &qword_1EE090600, &type metadata for Offer, sub_1D7756CA8);
  }

  return v30;
}

id sub_1D7790E60(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v5 = type metadata accessor for PurchaseContext();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77402F0(0, &unk_1EE096460, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v49 = &v47 - v9;
  v51 = sub_1D78B3294();
  v10 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v47 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77402F0(0, qword_1EE096030, type metadata accessor for PurchaseContext);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v52 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v47 - v15;
  v17 = *a1;
  v18 = sub_1D7790A8C();
  v59 = v18;
  v53 = a2;
  sub_1D77918E8(a2, v16, qword_1EE096030, type metadata accessor for PurchaseContext);
  v19 = *(v6 + 48);
  v20 = v5;
  v21 = v19(v16, 1, v5);
  v22 = MEMORY[0x1E69E6158];
  if (v21 == 1)
  {
    sub_1D7791888(v16, qword_1EE096030, type metadata accessor for PurchaseContext, sub_1D77402F0);
    v58 = v22;
  }

  else
  {
    v23 = v16[57];
    sub_1D7791954(v16);
    LOBYTE(v57) = v23;
    v24 = PurchaseConversionLocation.pageContext.getter();
    v58 = v22;
    if (v25)
    {
      v26 = v20;
      v27 = v51;
      v28 = v10;
      goto LABEL_26;
    }
  }

  v27 = v51;
  v28 = v10;
  if (v17 <= 5)
  {
    if (v17 <= 1)
    {
      if (v17)
      {
        v25 = 0xE500000000000000;
        v24 = 0x6F69647541;
      }

      else
      {
        v25 = 0xE800000000000000;
        v24 = 0x6575737349666450;
      }
    }

    else if ((v17 - 2) >= 2)
    {
      if (v17 == 4)
      {
        v25 = 0xE500000000000000;
        v24 = 0x2B7377654ELL;
      }

      else
      {
        v25 = 0xE700000000000000;
        v24 = 0x6C656E6E616843;
      }
    }

    else
    {
      v25 = 0xE700000000000000;
      v24 = 0x656C6369747241;
    }
  }

  else if (v17 > 8)
  {
    if ((v17 - 10) >= 2)
    {
      if (v17 == 9)
      {
        v25 = 0xE400000000000000;
        v24 = 1685024582;
      }

      else
      {
        v25 = 0xE900000000000067;
        v24 = 0x6E69776F6C6C6F46;
      }
    }

    else
    {
      v25 = 0xE600000000000000;
      v24 = 0x657069636552;
    }
  }

  else if (v17 == 6 || v17 == 7)
  {
    v24 = 0x50676E69646E614CLL;
    v25 = 0xEB00000000656761;
  }

  else
  {
    v25 = 0xE600000000000000;
    v24 = 0x656C7A7A7550;
  }

  v26 = v20;
LABEL_26:
  *&v57 = v24;
  *(&v57 + 1) = v25;
  sub_1D778D0A0(&v57, v56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55 = v18;
  sub_1D782E03C(v56, 0x746E6F4365676170, 0xEB00000000747865, isUniquelyReferenced_nonNull_native);
  v30 = v55;
  v59 = v55;
  v31 = v49;
  sub_1D77918E8(v50, v49, &unk_1EE096460, MEMORY[0x1E6968FB0]);
  if ((*(v28 + 48))(v31, 1, v27) == 1)
  {
    sub_1D7791888(v31, &unk_1EE096460, MEMORY[0x1E6968FB0], sub_1D77402F0);
  }

  else
  {
    v32 = v47;
    (*(v28 + 32))(v47, v31, v27);
    v33 = sub_1D78B31E4();
    v58 = v22;
    *&v57 = v33;
    *(&v57 + 1) = v34;
    sub_1D778D0A0(&v57, v56);
    v35 = v59;
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v55 = v35;
    sub_1D782E03C(v56, 0x4C5255666572, 0xE600000000000000, v36);
    (*(v28 + 8))(v32, v27);
    v30 = v55;
    v59 = v55;
  }

  v37 = v52;
  sub_1D77918E8(v53, v52, qword_1EE096030, type metadata accessor for PurchaseContext);
  if (v19(v37, 1, v26) == 1)
  {
    sub_1D7791888(v37, qword_1EE096030, type metadata accessor for PurchaseContext, sub_1D77402F0);
  }

  else
  {
    v38 = v48;
    sub_1D777044C(v37, v48);
    v39 = sub_1D78AE2DC();
    if (v40)
    {
      v55 = MEMORY[0x1E69E7CC8];
      sub_1D7827CB8(v39, v40, 0x49656C6369747261, 0xE900000000000064);
      v41 = MEMORY[0x1E69E6158];
      v42 = sub_1D78B5BE4();
      v44 = v43;

      if (v44)
      {
        v58 = v41;
        *&v57 = v42;
        *(&v57 + 1) = v44;
        sub_1D778D0A0(&v57, v56);
        v45 = swift_isUniquelyReferenced_nonNull_native();
        v54 = v30;
        sub_1D782E03C(v56, 0x6174654465676170, 0xEB00000000736C69, v45);
        sub_1D7791954(v38);
        return v54;
      }

      else
      {
        sub_1D782AFE8(0x6174654465676170, 0xEB00000000736C69, &v57);
        sub_1D7791888(&v57, &qword_1EE08F9C0, MEMORY[0x1E69E7CA0] + 8, sub_1D7756CA8);
        sub_1D7791954(v38);
        return v59;
      }
    }

    else
    {
      sub_1D7791954(v38);
    }
  }

  return v30;
}

id sub_1D77915E8()
{
  v0 = sub_1D7790A8C();
  v1 = PurchaseConversionLocation.pageContext.getter();
  v14 = MEMORY[0x1E69E6158];
  *&v13 = v1;
  *(&v13 + 1) = v2;
  sub_1D778D0A0(&v13, v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D782E03C(v12, 0x746E6F4365676170, 0xEB00000000747865, isUniquelyReferenced_nonNull_native);
  v15 = v0;
  v4 = sub_1D78AE2DC();
  if (v5)
  {
    sub_1D7827CB8(v4, v5, 0x49656C6369747261, 0xE900000000000064);
    v6 = MEMORY[0x1E69E6158];
    v7 = sub_1D78B5BE4();
    v9 = v8;

    if (v9)
    {
      v14 = v6;
      *&v13 = v7;
      *(&v13 + 1) = v9;
      sub_1D778D0A0(&v13, v12);
      v10 = swift_isUniquelyReferenced_nonNull_native();
      sub_1D782E03C(v12, 0x6174654465676170, 0xEB00000000736C69, v10);
    }

    else
    {
      sub_1D782AFE8(0x6174654465676170, 0xEB00000000736C69, &v13);
      sub_1D7791888(&v13, &qword_1EE08F9C0, MEMORY[0x1E69E7CA0] + 8, sub_1D7756CA8);
      return v15;
    }
  }

  return v0;
}

uint64_t sub_1D77917B8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7791888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D77918E8(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D77402F0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D7791954(uint64_t a1)
{
  v2 = type metadata accessor for PurchaseContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1D77919B0@<X0>(unint64_t a1@<X0>, __int128 *a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for SubscribeButtonDestination(0);
  MEMORY[0x1EEE9AC00](v8);
  v83 = (&v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1D78B3294();
  v81 = *(v10 - 8);
  v82 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v80 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[13];
  v112 = a2[12];
  v113 = v12;
  v13 = a2[15];
  v114 = a2[14];
  v115 = v13;
  v14 = a2[9];
  v108 = a2[8];
  v109 = v14;
  v15 = a2[11];
  v110 = a2[10];
  v111 = v15;
  v16 = a2[5];
  v104 = a2[4];
  v105 = v16;
  v17 = a2[7];
  v106 = a2[6];
  v107 = v17;
  v18 = a2[1];
  v100 = *a2;
  v101 = v18;
  v19 = a2[3];
  v102 = a2[2];
  v103 = v19;
  result = [*(v4 + OBJC_IVAR____TtC16NewsSubscription31AlacartePaywallViewModelFactory_configurationManager) configuration];
  if (result)
  {
    v21 = result;
    if ([result respondsToSelector_])
    {
      v22 = a2[13];
      v96 = a2[12];
      v97 = v22;
      v23 = a2[15];
      v98 = a2[14];
      v99 = v23;
      v24 = a2[9];
      v92 = a2[8];
      v93 = v24;
      v25 = a2[11];
      v94 = a2[10];
      v95 = v25;
      v26 = a2[5];
      v88 = a2[4];
      v89 = v26;
      v27 = a2[7];
      v90 = a2[6];
      v91 = v27;
      v28 = a2[1];
      v84 = *a2;
      v85 = v28;
      v29 = a2[3];
      v86 = a2[2];
      v87 = v29;
      v30 = [PaywallModel.tag.getter() identifier];
      swift_unknownObjectRelease();
      if (!v30)
      {
        sub_1D78B5C74();
        v30 = sub_1D78B5C44();
      }

      v31 = [v21 paidALaCartePaywallConfigForChannelID_];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v31 = 0;
    }

    v32 = sub_1D77920B4(v4, &v100);
    v33 = sub_1D7792244(v32 & 1, v31);
    v77 = (a1 < 0xC) & (0x806u >> a1);
    v34 = sub_1D779261C(a1, v31, &v100, v77, v33);
    v75 = v35;
    v76 = v34;

    v96 = v112;
    v97 = v113;
    v98 = v114;
    v99 = v115;
    v92 = v108;
    v93 = v109;
    v94 = v110;
    v95 = v111;
    v88 = v104;
    v89 = v105;
    v90 = v106;
    v91 = v107;
    v84 = v100;
    v85 = v101;
    v86 = v102;
    v87 = v103;
    v36 = PaywallModel.tag.getter();
    v74 = sub_1D7792EAC(a1, v36, *(v4 + OBJC_IVAR____TtC16NewsSubscription31AlacartePaywallViewModelFactory_purchaseProvider));
    swift_unknownObjectRelease();
    v96 = v112;
    v97 = v113;
    v98 = v114;
    v99 = v115;
    v92 = v108;
    v93 = v109;
    v94 = v110;
    v95 = v111;
    v88 = v104;
    v89 = v105;
    v90 = v106;
    v91 = v107;
    v84 = v100;
    v85 = v101;
    v86 = v102;
    v87 = v103;
    v37 = PaywallModel.purchaseIDs.getter();
    v78 = v31;
    v79 = v8;
    if (v37)
    {
      if (v37[2])
      {
        v38 = v4;
        v39 = v37[4];
        v70 = v37[5];
        v71 = v39;

        goto LABEL_12;
      }
    }

    v38 = v4;
    v70 = 0xE000000000000000;
    v71 = 0;
LABEL_12:
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v41 = objc_opt_self();
    v42 = [v41 bundleForClass_];
    v43 = sub_1D78B3134();
    v72 = v44;
    v73 = v43;

    v45 = [v41 bundleForClass_];
    v46 = sub_1D78B3134();
    v68 = v47;
    v69 = v46;

    (*(v81 + 16))(v80, v38 + OBJC_IVAR____TtC16NewsSubscription31AlacartePaywallViewModelFactory_learnMoreURL, v82);
    v48 = [v41 bundleForClass_];
    v49 = sub_1D78B3134();
    v51 = v50;

    v52 = *(type metadata accessor for OsloSheetPurchaseDataModel(0) + 20);
    v53 = type metadata accessor for PostPurchaseDestination();
    v54 = v83;
    (*(*(v53 - 8) + 56))(v83 + v52, 1, 1, v53);
    v55 = v70;
    *v54 = v71;
    v54[1] = v55;
    swift_storeEnumTagMultiPayload();
    v57 = *(v38 + OBJC_IVAR____TtC16NewsSubscription31AlacartePaywallViewModelFactory_webAuthButtonTitle);
    v56 = *(v38 + OBJC_IVAR____TtC16NewsSubscription31AlacartePaywallViewModelFactory_webAuthButtonTitle + 8);
    v96 = v112;
    v97 = v113;
    v98 = v114;
    v99 = v115;
    v92 = v108;
    v93 = v109;
    v94 = v110;
    v95 = v111;
    v88 = v104;
    v89 = v105;
    v90 = v106;
    v91 = v107;
    v84 = v100;
    v85 = v101;
    v86 = v102;
    v87 = v103;

    v58 = PaywallModel.purchaseIDs.getter();

    if (v58)
    {

      if (v77)
      {
LABEL_14:
        v59 = 3;
LABEL_17:
        v60 = v58 == 0;
        v61 = type metadata accessor for AlacartePaywallViewModel();
        v62 = &a3[v61[9]];
        v63 = v75;
        *a3 = v76;
        *(a3 + 1) = v63;
        v64 = v72;
        *(a3 + 2) = v73;
        *(a3 + 3) = v64;
        v65 = v68;
        *(a3 + 4) = v69;
        *(a3 + 5) = v65;
        (*(v81 + 32))(&a3[v61[7]], v80, v82);
        v66 = &a3[v61[8]];
        *v66 = v49;
        v66[1] = v51;
        *v62 = 0;
        *(v62 + 1) = 0;
        result = sub_1D779300C(v83, &a3[v61[10]]);
        v67 = &a3[v61[11]];
        *v67 = v57;
        *(v67 + 1) = v56;
        a3[v61[12]] = (v74 & 1) == 0;
        a3[v61[13]] = v60;
        a3[v61[14]] = v59;
        return result;
      }
    }

    else if (v77)
    {
      goto LABEL_14;
    }

    v59 = 2;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

id sub_1D77920B4(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + OBJC_IVAR____TtC16NewsSubscription31AlacartePaywallViewModelFactory_purchaseController) purchaseLookUpEntriesByTagID];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v4 = result;
  sub_1D7793070();
  v5 = sub_1D78B5BC4();

  v6 = [PaywallModel.tag.getter() identifier];
  swift_unknownObjectRelease();
  v7 = sub_1D78B5C74();
  v9 = v8;

  if (*(v5 + 16))
  {
    v10 = sub_1D777BBB4(v7, v9);
    v12 = v11;

    if (v12)
    {
      v13 = *(*(v5 + 56) + 8 * v10);

      v14 = [v13 purchaseValidationState];

      return (v14 == 2);
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1D7792244(char a1, id a2)
{
  if (a1)
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v4 = sub_1D78B3134();

    return v4;
  }

  if (a2)
  {
    v6 = [a2 hardPaywallTitle];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1D78B5C74();
      v10 = v9;

      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v11)
      {
        return v8;
      }
    }
  }

  v12 = [PaywallModel.tag.getter() publisherPaidDescriptionStrings];
  swift_unknownObjectRelease();
  if (v12)
  {
    v13 = [v12 paywallDescription];

    if (v13)
    {
      v14 = [v13 hardPaywall];

      if (v14)
      {
        v8 = sub_1D78B5C74();
        v16 = v15;

        v17 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v17 = v8 & 0xFFFFFFFFFFFFLL;
        }

        if (v17)
        {
          return v8;
        }
      }
    }
  }

  type metadata accessor for Localized();
  v18 = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  sub_1D7740344(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D78BCAB0;
  v21 = [PaywallModel.tag.getter() name];
  swift_unknownObjectRelease();
  v22 = sub_1D78B5C74();
  v24 = v23;

  *(v20 + 56) = MEMORY[0x1E69E6158];
  *(v20 + 64) = sub_1D775ABD4();
  *(v20 + 32) = v22;
  *(v20 + 40) = v24;
  v25 = sub_1D78B5C94();

  return v25;
}

uint64_t sub_1D779261C(uint64_t a1, id a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a1 == 5)
  {
    if (a2)
    {
      v5 = [a2 channelPaywallTitle];
      if (v5)
      {
        v6 = v5;
        v7 = sub_1D78B5C74();
        v9 = v8;

        v10 = HIBYTE(v9) & 0xF;
        if ((v9 & 0x2000000000000000) == 0)
        {
          v10 = v7 & 0xFFFFFFFFFFFFLL;
        }

        if (v10)
        {
          return v7;
        }
      }
    }

    v11 = [PaywallModel.tag.getter() publisherPaidDescriptionStrings];
    swift_unknownObjectRelease();
    if (!v11)
    {
      goto LABEL_15;
    }

    v12 = [v11 paywallDescription];

    if (!v12)
    {
      goto LABEL_15;
    }

    v13 = [v12 channelPaywall];

    if (!v13)
    {
      goto LABEL_15;
    }

    v7 = sub_1D78B5C74();
    v15 = v14;

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (!v16)
    {

LABEL_15:
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v18 = [objc_opt_self() bundleForClass_];
      sub_1D78B3134();

      sub_1D7740344(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1D78BCAB0;
      v20 = [PaywallModel.tag.getter() name];
      swift_unknownObjectRelease();
      v21 = sub_1D78B5C74();
      v23 = v22;

      *(v19 + 56) = MEMORY[0x1E69E6158];
      *(v19 + 64) = sub_1D775ABD4();
      *(v19 + 32) = v21;
      *(v19 + 40) = v23;
      v7 = sub_1D78B5C94();

      return v7;
    }

    return v7;
  }

  v7 = a5;
  if (*(a3 + 240) == 1)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        v24 = [a2 leakyPaywallTitle];
        if (v24)
        {
          v25 = v24;
          v7 = sub_1D78B5C74();
          v27 = v26;

          v28 = HIBYTE(v27) & 0xF;
          if ((v27 & 0x2000000000000000) == 0)
          {
            v28 = v7 & 0xFFFFFFFFFFFFLL;
          }

          if (v28)
          {
            return v7;
          }
        }
      }

      v29 = [PaywallModel.tag.getter() publisherPaidDescriptionStrings];
      swift_unknownObjectRelease();
      if (v29)
      {
        v30 = [v29 paywallDescription];

        if (v30)
        {
          v31 = [v30 leakyPaywall];

          if (v31)
          {
            v7 = sub_1D78B5C74();
            v33 = v32;

            v34 = HIBYTE(v33) & 0xF;
            if ((v33 & 0x2000000000000000) == 0)
            {
              v34 = v7 & 0xFFFFFFFFFFFFLL;
            }

            if (v34)
            {
              return v7;
            }
          }
        }
      }

      type metadata accessor for Localized();
      v35 = swift_getObjCClassFromMetadata();
      v36 = [objc_opt_self() bundleForClass_];
      v7 = sub_1D78B3134();

      return v7;
    }

LABEL_33:

    return v7;
  }

  if (a4)
  {
    goto LABEL_33;
  }

  if (a2)
  {
    v38 = [a2 promotionalPaywallTitle];
    if (v38)
    {
      v39 = v38;
      v7 = sub_1D78B5C74();
      v41 = v40;

      v42 = HIBYTE(v41) & 0xF;
      if ((v41 & 0x2000000000000000) == 0)
      {
        v42 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (v42)
      {
        return v7;
      }
    }
  }

  v43 = [PaywallModel.tag.getter() publisherPaidDescriptionStrings];
  swift_unknownObjectRelease();
  if (!v43)
  {
    goto LABEL_15;
  }

  v44 = [v43 paywallDescription];

  if (!v44)
  {
    goto LABEL_15;
  }

  v45 = [v44 promotionalPaywall];

  if (!v45)
  {
    goto LABEL_15;
  }

  v7 = sub_1D78B5C74();
  v47 = v46;

  v48 = HIBYTE(v47) & 0xF;
  if ((v47 & 0x2000000000000000) == 0)
  {
    v48 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v48)
  {

    goto LABEL_15;
  }

  return v7;
}

uint64_t sub_1D7792DC4()
{
  v1 = OBJC_IVAR____TtC16NewsSubscription31AlacartePaywallViewModelFactory_learnMoreURL;
  v2 = sub_1D78B3294();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7792EAC(uint64_t result, id a2, void *a3)
{
  if (result)
  {
    if ([a2 isAuthenticationSetup])
    {
      if ([swift_unknownObjectRetain() tagType] == 3)
      {
        v5 = [a2 asSection];
        if (!v5 || (v6 = [v5 parentID], swift_unknownObjectRelease(), !v6))
        {
          swift_unknownObjectRelease();
          return 1;
        }
      }

      else
      {
        v6 = [a2 identifier];
      }

      v7 = sub_1D78B5C74();
      v9 = v8;

      v10 = [a3 purchasedTagIDs];
      v11 = sub_1D78B5F64();

      LOBYTE(v10) = sub_1D7832E64(v7, v9, v11);

      swift_unknownObjectRelease();

      if ((v10 & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1D779300C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscribeButtonDestination(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D7793070()
{
  result = qword_1EE08FD80;
  if (!qword_1EE08FD80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE08FD80);
  }

  return result;
}

id sub_1D7793344()
{
  v1 = OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler____lazy_storage___paidBundleViaOfferConfig;
  v2 = *(v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler____lazy_storage___paidBundleViaOfferConfig);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = [*(v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_appConfigurationManager) possiblyUnfetchedAppConfiguration];
    if ([v4 respondsToSelector_])
    {
      v3 = [v4 paidBundleViaOfferConfig];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v3 = 0;
    }

    v5 = *(v0 + v1);
    *(v0 + v1) = v3;
    v6 = v3;
    sub_1D7796F5C(v5);
  }

  sub_1D7796F6C(v2);
  return v3;
}

uint64_t sub_1D7793414()
{
  sub_1D7796E40();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PaidBundleViaOfferState();
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D78B3394();
  v49 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v48 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v46 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v46 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v50 = &v46 - v17;
  v18 = sub_1D7793344();
  if (v18)
  {
    v19 = v18;
    v47 = [v18 iconBadgeQuiescenceInterval];

    v21 = *(v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 24);
    v20 = *(v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store), v21);
    (*(v20 + 8))(v21, v20);
    v22 = *(v5 + 48);
    if (v22(v3, 1, v4) == 1)
    {
      sub_1D78B32E4();
      sub_1D78B32E4();
      sub_1D78B32E4();
      sub_1D78B32E4();
      *(v7 + v4[5]) = 0;
      *(v7 + v4[7]) = 0;
      *(v7 + v4[9]) = 0;
      if (v22(v3, 1, v4) != 1)
      {
        sub_1D7796E98(v3, sub_1D7796E40);
      }
    }

    else
    {
      sub_1D7796EF8(v3, v7);
    }

    v28 = v49;
    v27 = v50;
    v29 = *(v49 + 16);
    v29(v50, v7, v8);
    sub_1D7796E98(v7, type metadata accessor for PaidBundleViaOfferState);
    sub_1D78B3374();
    sub_1D78B3314();
    LODWORD(v7) = sub_1D78B3334();
    v30 = *(v28 + 8);
    v30(v13, v8);
    v30(v16, v8);
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v31 = sub_1D78B4304();
    __swift_project_value_buffer(v31, qword_1EE09C270);
    v32 = v48;
    v29(v48, v27, v8);
    v33 = v27;
    v34 = sub_1D78B42E4();
    v35 = sub_1D78B60A4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = v32;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      LODWORD(v49) = v7;
      v7 = v38;
      v51 = v38;
      *v37 = 67109634;
      *(v37 + 4) = v49 & 1;
      *(v37 + 8) = 2048;
      *(v37 + 10) = v47;
      *(v37 + 18) = 2080;
      sub_1D7796F7C();
      v39 = sub_1D78B66E4();
      v41 = v40;
      v30(v36, v8);
      v42 = sub_1D77AD82C(v39, v41, &v51);

      *(v37 + 20) = v42;
      _os_log_impl(&dword_1D7739000, v34, v35, "Checking quiescenceIntervalHasElapsed [%{BOOL}d]: quiescence interval [%lld]. Last Icon Badge Date [%s]", v37, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      v43 = v7;
      LOBYTE(v7) = v49;
      MEMORY[0x1DA7043F0](v43, -1, -1);
      MEMORY[0x1DA7043F0](v37, -1, -1);

      v44 = v50;
    }

    else
    {

      v30(v32, v8);
      v44 = v33;
    }

    v30(v44, v8);
  }

  else
  {
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v23 = sub_1D78B4304();
    __swift_project_value_buffer(v23, qword_1EE09C270);
    v24 = sub_1D78B42E4();
    v25 = sub_1D78B60A4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1D7739000, v24, v25, "Icon badge quiescence interval is null. Exiting.", v26, 2u);
      MEMORY[0x1DA7043F0](v26, -1, -1);
    }

    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

uint64_t sub_1D7793A18()
{
  sub_1D7796E40();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PaidBundleViaOfferState();
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D78B3394();
  v44 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v42 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v40 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v40 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v43 = &v40 - v17;
  v18 = sub_1D7793344();
  if (v18)
  {
    v19 = v18;
    v41 = [v18 upsellBestOfferRefreshQuiescenceInterval];

    v21 = *(v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 24);
    v20 = *(v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store), v21);
    (*(v20 + 8))(v21, v20);
    v22 = *(v5 + 48);
    if (v22(v3, 1, v4) == 1)
    {
      sub_1D78B32E4();
      sub_1D78B32E4();
      sub_1D78B32E4();
      sub_1D78B32E4();
      *&v7[v4[5]] = 0;
      *&v7[v4[7]] = 0;
      *&v7[v4[9]] = 0;
      if (v22(v3, 1, v4) != 1)
      {
        sub_1D7796E98(v3, sub_1D7796E40);
      }
    }

    else
    {
      sub_1D7796EF8(v3, v7);
    }

    v24 = v43;
    v25 = v44;
    v26 = *(v44 + 16);
    v26(v43, &v7[v4[10]], v8);
    sub_1D7796E98(v7, type metadata accessor for PaidBundleViaOfferState);
    sub_1D78B3374();
    sub_1D78B3314();
    v23 = sub_1D78B3334();
    v27 = *(v25 + 8);
    v27(v13, v8);
    v44 = v25 + 8;
    v27(v16, v8);
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v28 = sub_1D78B4304();
    __swift_project_value_buffer(v28, qword_1EE09C270);
    v29 = v42;
    v26(v42, v24, v8);
    v30 = sub_1D78B42E4();
    v31 = sub_1D78B60A4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = v29;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v45 = v34;
      *v33 = 67109634;
      *(v33 + 4) = v23 & 1;
      *(v33 + 8) = 2048;
      *(v33 + 10) = v41;
      *(v33 + 18) = 2080;
      sub_1D7796F7C();
      v35 = sub_1D78B66E4();
      v37 = v36;
      v27(v32, v8);
      v38 = sub_1D77AD82C(v35, v37, &v45);

      *(v33 + 20) = v38;
      _os_log_impl(&dword_1D7739000, v30, v31, "Checking hasBestOfferRefreshQuiescenceIntervalElapsed [%{BOOL}d]: quiescence interval [%lld]. Last Refresh Date [%s]", v33, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1DA7043F0](v34, -1, -1);
      MEMORY[0x1DA7043F0](v33, -1, -1);

      v27(v43, v8);
    }

    else
    {

      v27(v29, v8);
      v27(v24, v8);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_1D7793F7C()
{
  sub_1D7796E40();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PaidBundleViaOfferState();
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D78B3394();
  v48 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v46 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v44 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v44 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v47 = &v44 - v17;
  v18 = sub_1D7793344();
  if (v18)
  {
    v19 = v18;
    v45 = [v18 localNotificationQuiescenceInterval];

    v21 = *(v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 24);
    v20 = *(v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store), v21);
    (*(v20 + 8))(v21, v20);
    v22 = *(v5 + 48);
    if (v22(v3, 1, v4) == 1)
    {
      sub_1D78B32E4();
      sub_1D78B32E4();
      sub_1D78B32E4();
      sub_1D78B32E4();
      *&v7[v4[5]] = 0;
      *&v7[v4[7]] = 0;
      *&v7[v4[9]] = 0;
      if (v22(v3, 1, v4) != 1)
      {
        sub_1D7796E98(v3, sub_1D7796E40);
      }
    }

    else
    {
      sub_1D7796EF8(v3, v7);
    }

    v28 = v47;
    v29 = v48;
    v30 = *(v48 + 16);
    v30(v47, &v7[v4[6]], v8);
    sub_1D7796E98(v7, type metadata accessor for PaidBundleViaOfferState);
    sub_1D78B3374();
    sub_1D78B3314();
    v27 = sub_1D78B3334();
    v31 = *(v29 + 8);
    v31(v13, v8);
    v48 = v29 + 8;
    v31(v16, v8);
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v32 = sub_1D78B4304();
    __swift_project_value_buffer(v32, qword_1EE09C270);
    v33 = v46;
    v30(v46, v28, v8);
    v34 = sub_1D78B42E4();
    v35 = sub_1D78B60A4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = v33;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v49 = v38;
      *v37 = 67109634;
      *(v37 + 4) = v27 & 1;
      *(v37 + 8) = 2048;
      *(v37 + 10) = v45;
      *(v37 + 18) = 2080;
      sub_1D7796F7C();
      v39 = sub_1D78B66E4();
      v41 = v40;
      v31(v36, v8);
      v42 = sub_1D77AD82C(v39, v41, &v49);

      *(v37 + 20) = v42;
      _os_log_impl(&dword_1D7739000, v34, v35, "Checking quiescenceIntervalHasElapsed [%{BOOL}d]: quiescence interval [%lld]. Last Local Notification Date [%s]", v37, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1DA7043F0](v38, -1, -1);
      MEMORY[0x1DA7043F0](v37, -1, -1);

      v31(v47, v8);
    }

    else
    {

      v31(v33, v8);
      v31(v28, v8);
    }
  }

  else
  {
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v23 = sub_1D78B4304();
    __swift_project_value_buffer(v23, qword_1EE09C270);
    v24 = sub_1D78B42E4();
    v25 = sub_1D78B60A4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1D7739000, v24, v25, "Local notification quiescence interval is null. Exiting.", v26, 2u);
      MEMORY[0x1DA7043F0](v26, -1, -1);
    }

    v27 = 0;
  }

  return v27 & 1;
}

uint64_t sub_1D7794594()
{
  sub_1D7796E40();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PaidBundleViaOfferState();
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D78B3394();
  v48 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v46 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v44 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v44 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v47 = &v44 - v17;
  v18 = sub_1D7793344();
  if (v18)
  {
    v19 = v18;
    v45 = [v18 upsellQuiescenceInterval];

    v21 = *(v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 24);
    v20 = *(v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store), v21);
    (*(v20 + 8))(v21, v20);
    v22 = *(v5 + 48);
    if (v22(v3, 1, v4) == 1)
    {
      sub_1D78B32E4();
      sub_1D78B32E4();
      sub_1D78B32E4();
      sub_1D78B32E4();
      *&v7[v4[5]] = 0;
      *&v7[v4[7]] = 0;
      *&v7[v4[9]] = 0;
      if (v22(v3, 1, v4) != 1)
      {
        sub_1D7796E98(v3, sub_1D7796E40);
      }
    }

    else
    {
      sub_1D7796EF8(v3, v7);
    }

    v28 = v47;
    v29 = v48;
    v30 = *(v48 + 16);
    v30(v47, &v7[v4[8]], v8);
    sub_1D7796E98(v7, type metadata accessor for PaidBundleViaOfferState);
    sub_1D78B3374();
    sub_1D78B3314();
    v27 = sub_1D78B3334();
    v31 = *(v29 + 8);
    v31(v13, v8);
    v48 = v29 + 8;
    v31(v16, v8);
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v32 = sub_1D78B4304();
    __swift_project_value_buffer(v32, qword_1EE09C270);
    v33 = v46;
    v30(v46, v28, v8);
    v34 = sub_1D78B42E4();
    v35 = sub_1D78B60A4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = v33;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v49 = v38;
      *v37 = 67109634;
      *(v37 + 4) = v27 & 1;
      *(v37 + 8) = 2048;
      *(v37 + 10) = v45;
      *(v37 + 18) = 2080;
      sub_1D7796F7C();
      v39 = sub_1D78B66E4();
      v41 = v40;
      v31(v36, v8);
      v42 = sub_1D77AD82C(v39, v41, &v49);

      *(v37 + 20) = v42;
      _os_log_impl(&dword_1D7739000, v34, v35, "Checking quiescenceIntervalHasElapsed [%{BOOL}d]: quiescence interval [%lld]. Last Upsell Date [%s]", v37, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1DA7043F0](v38, -1, -1);
      MEMORY[0x1DA7043F0](v37, -1, -1);

      v31(v47, v8);
    }

    else
    {

      v31(v33, v8);
      v31(v28, v8);
    }
  }

  else
  {
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v23 = sub_1D78B4304();
    __swift_project_value_buffer(v23, qword_1EE09C270);
    v24 = sub_1D78B42E4();
    v25 = sub_1D78B60A4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1D7739000, v24, v25, "Upsell quiescence interval is null. Exiting.", v26, 2u);
      MEMORY[0x1DA7043F0](v26, -1, -1);
    }

    v27 = 0;
  }

  return v27 & 1;
}

uint64_t sub_1D7794BAC()
{
  sub_1D7796E40();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PaidBundleViaOfferState();
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7793344();
  if (v8)
  {
    v9 = v8;
    v10 = *(v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 24);
    v11 = *(v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store), v10);
    (*(v11 + 8))(v10, v11);
    v12 = *(v5 + 48);
    if (v12(v3, 1, v4) == 1)
    {
      sub_1D78B32E4();
      sub_1D78B32E4();
      sub_1D78B32E4();
      sub_1D78B32E4();
      *&v7[v4[5]] = 0;
      *&v7[v4[7]] = 0;
      *&v7[v4[9]] = 0;
      if (v12(v3, 1, v4) != 1)
      {
        sub_1D7796E98(v3, sub_1D7796E40);
      }
    }

    else
    {
      sub_1D7796EF8(v3, v7);
    }

    v17 = *&v7[v4[9]];
    sub_1D7796E98(v7, type metadata accessor for PaidBundleViaOfferState);
    if (v17 < [v9 upsellMaxNumberOfPresentations])
    {

      return 1;
    }

    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v19 = sub_1D78B4304();
    __swift_project_value_buffer(v19, qword_1EE09C270);
    v14 = v9;
    v20 = sub_1D78B42E4();
    v21 = sub_1D78B60A4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      *(v22 + 4) = [v14 upsellMaxNumberOfPresentations];

      _os_log_impl(&dword_1D7739000, v20, v21, "Reached max number of upsell presentations [%lld]. Exiting.", v22, 0xCu);
      MEMORY[0x1DA7043F0](v22, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v13 = sub_1D78B4304();
    __swift_project_value_buffer(v13, qword_1EE09C270);
    v14 = sub_1D78B42E4();
    v15 = sub_1D78B60A4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1D7739000, v14, v15, "No via offer configuration found. Exiting.", v16, 2u);
      MEMORY[0x1DA7043F0](v16, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_1D7795044(char a1)
{
  v2 = v1;
  sub_1D7796E40();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PaidBundleViaOfferState();
  v8 = *(v7 - 1);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v40 - v12;
  if ((sub_1D7794594() & 1) == 0)
  {
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v19 = sub_1D78B4304();
    __swift_project_value_buffer(v19, qword_1EE09C270);
    v20 = sub_1D78B42E4();
    v21 = sub_1D78B60A4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1D7739000, v20, v21, "Upsell quiescence interval has not elapsed. Skipping.", v22, 2u);
      MEMORY[0x1DA7043F0](v22, -1, -1);
    }

    v44 = 0;
    sub_1D77505D0();
    swift_allocObject();
    return sub_1D78B4104();
  }

  if ((sub_1D7794BAC() & 1) == 0)
  {
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v23 = sub_1D78B4304();
    __swift_project_value_buffer(v23, qword_1EE09C270);
    v24 = sub_1D78B42E4();
    v25 = sub_1D78B60A4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1D7739000, v24, v25, "Upsell cannot be presented. Exiting.", v26, 2u);
      MEMORY[0x1DA7043F0](v26, -1, -1);
    }

    v43 = 0;
    sub_1D77505D0();
    swift_allocObject();
    return sub_1D78B4104();
  }

  if ((a1 & 1) != 0 && (sub_1D7793A18() & 1) == 0)
  {
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v36 = sub_1D78B4304();
    __swift_project_value_buffer(v36, qword_1EE09C270);
    v37 = sub_1D78B42E4();
    v38 = sub_1D78B60A4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1D7739000, v37, v38, "Best Offer refresh quiescence interval did not elapse. Exiting.", v39, 2u);
      MEMORY[0x1DA7043F0](v39, -1, -1);
    }

    v42 = 0;
    sub_1D77505D0();
    swift_allocObject();
    return sub_1D78B4104();
  }

  v14 = (v1 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store);
  v15 = *(v2 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 32);
  v41 = *(v2 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 24);
  v40[1] = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store), v41);
  v17 = v14[3];
  v16 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v17);
  (*(v16 + 8))(v17, v16);
  v18 = *(v8 + 48);
  if (v18(v6, 1, v7) == 1)
  {
    sub_1D78B32E4();
    sub_1D78B32E4();
    sub_1D78B32E4();
    sub_1D78B32E4();
    *&v11[v7[5]] = 0;
    *&v11[v7[7]] = 0;
    *&v11[v7[9]] = 0;
    if (v18(v6, 1, v7) != 1)
    {
      sub_1D7796E98(v6, sub_1D7796E40);
    }
  }

  else
  {
    sub_1D7796EF8(v6, v11);
  }

  sub_1D78B3374();
  v28 = sub_1D78B3394();
  v29 = *(*(v28 - 8) + 16);
  v29(v13, v11, v28);
  v30 = *&v11[v7[5]];
  v29(&v13[v7[6]], &v11[v7[6]], v28);
  v31 = *&v11[v7[7]];
  v29(&v13[v7[8]], &v11[v7[8]], v28);
  v32 = *&v11[v7[9]];
  sub_1D7796E98(v11, type metadata accessor for PaidBundleViaOfferState);
  *&v13[v7[5]] = v30;
  *&v13[v7[7]] = v31;
  *&v13[v7[9]] = v32;
  (*(v15 + 24))(v13, v41, v15);
  sub_1D7796E98(v13, type metadata accessor for PaidBundleViaOfferState);
  v33 = (v2 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_featureAvailability);
  v34 = *(v2 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_featureAvailability + 24);
  v35 = v33[4];
  __swift_project_boxed_opaque_existential_1(v33, v34);
  return (*(v35 + 72))(v34, v35);
}

uint64_t sub_1D7795678()
{
  v1 = v0;
  sub_1D7796E40();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PaidBundleViaOfferState();
  v6 = *(v5 - 1);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v36 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v36 - v13;
  if (qword_1EE0904F0 != -1)
  {
    swift_once();
  }

  v15 = sub_1D78B4304();
  __swift_project_value_buffer(v15, qword_1EE09C270);
  v16 = sub_1D78B42E4();
  v17 = sub_1D78B60A4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1D7739000, v16, v17, "Will present upsell. Updating counters.", v18, 2u);
    MEMORY[0x1DA7043F0](v18, -1, -1);
  }

  v19 = (v1 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store);
  v20 = *(v1 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 24);
  v39 = *(v1 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 32);
  v40 = v20;
  v38 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store), v20);
  v22 = v19[3];
  v21 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v22);
  (*(v21 + 8))(v22, v21);
  v23 = *(v6 + 48);
  v24 = v23(v4, 1, v5);
  v43 = v14;
  if (v24 == 1)
  {
    sub_1D78B32E4();
    sub_1D78B32E4();
    sub_1D78B32E4();
    sub_1D78B32E4();
    *&v9[v5[5]] = 0;
    *&v9[v5[7]] = 0;
    *&v9[v5[9]] = 0;
    if (v23(v4, 1, v5) != 1)
    {
      sub_1D7796E98(v4, sub_1D7796E40);
    }
  }

  else
  {
    sub_1D7796EF8(v4, v9);
  }

  v42 = v5[8];
  sub_1D78B3374();
  v25 = sub_1D78B3394();
  v26 = *(*(v25 - 8) + 16);
  v26(v12, v9, v25);
  v27 = v5[6];
  v28 = *&v9[v5[5]];
  v26(&v12[v27], &v9[v27], v25);
  v29 = *&v9[v5[7]];
  v30 = v5[10];
  v41 = *&v9[v5[9]];
  v26(&v12[v30], &v9[v30], v25);
  sub_1D7796E98(v9, type metadata accessor for PaidBundleViaOfferState);
  v31 = v5[5];
  v36 = v29;
  v37 = v28;
  *&v12[v31] = v28;
  *&v12[v5[7]] = v29;
  v32 = v41;
  *&v12[v5[9]] = v41;
  v33 = v43;
  v26(v43, v12, v25);
  v26((v33 + v5[6]), &v12[v27], v25);
  result = (v26)(v33 + v5[8], &v12[v42], v25);
  if (__OFADD__(v32, 1))
  {
    __break(1u);
  }

  else
  {
    v26((v33 + v5[10]), &v12[v30], v25);
    sub_1D7796E98(v12, type metadata accessor for PaidBundleViaOfferState);
    v35 = v36;
    *(v33 + v5[5]) = v37;
    *(v33 + v5[7]) = v35;
    *(v33 + v5[9]) = v32 + 1;
    (*(v39 + 24))(v33, v40);
    return sub_1D7796E98(v33, type metadata accessor for PaidBundleViaOfferState);
  }

  return result;
}

uint64_t sub_1D7795B64()
{
  sub_1D7796E40();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PaidBundleViaOfferState();
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1D7793F7C() & 1) == 0)
  {
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v13 = sub_1D78B4304();
    __swift_project_value_buffer(v13, qword_1EE09C270);
    v14 = sub_1D78B42E4();
    v15 = sub_1D78B60A4();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_15;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "Local notification quiescence interval has not elapsed. Skipping.";
LABEL_14:
    _os_log_impl(&dword_1D7739000, v14, v15, v17, v16, 2u);
    MEMORY[0x1DA7043F0](v16, -1, -1);
LABEL_15:

    return 0;
  }

  v8 = sub_1D7793344();
  if (!v8)
  {
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v18 = sub_1D78B4304();
    __swift_project_value_buffer(v18, qword_1EE09C270);
    v14 = sub_1D78B42E4();
    v15 = sub_1D78B60A4();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_15;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "No via offer configuration found. Exiting.";
    goto LABEL_14;
  }

  v9 = v8;
  v10 = *(v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 24);
  v11 = *(v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store), v10);
  (*(v11 + 8))(v10, v11);
  v12 = *(v5 + 48);
  if (v12(v3, 1, v4) == 1)
  {
    sub_1D78B32E4();
    sub_1D78B32E4();
    sub_1D78B32E4();
    sub_1D78B32E4();
    *&v7[v4[5]] = 0;
    *&v7[v4[7]] = 0;
    *&v7[v4[9]] = 0;
    if (v12(v3, 1, v4) != 1)
    {
      sub_1D7796E98(v3, sub_1D7796E40);
    }
  }

  else
  {
    sub_1D7796EF8(v3, v7);
  }

  v20 = *&v7[v4[7]];
  sub_1D7796E98(v7, type metadata accessor for PaidBundleViaOfferState);
  if (v20 >= [v9 localNotificationMaxNumberOfPresentations])
  {
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v21 = sub_1D78B4304();
    __swift_project_value_buffer(v21, qword_1EE09C270);
    v14 = v9;
    v22 = sub_1D78B42E4();
    v23 = sub_1D78B60A4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = [v14 localNotificationMaxNumberOfPresentations];

      _os_log_impl(&dword_1D7739000, v22, v23, "Reached max number of local notifications [%lld]. Exiting.", v24, 0xCu);
      MEMORY[0x1DA7043F0](v24, -1, -1);
    }

    else
    {
    }

    goto LABEL_15;
  }

  return 1;
}

uint64_t sub_1D7795FF8()
{
  v1 = v0;
  sub_1D7796E40();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PaidBundleViaOfferState();
  v6 = *(v5 - 1);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v36 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v36 - v13;
  if (qword_1EE0904F0 != -1)
  {
    swift_once();
  }

  v15 = sub_1D78B4304();
  __swift_project_value_buffer(v15, qword_1EE09C270);
  v16 = sub_1D78B42E4();
  v17 = sub_1D78B60A4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1D7739000, v16, v17, "Will send local notification. Updating counters.", v18, 2u);
    MEMORY[0x1DA7043F0](v18, -1, -1);
  }

  v19 = (v1 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store);
  v20 = *(v1 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 24);
  v40 = *(v1 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 32);
  v41 = v20;
  v39 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store), v20);
  v22 = v19[3];
  v21 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v22);
  (*(v21 + 8))(v22, v21);
  v23 = *(v6 + 48);
  v24 = v23(v4, 1, v5);
  v43 = v14;
  if (v24 == 1)
  {
    sub_1D78B32E4();
    sub_1D78B32E4();
    sub_1D78B32E4();
    sub_1D78B32E4();
    *&v9[v5[5]] = 0;
    *&v9[v5[7]] = 0;
    *&v9[v5[9]] = 0;
    if (v23(v4, 1, v5) != 1)
    {
      sub_1D7796E98(v4, sub_1D7796E40);
    }
  }

  else
  {
    sub_1D7796EF8(v4, v9);
  }

  v42 = v5[6];
  sub_1D78B3374();
  v25 = sub_1D78B3394();
  v26 = *(*(v25 - 8) + 16);
  v26(v12, v9, v25);
  v27 = *&v9[v5[5]];
  v28 = v5[8];
  v29 = *&v9[v5[7]];
  v36 = v28;
  v26(&v12[v28], &v9[v28], v25);
  v30 = v5[10];
  v31 = *&v9[v5[9]];
  v26(&v12[v30], &v9[v30], v25);
  sub_1D7796E98(v9, type metadata accessor for PaidBundleViaOfferState);
  v32 = v5[5];
  v37 = v31;
  v38 = v27;
  *&v12[v32] = v27;
  *&v12[v5[7]] = v29;
  *&v12[v5[9]] = v31;
  v33 = v43;
  v26(v43, v12, v25);
  result = (v26)(v33 + v5[6], &v12[v42], v25);
  if (__OFADD__(v29, 1))
  {
    __break(1u);
  }

  else
  {
    v26((v33 + v5[8]), &v12[v36], v25);
    v26((v33 + v5[10]), &v12[v30], v25);
    sub_1D7796E98(v12, type metadata accessor for PaidBundleViaOfferState);
    v35 = v37;
    *(v33 + v5[5]) = v38;
    *(v33 + v5[7]) = v29 + 1;
    *(v33 + v5[9]) = v35;
    (*(v40 + 24))(v33, v41);
    return sub_1D7796E98(v33, type metadata accessor for PaidBundleViaOfferState);
  }

  return result;
}

uint64_t sub_1D77964E4()
{
  sub_1D7796E40();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PaidBundleViaOfferState();
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1D7793414() & 1) == 0)
  {
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v13 = sub_1D78B4304();
    __swift_project_value_buffer(v13, qword_1EE09C270);
    v14 = sub_1D78B42E4();
    v15 = sub_1D78B60A4();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_15;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "Icon badging quiescence interval has not elapsed. Skipping.";
LABEL_14:
    _os_log_impl(&dword_1D7739000, v14, v15, v17, v16, 2u);
    MEMORY[0x1DA7043F0](v16, -1, -1);
LABEL_15:

    return 0;
  }

  v8 = sub_1D7793344();
  if (!v8)
  {
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v18 = sub_1D78B4304();
    __swift_project_value_buffer(v18, qword_1EE09C270);
    v14 = sub_1D78B42E4();
    v15 = sub_1D78B60A4();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_15;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "No via offer configuration found. Exiting.";
    goto LABEL_14;
  }

  v9 = v8;
  v10 = *(v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 24);
  v11 = *(v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store), v10);
  (*(v11 + 8))(v10, v11);
  v12 = *(v5 + 48);
  if (v12(v3, 1, v4) == 1)
  {
    sub_1D78B32E4();
    sub_1D78B32E4();
    sub_1D78B32E4();
    sub_1D78B32E4();
    *&v7[v4[5]] = 0;
    *&v7[v4[7]] = 0;
    *&v7[v4[9]] = 0;
    if (v12(v3, 1, v4) != 1)
    {
      sub_1D7796E98(v3, sub_1D7796E40);
    }
  }

  else
  {
    sub_1D7796EF8(v3, v7);
  }

  v20 = *&v7[v4[5]];
  sub_1D7796E98(v7, type metadata accessor for PaidBundleViaOfferState);
  if (v20 >= [v9 iconBadgeMaxNumberOfPresentations])
  {
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v21 = sub_1D78B4304();
    __swift_project_value_buffer(v21, qword_1EE09C270);
    v14 = v9;
    v22 = sub_1D78B42E4();
    v23 = sub_1D78B60A4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = [v14 iconBadgeMaxNumberOfPresentations];

      _os_log_impl(&dword_1D7739000, v22, v23, "Reached max number of icon badging [%lld]. Exiting.", v24, 0xCu);
      MEMORY[0x1DA7043F0](v24, -1, -1);
    }

    else
    {
    }

    goto LABEL_15;
  }

  return 1;
}

uint64_t sub_1D7796978()
{
  v1 = v0;
  sub_1D7796E40();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PaidBundleViaOfferState();
  v6 = *(v5 - 1);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v36 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v36 - v13;
  if (qword_1EE0904F0 != -1)
  {
    swift_once();
  }

  v14 = sub_1D78B4304();
  __swift_project_value_buffer(v14, qword_1EE09C270);
  v15 = sub_1D78B42E4();
  v16 = sub_1D78B60A4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1D7739000, v15, v16, "Will badge icon. Updating counters.", v17, 2u);
    MEMORY[0x1DA7043F0](v17, -1, -1);
  }

  v18 = (v1 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store);
  v19 = *(v1 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 24);
  v41 = *(v1 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 32);
  v42 = v19;
  v40 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store), v19);
  v21 = v18[3];
  v20 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v21);
  (*(v20 + 8))(v21, v20);
  v22 = *(v6 + 48);
  if (v22(v4, 1, v5) == 1)
  {
    sub_1D78B32E4();
    sub_1D78B32E4();
    sub_1D78B32E4();
    sub_1D78B32E4();
    *&v9[v5[5]] = 0;
    *&v9[v5[7]] = 0;
    *&v9[v5[9]] = 0;
    if (v22(v4, 1, v5) != 1)
    {
      sub_1D7796E98(v4, sub_1D7796E40);
    }
  }

  else
  {
    sub_1D7796EF8(v4, v9);
  }

  sub_1D78B3374();
  v23 = v12;
  v24 = v5[6];
  v25 = *&v9[v5[5]];
  v26 = sub_1D78B3394();
  v27 = *(*(v26 - 8) + 16);
  v37 = v24;
  v27(v23 + v24, &v9[v24], v26);
  v28 = v5[8];
  v29 = *&v9[v5[7]];
  v36 = v28;
  v27(v23 + v28, &v9[v28], v26);
  v30 = v5[10];
  v31 = *&v9[v5[9]];
  v27(v23 + v30, &v9[v30], v26);
  sub_1D7796E98(v9, type metadata accessor for PaidBundleViaOfferState);
  *(v23 + v5[5]) = v25;
  v32 = v5[7];
  v38 = v31;
  v39 = v29;
  *(v23 + v32) = v29;
  *(v23 + v5[9]) = v31;
  v33 = v43;
  result = (v27)(v43, v23, v26);
  if (__OFADD__(v25, 1))
  {
    __break(1u);
  }

  else
  {
    v27(v33 + v5[6], (v23 + v37), v26);
    v27(v33 + v5[8], (v23 + v36), v26);
    v27(v33 + v5[10], (v23 + v30), v26);
    sub_1D7796E98(v23, type metadata accessor for PaidBundleViaOfferState);
    *(v33 + v5[5]) = v25 + 1;
    v35 = v38;
    *(v33 + v5[7]) = v39;
    *(v33 + v5[9]) = v35;
    (*(v41 + 24))(v33, v42);
    return sub_1D7796E98(v33, type metadata accessor for PaidBundleViaOfferState);
  }

  return result;
}

void sub_1D7796E40()
{
  if (!qword_1EE092D58[0])
  {
    type metadata accessor for PaidBundleViaOfferState();
    v0 = sub_1D78B62A4();
    if (!v1)
    {
      atomic_store(v0, qword_1EE092D58);
    }
  }
}

uint64_t sub_1D7796E98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7796EF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaidBundleViaOfferState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D7796F5C(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_1D7796F6C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

unint64_t sub_1D7796F7C()
{
  result = qword_1EE095650;
  if (!qword_1EE095650)
  {
    sub_1D78B3394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE095650);
  }

  return result;
}

uint64_t sub_1D77970D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D78B52D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D773F004(0, &qword_1EE08FE10);
  *v7 = sub_1D78B6104();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v8 = sub_1D78B52F4();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v8 = OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_purchaseObservers;
    swift_beginAccess();
    v4 = *(v2 + v8);
    v16 = MEMORY[0x1E69E7CC0];
    if (!(v4 >> 62))
    {
      v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
LABEL_21:
    __break(1u);
  }

  v9 = sub_1D78B6534();
LABEL_4:

  if (v9)
  {
    v14 = v8;
    v15 = v2;
    v2 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA703700](v2, v4);
        v10 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_16:
          __break(1u);
LABEL_17:
          v2 = v15;
          v12 = v16;
          v8 = v14;
          goto LABEL_19;
        }
      }

      else
      {
        if (v2 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        v10 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_16;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v8 = Strong, swift_unknownObjectRelease(), v8 == a1))
      {
      }

      else
      {
        v8 = &v16;
        sub_1D78B64B4();
        sub_1D78B64E4();
        sub_1D78B64F4();
        sub_1D78B64C4();
      }

      ++v2;
      if (v10 == v9)
      {
        goto LABEL_17;
      }
    }
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_19:

  *(v2 + v8) = v12;
}

uint64_t sub_1D7797354(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v38 = a2;
  v39 = a1;
  v5 = sub_1D78B52D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D773F004(0, &qword_1EE08FE10);
  *v8 = sub_1D78B6104();
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v9 = sub_1D78B52F4();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v9 = OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_transactionObservers;
    swift_beginAccess();
    v3 = *(v4 + v9);
    v40 = MEMORY[0x1E69E7CC0];
    if (!(v3 >> 62))
    {
      v10 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
LABEL_39:
    __break(1u);
  }

  v10 = sub_1D78B6534();
LABEL_4:

  if (v10)
  {
    v34 = v9;
    v35 = v4;
    v11 = 0;
    v36 = v3 & 0xFFFFFFFFFFFFFF8;
    v37 = v3 & 0xC000000000000001;
    while (1)
    {
      if (v37)
      {
        v12 = MEMORY[0x1DA703700](v11, v3);
        v4 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_34:
          __break(1u);
LABEL_35:
          v32 = v40;
          v9 = v34;
          v4 = v35;
          goto LABEL_37;
        }
      }

      else
      {
        if (v11 >= *(v36 + 16))
        {
          __break(1u);
          goto LABEL_39;
        }

        v12 = *(v3 + 8 * v11 + 32);

        v4 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_34;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v13 = *(v12 + 24);
        ObjectType = swift_getObjectType();
        v15 = (*(*(v13 + 8) + 8))(ObjectType);
        v17 = v16;
        swift_unknownObjectRelease();
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      v18 = swift_getObjectType();
      v19 = *(v38 + 8);
      v20 = (*(v19 + 8))(v18, v19);
      if (!v17)
      {
        goto LABEL_6;
      }

      if (v15 == v20 && v17 == v21)
      {
      }

      else
      {
        v23 = sub_1D78B6724();

        if ((v23 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v24 = *(v12 + 24);
        v25 = swift_getObjectType();
        v26 = (*(*(v24 + 8) + 16))(v25);
        v28 = v27;
        swift_unknownObjectRelease();
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      v29 = (*(v19 + 16))(v18, v19);
      v9 = v30;
      if (v28)
      {
        if (v26 == v29 && v28 == v30)
        {

          goto LABEL_8;
        }

        v31 = sub_1D78B6724();

        if (v31)
        {

          goto LABEL_8;
        }
      }

      else
      {
LABEL_6:
      }

LABEL_7:
      v9 = &v40;
      sub_1D78B64B4();
      sub_1D78B64E4();
      sub_1D78B64F4();
      sub_1D78B64C4();
LABEL_8:
      ++v11;
      if (v4 == v10)
      {
        goto LABEL_35;
      }
    }
  }

  v32 = MEMORY[0x1E69E7CC0];
LABEL_37:

  *(v4 + v9) = v32;
}

double sub_1D779776C@<D0>(uint64_t a1@<X0>, void (*a2)()@<X1>, void (*a3)(void)@<X3>, _OWORD *a4@<X8>)
{
  sub_1D779C6B0(a1, v10);
  if (!v11)
  {
    sub_1D779C78C(v10, &qword_1EE08F9C0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D779C73C);
    goto LABEL_5;
  }

  sub_1D773F004(0, &qword_1EE08FF20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    sub_1D779C65C();
    v7 = swift_allocError();
    a3();

    goto LABEL_6;
  }

  a2();

LABEL_6:
  result = 0.0;
  *a4 = 0u;
  a4[1] = 0u;
  return result;
}

void sub_1D7797898(void *a1, void (*a2)(uint64_t))
{
  if (a1)
  {
    v3 = a1;
    v4 = a1;
    v5 = v3;
  }

  else
  {
    sub_1D779C65C();
    v5 = swift_allocError();
    v3 = v5;
  }

  a2(v5);
}

void sub_1D7797914(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

BOOL sub_1D7797980()
{
  sub_1D78B3F24();
  v0 = *__swift_project_boxed_opaque_existential_1(v4, v4[3]);

  sub_1D78B3854();

  swift_beginAccess();
  v1 = *(v0 + 24);

  sub_1D78B3864();

  v2 = *(v1 + 16);

  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 != 0;
}

void sub_1D7797A3C(void *a1, uint64_t a2)
{
  v14[5] = *MEMORY[0x1E69E9840];
  sub_1D78B3F24();
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  v5 = [a1 offerName];
  v6 = sub_1D78B5C74();
  v8 = v7;

  sub_1D77BBB6C(v6, v8, a2);

  __swift_destroy_boxed_opaque_existential_1(v14);
  v9 = *(v2 + OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_internalPurchaseManager);
  v10 = sub_1D78B5C44();
  v11 = *(a2 + 56);
  v14[0] = 0;
  [v9 startPurchaseWithTagID:v10 purchase:a1 webAccessOptIn:v11 error:v14];

  v12 = v14[0];
  if (v14[0])
  {
    swift_willThrow();
    v13 = v12;
  }
}

id sub_1D7797BA0(void *a1, uint64_t a2)
{
  v12[5] = *MEMORY[0x1E69E9840];
  sub_1D78B3F24();
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v5 = [a1 offerName];
  v6 = sub_1D78B5C74();
  v8 = v7;

  sub_1D77BBB6C(v6, v8, a2);

  __swift_destroy_boxed_opaque_existential_1(v12);
  v9 = *(v2 + OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_internalPurchaseManager);
  v12[0] = 0;
  result = [v9 startBundlePurchaseWithPurchase:a1 error:v12];
  v11 = v12[0];
  if (v12[0])
  {
    swift_willThrow();
    return v11;
  }

  return result;
}

void sub_1D7797CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v52 = a3;
  v53 = a4;
  v15 = type metadata accessor for PurchaseContext();
  v50 = *(v15 - 8);
  v16 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v51 = v18;

  sub_1D78B3F24();
  __swift_project_boxed_opaque_existential_1(aBlock, v55);
  sub_1D77BBB6C(*a6, a6[1], a6);
  __swift_destroy_boxed_opaque_existential_1(aBlock);
  v19 = &a5[OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_activeSceneIdentifier];
  *v19 = a7;
  *(v19 + 1) = a8;

  v20 = [objc_allocWithZone(MEMORY[0x1E698CAE0]) initWithPurchaseType:0 buyParams:a9];
  v21 = [objc_opt_self() sharedAccount];
  v22 = [v21 activeiTunesAccount];

  [v20 setAccount_];
  [v20 setUserInitiated_];
  if (a8)
  {
    v23 = sub_1D78B5C44();
  }

  else
  {
    v23 = 0;
  }

  [v20 setPresentingSceneIdentifier_];

  v24 = *&a5[OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_metricsBuilder + 24];
  v25 = *&a5[OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_metricsBuilder + 32];
  __swift_project_boxed_opaque_existential_1(&a5[OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_metricsBuilder], v24);
  v26 = (*(v25 + 32))(a6, v24, v25);
  sub_1D778CA2C(v26);
  v27 = sub_1D78B5BB4();

  [v20 setMetricsOverlay_];

  v28 = sub_1D78B5BE4();
  v30 = v29;

  if (v30)
  {
    sub_1D779C548(0, &qword_1EC9C9E80, sub_1D779C328, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D78BCAB0;
    *(inited + 32) = 0x7363697274656DLL;
    v32 = inited + 32;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = v28;
    *(inited + 56) = v30;
    sub_1D77FEFC4(inited);
    swift_setDeallocating();
    sub_1D779C45C(v32, sub_1D779C328);
    v33 = sub_1D78B5BB4();

    [v20 setAdditionalHeaders_];
  }

  v34 = objc_opt_self();
  v35 = v20;
  v36 = [v34 bag];
  v37 = [objc_allocWithZone(MEMORY[0x1E698CD20]) initWithPurchase:v35 bag:v36];

  swift_unknownObjectRelease();
  [v37 setDelegate_];
  v38 = [v37 performPurchase];
  sub_1D7770378(a6, &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = (*(v50 + 80) + 24) & ~*(v50 + 80);
  v40 = (v16 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v40 + 23) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  *(v42 + 16) = a5;
  sub_1D777044C(v17, v42 + v39);
  v43 = (v42 + v40);
  v44 = v53;
  *v43 = v52;
  v43[1] = v44;
  v45 = (v42 + v41);
  v46 = v51;
  *v45 = sub_1D7757030;
  v45[1] = v46;
  *(v42 + ((v41 + 23) & 0xFFFFFFFFFFFFFFF8)) = v37;
  v56 = sub_1D779C258;
  v57 = v42;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D779D648;
  v55 = &block_descriptor_2;
  v47 = _Block_copy(aBlock);
  v48 = a5;

  v49 = v37;

  [v38 addFinishBlock_];
  _Block_release(v47);
}

uint64_t sub_1D7798274(uint64_t a1, uint64_t a2, char *a3, uint64_t *a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v56 = a5;
  v14 = type metadata accessor for PurchaseContext();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  if (a2)
  {
    v17 = sub_1D78B31B4();
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D78B6094();
    sub_1D774FE1C();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D78BCAB0;
    v19 = [v17 description];
    v20 = sub_1D78B5C74();
    v22 = v21;

    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1D775ABD4();
    *(v18 + 32) = v20;
    *(v18 + 40) = v22;
    sub_1D78B42C4();

    v23 = v17;
    sub_1D7798780(v23, a4);

    v24 = v23;
    v56();
  }

  else if (a1)
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D78B60A4();
    sub_1D78B42C4();
    v25 = *&a3[OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_bundleSubscriptionManager];
    sub_1D7770378(a4, &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = (*(v15 + 80) + 24) & ~*(v15 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = a3;
    sub_1D777044C(&v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
    v28 = (v27 + ((v16 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v28 = a7;
    v28[1] = a8;
    *&v59 = sub_1D779C3B8;
    *(&v59 + 1) = v27;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v58 = sub_1D7781488;
    *(&v58 + 1) = &block_descriptor_17;
    v29 = _Block_copy(&aBlock);
    v30 = a3;

    [v25 refreshBundleSubscriptionWithCachePolicy:3 completion:v29];
    _Block_release(v29);
  }

  else
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D78B60A4();
    sub_1D78B42C4();
    sub_1D779C384(&aBlock);
    sub_1D7781E98();
    v31 = swift_allocError();
    v33 = v58;
    v32 = v59;
    *v34 = aBlock;
    *(v34 + 16) = v33;
    *(v34 + 32) = v32;
    v35 = v63;
    v37 = v60;
    v36 = v61;
    *(v34 + 80) = v62;
    *(v34 + 96) = v35;
    *(v34 + 48) = v37;
    *(v34 + 64) = v36;
    v39 = v65;
    v38 = v66;
    v40 = v64;
    *(v34 + 160) = v67;
    *(v34 + 128) = v39;
    *(v34 + 144) = v38;
    *(v34 + 112) = v40;
    sub_1D7798780(v31, a4);

    v41 = swift_allocError();
    v43 = v58;
    v42 = v59;
    *v44 = aBlock;
    *(v44 + 16) = v43;
    *(v44 + 32) = v42;
    v45 = v63;
    v47 = v60;
    v46 = v61;
    *(v44 + 80) = v62;
    *(v44 + 96) = v45;
    *(v44 + 48) = v47;
    *(v44 + 64) = v46;
    v49 = v65;
    v48 = v66;
    v50 = v64;
    *(v44 + 160) = v67;
    *(v44 + 128) = v49;
    *(v44 + 144) = v48;
    *(v44 + 112) = v50;
    v56();
  }

  v52 = *a4;
  v51 = a4[1];
  sub_1D78B3F24();
  __swift_project_boxed_opaque_existential_1(&aBlock, *(&v58 + 1));
  sub_1D77BC598(v52, v51);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v53 = &a3[OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_activeSceneIdentifier];
  *v53 = 0;
  *(v53 + 1) = 0;
}

uint64_t sub_1D7798780(void *a1, uint64_t a2)
{
  v52 = a1;
  v51 = sub_1D78B5254();
  v4 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1D78B52A4();
  v6 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PurchaseContext();
  v47 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v45 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v36 - v11;
  sub_1D7770378(a2, &v36 - v11);
  v12 = OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_purchaseObservers;
  result = swift_beginAccess();
  v14 = *(v2 + v12);
  if (v14 >> 62)
  {
LABEL_33:
    result = sub_1D78B6534();
    v15 = result;
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38 = v12;
  if (v15)
  {
    if (v15 < 1)
    {
      __break(1u);
      return result;
    }

    v37 = v2;
    v16 = v14 & 0xC000000000000001;
    v41 = v55;
    v40 = (v4 + 8);
    v39 = (v6 + 8);

    v17 = 0;
    v44 = v14;
    v43 = v15;
    v42 = v14 & 0xC000000000000001;
    v18 = v50;
    do
    {
      if (v16)
      {
        v19 = MEMORY[0x1DA703700](v17, v14);
      }

      else
      {
        v19 = *(v14 + 8 * v17 + 32);
      }

      if (swift_unknownObjectWeakLoadStrong() && (swift_unknownObjectRelease(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0))
      {
        v21 = Strong;
        v22 = *(v19 + 24);
        sub_1D773F004(0, &qword_1EE08FE10);
        v23 = sub_1D78B6104();
        v24 = v45;
        sub_1D7770378(v53, v45);
        v25 = (*(v47 + 80) + 40) & ~*(v47 + 80);
        v26 = swift_allocObject();
        v26[2] = v21;
        v26[3] = v22;
        v27 = v52;
        v26[4] = v52;
        sub_1D777044C(v24, v26 + v25);
        v55[2] = sub_1D779C5AC;
        v55[3] = v26;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        v55[0] = sub_1D775FB6C;
        v55[1] = &block_descriptor_29_0;
        v28 = _Block_copy(aBlock);
        swift_unknownObjectRetain();
        v29 = v27;

        v30 = v48;
        sub_1D78B5274();
        aBlock[0] = MEMORY[0x1E69E7CC0];
        sub_1D7746524(&qword_1EE090300, MEMORY[0x1E69E7F60]);
        sub_1D779C548(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
        sub_1D775F4A4();
        v31 = v51;
        v15 = v43;
        sub_1D78B6324();
        MEMORY[0x1DA7033B0](0, v30, v18, v28);
        v16 = v42;
        _Block_release(v28);
        swift_unknownObjectRelease();

        (*v40)(v18, v31);
        v32 = v30;
        v14 = v44;
        (*v39)(v32, v49);
      }

      else
      {
      }

      ++v17;
    }

    while (v15 != v17);

    v2 = v37;
    v12 = v38;
  }

  v6 = *(v2 + v12);
  aBlock[0] = MEMORY[0x1E69E7CC0];
  if (v6 >> 62)
  {
    v14 = sub_1D78B6534();
  }

  else
  {
    v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14)
  {
    v33 = v2;
    v4 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1DA703700](v4, v6);
        v34 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_28:
          __break(1u);
LABEL_29:
          v35 = aBlock[0];
          v2 = v33;
          v12 = v38;
          goto LABEL_31;
        }
      }

      else
      {
        if (v4 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_33;
        }

        v12 = *(v6 + 8 * v4 + 32);

        v34 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_28;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        v2 = aBlock;
        sub_1D78B64B4();
        sub_1D78B64E4();
        sub_1D78B64F4();
        sub_1D78B64C4();
      }

      else
      {
      }

      ++v4;
      if (v34 == v14)
      {
        goto LABEL_29;
      }
    }
  }

  v35 = MEMORY[0x1E69E7CC0];
LABEL_31:

  sub_1D779C45C(v53, type metadata accessor for PurchaseContext);
  *(v2 + v12) = v35;
}

uint64_t sub_1D7798E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  v6 = sub_1D7798ED0(a3);
  return a4(v6);
}

uint64_t sub_1D7798ED0(uint64_t a1)
{
  v46 = sub_1D78B5254();
  v3 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1D78B52A4();
  v5 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PurchaseContext();
  v42 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v40 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v33 - v10;
  sub_1D7770378(a1, &v33 - v10);
  v11 = OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_purchaseObservers;
  result = swift_beginAccess();
  v13 = *(v1 + v11);
  if (v13 >> 62)
  {
LABEL_33:
    result = sub_1D78B6534();
    v14 = result;
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = v11;
  if (v14)
  {
    if (v14 < 1)
    {
      __break(1u);
      return result;
    }

    v33 = v1;
    v15 = v13 & 0xC000000000000001;
    v37 = v50;
    v36 = (v3 + 8);
    v35 = (v5 + 8);

    v16 = 0;
    v39 = v13;
    v38 = v13 & 0xC000000000000001;
    do
    {
      if (v15)
      {
        v5 = MEMORY[0x1DA703700](v16, v13);
      }

      else
      {
        v5 = *(v13 + 8 * v16 + 32);
      }

      if (swift_unknownObjectWeakLoadStrong() && (swift_unknownObjectRelease(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0))
      {
        v18 = Strong;
        v19 = *(v5 + 24);
        sub_1D773F004(0, &qword_1EE08FE10);
        v48 = sub_1D78B6104();
        v20 = v40;
        sub_1D7770378(v47, v40);
        v21 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v22 = swift_allocObject();
        *(v22 + 16) = v18;
        *(v22 + 24) = v19;
        sub_1D777044C(v20, v22 + v21);
        v50[2] = sub_1D779C4BC;
        v50[3] = v22;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        v50[0] = sub_1D775FB6C;
        v50[1] = &block_descriptor_23;
        v23 = _Block_copy(aBlock);
        swift_unknownObjectRetain();

        v24 = v43;
        sub_1D78B5274();
        aBlock[0] = MEMORY[0x1E69E7CC0];
        sub_1D7746524(&qword_1EE090300, MEMORY[0x1E69E7F60]);
        sub_1D779C548(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
        sub_1D775F4A4();
        v25 = v45;
        v26 = v46;
        sub_1D78B6324();
        v27 = v48;
        MEMORY[0x1DA7033B0](0, v24, v25, v23);
        v15 = v38;
        _Block_release(v23);
        swift_unknownObjectRelease();

        (*v36)(v25, v26);
        v28 = v24;
        v13 = v39;
        (*v35)(v28, v44);
      }

      else
      {
      }

      ++v16;
    }

    while (v14 != v16);

    v1 = v33;
    v11 = v34;
  }

  v13 = *(v1 + v11);
  aBlock[0] = MEMORY[0x1E69E7CC0];
  if (v13 >> 62)
  {
    v29 = sub_1D78B6534();
  }

  else
  {
    v29 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v29)
  {
    v30 = v1;
    v3 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1DA703700](v3, v13);
        v31 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_28:
          __break(1u);
LABEL_29:
          v32 = aBlock[0];
          v1 = v30;
          v11 = v34;
          goto LABEL_31;
        }
      }

      else
      {
        if (v3 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_33;
        }

        v11 = *(v13 + 8 * v3 + 32);

        v31 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_28;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        v1 = aBlock;
        sub_1D78B64B4();
        v5 = *(aBlock[0] + 16);
        sub_1D78B64E4();
        sub_1D78B64F4();
        sub_1D78B64C4();
      }

      else
      {
      }

      ++v3;
      if (v31 == v29)
      {
        goto LABEL_29;
      }
    }
  }

  v32 = MEMORY[0x1E69E7CC0];
LABEL_31:

  sub_1D779C45C(v47, type metadata accessor for PurchaseContext);
  *(v1 + v11) = v32;
}

uint64_t sub_1D7799540()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 connectedScenes];

  sub_1D773F004(0, &unk_1EC9C9EC0);
  v3 = sub_1D779D4C0();
  v4 = sub_1D78B5F64();

  if ((v4 & 0xC000000000000001) != 0)
  {
    sub_1D78B6364();
    sub_1D78B5F94();
    v4 = v35;
    v5 = v36;
    v6 = v37;
    v7 = v38;
    v8 = v39;
  }

  else
  {
    v7 = 0;
    v9 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v4 + 56);
  }

  v12 = (v6 + 64) >> 6;
  v32 = v5;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_1D78B63B4() || (swift_dynamicCast(), v3 = v34, v15 = v7, v16 = v8, !v34))
      {
LABEL_25:
        sub_1D779D528();
        return 0;
      }
    }

    else
    {
      v13 = v7;
      v14 = v8;
      v15 = v7;
      if (!v8)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= v12)
          {
            goto LABEL_25;
          }

          v14 = *(v5 + 8 * v15);
          ++v13;
          if (v14)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_37:
        result = sub_1D78B6534();
        if (!result)
        {
          goto LABEL_38;
        }

LABEL_31:
        if ((v0 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x1DA703700](0, v0);
        }

        else
        {
          if (!*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v29 = *(v0 + 32);
        }

        v30 = v29;
        goto LABEL_39;
      }

LABEL_14:
      v16 = (v14 - 1) & v14;
      v3 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
      if (!v3)
      {
        goto LABEL_25;
      }
    }

    v17 = *(v33 + OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_activeSceneIdentifier + 8);
    if (!v17)
    {
      goto LABEL_8;
    }

    v18 = v4;
    v19 = *(v33 + OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_activeSceneIdentifier);

    v20 = [v3 _sceneIdentifier];
    v21 = sub_1D78B5C74();
    v23 = v22;

    if (v19 == v21 && v17 == v23)
    {
      break;
    }

    v0 = sub_1D78B6724();

    v4 = v18;
    v5 = v32;
    if (v0)
    {
      goto LABEL_28;
    }

LABEL_8:

    v7 = v15;
    v8 = v16;
  }

LABEL_28:
  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (!v26)
  {
    sub_1D779D528();

    return 0;
  }

  v27 = v26;
  v3 = v3;
  v28 = [v27 windows];
  sub_1D773F004(0, &unk_1EC9C9ED0);
  v0 = sub_1D78B5EB4();

  if (v0 >> 62)
  {
    goto LABEL_37;
  }

  result = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    goto LABEL_31;
  }

LABEL_38:
  v30 = 0;
LABEL_39:

  v31 = [v30 rootViewController];

  sub_1D779D528();
  return v31;
}

uint64_t sub_1D7799A68()
{
  sub_1D779C73C(0, &qword_1EE0951C0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4174();
}

void sub_1D7799B0C(uint64_t a1, void (*a2)(void, void), uint64_t a3, void *a4)
{
  v7 = sub_1D7799540();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1D78B60B4();
    v10 = [a4 account];
    v11 = v9;
    v12 = [a4 options];
    v13 = [objc_allocWithZone(MEMORY[0x1E698CC58]) initWithAccount:v10 presentingViewController:v11 options:v12];

    v14 = [v13 performAuthentication];
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;
    v17[4] = sub_1D779D5E8;
    v17[5] = v15;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1D7780F60;
    v17[3] = &block_descriptor_86;
    v16 = _Block_copy(v17);

    [v14 addFinishBlock_];
    _Block_release(v16);
  }

  else
  {
    a2(0, 0);
  }
}

uint64_t sub_1D7799CCC(uint64_t a1, id a2, uint64_t (*a3)(uint64_t, id))
{
  if (a2)
  {
    v6 = a2;
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D78B6094();
    sub_1D774FE1C();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D78BCAB0;
    sub_1D773CA14(0, &qword_1EE08F9F0);
    sub_1D78B6504();
    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 64) = sub_1D775ABD4();
    *(v7 + 32) = 0;
    *(v7 + 40) = 0xE000000000000000;
    sub_1D78B42C4();
  }

  else
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D78B60A4();
    sub_1D78B42C4();
    v8 = [objc_opt_self() sharedAccount];
    [v8 reloadiTunesAccount];
  }

  return a3(a1, a2);
}

void sub_1D7799F10(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4)
{
  v7 = sub_1D7799540();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1D78B60B4();
    v10 = [objc_allocWithZone(MEMORY[0x1E698CC50]) initWithRequest:a4 presentingViewController:v9];
    v11 = [v10 present];
    v13[4] = a2;
    v13[5] = a3;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_1D779D648;
    v13[3] = &block_descriptor_71;
    v12 = _Block_copy(v13);

    [v11 addFinishBlock_];
    _Block_release(v12);
  }

  else
  {
    a2(0, 0);
  }
}

uint64_t sub_1D779A088(void *a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7, void (*a8)(id, uint64_t, uint64_t))
{
  v13 = _Block_copy(aBlock);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = a3;
  v16 = a4;
  v17 = a1;
  a8(v16, a7, v14);
}

void sub_1D779A148(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4)
{
  v7 = sub_1D7799540();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1D78B60B4();
    v10 = [objc_allocWithZone(MEMORY[0x1E698CCD0]) initWithRequest:a4 bag:objc_msgSend(objc_opt_self() presentingViewController:{sel_bag), v9}];
    swift_unknownObjectRelease();
    v11 = [v10 presentEngagement];
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;
    v14[4] = sub_1D779D53C;
    v14[5] = v12;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_1D779D648;
    v14[3] = &block_descriptor_59_0;
    v13 = _Block_copy(v14);

    [v11 addFinishBlock_];
    _Block_release(v13);
  }

  else
  {
    a2(0, 0);
  }
}

void sub_1D779A31C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1D78B31B4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_1D779A420(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v47 = a3;
  sub_1D779C548(0, qword_1EE096030, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v39 - v11;
  v49 = v5;
  v50 = a2;
  if (sub_1D779AA10(a1, a2))
  {
    v14 = v13;
    ObjectType = swift_getObjectType();
    (*(v14 + 24))(a4, ObjectType, v14);
    swift_unknownObjectRelease();
  }

  v16 = OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_purchaseObservers;
  v17 = v49;
  swift_beginAccess();
  v40 = v16;
  v18 = *(v17 + v16);
  if (v18 >> 62)
  {
LABEL_43:
    v19 = sub_1D78B6534();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v42 = a1;
  v48 = a4;
  if (v19)
  {
    if (v19 < 1)
    {
      __break(1u);
      return;
    }

    v44 = OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_purchaseContextEntriesManager;
    v20 = v18 & 0xC000000000000001;

    v21 = 0;
    v41 = a5;
    v45 = v19;
    v46 = v18;
    v43 = v18 & 0xC000000000000001;
    do
    {
      if (v20)
      {
        v22 = MEMORY[0x1DA703700](v21, v18);
      }

      else
      {
        v22 = *(v18 + 8 * v21 + 32);
      }

      if (swift_unknownObjectWeakLoadStrong() && (swift_unknownObjectRelease(), swift_unknownObjectWeakLoadStrong()))
      {
        v23 = *(v22 + 24);
        sub_1D78B3F24();
        v24 = *__swift_project_boxed_opaque_existential_1(v52, v53);

        sub_1D78B3854();

        swift_beginAccess();
        v25 = *(v24 + 24);
        if (*(v25 + 16) && (v26 = sub_1D777BBB4(a1, v50), (v27 & 1) != 0))
        {
          a4 = v26;
          v28 = *(v25 + 56);
          v29 = type metadata accessor for PurchaseContext();
          v30 = *(v29 - 8);
          v31 = v28 + *(v30 + 72) * a4;
          a5 = v41;
          sub_1D7770378(v31, v12);
          (*(v30 + 56))(v12, 0, 1, v29);
          a1 = v42;
        }

        else
        {
          v32 = type metadata accessor for PurchaseContext();
          (*(*(v32 - 8) + 56))(v12, 1, 1, v32);
        }

        swift_endAccess();

        sub_1D78B3864();

        __swift_destroy_boxed_opaque_existential_1(v52);
        v33 = swift_getObjectType();
        (*(v23 + 32))(a1, v50, v47, v48, v12, a5, v33, v23);

        swift_unknownObjectRelease();
        sub_1D779C78C(v12, qword_1EE096030, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6720], sub_1D779C548);
        v19 = v45;
        v18 = v46;
        v20 = v43;
      }

      else
      {
      }

      ++v21;
    }

    while (v19 != v21);
  }

  v18 = *(v49 + v40);
  v52[0] = MEMORY[0x1E69E7CC0];
  if (v18 >> 62)
  {
    v34 = sub_1D78B6534();
  }

  else
  {
    v34 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v34)
  {
    v35 = 0;
    a1 = v18 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA703700](v35, v18);
        a5 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
LABEL_34:
          __break(1u);
LABEL_35:
          v36 = v52[0];
          a1 = v42;
          goto LABEL_37;
        }
      }

      else
      {
        if (v35 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_43;
        }

        a5 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          goto LABEL_34;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_1D78B64B4();
        a4 = *(v52[0] + 16);
        sub_1D78B64E4();
        sub_1D78B64F4();
        sub_1D78B64C4();
      }

      else
      {
      }

      ++v35;
      if (a5 == v34)
      {
        goto LABEL_35;
      }
    }
  }

  v36 = MEMORY[0x1E69E7CC0];
LABEL_37:

  *(v49 + v40) = v36;

  v52[0] = v48;
  v37 = v48;
  sub_1D773CA14(0, &qword_1EE08F9F0);
  type metadata accessor for SKError(0);
  if (swift_dynamicCast())
  {
    v38 = v51;
    if (sub_1D779AE40(v47))
    {
      sub_1D78B3F24();
      __swift_project_boxed_opaque_existential_1(v52, v53);
      sub_1D77BC598(a1, v50);

      __swift_destroy_boxed_opaque_existential_1(v52);
    }

    else
    {
    }
  }
}

uint64_t sub_1D779AA10(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1D779C548(0, qword_1EE096030, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v24 - v7;
  v9 = type metadata accessor for PurchaseContext();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D78B3F24();
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_1D77BB9E4(a1, a2, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1D779C78C(v8, qword_1EE096030, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6720], sub_1D779C548);
    __swift_destroy_boxed_opaque_existential_1(v28);
    if (qword_1EE08FB98 != -1)
    {
      goto LABEL_23;
    }

    goto LABEL_3;
  }

  sub_1D777044C(v8, v12);
  __swift_destroy_boxed_opaque_existential_1(v28);
  v14 = sub_1D779BD88(v2, v12, a1, a2);
  v16 = v15;
  v17 = OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_transactionObservers;
  swift_beginAccess();
  v18 = *(v2 + v17);
  v27 = MEMORY[0x1E69E7CC0];
  if (v18 >> 62)
  {
    v19 = sub_1D78B6534();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v19)
  {
    v22 = MEMORY[0x1E69E7CC0];
LABEL_20:

    sub_1D779C45C(v12, type metadata accessor for PurchaseContext);
    *(v3 + v17) = v22;
    goto LABEL_21;
  }

  v24[0] = v17;
  v24[1] = v16;
  v25 = v14;
  v26 = v12;
  v20 = 0;
  a1 = v18 & 0xC000000000000001;
  a2 = v18 & 0xFFFFFFFFFFFFFF8;
  while (a1)
  {
    MEMORY[0x1DA703700](v20, v18);
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
LABEL_17:
      __break(1u);
LABEL_18:
      v12 = v26;
      v22 = v27;
      v14 = v25;
      v17 = v24[0];
      goto LABEL_20;
    }

LABEL_13:
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1D78B64B4();
      sub_1D78B64E4();
      sub_1D78B64F4();
      sub_1D78B64C4();
    }

    else
    {
    }

    ++v20;
    if (v21 == v19)
    {
      goto LABEL_18;
    }
  }

  if (v20 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  __break(1u);
LABEL_23:
  swift_once();
LABEL_3:
  sub_1D78B6094();
  sub_1D774FE1C();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D78BCAB0;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1D775ABD4();
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;

  sub_1D78B42C4();
  v14 = 0;
LABEL_21:

  return v14;
}

BOOL sub_1D779AE40(uint64_t a1)
{
  if (a1 == 4)
  {
    return 0;
  }

  type metadata accessor for SKError(0);
  sub_1D7746524(&qword_1EC9C91E0, type metadata accessor for SKError);
  sub_1D78B3184();
  result = 1;
  if (v2)
  {
    sub_1D78B3184();
    if (v2 != 2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D779AFC0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1D779C548(0, qword_1EE096030, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v52 - v8;
  v61 = v3;
  v10 = sub_1D779AA10(a1, a2);
  v56 = v9;
  if (v10)
  {
    v12 = v11;
    ObjectType = swift_getObjectType();
    sub_1D775F3AC(&v62);
    sub_1D7781E98();
    v14 = swift_allocError();
    v15 = v64;
    v16 = v63;
    *v17 = v62;
    *(v17 + 16) = v16;
    *(v17 + 32) = v15;
    v18 = v68;
    v20 = v65;
    v19 = v66;
    *(v17 + 80) = v67;
    *(v17 + 96) = v18;
    *(v17 + 48) = v20;
    *(v17 + 64) = v19;
    v22 = v70;
    v21 = v71;
    v23 = v69;
    *(v17 + 160) = v72;
    *(v17 + 128) = v22;
    *(v17 + 144) = v21;
    *(v17 + 112) = v23;
    v24 = ObjectType;
    v9 = v56;
    (*(v12 + 24))(v14, v24, v12);

    swift_unknownObjectRelease();
  }

  v25 = OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_purchaseObservers;
  v26 = v61;
  result = swift_beginAccess();
  v53 = v25;
  v28 = *(v26 + v25);
  if (v28 >> 62)
  {
LABEL_39:
    result = sub_1D78B6534();
    v29 = result;
    if (!result)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v29)
    {
      goto LABEL_21;
    }
  }

  if (v29 < 1)
  {
    __break(1u);
    return result;
  }

  v58 = OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_purchaseContextEntriesManager;
  v30 = v28 & 0xC000000000000001;

  v31 = 0;
  v55 = a1;
  v54 = a3;
  v60 = v28;
  v59 = v29;
  v57 = v28 & 0xC000000000000001;
  do
  {
    if (v30)
    {
      v32 = MEMORY[0x1DA703700](v31, v28);
    }

    else
    {
      v32 = *(v28 + 8 * v31 + 32);
    }

    if (swift_unknownObjectWeakLoadStrong() && (swift_unknownObjectRelease(), swift_unknownObjectWeakLoadStrong()))
    {
      v33 = *(v32 + 24);
      sub_1D78B3F24();
      v34 = *__swift_project_boxed_opaque_existential_1(&v62, *(&v63 + 1));

      sub_1D78B3854();

      swift_beginAccess();
      v35 = *(v34 + 24);
      if (*(v35 + 16))
      {
        v36 = sub_1D777BBB4(a1, a2);
        if (v37)
        {
          v38 = v36;
          v39 = a2;
          v40 = *(v35 + 56);
          v41 = type metadata accessor for PurchaseContext();
          v42 = *(v41 - 8);
          v43 = v40 + *(v42 + 72) * v38;
          a2 = v39;
          a3 = v54;
          v9 = v56;
          sub_1D7770378(v43, v56);
          (*(v42 + 56))(v9, 0, 1, v41);
          a1 = v55;
        }

        else
        {
          v45 = type metadata accessor for PurchaseContext();
          v9 = v56;
          (*(*(v45 - 8) + 56))(v56, 1, 1, v45);
        }
      }

      else
      {
        v44 = type metadata accessor for PurchaseContext();
        (*(*(v44 - 8) + 56))(v9, 1, 1, v44);
      }

      swift_endAccess();

      sub_1D78B3864();

      __swift_destroy_boxed_opaque_existential_1(&v62);
      v46 = swift_getObjectType();
      (*(v33 + 40))(a1, a2, v9, a3, v46, v33);

      swift_unknownObjectRelease();
      sub_1D779C78C(v9, qword_1EE096030, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6720], sub_1D779C548);
      v28 = v60;
      v29 = v59;
      v30 = v57;
    }

    else
    {
    }

    ++v31;
  }

  while (v29 != v31);

LABEL_21:
  v28 = *(v61 + v53);
  *&v62 = MEMORY[0x1E69E7CC0];
  v52 = a2;
  v47 = a1;
  if (v28 >> 62)
  {
    v48 = sub_1D78B6534();
  }

  else
  {
    v48 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v48)
  {
    v49 = 0;
    a2 = v28 & 0xC000000000000001;
    a1 = v28 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (a2)
      {
        a3 = MEMORY[0x1DA703700](v49, v28);
        v50 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
LABEL_34:
          __break(1u);
LABEL_35:
          v51 = v62;
          goto LABEL_37;
        }
      }

      else
      {
        if (v49 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_39;
        }

        a3 = *(v28 + 8 * v49 + 32);

        v50 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          goto LABEL_34;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_1D78B64B4();
        v9 = *(v62 + 16);
        sub_1D78B64E4();
        sub_1D78B64F4();
        sub_1D78B64C4();
      }

      else
      {
      }

      ++v49;
      if (v50 == v48)
      {
        goto LABEL_35;
      }
    }
  }

  v51 = MEMORY[0x1E69E7CC0];
LABEL_37:

  *(v61 + v53) = v51;

  sub_1D78B3F24();
  __swift_project_boxed_opaque_existential_1(&v62, *(&v63 + 1));
  sub_1D77BC598(v47, v52);
  return __swift_destroy_boxed_opaque_existential_1(&v62);
}

uint64_t sub_1D779B6E0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v53 = a4;
  sub_1D779C548(0, qword_1EE096030, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v45 - v13;
  v55 = a1;
  v56 = a2;
  v54 = v6;
  if (sub_1D779AA10(a1, a2))
  {
    v16 = v15;
    ObjectType = swift_getObjectType();
    (*(v16 + 16))(a3, ObjectType, v16);
    swift_unknownObjectRelease();
  }

  v47 = a3;
  v18 = OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_purchaseObservers;
  v19 = v54;
  result = swift_beginAccess();
  v45 = v18;
  v21 = *(v19 + v18);
  if (v21 >> 62)
  {
LABEL_40:
    result = sub_1D78B6534();
    v22 = result;
    v23 = v47;
    if (!result)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v47;
    if (!v22)
    {
      goto LABEL_22;
    }
  }

  if (v22 < 1)
  {
    __break(1u);
    return result;
  }

  v52 = v14;
  v49 = OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_purchaseContextEntriesManager;
  v24 = v21 & 0xC000000000000001;

  v25 = 0;
  v50 = v22;
  v51 = v21;
  v48 = v21 & 0xC000000000000001;
  v46 = a5;
  do
  {
    if (v24)
    {
      v26 = MEMORY[0x1DA703700](v25, v21);
    }

    else
    {
      v26 = *(v21 + 8 * v25 + 32);
    }

    if (swift_unknownObjectWeakLoadStrong() && (swift_unknownObjectRelease(), swift_unknownObjectWeakLoadStrong()))
    {
      v27 = *(v26 + 24);
      sub_1D78B3F24();
      v28 = *__swift_project_boxed_opaque_existential_1(v57, v58);

      sub_1D78B3854();

      swift_beginAccess();
      v29 = *(v28 + 24);
      if (*(v29 + 16))
      {
        v30 = sub_1D777BBB4(v55, v56);
        if (v31)
        {
          v32 = v30;
          v33 = *(v29 + 56);
          v34 = type metadata accessor for PurchaseContext();
          v35 = a6;
          v36 = *(v34 - 8);
          v37 = v33 + *(v36 + 72) * v32;
          v38 = v52;
          sub_1D7770378(v37, v52);
          (*(v36 + 56))(v38, 0, 1, v34);
          a6 = v35;
          a5 = v46;
        }

        else
        {
          v40 = type metadata accessor for PurchaseContext();
          v38 = v52;
          (*(*(v40 - 8) + 56))(v52, 1, 1, v40);
        }

        v23 = v47;
      }

      else
      {
        v39 = type metadata accessor for PurchaseContext();
        v38 = v52;
        (*(*(v39 - 8) + 56))(v52, 1, 1, v39);
      }

      swift_endAccess();

      sub_1D78B3864();

      __swift_destroy_boxed_opaque_existential_1(v57);
      v41 = swift_getObjectType();
      (*(v27 + 16))(v55, v56, v23, v53, a5, v38, a6, v41, v27);

      swift_unknownObjectRelease();
      sub_1D779C78C(v38, qword_1EE096030, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6720], sub_1D779C548);
      v22 = v50;
      v21 = v51;
      v24 = v48;
    }

    else
    {
    }

    ++v25;
  }

  while (v22 != v25);

LABEL_22:
  a5 = v45;
  v42 = *(v54 + v45);
  v57[0] = MEMORY[0x1E69E7CC0];
  if (v42 >> 62)
  {
    v14 = sub_1D78B6534();
  }

  else
  {
    v14 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14)
  {
    v43 = 0;
    while (1)
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA703700](v43, v42);
        a6 = (v43 + 1);
        if (__OFADD__(v43, 1))
        {
LABEL_35:
          __break(1u);
LABEL_36:
          v44 = v57[0];
          goto LABEL_38;
        }
      }

      else
      {
        if (v43 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_40;
        }

        a6 = (v43 + 1);
        if (__OFADD__(v43, 1))
        {
          goto LABEL_35;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        v21 = v57;
        sub_1D78B64B4();
        sub_1D78B64E4();
        sub_1D78B64F4();
        sub_1D78B64C4();
      }

      else
      {
      }

      ++v43;
      if (a6 == v14)
      {
        goto LABEL_36;
      }
    }
  }

  v44 = MEMORY[0x1E69E7CC0];
LABEL_38:

  *(v54 + a5) = v44;

  sub_1D78B3F24();
  __swift_project_boxed_opaque_existential_1(v57, v58);
  sub_1D77BC598(v55, v56);
  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t sub_1D779BD88(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_transactionObservers;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (v9 >> 62)
  {
LABEL_38:
    v10 = sub_1D78B6534();
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_29:
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D78B6094();
    sub_1D774FE1C();
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1D78BCAB0;
    *(v31 + 56) = MEMORY[0x1E69E6158];
    *(v31 + 64) = sub_1D775ABD4();
    *(v31 + 32) = a3;
    *(v31 + 40) = a4;

    sub_1D78B42C4();

    return 0;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_29;
  }

LABEL_3:
  v40 = a3;
  v41 = a4;
  v11 = v9 & 0xC000000000000001;
  v42 = v9 & 0xFFFFFFFFFFFFFF8;

  v12 = 0;
  v43 = v9 & 0xC000000000000001;
  v44 = v9;
  while (1)
  {
    if (v11)
    {
      a4 = MEMORY[0x1DA703700](v12, v9);
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (v12 >= *(v42 + 16))
      {
        goto LABEL_37;
      }

      a4 = *(v9 + 8 * v12 + 32);

      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v14 = a2[5];
      v15 = a2[6];
      if (swift_unknownObjectWeakLoadStrong())
      {
        break;
      }
    }

LABEL_5:
    ++v12;
    if (v13 == v10)
    {

      a3 = v40;
      a4 = v41;
      goto LABEL_29;
    }
  }

  v16 = v10;
  v17 = *(a4 + 24);
  ObjectType = swift_getObjectType();
  a3 = (*(*(v17 + 8) + 8))(ObjectType);
  v20 = v19;
  swift_unknownObjectRelease();
  if (v14 == a3 && v15 == v20)
  {
  }

  else
  {
    v22 = sub_1D78B6724();

    if ((v22 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v23 = a2[3];
  v24 = a2[4];
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_27:

    v10 = v16;
    v11 = v43;
    v9 = v44;
    goto LABEL_5;
  }

  v25 = *(a4 + 24);
  v26 = swift_getObjectType();
  v27 = (*(*(v25 + 8) + 16))(v26);
  a3 = v28;
  swift_unknownObjectRelease();
  if (v23 != v27 || v24 != a3)
  {
    v30 = sub_1D78B6724();

    if (v30)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

LABEL_33:

  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D774FE1C();
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1D78BCB50;
  swift_unknownObjectWeakLoadStrong();
  sub_1D779C7EC();
  v34 = sub_1D78B5CC4();
  v36 = v35;
  v37 = MEMORY[0x1E69E6158];
  *(v33 + 56) = MEMORY[0x1E69E6158];
  v38 = sub_1D775ABD4();
  *(v33 + 32) = v34;
  *(v33 + 40) = v36;
  *(v33 + 96) = v37;
  *(v33 + 104) = v38;
  *(v33 + 64) = v38;
  *(v33 + 72) = v40;
  *(v33 + 80) = v41;

  sub_1D78B60A4();
  sub_1D78B42C4();

  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t sub_1D779C1E0(void (*a1)(uint64_t))
{
  a1(v1 + 16);
  sub_1D776ABA8(v1 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1D779C258(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PurchaseContext() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D7798274(a1, a2, *(v2 + 16), (v2 + v6), *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_1D779C328()
{
  if (!qword_1EC9C9E88)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9C9E88);
    }
  }
}

double sub_1D779C384(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 9;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

uint64_t sub_1D779C3B8(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseContext() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D7798E18(a1, v5, v1 + v4, v6);
}

uint64_t sub_1D779C45C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D779C4BC()
{
  v1 = *(type metadata accessor for PurchaseContext() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v3 + 8))(v0 + v2, ObjectType, v3);
}

void sub_1D779C548(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D779C5AC()
{
  v1 = *(type metadata accessor for PurchaseContext() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  return (*(v3 + 24))(v4, v0 + v2, ObjectType, v3);
}

unint64_t sub_1D779C65C()
{
  result = qword_1EC9C9EA0;
  if (!qword_1EC9C9EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9EA0);
  }

  return result;
}

uint64_t sub_1D779C6B0(uint64_t a1, uint64_t a2)
{
  sub_1D779C73C(0, &qword_1EE08F9C0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D779C73C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D779C78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1D779C7EC()
{
  if (!qword_1EC9C9EA8)
  {
    sub_1D773CA14(255, &unk_1EC9C9EB0);
    v0 = sub_1D78B62A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9C9EA8);
    }
  }
}

uint64_t sub_1D779C858(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D78B5254();
  v20 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D78B52A4();
  v10 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  sub_1D773F004(0, &qword_1EE08FE10);
  v13 = sub_1D78B6104();
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a1;
  aBlock[4] = sub_1D779D5DC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_80_0;
  v15 = _Block_copy(aBlock);
  v16 = v3;

  v17 = a1;

  sub_1D78B5274();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D7746524(&qword_1EE090300, MEMORY[0x1E69E7F60]);
  sub_1D779C548(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D775F4A4();
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v12, v9, v15);
  _Block_release(v15);

  (*(v20 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v19);
}

uint64_t sub_1D779CBC8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D78B5254();
  v20 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D78B52A4();
  v10 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  sub_1D773F004(0, &qword_1EE08FE10);
  v13 = sub_1D78B6104();
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a1;
  aBlock[4] = sub_1D779D580;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_68_0;
  v15 = _Block_copy(aBlock);
  v16 = v3;

  v17 = a1;

  sub_1D78B5274();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D7746524(&qword_1EE090300, MEMORY[0x1E69E7F60]);
  sub_1D779C548(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D775F4A4();
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v12, v9, v15);
  _Block_release(v15);

  (*(v20 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v19);
}

uint64_t sub_1D779CF38(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D78B5254();
  v20 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D78B52A4();
  v10 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  sub_1D773F004(0, &qword_1EE08FE10);
  v13 = sub_1D78B6104();
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a1;
  aBlock[4] = sub_1D779D530;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_53_0;
  v15 = _Block_copy(aBlock);
  v16 = v3;

  v17 = a1;

  sub_1D78B5274();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D7746524(&qword_1EE090300, MEMORY[0x1E69E7F60]);
  sub_1D779C548(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D775F4A4();
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v12, v9, v15);
  _Block_release(v15);

  (*(v20 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v19);
}

void sub_1D779D2A8(uint64_t a1, void (**a2)(void, void, void))
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  v3 = sub_1D7799540();
  if (v3)
  {
    v4 = v3;
    sub_1D773F004(0, &qword_1EE08FB80);
    v5 = sub_1D78B6284();
    sub_1D78B60A4();
    sub_1D78B42C4();

    v6 = sub_1D78B60B4();
    v7 = [v6 view];

    if (!v7)
    {
      _Block_release(a2);
      __break(1u);
      return;
    }

    v10 = [v7 window];

    (a2)[2](a2, v10, 0);
  }

  else
  {
    v8 = sub_1D78B5C44();
    v9 = sub_1D78B5C44();
    v4 = AMSError();

    v10 = sub_1D78B31B4();
    (a2)[2](a2, 0, v10);
  }
}

unint64_t sub_1D779D4C0()
{
  result = qword_1EC9C9F80;
  if (!qword_1EC9C9F80)
  {
    sub_1D773F004(255, &unk_1EC9C9EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9F80);
  }

  return result;
}

uint64_t objectdestroy_49Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t HideMyEmailSignupDataModel.Selection.hashValue.getter()
{
  v1 = *v0;
  sub_1D78B6814();
  MEMORY[0x1DA703AC0](v1);
  return sub_1D78B6844();
}

uint64_t _s16NewsSubscription21HideMyEmailProxyModelV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v13 = a2[6];
  v14 = a1[6];
  if (*a1 == *a2 && a1[1] == a2[1] || (sub_1D78B6724()) && (v2 == v7 && v4 == v8 || (sub_1D78B6724()) && (v3 == v9 && v5 == v10 || (sub_1D78B6724()))
  {
    if (v6)
    {
      if (v11 && (v14 == v13 && v6 == v11 || (sub_1D78B6724() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v11)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1D779D810()
{
  result = qword_1EC9C9F40;
  if (!qword_1EC9C9F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9F40);
  }

  return result;
}

uint64_t type metadata accessor for HideMyEmailSignupDataModel()
{
  result = qword_1EE08EBE0;
  if (!qword_1EE08EBE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D779D8D8()
{
  sub_1D779DA04(319, &qword_1EE08EBF0, &type metadata for HideMyEmailSignupDataModel.Selection, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D779DA04(319, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1D779DA54();
      if (v2 <= 0x3F)
      {
        type metadata accessor for PurchaseContext();
        if (v3 <= 0x3F)
        {
          sub_1D779DAB8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D779DA04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D779DA54()
{
  result = qword_1EE08E590;
  if (!qword_1EE08E590)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE08E590);
  }

  return result;
}

unint64_t sub_1D779DAB8()
{
  result = qword_1EE08E568;
  if (!qword_1EE08E568)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE08E568);
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

uint64_t sub_1D779DB28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1D779DB70(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1D779DBD0(uint64_t a1)
{
  v2 = sub_1D78B6334();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  sub_1D77A2BCC(v2, *(a1 + 36), 0, a1);
  return swift_unknownObjectRetain();
}

id sub_1D779DC38()
{
  v1 = v0[26];
  if (v1)
  {
    v2 = v0[26];
  }

  else
  {
    v3 = v0[24];
    v4 = v0[25];
    __swift_project_boxed_opaque_existential_1(v0 + 21, v3);
    v10 = 1;
    v5 = v0;
    v6 = (*(v4 + 8))(&v10, v3, v4);
    v7 = v0[26];
    v5[26] = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

void sub_1D779DCD8()
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  if (*(v0 + 240) == 1)
  {
    v1 = [objc_opt_self() mainBundle];
    v2 = [v1 bundleIdentifier];

    if (v2)
    {
      v3 = sub_1D78B5C74();
      v5 = v4;

      if (v3 == 0xD000000000000010 && 0x80000001D78CF0A0 == v5)
      {
LABEL_21:

        return;
      }

      v7 = sub_1D78B6724();

      if (v7)
      {
        return;
      }
    }

    v8 = *(v0 + 16);
    v9 = [v8 subscriptionNotSupportedChannelIDs];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1D78B5EB4();
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    v12 = [v8 expiredPurchaseChannelIDs];
    v13 = v0;
    if (v12)
    {
      v14 = v12;
      v15 = sub_1D78B5EB4();
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    v21[0] = v11;

    sub_1D78A603C(v15);
    if (*(v11 + 16))
    {
      v16 = *(v13 + 32);
      sub_1D77C38CC(v21[0]);

      v17 = sub_1D78B5E94();

      sub_1D773F004(0, &qword_1EE08FE10);
      v18 = sub_1D78B6104();
      v19 = swift_allocObject();
      *(v19 + 16) = v13;
      *(v19 + 24) = v11;
      v21[4] = sub_1D77A2848;
      v21[5] = v19;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 1107296256;
      v21[2] = sub_1D779E658;
      v21[3] = &block_descriptor_3;
      v20 = _Block_copy(v21);

      [v16 fetchTagsForTagIDs:v17 qualityOfService:9 callbackQueue:v18 completionHandler:v20];
      _Block_release(v20);

      return;
    }

    goto LABEL_21;
  }
}

void sub_1D779E034(uint64_t a1, id a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    v5 = a2;
    v6 = a2;
    sub_1D78B6094();
    if (qword_1EE08FB98 != -1)
    {
LABEL_21:
      swift_once();
    }

    sub_1D774FE1C();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D78BCAB0;
    aBlock = 0;
    v32 = 0xE000000000000000;
    v37 = v5;
    sub_1D773C9B8(0, &qword_1EE08F9F0);
    sub_1D78B6504();
    v8 = aBlock;
    v9 = v32;
    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 64) = sub_1D775ABD4();
    *(v7 + 32) = v8;
    *(v7 + 40) = v9;
    sub_1D78B42D4();

    sub_1D779E438();
  }

  else if (a1)
  {
    v29 = a4;
    v10 = a1 + 64;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 64);
    v14 = (v11 + 63) >> 6;

    v16 = 0;
    v5 = 0;
    v30 = a3;
    v28 = v15;
    while (v13)
    {
LABEL_15:
      v19 = __clz(__rbit64(v13)) | (v16 << 6);
      v20 = (*(v15 + 48) + 16 * v19);
      v22 = *v20;
      v21 = v20[1];
      v23 = *(*(v15 + 56) + 8 * v19);
      aBlock = *v20;
      v32 = v21;
      MEMORY[0x1EEE9AC00](v15);
      v27[2] = &aBlock;

      swift_unknownObjectRetain();
      if (sub_1D781DA18(sub_1D7782F40, v27, v29))
      {
        a3 = v30;
        swift_beginAccess();
        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = a3[27];
        a3[27] = 0x8000000000000000;
        sub_1D782E63C(v23, v22, v21, isUniquelyReferenced_nonNull_native);

        a3[27] = v37;
      }

      else
      {
        a3 = v30;
        swift_beginAccess();
        swift_unknownObjectRetain();
        v17 = swift_isUniquelyReferenced_nonNull_native();
        v37 = a3[28];
        a3[28] = 0x8000000000000000;
        sub_1D782E63C(v23, v22, v21, v17);

        a3[28] = v37;
      }

      swift_endAccess();
      v13 &= v13 - 1;
      swift_unknownObjectRelease();
      v15 = v28;
    }

    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_21;
      }

      if (v18 >= v14)
      {
        break;
      }

      v13 = *(v10 + 8 * v18);
      ++v16;
      if (v13)
      {
        v16 = v18;
        goto LABEL_15;
      }
    }

    swift_beginAccess();
    if (!*(a3[27] + 16))
    {
      goto LABEL_19;
    }

    v25 = a3[29];
    v35 = sub_1D77A2A68;
    v36 = a3;
    aBlock = MEMORY[0x1E69E9820];
    v32 = 1107296256;
    v33 = sub_1D779ECCC;
    v34 = &block_descriptor_7;
    v26 = _Block_copy(&aBlock);

    [v25 enqueueBlock_];
    _Block_release(v26);
  }

  else
  {
LABEL_19:
    sub_1D779E438();
  }
}

void sub_1D779E438()
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  swift_beginAccess();
  if (!*(*(v0 + 224) + 16))
  {
    goto LABEL_12;
  }

  v2 = sub_1D779DBD0(v1);

  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = *(v0 + 16);
  v4 = [v2 identifier];
  if (!v4)
  {
    sub_1D78B5C74();
    v4 = sub_1D78B5C44();
  }

  v5 = [v3 purchaseLookUpEntryForTagID_];

  if (!v5)
  {
    swift_unknownObjectRelease();
LABEL_12:
    sub_1D78B60A4();
    sub_1D78B42C4();
    return;
  }

  if ([v5 purchaseType] == 1)
  {
    sub_1D779ED6C(v2);
  }

  else if ([v5 purchaseType] == 2)
  {
    sub_1D779EF38(v2);
  }

  else
  {
    sub_1D78B6094();
    sub_1D78B42C4();
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1D779E658(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1D779DA54();
    v4 = sub_1D78B5BC4();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_1D779E6FC(void *a1, void (*a2)(void), uint64_t a3)
{
  swift_beginAccess();
  if (!*(a1[27] + 16))
  {
    goto LABEL_9;
  }

  v7 = sub_1D779DBD0(v6);

  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = a1[2];
  v9 = [v7 identifier];
  if (!v9)
  {
    sub_1D78B5C74();
    v9 = sub_1D78B5C44();
  }

  v10 = [v8 purchaseLookUpEntryForTagID_];

  if (!v10)
  {
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  if ([v10 hasShownRenewalNotice])
  {
    swift_unknownObjectRelease();

LABEL_9:
    sub_1D779E438();
    a2();
    return;
  }

  v26 = v8;
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D774FE1C();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D78BCAB0;
  v12 = [v7 identifier];
  v13 = sub_1D78B5C74();
  v15 = v14;

  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1D775ABD4();
  *(v11 + 32) = v13;
  *(v11 + 40) = v15;
  sub_1D78B60A4();
  sub_1D78B42C4();

  sub_1D77A2B1C();
  sub_1D78B5054();
  swift_allocObject();
  swift_unknownObjectRetain();
  v16 = sub_1D78B5004();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = v7;
  v17[4] = a2;
  v17[5] = a3;
  swift_unknownObjectRetain();

  sub_1D78B5034();

  v18 = a1[9];
  v19 = a1[10];
  __swift_project_boxed_opaque_existential_1(a1 + 6, v18);
  (*(v19 + 88))(v16, v18, v19);
  sub_1D77A2B7C();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D78BCAB0;
  v21 = [v7 identifier];
  v22 = sub_1D78B5C74();
  v24 = v23;

  *(v20 + 32) = v22;
  *(v20 + 40) = v24;
  v25 = sub_1D78B5E94();

  [v26 renewalNoticeShownForPurchasedChannelsListWithTagIDs_];
  swift_unknownObjectRelease();
}

uint64_t sub_1D779EA78(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  v6 = *(a1 + 16);
  sub_1D77A2B7C();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D78BCAB0;
  v8 = [a2 identifier];
  v9 = sub_1D78B5C74();
  v11 = v10;

  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  v12 = sub_1D78B5E94();

  [v6 updatePurchaseEntryToExpiredForTagIDs_];

  v13 = [a2 identifier];
  v14 = sub_1D78B5C74();
  v16 = v15;

  swift_beginAccess();
  sub_1D782B134(v14, v16);
  swift_endAccess();

  swift_unknownObjectRelease();
  v17 = *(a1 + 232);
  v20[4] = sub_1D77A3180;
  v20[5] = a1;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = sub_1D779ECCC;
  v20[3] = &block_descriptor_23_0;
  v18 = _Block_copy(v20);

  [v17 enqueueBlock_];
  _Block_release(v18);
  return a3();
}

uint64_t sub_1D779ECCC(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_1D77A2AA8, v4);
}

void sub_1D779ED6C(void *a1)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D774FE1C();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D78BCAB0;
  v4 = [a1 identifier];
  v5 = sub_1D78B5C74();
  v7 = v6;

  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1D775ABD4();
  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  sub_1D78B60A4();
  sub_1D78B42C4();

  v8 = *(v1 + 232);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = a1;
  v11[4] = sub_1D77A2C1C;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D779ECCC;
  v11[3] = &block_descriptor_29_1;
  v10 = _Block_copy(v11);

  swift_unknownObjectRetain();

  [v8 enqueueBlock_];
  _Block_release(v10);
}

void sub_1D779EF38(void *a1)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D774FE1C();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D78BCAB0;
  v4 = [a1 identifier];
  v5 = sub_1D78B5C74();
  v7 = v6;

  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1D775ABD4();
  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  sub_1D78B60A4();
  sub_1D78B42C4();

  v8 = *(v1 + 232);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = a1;
  v11[4] = sub_1D77A2CE8;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D779ECCC;
  v11[3] = &block_descriptor_59_1;
  v10 = _Block_copy(v11);

  swift_unknownObjectRetain();

  [v8 enqueueBlock_];
  _Block_release(v10);
}

uint64_t sub_1D779F12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a5;
  v20 = a6;
  v9 = sub_1D78B5254();
  v22 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D78B52A4();
  v12 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D773F004(0, &qword_1EE08FE10);
  v15 = sub_1D78B6104();
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = v19;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = v20;
  v17 = _Block_copy(aBlock);

  sub_1D78B5274();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D774656C(&qword_1EE090300, MEMORY[0x1E69E7F60]);
  sub_1D77A2AC4();
  sub_1D774656C(&qword_1EE090030, sub_1D77A2AC4);
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v14, v11, v17);
  _Block_release(v17);

  (*(v22 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v21);
}

void sub_1D779F424(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = *(a1 + 24);
  v31 = [v6 bundleSubscriptionLookupEntry];
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D774FE1C();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D78BCAB0;
  v8 = [v31 description];
  v9 = sub_1D78B5C74();
  v11 = v10;

  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1D775ABD4();
  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  sub_1D78B60A4();
  sub_1D78B42C4();

  if ([v31 purchaseValidationState] == 1 && (objc_msgSend(v31, sel_hasShownRenewalNotice) & 1) == 0)
  {
    v13 = [*(a1 + 40) configuration];
    if (!v13)
    {
      __break(1u);
      return;
    }

    v14 = v13;
    if ([v13 respondsToSelector_])
    {
      v15 = [v14 paidBundleConfig];
      swift_unknownObjectRelease();
      v16 = [v15 expirationAlertDescription];

      if (v16)
      {
        v30 = sub_1D78B5C74();
        v18 = v17;

LABEL_12:
        sub_1D77A301C();
        v32 = swift_allocObject();
        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v20 = [objc_opt_self() bundleForClass_];
        v21 = sub_1D78B3134();
        v23 = v22;

        v32[4] = v21;
        v32[5] = v23;
        v32[2] = v30;
        v32[3] = v18;
        sub_1D78B5054();
        swift_allocObject();
        v24 = sub_1D78B5004();
        v25 = swift_allocObject();
        v25[2] = a1;
        v25[3] = a2;
        v25[4] = a3;

        sub_1D78B5034();

        v26 = swift_allocObject();
        v26[2] = a1;
        v26[3] = a2;
        v26[4] = a3;

        sub_1D78B5044();

        sub_1D78B60A4();
        sub_1D78B42C4();
        v27 = *(a1 + 72);
        v28 = *(a1 + 80);
        __swift_project_boxed_opaque_existential_1((a1 + 48), v27);
        (*(v28 + 88))(v24, v27, v28);
        v29 = [v31 purchaseID];
        if (!v29)
        {
          sub_1D78B5C74();
          v29 = sub_1D78B5C44();
        }

        [v6 renewalNoticeShownWithPurchaseID_];

        v12 = v29;
        goto LABEL_15;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v30 = 0;
    v18 = 0;
    goto LABEL_12;
  }

  a2();
  v12 = v31;
LABEL_15:
}

uint64_t sub_1D779F8CC(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v18 = a3;
  v19 = a2;
  v4 = sub_1D78B5254();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D78B52A4();
  v8 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1D78B42C4();
  sub_1D773F004(0, &qword_1EE08FE10);
  v12 = sub_1D78B6104();
  aBlock[4] = sub_1D77A30C8;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_138;
  v13 = _Block_copy(aBlock);

  sub_1D78B5274();
  aBlock[0] = v11;
  sub_1D774656C(&qword_1EE090300, MEMORY[0x1E69E7F60]);
  sub_1D77A2AC4();
  sub_1D774656C(&qword_1EE090030, sub_1D77A2AC4);
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v10, v7, v13);
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  v14 = (*(v8 + 8))(v10, v17);
  return v19(v14);
}

id sub_1D779FC14(uint64_t a1)
{
  result = [*(a1 + 40) configuration];
  if (result)
  {
    v3 = result;
    if ([result respondsToSelector_])
    {
      v4 = [v3 paidBundleConfig];
      swift_unknownObjectRelease();
      v5 = [v4 renewalLandingPageArticleID];

      v6 = sub_1D78B5C74();
      v8 = v7;

      v9 = *(a1 + 72);
      v10 = *(a1 + 80);
      __swift_project_boxed_opaque_existential_1((a1 + 48), v9);
      (*(v10 + 8))(v6, v8, 0, 0, 0, 0, v9, v10);
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D779FD58(void *a1, uint64_t (*a2)(uint64_t))
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  v4 = swift_beginAccess();
  if (!*(a1[28] + 16))
  {
    sub_1D78B60A4();
    sub_1D78B42C4();
    v5 = *__swift_project_boxed_opaque_existential_1(a1 + 11, a1[14]);
    v6 = [objc_opt_self() sharedAccount];
    v7 = [v6 isUserSignedIntoiTunes];

    if (v7)
    {
      v8 = *(v5 + 24);
      v9 = swift_allocObject();
      *(v9 + 16) = v5;
      *(v9 + 24) = 1;
      aBlock[4] = sub_1D77A3184;
      aBlock[5] = v9;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D7781488;
      aBlock[3] = &block_descriptor_135;
      v10 = _Block_copy(aBlock);

      [v8 refreshBundleSubscriptionWithCachePolicy:3 hideBundleDetectionUI:0 completion:v10];
      _Block_release(v10);
    }
  }

  return a2(v4);
}

void sub_1D779FF64(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1D77A2C68();
  sub_1D78B5054();
  swift_allocObject();
  swift_unknownObjectRetain();
  v8 = sub_1D78B5004();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a1;
  v9[4] = a3;
  v9[5] = a4;
  swift_unknownObjectRetain();

  sub_1D78B5034();

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a1;
  v10[4] = a3;
  v10[5] = a4;
  swift_unknownObjectRetain();

  sub_1D78B5044();

  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  v11 = a2[9];
  v12 = a2[10];
  __swift_project_boxed_opaque_existential_1(a2 + 6, v11);
  (*(v12 + 88))(v8, v11, v12);
  v13 = a2[2];
  sub_1D77A2B7C();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D78BCAB0;
  v15 = [a1 identifier];
  v16 = sub_1D78B5C74();
  v18 = v17;

  *(v14 + 32) = v16;
  *(v14 + 40) = v18;
  v19 = sub_1D78B5E94();

  [v13 renewalNoticeShownForPurchasedChannelsListWithTagIDs_];
}

uint64_t sub_1D77A01F8(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v25 = a4;
  v26 = a3;
  v6 = sub_1D78B5254();
  v24 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D78B52A4();
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  v12 = [a2 identifier];
  v13 = sub_1D78B5C74();
  v15 = v14;

  swift_beginAccess();
  sub_1D782B134(v13, v15);
  swift_endAccess();

  swift_unknownObjectRelease();
  sub_1D773F004(0, &qword_1EE08FE10);
  v16 = sub_1D78B6104();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  aBlock[4] = sub_1D77A2CE0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_53_1;
  v18 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  sub_1D78B5274();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D774656C(&qword_1EE090300, MEMORY[0x1E69E7F60]);
  sub_1D77A2AC4();
  sub_1D774656C(&qword_1EE090030, sub_1D77A2AC4);
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v11, v8, v18);
  _Block_release(v18);

  (*(v24 + 8))(v8, v6);
  v19 = (*(v22 + 8))(v11, v23);
  return v26(v19);
}

uint64_t sub_1D77A05D4(void *a1, id a2)
{
  v3 = [a2 identifier];
  v4 = sub_1D78B5C74();
  v6 = v5;

  v7 = a1[9];
  v8 = a1[10];
  __swift_project_boxed_opaque_existential_1(a1 + 6, v7);
  v10[0] = v4;
  v10[1] = v6;
  v10[3] = 0;
  v10[4] = 0;
  v10[2] = MEMORY[0x1E69E7CC0];
  (*(v8 + 96))(v10, v7, v8);
  swift_bridgeObjectRelease_n();
}

uint64_t sub_1D77A06AC(void *a1, void *a2, uint64_t (*a3)(uint64_t))
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  v6 = [a2 identifier];
  v7 = sub_1D78B5C74();
  v9 = v8;

  swift_beginAccess();
  sub_1D782B134(v7, v9);
  swift_endAccess();

  v10 = swift_unknownObjectRelease();
  v11 = sub_1D779E438(v10);
  if (!*(a1[28] + 16))
  {
    sub_1D78B60A4();
    sub_1D78B42C4();
    v12 = *__swift_project_boxed_opaque_existential_1(a1 + 11, a1[14]);
    v13 = [objc_opt_self() sharedAccount];
    v14 = [v13 isUserSignedIntoiTunes];

    if (v14)
    {
      v15 = *(v12 + 24);
      v16 = swift_allocObject();
      *(v16 + 16) = v12;
      *(v16 + 24) = 1;
      v19[4] = sub_1D77A2CD4;
      v19[5] = v16;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 1107296256;
      v19[2] = sub_1D7781488;
      v19[3] = &block_descriptor_47;
      v17 = _Block_copy(v19);

      [v15 refreshBundleSubscriptionWithCachePolicy:3 hideBundleDetectionUI:0 completion:v17];
      _Block_release(v17);
    }
  }

  return a3(v11);
}

uint64_t sub_1D77A0928(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25[1] = a5;
  v29 = a1;
  v12 = sub_1D78B5254();
  v28 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D78B52A4();
  v26 = *(v15 - 8);
  v27 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a3 + 16);
  v19 = [a4 identifier];
  if (!v19)
  {
    sub_1D78B5C74();
    v25[0] = a4;
    v19 = sub_1D78B5C44();
    a4 = v25[0];
  }

  v20 = [v18 hasRenewalNoticeShownForTagID_];

  if (v20)
  {
    return v29();
  }

  sub_1D773F004(0, &qword_1EE08FE10);
  v22 = sub_1D78B6104();
  v23 = swift_allocObject();
  v23[2] = a4;
  v23[3] = a3;
  v23[4] = v29;
  v23[5] = a2;
  aBlock[4] = a6;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = a7;
  v24 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  sub_1D78B5274();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D774656C(&qword_1EE090300, MEMORY[0x1E69E7F60]);
  sub_1D77A2AC4();
  sub_1D774656C(&qword_1EE090030, sub_1D77A2AC4);
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v17, v14, v24);
  _Block_release(v24);

  (*(v28 + 8))(v14, v12);
  return (*(v26 + 8))(v17, v27);
}