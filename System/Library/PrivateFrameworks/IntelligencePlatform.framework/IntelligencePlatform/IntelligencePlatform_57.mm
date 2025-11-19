IntelligencePlatform::InclusionType_optional __swiftcall InclusionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF24D84();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t InclusionType.rawValue.getter()
{
  result = 0xD000000000000011;
  switch(*v0)
  {
    case 1:
    case 2:
    case 5:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
    case 6:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABEAB3A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D6954646E65 && a2 == 0xE700000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F6973756C636E69 && a2 == 0xED0000657079546ELL;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x80000001ABF95260 == a2;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x80000001ABF95280 == a2;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000018 && 0x80000001ABF952A0 == a2;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000018 && 0x80000001ABF952C0 == a2;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000014 && 0x80000001ABF952E0 == a2;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000014 && 0x80000001ABF95300 == a2;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6570795464616F72 && a2 == 0xE800000000000000;
                    if (v14 || (sub_1ABF25054() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x656D614E64616F72 && a2 == 0xE800000000000000;
                      if (v15 || (sub_1ABF25054() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x64496E696769726FLL && a2 == 0xE800000000000000;
                        if (v16 || (sub_1ABF25054() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0x74616E6974736564 && a2 == 0xED000064496E6F69)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_1ABF25054();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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
}

unint64_t sub_1ABEAB79C(char a1)
{
  result = 0x6D69547472617473;
  switch(a1)
  {
    case 1:
      result = 0x656D6954646E65;
      break;
    case 2:
      result = 0x6F6973756C636E69;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
    case 6:
      result = 0xD000000000000018;
      break;
    case 7:
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0x6570795464616F72;
      break;
    case 10:
      result = 0x656D614E64616F72;
      break;
    case 11:
      result = 0x64496E696769726FLL;
      break;
    case 12:
      result = 0x74616E6974736564;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1ABEAB9EC@<X0>(unint64_t *a1@<X8>)
{
  result = InclusionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ABEABA34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABEAB3A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABEABA5C(uint64_t a1)
{
  v2 = sub_1ABEABED4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEABA98(uint64_t a1)
{
  v2 = sub_1ABEABED4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void KTSQueryParams.encode(to:)()
{
  sub_1ABA7BCA8();
  v40 = v1;
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4DC180, &qword_1ABF75510);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  v12 = *v0;
  v13 = *(v0 + 8);
  v39 = v0[2];
  v43 = *(v0 + 24);
  v38 = *(v0 + 25);
  v37 = v0[4];
  v36 = *(v0 + 40);
  v35 = v0[6];
  v14 = *(v0 + 56);
  v32 = v0[8];
  v33 = *(v0 + 72);
  v34 = v14;
  v30 = v0[10];
  v31 = *(v0 + 88);
  v28 = v0[12];
  v29 = *(v0 + 104);
  v26 = v0[14];
  v27 = *(v0 + 120);
  v25 = *(v0 + 121);
  v15 = v0[17];
  v23 = v0[16];
  v24 = v15;
  v21 = v0[18];
  v22 = *(v0 + 152);
  v19 = v0[20];
  v20 = *(v0 + 168);
  v16 = v3[4];
  sub_1ABA93E20(v3, v3[3]);
  sub_1ABEABED4();
  sub_1ABF252E4();
  LOBYTE(v41) = 0;
  v17 = v40;
  sub_1ABF24EF4();
  if (!v17)
  {
    v18 = v38;
    sub_1ABAA50F0(1);
    sub_1ABAA3E80();
    LOBYTE(v41) = v18;
    sub_1ABEABF28();
    sub_1ABAA2E8C();
    sub_1ABF24F14();
    v40 = v6;
    sub_1ABAA50F0(3);
    sub_1ABAA3E80();
    sub_1ABAA50F0(4);
    sub_1ABAA3E80();
    sub_1ABAA50F0(5);
    sub_1ABAA3E80();
    sub_1ABAA50F0(6);
    sub_1ABAA3E80();
    sub_1ABAA50F0(7);
    sub_1ABAA3E80();
    sub_1ABAA50F0(8);
    sub_1ABAA3E80();
    LOBYTE(v41) = v25;
    sub_1ABDB53E0();
    sub_1ABAA2E8C();
    sub_1ABF24F14();
    sub_1ABAA50F0(10);
    sub_1ABF24ED4();
    v41 = v21;
    v42 = v22;
    sub_1ABAE8BC8();
    sub_1ABAA2E8C();
    sub_1ABA81934();
    sub_1ABF24F14();
    v41 = v19;
    v42 = v20;
    sub_1ABAA2E8C();
    sub_1ABA81934();
    sub_1ABF24F14();
  }

  (*(v6 + 8))(v11, v4);
  sub_1ABA7BC90();
}

unint64_t sub_1ABEABED4()
{
  result = qword_1EB4DC188;
  if (!qword_1EB4DC188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC188);
  }

  return result;
}

unint64_t sub_1ABEABF28()
{
  result = qword_1EB4DC190;
  if (!qword_1EB4DC190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC190);
  }

  return result;
}

uint64_t KTSQueryParams.hash(into:)()
{
  v1 = v0[2];
  v2 = *(v0 + 25);
  v29 = v0[4];
  v34 = *(v0 + 24);
  v35 = *(v0 + 40);
  v36 = *(v0 + 56);
  v30 = v0[6];
  v31 = v0[8];
  v32 = v0[10];
  v37 = *(v0 + 72);
  v38 = *(v0 + 88);
  v33 = v0[12];
  v39 = *(v0 + 104);
  v3 = v0[14];
  v4 = *(v0 + 120);
  v5 = *(v0 + 121);
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[18];
  v9 = *(v0 + 152);
  v27 = v8;
  v28 = v0[20];
  v10 = *(v0 + 168);
  if (*(v0 + 8) == 1)
  {
    sub_1ABF25254();
  }

  else
  {
    v26 = *(v0 + 120);
    v11 = v0[14];
    v12 = *(v0 + 121);
    v13 = v0[17];
    v14 = *(v0 + 152);
    v15 = v0[2];
    v16 = *v0;
    sub_1ABF25254();
    if ((v16 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v1 = v15;
    v9 = v14;
    v5 = v12;
    v3 = v11;
    v4 = v26;
    MEMORY[0x1AC5AA8D0](v17);
  }

  if (v34)
  {
    sub_1ABF25254();
  }

  else
  {
    sub_1ABF25254();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v18 = v1;
    }

    else
    {
      v18 = 0;
    }

    MEMORY[0x1AC5AA8D0](v18);
  }

  sub_1ABF25254();
  if (v2 != 8)
  {
    sub_1ABBB677C();
  }

  sub_1ABF25254();
  if (!v35)
  {
    v19 = sub_1ABAA4324(v29);
    MEMORY[0x1AC5AA8D0](v19);
  }

  sub_1ABF25254();
  if (!v36)
  {
    v20 = sub_1ABAA4324(v30);
    MEMORY[0x1AC5AA8D0](v20);
  }

  sub_1ABF25254();
  if (!v37)
  {
    v21 = sub_1ABAA4324(v31);
    MEMORY[0x1AC5AA8D0](v21);
  }

  sub_1ABF25254();
  if (!v38)
  {
    v22 = sub_1ABAA4324(v32);
    MEMORY[0x1AC5AA8D0](v22);
  }

  if (!v39)
  {
    sub_1ABF25254();
    v24 = sub_1ABAA4324(v33);
    MEMORY[0x1AC5AA8D0](v24);
    if (!v4)
    {
      goto LABEL_25;
    }

LABEL_30:
    sub_1ABF25254();
    goto LABEL_31;
  }

  sub_1ABF25254();
  if (v4)
  {
    goto LABEL_30;
  }

LABEL_25:
  sub_1ABF25254();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v23 = v3;
  }

  else
  {
    v23 = 0;
  }

  MEMORY[0x1AC5AA8D0](v23);
LABEL_31:
  if (v5 == 5)
  {
    sub_1ABF25254();
    if (v6)
    {
      goto LABEL_33;
    }
  }

  else
  {
    sub_1ABF25254();
    sub_1ABF25264();
    if (v6)
    {
LABEL_33:
      sub_1ABF25254();
      sub_1ABF23D34();
      if (v9)
      {
        goto LABEL_34;
      }

LABEL_38:
      sub_1ABF25254();
      MEMORY[0x1AC5AA8D0](v27);
      if (!v10)
      {
        goto LABEL_35;
      }

      return sub_1ABF25254();
    }
  }

  sub_1ABF25254();
  if (!v9)
  {
    goto LABEL_38;
  }

LABEL_34:
  sub_1ABF25254();
  if (!v10)
  {
LABEL_35:
    sub_1ABF25254();
    return MEMORY[0x1AC5AA8D0](v28);
  }

  return sub_1ABF25254();
}

uint64_t KTSQueryParams.hashValue.getter()
{
  sub_1ABA7AB5C();
  KTSQueryParams.hash(into:)();
  return sub_1ABF25294();
}

void KTSQueryParams.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v102 = sub_1ABAD219C(&qword_1EB4DC198, &qword_1ABF75518);
  sub_1ABA7BB64(v102);
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA8176C();
  v8 = v2[4];
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABEABED4();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    v41 = v4;
    sub_1ABA81934();
    v9 = sub_1ABF24DD4();
    v101 = v10 & 1;
    v40 = sub_1ABA7E134(1);
    v99 = v11 & 1;
    sub_1ABEAC920();
    sub_1ABA81934();
    sub_1ABF24DF4();
    v39 = sub_1ABA7E134(3);
    v96 = v12 & 1;
    v38 = sub_1ABA7E134(4);
    v94 = v13 & 1;
    v37 = sub_1ABA7E134(5);
    v92 = v14 & 1;
    v36 = sub_1ABA7E134(6);
    v90 = v15 & 1;
    v35 = sub_1ABA7E134(7);
    v88 = v16 & 1;
    v34 = sub_1ABA7E134(8);
    v86 = v17 & 1;
    sub_1ABDB615C();
    sub_1ABA81934();
    sub_1ABF24DF4();
    LOBYTE(v43) = 10;
    sub_1ABA81934();
    v33 = sub_1ABF24DB4();
    v19 = v18;
    LOBYTE(v42[0]) = 11;
    sub_1ABAE8B74();
    sub_1ABA81934();
    sub_1ABF24DF4();
    v32 = v43;
    v83 = v44;
    v78 = 12;
    sub_1ABA81934();
    sub_1ABF24DF4();
    v20 = sub_1ABAA5B50();
    v21(v20);
    v103 = v79;
    v81 = v80;
    v42[0] = v9;
    v22 = v101;
    LOBYTE(v42[1]) = v101;
    v42[2] = v40;
    v23 = v99;
    LOWORD(v42[3]) = v99;
    v42[4] = v39;
    v24 = v96;
    LOBYTE(v42[5]) = v96;
    v42[6] = v38;
    v25 = v94;
    LOBYTE(v42[7]) = v94;
    v42[8] = v37;
    v26 = v92;
    LOBYTE(v42[9]) = v92;
    v42[10] = v36;
    v27 = v90;
    LOBYTE(v42[11]) = v90;
    v42[12] = v35;
    v28 = v88;
    LOBYTE(v42[13]) = v88;
    v42[14] = v34;
    v29 = v86;
    LOWORD(v42[15]) = v86;
    v42[16] = v33;
    v42[17] = v19;
    v42[18] = v32;
    v30 = v83;
    LOBYTE(v42[19]) = v83;
    v42[20] = v79;
    v31 = v80;
    LOBYTE(v42[21]) = v80;
    memcpy(v41, v42, 0xA9uLL);
    sub_1ABDD3560(v42, &v43);
    sub_1ABA84B54(v2);
    v43 = v9;
    v44 = v22;
    *v45 = *v100;
    *&v45[3] = *&v100[3];
    v46 = v40;
    v47 = v23;
    v48 = 0;
    v49 = v97;
    v50 = v98;
    v51 = v39;
    v52 = v24;
    *&v53[3] = *&v95[3];
    *v53 = *v95;
    v54 = v38;
    v55 = v25;
    *&v56[3] = *&v93[3];
    *v56 = *v93;
    v57 = v37;
    v58 = v26;
    *v59 = *v91;
    *&v59[3] = *&v91[3];
    v60 = v36;
    v61 = v27;
    *v62 = *v89;
    *&v62[3] = *&v89[3];
    v63 = v35;
    v64 = v28;
    *v65 = *v87;
    *&v65[3] = *&v87[3];
    v66 = v34;
    v67 = v29;
    v68 = 0;
    v69 = v84;
    v70 = v85;
    v71 = v33;
    v72 = v19;
    v73 = v32;
    v74 = v30;
    *&v75[3] = *&v82[3];
    *v75 = *v82;
    v76 = v103;
    v77 = v31;
    sub_1ABDD35BC(&v43);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABEAC8E4()
{
  sub_1ABF25234();
  KTSQueryParams.hash(into:)();
  return sub_1ABF25294();
}

unint64_t sub_1ABEAC920()
{
  result = qword_1EB4DC1A0;
  if (!qword_1EB4DC1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC1A0);
  }

  return result;
}

BOOL static KTSQueryConstraint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v15[0] = *a1;
  v15[1] = v3;
  v15[2] = v4;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  switch(v5 >> 13)
  {
    case 1u:
      if ((v9 & 0xE000) != 0x2000)
      {
        goto LABEL_24;
      }

      goto LABEL_13;
    case 2u:
      if ((v9 & 0xE000) != 0x4000)
      {
        goto LABEL_24;
      }

      goto LABEL_13;
    case 3u:
      if ((v9 & 0xE000) != 0x6000)
      {
        goto LABEL_24;
      }

LABEL_13:
      if (v3)
      {
        if ((v7 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else if ((v7 & 1) != 0 || *&v2 != v6)
      {
        goto LABEL_25;
      }

      if (v5)
      {
        if ((v9 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_29;
      }

      if ((v9 & 1) == 0 && *&v4 == v8)
      {
LABEL_29:
        v12 = (v5 >> 8) & 0x1F;
        v13 = (v9 >> 8) & 0x1F;
        goto LABEL_38;
      }

LABEL_25:
      sub_1ABEACB6C(v15);
      return 0;
    case 4u:
      if ((v9 & 0xE000) != 0x8000)
      {
        goto LABEL_24;
      }

      sub_1ABEACB6C(v15);
      return LOBYTE(v6) == v2;
    case 5u:
      if ((v9 & 0xE000) == 0xA000)
      {
        v11 = sub_1ABB4F410(v2, *&v6);
        sub_1ABA829C0();
        sub_1ABDDDB84(v2, v3, v4, v5);
        sub_1ABEACB6C(v15);
        return v11 & 1;
      }

LABEL_24:
      sub_1ABA829C0();
      goto LABEL_25;
    default:
      if (v9 >= 0x2000)
      {
        goto LABEL_24;
      }

      if (v3)
      {
        if ((v7 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else if ((v7 & 1) != 0 || *&v2 != v6)
      {
        goto LABEL_25;
      }

      if (v5)
      {
        if ((v9 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else if ((v9 & 1) != 0 || *&v4 != v8)
      {
        goto LABEL_25;
      }

      v13 = v9 >> 8;
      v12 = v5 >> 8;
LABEL_38:
      v14 = sub_1ABAD07A8(v12, v13);
      sub_1ABEACB6C(v15);
      return v14 & 1;
  }
}

uint64_t sub_1ABEACB6C(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4DC1A8, &qword_1ABF75520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABEACBD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6152656D6974 && a2 == 0xE900000000000065;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65636E6174736964 && a2 == 0xE800000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F69746176656C65 && a2 == 0xED00006E6961476ELL;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6570795464616F72 && a2 == 0xE800000000000000;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x746573627573 && a2 == 0xE600000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1ABF25054();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1ABEACDD0(char a1)
{
  result = 0x676E6152656D6974;
  switch(a1)
  {
    case 1:
      result = 0x65636E6174736964;
      break;
    case 2:
      result = 0x6F69746176656C65;
      break;
    case 3:
      result = 0x6E6F697461727564;
      break;
    case 4:
      result = 0x6570795464616F72;
      break;
    case 5:
      result = 0x746573627573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABEACE90(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001ABF95260 == a2;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000001ABF95280 == a2;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6F6973756C636E69 && a2 == 0xED0000657079546ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
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

uint64_t sub_1ABEACFB8(char a1)
{
  if (!a1)
  {
    return 0xD000000000000013;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0x6F6973756C636E69;
}

uint64_t sub_1ABEAD024(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x80000001ABF952E0 == a2;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x80000001ABF95300 == a2;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6F6973756C636E69 && a2 == 0xED0000657079546ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
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

uint64_t sub_1ABEAD14C(char a1)
{
  if (!a1)
  {
    return 0xD000000000000014;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0x6F6973756C636E69;
}

uint64_t sub_1ABEAD1B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000018 && 0x80000001ABF952A0 == a2;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x80000001ABF952C0 == a2;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6F6973756C636E69 && a2 == 0xED0000657079546ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
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

uint64_t sub_1ABEAD2E0(char a1)
{
  if (!a1)
  {
    return 0xD000000000000018;
  }

  if (a1 == 1)
  {
    return 0xD000000000000018;
  }

  return 0x6F6973756C636E69;
}

uint64_t sub_1ABEAD34C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6570795464616F72 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABEAD3DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D6954646E65 && a2 == 0xE700000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6F6973756C636E69 && a2 == 0xED0000657079546ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
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

uint64_t sub_1ABEAD4FC(char a1)
{
  if (!a1)
  {
    return 0x6D69547472617473;
  }

  if (a1 == 1)
  {
    return 0x656D6954646E65;
  }

  return 0x6F6973756C636E69;
}

uint64_t sub_1ABEAD56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABEACBD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABEAD594(uint64_t a1)
{
  v2 = sub_1ABEAE178();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEAD5D0(uint64_t a1)
{
  v2 = sub_1ABEAE178();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABEAD614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABEACE90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABEAD63C(uint64_t a1)
{
  v2 = sub_1ABEAE31C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEAD678(uint64_t a1)
{
  v2 = sub_1ABEAE31C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABEAD6BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABEAD024(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABEAD6E4(uint64_t a1)
{
  v2 = sub_1ABEAE274();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEAD720(uint64_t a1)
{
  v2 = sub_1ABEAE274();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABEAD764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABEAD1B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABEAD78C(uint64_t a1)
{
  v2 = sub_1ABEAE2C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEAD7C8(uint64_t a1)
{
  v2 = sub_1ABEAE2C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABEAD808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABEAD34C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABEAD834(uint64_t a1)
{
  v2 = sub_1ABEAE220();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEAD870(uint64_t a1)
{
  v2 = sub_1ABEAE220();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABEAD8AC(uint64_t a1)
{
  v2 = sub_1ABEAE1CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEAD8E8(uint64_t a1)
{
  v2 = sub_1ABEAE1CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABEAD924(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABEAD978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABEAD3DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABEAD9A0(uint64_t a1)
{
  v2 = sub_1ABEAE370();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEAD9DC(uint64_t a1)
{
  v2 = sub_1ABEAE370();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void KTSQueryConstraint.encode(to:)()
{
  sub_1ABA7BCA8();
  v79 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4DC1B0, &qword_1ABF75528);
  v6 = sub_1ABA7BB64(v5);
  v74 = v7;
  v75 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7FBE0();
  v72 = v11;
  v69 = sub_1ABAD219C(&qword_1EB4DC1B8, &qword_1ABF75530);
  sub_1ABA7BB64(v69);
  v67 = v12;
  v14 = *(v13 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7FBE0();
  v65 = v16;
  v73 = sub_1ABAD219C(&qword_1EB4DC1C0, &qword_1ABF75538);
  sub_1ABA7BB64(v73);
  v71 = v17;
  v19 = *(v18 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA7FBE0();
  v70 = v21;
  v68 = sub_1ABAD219C(&qword_1EB4DC1C8, &qword_1ABF75540);
  sub_1ABA7BB64(v68);
  v66 = v22;
  v24 = *(v23 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA7FBE0();
  v64 = v26;
  v27 = sub_1ABAD219C(&qword_1EB4DC1D0, &qword_1ABF75548);
  v28 = sub_1ABA7BB64(v27);
  v62 = v29;
  v63 = v28;
  v31 = *(v30 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v32);
  sub_1ABA8176C();
  v33 = sub_1ABAD219C(&qword_1EB4DC1D8, &qword_1ABF75550);
  sub_1ABA7BB64(v33);
  v61 = v34;
  v36 = *(v35 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v61 - v38;
  v40 = sub_1ABAD219C(&qword_1EB4DC1E0, &unk_1ABF75558);
  sub_1ABA7BB64(v40);
  v80 = v41;
  v43 = *(v42 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v44);
  sub_1ABA7FBE0();
  v45 = *v0;
  v77 = v0[1];
  v78 = v45;
  v76 = v0[2];
  v46 = *(v0 + 12);
  v47 = v4[4];
  sub_1ABA93E20(v4, v4[3]);
  sub_1ABEAE178();
  sub_1ABF252E4();
  switch(v46 >> 13)
  {
    case 1u:
      sub_1ABEAE31C();
      v48 = v40;
      sub_1ABA8E550();
      sub_1ABA7EC84();
      v58 = v63;
      v59 = v79;
      sub_1ABF24EF4();
      if (!v59)
      {
        sub_1ABA81934();
        sub_1ABF24EF4();
        sub_1ABAA55E8();
        sub_1ABEABF28();
        sub_1ABA81934();
        sub_1ABF24F84();
      }

      v60 = v62;
      goto LABEL_21;
    case 2u:
      sub_1ABEAE2C8();
      v50 = v64;
      sub_1ABA9A7A4();
      sub_1ABA7EC84();
      v51 = v68;
      sub_1ABAA336C();
      v53 = v79;
      sub_1ABF24EF4();
      if (!v53)
      {
        sub_1ABA904E0();
        sub_1ABAA336C();
        sub_1ABF24EF4();
        sub_1ABAA55E8();
        sub_1ABEABF28();
        sub_1ABAA3AEC();
      }

      v52 = v66;
      goto LABEL_15;
    case 3u:
      sub_1ABEAE274();
      v50 = v70;
      sub_1ABA9A7A4();
      sub_1ABA7EC84();
      v51 = v73;
      sub_1ABAA336C();
      v54 = v79;
      sub_1ABF24EF4();
      if (!v54)
      {
        sub_1ABA904E0();
        sub_1ABAA336C();
        sub_1ABF24EF4();
        sub_1ABAA55E8();
        sub_1ABEABF28();
        sub_1ABAA3AEC();
      }

      v52 = v71;
      goto LABEL_15;
    case 4u:
      sub_1ABEAE220();
      v50 = v65;
      sub_1ABA9A7A4();
      sub_1ABDB53E0();
      v51 = v69;
      sub_1ABF24F84();
      v52 = v67;
LABEL_15:
      (*(v52 + 8))(v50, v51);
      v55 = sub_1ABA7C908();
      v57 = v33;
      goto LABEL_23;
    case 5u:
      sub_1ABEAE1CC();
      v2 = v72;
      v48 = v40;
      sub_1ABA8E550();
      sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
      sub_1ABEAF3B0(&qword_1EB4D41A0, sub_1ABAE8BC8);
      v58 = v75;
      sub_1ABF24F84();
      v60 = v74;
LABEL_21:
      (*(v60 + 8))(v2, v58);
      goto LABEL_22;
    default:
      sub_1ABEAE370();
      v48 = v40;
      sub_1ABA8E550();
      sub_1ABA7EC84();
      v49 = v79;
      sub_1ABF24EF4();
      if (!v49)
      {
        sub_1ABA904E0();
        sub_1ABF24EF4();
        sub_1ABAA55E8();
        sub_1ABEABF28();
        sub_1ABF24F84();
      }

      (*(v61 + 8))(v39, v33);
LABEL_22:
      v55 = sub_1ABA7C908();
      v57 = v48;
LABEL_23:
      v56(v55, v57);
      sub_1ABA7BC90();
      return;
  }
}

unint64_t sub_1ABEAE178()
{
  result = qword_1EB4DC1E8;
  if (!qword_1EB4DC1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC1E8);
  }

  return result;
}

unint64_t sub_1ABEAE1CC()
{
  result = qword_1EB4DC1F0;
  if (!qword_1EB4DC1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC1F0);
  }

  return result;
}

unint64_t sub_1ABEAE220()
{
  result = qword_1EB4DC1F8;
  if (!qword_1EB4DC1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC1F8);
  }

  return result;
}

unint64_t sub_1ABEAE274()
{
  result = qword_1EB4DC200;
  if (!qword_1EB4DC200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC200);
  }

  return result;
}

unint64_t sub_1ABEAE2C8()
{
  result = qword_1EB4DC208;
  if (!qword_1EB4DC208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC208);
  }

  return result;
}

unint64_t sub_1ABEAE31C()
{
  result = qword_1EB4DC210;
  if (!qword_1EB4DC210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC210);
  }

  return result;
}

unint64_t sub_1ABEAE370()
{
  result = qword_1EB4DC218;
  if (!qword_1EB4DC218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC218);
  }

  return result;
}

void KTSQueryConstraint.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  switch(v5 >> 13)
  {
    case 1u:
      v8 = 1;
      goto LABEL_12;
    case 2u:
      v8 = 2;
      goto LABEL_12;
    case 3u:
      v8 = 3;
LABEL_12:
      MEMORY[0x1AC5AA8A0](v8);
      if (v3)
      {
        sub_1ABF25254();
        if (v5)
        {
          goto LABEL_29;
        }

        goto LABEL_14;
      }

      sub_1ABF25254();
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v9 = v2;
      }

      else
      {
        v9 = 0;
      }

      MEMORY[0x1AC5AA8D0](v9);
      if ((v5 & 1) == 0)
      {
LABEL_14:
        sub_1ABF25254();
        if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v7 = v4;
        }

        else
        {
          v7 = 0;
        }

        goto LABEL_7;
      }

LABEL_29:
      sub_1ABF25254();
LABEL_30:

      sub_1ABBB677C();
      return;
    case 4u:
      MEMORY[0x1AC5AA8A0](4);
      sub_1ABF25264();
      return;
    case 5u:
      MEMORY[0x1AC5AA8A0](5);

      sub_1ABB4EC5C(a1, v2);
      return;
    default:
      MEMORY[0x1AC5AA8A0](0);
      if (v3)
      {
        sub_1ABF25254();
        if (v5)
        {
          goto LABEL_29;
        }
      }

      else
      {
        sub_1ABF25254();
        if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v10 = v2;
        }

        else
        {
          v10 = 0;
        }

        MEMORY[0x1AC5AA8D0](v10);
        if (v5)
        {
          goto LABEL_29;
        }
      }

      sub_1ABF25254();
      if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v7 = v4;
      }

      else
      {
        v7 = 0;
      }

LABEL_7:
      MEMORY[0x1AC5AA8D0](v7);
      goto LABEL_30;
  }
}

uint64_t KTSQueryConstraint.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 12);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_1ABA7AB5C();
  KTSQueryConstraint.hash(into:)(v4);
  return sub_1ABF25294();
}

void KTSQueryConstraint.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v130 = v10;
  v13 = v12;
  v126 = v14;
  v117 = sub_1ABAD219C(&qword_1EB4DC220, &qword_1ABF75568);
  sub_1ABA7BB64(v117);
  v123 = v15;
  v17 = *(v16 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7FBE0();
  v125 = v19;
  v115 = sub_1ABAD219C(&qword_1EB4DC228, &qword_1ABF75570);
  sub_1ABA7BB64(v115);
  v120 = v20;
  v22 = *(v21 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA7FBE0();
  v124 = v24;
  v114 = sub_1ABAD219C(&qword_1EB4DC230, &qword_1ABF75578);
  sub_1ABA7BB64(v114);
  v122 = v25;
  v27 = *(v26 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA7FBE0();
  v128 = v29;
  v116 = sub_1ABAD219C(&qword_1EB4DC238, &qword_1ABF75580);
  sub_1ABA7BB64(v116);
  v121 = v30;
  v32 = *(v31 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v33);
  sub_1ABA7FBE0();
  v127 = v34;
  v113 = sub_1ABAD219C(&qword_1EB4DC240, &qword_1ABF75588);
  sub_1ABA7BB64(v113);
  v119 = v35;
  v37 = *(v36 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v38);
  v40 = v112 - v39;
  v41 = sub_1ABAD219C(&qword_1EB4DC248, &qword_1ABF75590);
  sub_1ABA7BB64(v41);
  v118 = v42;
  v44 = *(v43 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v45);
  sub_1ABA8176C();
  v46 = sub_1ABAD219C(&qword_1EB4DC250, &unk_1ABF75598);
  sub_1ABA7BB64(v46);
  v48 = v47;
  v50 = *(v49 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v51);
  v53 = v112 - v52;
  v55 = v13[3];
  v54 = v13[4];
  v129 = v13;
  sub_1ABA93E20(v13, v55);
  sub_1ABEAE178();
  v56 = v130;
  sub_1ABF252C4();
  if (v56)
  {
    goto LABEL_8;
  }

  v112[2] = v11;
  v112[1] = v41;
  v112[3] = v40;
  v130 = v48;
  v57 = sub_1ABF24EA4();
  sub_1ABAD4EA4(v57, 0);
  if (v59 == v60 >> 1)
  {
LABEL_7:
    v68 = sub_1ABF24B44();
    swift_allocError();
    v70 = v69;
    v71 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v70 = &type metadata for KTSQueryConstraint;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    (*(*(v68 - 8) + 104))(v70, *MEMORY[0x1E69E6AF8], v68);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1ABA836AC();
    v72(v53, v46);
LABEL_8:
    sub_1ABA84B54(v129);
LABEL_9:
    sub_1ABA7BC90();
    return;
  }

  v112[0] = 0;
  if (v59 < (v60 >> 1))
  {
    v61 = *(v58 + v59);
    sub_1ABAD4E90(v59 + 1);
    v63 = v62;
    v65 = v64;
    swift_unknownObjectRelease();
    if (v63 == v65 >> 1)
    {
      v66 = v126;
      switch(v61)
      {
        case 1:
          sub_1ABEAE31C();
          sub_1ABA8EE08();
          sub_1ABAA2AE0();
          sub_1ABA9752C();
          v80 = sub_1ABF24DD4();
          sub_1ABA84488();
          sub_1ABA9752C();
          v89 = sub_1ABF24DD4();
          LODWORD(v128) = v91;
          sub_1ABAA55E8();
          sub_1ABEAC920();
          sub_1ABA959C0();
          sub_1ABF24E64();
          sub_1ABA90BD0();
          swift_unknownObjectRelease();
          v107 = sub_1ABA81304();
          v108(v107);
          v109 = sub_1ABA7FAE4();
          v110(v109, v46);
          sub_1ABA97E60();
          v106 = v111 | 0x2000;
          goto LABEL_16;
        case 2:
          sub_1ABEAE2C8();
          sub_1ABA8EE08();
          sub_1ABAA2AE0();
          v74 = v116;
          sub_1ABA9752C();
          v80 = sub_1ABF24DD4();
          sub_1ABA84488();
          v89 = sub_1ABF24DD4();
          LODWORD(v128) = v87;
          sub_1ABAA55E8();
          sub_1ABEAC920();
          sub_1ABA959C0();
          sub_1ABF24E64();
          sub_1ABA90BD0();
          swift_unknownObjectRelease();
          v92 = sub_1ABA8B474();
          v93(v92, v74);
          v94 = sub_1ABA7FAE4();
          v95(v94, v46);
          sub_1ABA97E60();
          v106 = v96 | 0x4000;
          goto LABEL_16;
        case 3:
          sub_1ABEAE274();
          sub_1ABA8EE08();
          sub_1ABAA2AE0();
          v80 = sub_1ABF24DD4();
          sub_1ABA84488();
          v89 = sub_1ABF24DD4();
          LODWORD(v127) = v88;
          sub_1ABAA55E8();
          sub_1ABEAC920();
          sub_1ABA959C0();
          sub_1ABF24E64();
          sub_1ABA90BD0();
          swift_unknownObjectRelease();
          v97 = sub_1ABA81304();
          v98(v97);
          v99 = sub_1ABA7C908();
          v100(v99, v46);
          sub_1ABA97E60();
          v106 = v101 | 0x6000;
          goto LABEL_16;
        case 4:
          sub_1ABEAE220();
          sub_1ABA8EE08();
          sub_1ABDB615C();
          v73 = v115;
          sub_1ABA9752C();
          sub_1ABF24E64();
          v89 = 0;
          v112[0] = 0;
          swift_unknownObjectRelease();
          v76 = sub_1ABA992D8();
          v77(v76, v73);
          sub_1ABA836AC();
          v78 = sub_1ABAA2760();
          v79(v78);
          v105 = 0;
          v80 = 4;
          v106 = 0x8000;
          goto LABEL_15;
        case 5:
          LOBYTE(a10) = 5;
          sub_1ABEAE1CC();
          sub_1ABA8EE08();
          v89 = 0;
          sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
          sub_1ABEAF3B0(&qword_1EB4D41F0, sub_1ABAE8B74);
          sub_1ABF24E64();
          v75 = v130;
          v112[0] = 0;
          swift_unknownObjectRelease();
          v81 = sub_1ABA7E5B0();
          v82(v81);
          v83 = *(v75 + 8);
          v84 = sub_1ABAA2760();
          v85(v84);
          v105 = 0;
          v80 = a10;
          v106 = -24576;
LABEL_15:
          v86 = v129;
          break;
        default:
          sub_1ABEAE370();
          sub_1ABA8EE08();
          v67 = v53;
          sub_1ABAA2AE0();
          v80 = sub_1ABF24DD4();
          v128 = v46;
          sub_1ABA84488();
          v89 = sub_1ABF24DD4();
          LODWORD(v127) = v90;
          sub_1ABAA55E8();
          sub_1ABEAC920();
          sub_1ABA959C0();
          sub_1ABF24E64();
          sub_1ABA90BD0();
          swift_unknownObjectRelease();
          v102 = sub_1ABAA4758();
          v103(v102);
          sub_1ABA836AC();
          v104(v67, v128);
          sub_1ABA97E60();
LABEL_16:
          v86 = v129;
          v66 = v126;
          break;
      }

      *v66 = v80;
      *(v66 + 8) = v105;
      *(v66 + 16) = v89;
      *(v66 + 24) = v106;
      sub_1ABA84B54(v86);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1ABEAF358()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 12);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_1ABF25234();
  KTSQueryConstraint.hash(into:)(v4);
  return sub_1ABF25294();
}

uint64_t sub_1ABEAF3B0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4D1720, &qword_1ABF338B0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1ABEAF42C()
{
  result = qword_1EB4DC258;
  if (!qword_1EB4DC258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC258);
  }

  return result;
}

unint64_t sub_1ABEAF484()
{
  result = qword_1EB4DC260;
  if (!qword_1EB4DC260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC260);
  }

  return result;
}

unint64_t sub_1ABEAF4DC()
{
  result = qword_1EB4DC268;
  if (!qword_1EB4DC268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC268);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InclusionType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1ABEAF610(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 169))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 136);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1ABEAF664(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 168) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 169) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 169) = 0;
    }

    if (a2)
    {
      *(result + 136) = a2;
    }
  }

  return result;
}

uint64_t sub_1ABEAF6FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 26))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1ABEAF744(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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
      *result = 0;
      *(result + 8) = 2 * -a2;
      *(result + 16) = 0;
      *(result + 24) = 0;
      return result;
    }

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABEAF7A4(uint64_t result, __int16 a2)
{
  v2 = *(result + 24) & 0x701 | (a2 << 13);
  *(result + 8) &= 1uLL;
  *(result + 24) = v2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for KTSQueryConstraint.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABEAF8E0(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1ABEAF9CC(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for KTSQueryParams.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABEAFB58()
{
  result = qword_1EB4DC270;
  if (!qword_1EB4DC270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC270);
  }

  return result;
}

unint64_t sub_1ABEAFBB0()
{
  result = qword_1EB4DC278;
  if (!qword_1EB4DC278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC278);
  }

  return result;
}

unint64_t sub_1ABEAFC08()
{
  result = qword_1EB4DC280;
  if (!qword_1EB4DC280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC280);
  }

  return result;
}

unint64_t sub_1ABEAFC60()
{
  result = qword_1EB4DC288;
  if (!qword_1EB4DC288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC288);
  }

  return result;
}

unint64_t sub_1ABEAFCB8()
{
  result = qword_1EB4DC290;
  if (!qword_1EB4DC290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC290);
  }

  return result;
}

unint64_t sub_1ABEAFD10()
{
  result = qword_1EB4DC298;
  if (!qword_1EB4DC298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC298);
  }

  return result;
}

unint64_t sub_1ABEAFD68()
{
  result = qword_1EB4DC2A0;
  if (!qword_1EB4DC2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC2A0);
  }

  return result;
}

unint64_t sub_1ABEAFDC0()
{
  result = qword_1EB4DC2A8;
  if (!qword_1EB4DC2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC2A8);
  }

  return result;
}

unint64_t sub_1ABEAFE18()
{
  result = qword_1EB4DC2B0;
  if (!qword_1EB4DC2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC2B0);
  }

  return result;
}

unint64_t sub_1ABEAFE70()
{
  result = qword_1EB4DC2B8;
  if (!qword_1EB4DC2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC2B8);
  }

  return result;
}

unint64_t sub_1ABEAFEC8()
{
  result = qword_1EB4DC2C0;
  if (!qword_1EB4DC2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC2C0);
  }

  return result;
}

unint64_t sub_1ABEAFF20()
{
  result = qword_1EB4DC2C8;
  if (!qword_1EB4DC2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC2C8);
  }

  return result;
}

unint64_t sub_1ABEAFF78()
{
  result = qword_1EB4DC2D0;
  if (!qword_1EB4DC2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC2D0);
  }

  return result;
}

unint64_t sub_1ABEAFFD0()
{
  result = qword_1EB4DC2D8;
  if (!qword_1EB4DC2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC2D8);
  }

  return result;
}

unint64_t sub_1ABEB0028()
{
  result = qword_1EB4DC2E0;
  if (!qword_1EB4DC2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC2E0);
  }

  return result;
}

unint64_t sub_1ABEB0080()
{
  result = qword_1EB4DC2E8;
  if (!qword_1EB4DC2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC2E8);
  }

  return result;
}

unint64_t sub_1ABEB00D8()
{
  result = qword_1EB4DC2F0;
  if (!qword_1EB4DC2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC2F0);
  }

  return result;
}

unint64_t sub_1ABEB0130()
{
  result = qword_1EB4DC2F8;
  if (!qword_1EB4DC2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC2F8);
  }

  return result;
}

unint64_t sub_1ABEB0188()
{
  result = qword_1EB4DC300;
  if (!qword_1EB4DC300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC300);
  }

  return result;
}

unint64_t sub_1ABEB01E0()
{
  result = qword_1EB4DC308;
  if (!qword_1EB4DC308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC308);
  }

  return result;
}

unint64_t sub_1ABEB0238()
{
  result = qword_1EB4DC310;
  if (!qword_1EB4DC310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC310);
  }

  return result;
}

unint64_t sub_1ABEB0290()
{
  result = qword_1EB4DC318;
  if (!qword_1EB4DC318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC318);
  }

  return result;
}

unint64_t sub_1ABEB02E8()
{
  result = qword_1EB4DC320;
  if (!qword_1EB4DC320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC320);
  }

  return result;
}

unint64_t sub_1ABEB0340()
{
  result = qword_1EB4DC328;
  if (!qword_1EB4DC328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC328);
  }

  return result;
}

unint64_t sub_1ABEB0394()
{
  result = qword_1EB4DC330[0];
  if (!qword_1EB4DC330[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4DC330);
  }

  return result;
}

uint64_t TypedEntityIdentifier.init(untyped:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  EntityClass.init(intValue:)(HIBYTE(*a1), &v21);
  v8 = *(&v21 + 1);
  if (*(&v21 + 1))
  {
    v9 = v21;
    v10 = v22;
    v27 = v23;
    static GraphObjectBase.entityClass.getter(a2, *(a3 + 8));
    v24[0] = v21;
    v24[1] = v22;
    v11 = v23;
    v25 = v23;
    if (v22 == v10 && *(&v10 + 1) == *(&v22 + 1))
    {
      goto LABEL_8;
    }

    v13 = v21;
    v19 = v22;
    v20 = *(&v21 + 1);
    v18 = *(&v22 + 1);
    if (sub_1ABF25054())
    {
      goto LABEL_8;
    }

    *&v21 = v9;
    *(&v21 + 1) = v8;
    v22 = v10;
    v23 = v27;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v26 = v14;

    if (v26)
    {
LABEL_8:
      sub_1ABAA8FA8(v9, v8);
      result = sub_1ABA88934(v24);
      *a4 = v7;
      return result;
    }

    sub_1ABAEFC04();
    swift_allocError();
    *v17 = v13;
    *(v17 + 8) = v20;
    *(v17 + 16) = v19;
    *(v17 + 24) = v18;
    *(v17 + 32) = v11;
    *(v17 + 40) = v9;
    *(v17 + 48) = v8;
    *(v17 + 56) = v10;
    *(v17 + 72) = v27;
  }

  else
  {
    sub_1ABAEFC04();
    swift_allocError();
    *v16 = xmmword_1ABF34750;
    v16[1] = 0u;
    v16[2] = 0u;
    v16[3] = 0u;
    *(v16 + 57) = 0u;
  }

  return swift_willThrow();
}

uint64_t sub_1ABEB0604()
{
  sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
  type metadata accessor for TypedEntityIdentifier();
  sub_1ABD5B86C();
  return sub_1ABF23F24();
}

void TypedEntityIdentifier<>.init(objectiveCGraphObjectEntityIdentifier:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = [a1 intValue];
  sub_1ABEB0898(&v8, a2, *(a3 + 8), &v9);

  *a4 = v9;
}

id TypedEntityIdentifier<>.objectiveCGraphObjectEntityIdentifier.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  swift_getAssociatedTypeWitness();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t TypedEntityIdentifier.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  EntityIdentifier.init(_:)(a1, a2, &v12);
  if (v13 == 1)
  {
    sub_1ABAEFC04();
    swift_allocError();
    *v9 = 0u;
    v9[1] = 0u;
    v9[2] = 0u;
    v9[3] = 0u;
    *(v9 + 57) = 0u;
    return swift_willThrow();
  }

  else
  {
    v11 = v12;
    result = TypedEntityIdentifier.init(untyped:)(&v11, a3, a4, &v12);
    if (!v5)
    {
      *a5 = v12;
    }
  }

  return result;
}

uint64_t sub_1ABEB0898@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  result = TypedEntityIdentifier.init(untyped:)(&v6, a2, a3, &v7);
  *a4 = v7;
  return result;
}

uint64_t sub_1ABEB0A30(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x64657079746E75 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABEB0AC0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return _s20IntelligencePlatform34LocationEmbedderInferenceInterfaceO6ErrorsO8RunErrorO9hashValueSivg_0();
}

uint64_t sub_1ABEB0ACC(uint64_t a1, uint64_t a2)
{
  sub_1ABF25234();
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  sub_1ABAB1278();
  return sub_1ABF25294();
}

uint64_t sub_1ABEB0B10(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return sub_1ABEB0AA8();
}

uint64_t sub_1ABEB0B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1ABEB0A30(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1ABEB0B50(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return sub_1ABACA7A4();
}

uint64_t sub_1ABEB0B74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABEB0BC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t TypedEntityIdentifier.encode(to:)(void *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  type metadata accessor for TypedEntityIdentifier.CodingKeys();
  sub_1ABA7E158();
  swift_getWitnessTable();
  v6 = sub_1ABF24FC4();
  v7 = sub_1ABA7BB64(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = v21 - v12;
  v14 = *v2;
  v15 = a1[3];
  v16 = a1[4];
  v17 = a1;
  v19 = v18;
  sub_1ABA93E20(v17, v15);
  sub_1ABF252E4();
  v21[3] = v14;
  sub_1ABAE8BC8();
  sub_1ABF24F84();
  return (*(v9 + 8))(v13, v19);
}

uint64_t TypedEntityIdentifier.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8D0](v1);
  return sub_1ABF25294();
}

uint64_t TypedEntityIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v16 = a2;
  type metadata accessor for TypedEntityIdentifier.CodingKeys();
  sub_1ABA7E158();
  swift_getWitnessTable();
  v4 = sub_1ABF24EB4();
  v5 = sub_1ABA7BB64(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v15 - v10;
  v12 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABF252C4();
  if (!v2)
  {
    v13 = v16;
    sub_1ABAE8B74();
    sub_1ABF24E64();
    (*(v7 + 8))(v11, v4);
    *v13 = v17;
  }

  return sub_1ABA84B54(a1);
}

uint64_t sub_1ABEB0FA8()
{
  sub_1ABF25234();
  TypedEntityIdentifier.hash(into:)();
  return sub_1ABF25294();
}

uint64_t sub_1ABEB0FE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return TypedEntityIdentifier.init(from:)(a1, a3);
}

void sub_1ABEB109C(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  v7 = *a1;
  TypedEntityIdentifier.cast<A>(as:)(a2, a3, &v8);
  if (v4)
  {

    v6 = 0;
  }

  else
  {
    v6 = v8;
  }

  *a4 = v6;
  *(a4 + 8) = v4 != 0;
}

void sub_1ABEB1114(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[5];
  v6 = v2[6];
  sub_1ABEB109C(a1, v2[4], v2[7], a2);
}

void sub_1ABEB1150(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *a1;
  EntityIdentifier.typed<A>(as:)(a2, a3, &v8);
  if (v4)
  {

    v6 = 0;
  }

  else
  {
    v6 = v8;
  }

  *a4 = v6;
  *(a4 + 8) = v4 != 0;
}

uint64_t EntityIdentifier.graphObject<A>(from:)()
{
  sub_1ABA8FD20();
  return GraphObjectContextProtocol.graphObject(forUntyped:)();
}

{
  sub_1ABA8FD20();
  return GraphObjectContextProtocol.graphObject<>(forUntyped:)();
}

uint64_t sub_1ABEB12BC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1ABEB12D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 73))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1ABEB1328(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

double sub_1ABEB1390(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 72) = 0;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1ABEB13D8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_1ABEB1414(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1ABEB1524(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 40);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ABEB15B8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 40);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(*(v5 - 8) + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v8 + 80);
  v12 = *(*(v7 - 8) + 64);
  if (v10 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(v5 - 8) + 64) + v11;
  v15 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_27;
  }

  v16 = v12 + (v14 & ~v11) + 1;
  v17 = 8 * v16;
  if (v16 > 3)
  {
    goto LABEL_10;
  }

  v19 = ((v15 + ~(-1 << v17)) >> v17) + 1;
  if (HIWORD(v19))
  {
    v18 = *(a1 + v16);
    if (v18)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v19 <= 0xFF)
    {
      if (v19 < 2)
      {
        goto LABEL_27;
      }

LABEL_10:
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_27;
      }

LABEL_17:
      v20 = (v18 - 1) << v17;
      if (v16 > 3)
      {
        v20 = 0;
      }

      if (v12 + (v14 & ~v11) == -1)
      {
        v22 = 0;
      }

      else
      {
        if (v16 <= 3)
        {
          v21 = v12 + (v14 & ~v11) + 1;
        }

        else
        {
          v21 = 4;
        }

        switch(v21)
        {
          case 2:
            v22 = *a1;
            break;
          case 3:
            v22 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v22 = *a1;
            break;
          default:
            v22 = *a1;
            break;
        }
      }

      v25 = v13 + (v22 | v20);
      return (v25 + 1);
    }

    v18 = *(a1 + v16);
    if (*(a1 + v16))
    {
      goto LABEL_17;
    }
  }

LABEL_27:
  if (v6 == v13)
  {
    return sub_1ABA7E1E0(a1, v6, v5);
  }

  a1 = ((a1 + v14) & ~v11);
  if (v9 == v13)
  {
    v6 = v9;
    v5 = v7;
    return sub_1ABA7E1E0(a1, v6, v5);
  }

  v24 = *(a1 + v12);
  if (v24 < 2)
  {
    return 0;
  }

  v25 = (v24 + 2147483646) & 0x7FFFFFFF;
  return (v25 + 1);
}

void sub_1ABEB17B4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(*(v7 - 8) + 84);
  v9 = *(a4 + 40);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  if (v12 <= 0xFE)
  {
    v12 = 254;
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = v14 & ~v13;
  v16 = *(*(v9 - 8) + 64);
  v17 = v16 + v15 + 1;
  v18 = 8 * v17;
  v19 = a3 >= v12;
  v20 = a3 - v12;
  if (v20 != 0 && v19)
  {
    if (v17 <= 3)
    {
      v24 = ((v20 + ~(-1 << v18)) >> v18) + 1;
      if (HIWORD(v24))
      {
        v21 = 4;
      }

      else
      {
        if (v24 < 0x100)
        {
          v25 = 1;
        }

        else
        {
          v25 = 2;
        }

        if (v24 >= 2)
        {
          v21 = v25;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v12 >= a2)
  {
    switch(v21)
    {
      case 1:
        a1[v17] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        return;
      case 2:
        *&a1[v17] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        return;
      case 3:
LABEL_46:
        __break(1u);
        return;
      case 4:
        *&a1[v17] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (!a2)
        {
          return;
        }

LABEL_29:
        if (v8 == v12)
        {
          goto LABEL_32;
        }

        a1 = (&a1[v14] & ~v13);
        if (v11 == v12)
        {
          v8 = v11;
          v7 = v9;
LABEL_32:

          sub_1ABA7B9B4(a1, a2, v8, v7);
        }

        else
        {
          a1[v16] = a2 + 1;
        }

        break;
    }
  }

  else
  {
    v22 = ~v12 + a2;
    if (v17 < 4)
    {
      v23 = (v22 >> v18) + 1;
      if (v16 + v15 != -1)
      {
        v26 = v22 & ~(-1 << v18);
        bzero(a1, v16 + v15 + 1);
        if (v17 == 3)
        {
          *v6 = v26;
          v6[2] = BYTE2(v26);
        }

        else if (v17 == 2)
        {
          *v6 = v26;
        }

        else
        {
          *v6 = v22;
        }
      }
    }

    else
    {
      bzero(a1, v16 + v15 + 1);
      *v6 = v22;
      v23 = 1;
    }

    switch(v21)
    {
      case 1:
        v6[v17] = v23;
        break;
      case 2:
        *&v6[v17] = v23;
        break;
      case 3:
        goto LABEL_46;
      case 4:
        *&v6[v17] = v23;
        break;
      default:
        return;
    }
  }
}

void sub_1ABEB1A80(void *a1)
{
  sub_1ABB68CCC();
  if (v2 <= 0x3F)
  {
    v3 = a1[6];
    v4 = a1[2];
    swift_getAssociatedTypeWitness();
    if (v5 <= 0x3F)
    {
      v6 = a1[5];
      swift_checkMetadataState();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1ABEB1B40(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = a3[6];
  v7 = a3[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = a3[5];
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v10 <= v13)
  {
    v14 = *(v12 + 84);
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v9 + 80);
  v17 = *(*(AssociatedTypeWitness - 8) + 64);
  v18 = *(v12 + 80);
  v19 = *(v12 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v15)
  {
    goto LABEL_28;
  }

  v20 = v19 + ((v17 + v18 + ((v16 + 8) & ~v16)) & ~v18) + 1;
  v21 = 8 * v20;
  if (v20 <= 3)
  {
    v24 = ((a2 - v15 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v24))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (v24 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (v24 < 2)
    {
LABEL_28:
      if ((v14 & 0x80000000) != 0)
      {
        v29 = (a1 + v16 + 8) & ~v16;
        if (v10 == v15)
        {
          v11 = AssociatedTypeWitness;
        }

        else
        {
          v29 = (v29 + v17 + v18) & ~v18;
          v10 = v13;
        }

        return sub_1ABA7E1E0(v29, v10, v11);
      }

      else
      {
        v28 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v28) = -1;
        }

        return (v28 + 1);
      }
    }
  }

  v22 = *(a1 + v20);
  if (!*(a1 + v20))
  {
    goto LABEL_28;
  }

LABEL_18:
  v25 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v25 = 0;
  }

  if (v20)
  {
    if (v20 <= 3)
    {
      v26 = v20;
    }

    else
    {
      v26 = 4;
    }

    switch(v26)
    {
      case 2:
        v27 = *a1;
        break;
      case 3:
        v27 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v27 = *a1;
        break;
      default:
        v27 = *a1;
        break;
    }
  }

  else
  {
    v27 = 0;
  }

  return v15 + (v27 | v25) + 1;
}

void sub_1ABEB1DBC(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v8 = a4[6];
  v9 = a4[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 84);
  v13 = a4[5];
  v14 = *(v13 - 8);
  v15 = *(v14 + 84);
  if (v12 <= v15)
  {
    v16 = *(v14 + 84);
  }

  else
  {
    v16 = *(v11 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v11 + 80);
  v19 = *(*(AssociatedTypeWitness - 8) + 64);
  v20 = *(v14 + 80);
  v21 = *(v14 + 64) + ((v19 + v20 + ((v18 + 8) & ~v18)) & ~v20) + 1;
  v22 = 8 * v21;
  if (a3 <= v17)
  {
    v23 = 0;
  }

  else if (v21 <= 3)
  {
    v26 = ((a3 - v17 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v26))
    {
      v23 = 4;
    }

    else
    {
      if (v26 < 0x100)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2;
      }

      if (v26 >= 2)
      {
        v23 = v27;
      }

      else
      {
        v23 = 0;
      }
    }
  }

  else
  {
    v23 = 1;
  }

  if (v17 >= a2)
  {
    switch(v23)
    {
      case 1:
        a1[v21] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        break;
      case 2:
        *&a1[v21] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        break;
      case 3:
LABEL_51:
        __break(1u);
        break;
      case 4:
        *&a1[v21] = 0;
        goto LABEL_29;
      default:
LABEL_29:
        if (a2)
        {
LABEL_30:
          if ((v16 & 0x80000000) != 0)
          {
            v30 = &a1[v18 + 8] & ~v18;
            if (v12 == v17)
            {
              v31 = a2;
              v13 = AssociatedTypeWitness;
            }

            else
            {
              v30 = (v30 + v19 + v20) & ~v20;
              v31 = a2;
              v12 = v15;
            }

            sub_1ABA7B9B4(v30, v31, v12, v13);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v29 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v29 = (a2 - 1);
            }

            *a1 = v29;
          }
        }

        break;
    }
  }

  else
  {
    v24 = ~v17 + a2;
    if (v21 < 4)
    {
      v25 = (v24 >> v22) + 1;
      if (v21)
      {
        v28 = v24 & ~(-1 << v22);
        bzero(a1, v21);
        if (v21 == 3)
        {
          *a1 = v28;
          a1[2] = BYTE2(v28);
        }

        else if (v21 == 2)
        {
          *a1 = v28;
        }

        else
        {
          *a1 = v24;
        }
      }
    }

    else
    {
      bzero(a1, v21);
      *a1 = v24;
      v25 = 1;
    }

    switch(v23)
    {
      case 1:
        a1[v21] = v25;
        break;
      case 2:
        *&a1[v21] = v25;
        break;
      case 3:
        goto LABEL_51;
      case 4:
        *&a1[v21] = v25;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1ABEB20F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  v10 = type metadata accessor for TypedGraphObjectSequence();
  result = (*(*(a5 - 8) + 32))(a6 + *(v10 + 92), a2, a5);
  *(a6 + *(v10 + 96)) = a3;
  return result;
}

uint64_t sub_1ABEB2204@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v66 = a2;
  v5 = *(a1 + 32);
  sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
  v84 = v5;
  v6 = sub_1ABF252B4();
  sub_1ABF247E4();
  sub_1ABA7BD7C();
  v73 = v7;
  v74 = v8;
  v10 = *(v9 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v75 = &v61 - v12;
  v72 = v6;
  v63 = *(v6 - 8);
  v13 = *(v63 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  v62 = &v61 - v15;
  v16 = *(a1 + 24);
  sub_1ABA7BD7C();
  v77 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA7BC58();
  v23 = v22 - v21;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v65 = sub_1ABF247E4();
  sub_1ABA7BD7C();
  v64 = v25;
  v27 = *(v26 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v61 - v29;
  sub_1ABA7BD7C();
  v76 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v36 = (&v61 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v37);
  v83 = *(a1 + 92);
  v38 = *(a1 + 48);
  v39 = *(a1 + 16);
  v41 = &v61 - v40;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v80 = (v76 + 4);
  v81 = AssociatedConformanceWitness;
  v78 = (v77 + 4);
  v79 = (v76 + 2);
  ++v76;
  ++v77;
  v68 = (v74 + 8);
  v69 = v36;
  v70 = v30;
  v71 = v41;
  while (1)
  {
    sub_1ABF24864();
    if (sub_1ABA7E1E0(v30, 1, TupleTypeMetadata2) == 1)
    {
      (*(v64 + 8))(v30, v65);
      v48 = *(a1 + 64);
      type metadata accessor for TypedEntityIdentifier();
      v49 = swift_getTupleTypeMetadata2();
      v50 = v66;
      v51 = 1;
      return sub_1ABA7B9B4(v50, v51, 1, v49);
    }

    (*v80)(v41, v30, TupleTypeMetadata2);
    (*v79)(v36, v41, TupleTypeMetadata2);
    v43 = *v36;
    (*v78)(v23, v36 + *(TupleTypeMetadata2 + 48), v16);
    v85 = v43;
    TypedEntityIdentifier.init(untyped:)(&v85, v84, *(a1 + 64), &v86);
    v67 = v86;
    v44 = *(a1 + 96);
    LODWORD(v74) = *(v3 + *(a1 + 100));
    v45 = *(a1 + 56);
    swift_getAssociatedTypeWitness();
    v46 = *(a1 + 40);
    v47 = v75;
    v59 = *(a1 + 80);
    v60 = *(a1 + 72);
    sub_1ABC80FCC(v84, v74, v84, v75);
    (*v77)(v23, v16);
    v41 = v71;
    (*v76)();
    if (sub_1ABA7E1E0(v47, 1, v72) != 1)
    {
      break;
    }

    (*v68)(v75, v73);
    v36 = v69;
    v30 = v70;
  }

  v52 = *(v63 + 32);
  v53 = v62;
  v54 = v72;
  v52(v62, v75, v72);
  type metadata accessor for TypedEntityIdentifier();
  v55 = swift_getTupleTypeMetadata2();
  v56 = *(v55 + 48);
  v57 = v66;
  *v66 = v67;
  v52(&v57[v56], v53, v54);
  sub_1ABA7B9B4(&v57[v56], 0, 1, v54);
  v50 = v57;
  v51 = 0;
  v49 = v55;
  return sub_1ABA7B9B4(v50, v51, 1, v49);
}

uint64_t sub_1ABEB2898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X7>, char *a6@<X8>)
{
  *a6 = a1;
  v11 = type metadata accessor for TypedGraphObjectSequence.Iterator();
  v12 = v11[23];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(&a6[v12], a2, AssociatedTypeWitness);
  result = (*(*(a5 - 8) + 32))(&a6[v11[24]], a3, a5);
  a6[v11[25]] = a4;
  return result;
}

uint64_t sub_1ABEB29C4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v37 = a2;
  v5 = *(a1 + 40);
  sub_1ABA7BD7C();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7BC58();
  v13 = v12 - v11;
  v15 = *(v14 + 16);
  sub_1ABA7BD7C();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA7BC58();
  v23 = v22 - v21;
  v25 = *(v24 + 48);
  v26 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v36 - v28;
  (*(v17 + 16))(v23, v3, v15);
  sub_1ABF23F04();
  (*(v7 + 16))(v13, v3 + *(a1 + 92), v5);
  v30 = *(a1 + 24);
  v31 = *(a1 + 32);
  v34 = *(a1 + 72);
  v35 = *(a1 + 80);
  v33 = *(a1 + 56);
  return sub_1ABEB2898(MEMORY[0x1E69E7CD0], v29, v13, *(v3 + *(a1 + 96)), v5, v37);
}

uint64_t sub_1ABEB2BC0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1ABEB29C4(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t static UniversalEmbeddingModelClient.shared()()
{
  v0 = [objc_opt_self() service];
  result = swift_allocObject();
  *(result + 16) = v0;
  return result;
}

uint64_t UniversalEmbeddingModelClient.embed(items:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1ABEB2CA0, 0, 0);
}

uint64_t sub_1ABEB2CA0()
{
  v1 = v0[3];
  v2 = [objc_allocWithZone(MEMORY[0x1E69AE3E8]) init];
  v0[4] = v2;
  [v2 setVersion_];
  v3 = *(v1 + 16);
  v0[5] = v3;
  if (v3)
  {
    sub_1ABAD219C(&qword_1EB4D1910, &qword_1ABF33AA0);
    v4 = swift_allocObject();
    v0[6] = v4;
    *(v4 + 16) = xmmword_1ABF5FD20;
    *(v4 + 32) = v2;
    v3;
    v5 = v2;
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = sub_1ABEB2EB0;
    v7 = v0[2];

    return sub_1ABEB325C();
  }

  else
  {
    if (qword_1ED871B38 != -1)
    {
      sub_1ABA7D178();
    }

    v9 = sub_1ABF237F4();
    sub_1ABA7AA24(v9, qword_1ED871B40);
    v10 = sub_1ABF237D4();
    v11 = sub_1ABF24664();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1ABA78000, v10, v11, "Couldn't fetch embedding due to error: madService is nil", v12, 2u);
      sub_1ABA7BC34();
    }

    v13 = v0[1];
    v14 = MEMORY[0x1E69E7CC0];

    return v13(v14);
  }
}

uint64_t sub_1ABEB2EB0(uint64_t a1)
{
  v4 = *v2;
  sub_1ABA7D4E0();
  *v5 = v4;
  v7 = *(v6 + 56);
  v8 = *v2;
  sub_1ABA7D4E0();
  *v9 = v8;
  v4[8] = v1;

  if (v1)
  {
    v10 = sub_1ABEB3040;
  }

  else
  {
    v11 = v4[6];

    v4[9] = a1;
    v10 = sub_1ABEB2FD8;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1ABEB2FD8()
{
  sub_1ABA7BBF8();
  v1 = *(v0 + 40);

  v2 = *(v0 + 72);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1ABEB3040()
{
  v1 = v0[6];

  if (qword_1ED871B38 != -1)
  {
    sub_1ABA7D178();
  }

  v2 = v0[8];
  v3 = sub_1ABF237F4();
  sub_1ABA7AA24(v3, qword_1ED871B40);
  v4 = v2;
  v5 = sub_1ABF237D4();
  v6 = sub_1ABF24664();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1ABA78000, v5, v6, "Couldn't fetch embedding due to error: %@", v8, 0xCu);
    sub_1ABB24B18(v9);
    sub_1ABA7BC34();
    sub_1ABA7BC34();
  }

  v12 = v0[8];
  v14 = v0[4];
  v13 = v0[5];

  v15 = v0[1];
  v16 = MEMORY[0x1E69E7CC0];

  return v15(v16);
}

uint64_t sub_1ABEB31C8(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = result >> 32;
      if (result >> 32 >= result)
      {
        result = result;
        v4 = v5;
        goto LABEL_9;
      }

      __break(1u);
      break;
    case 2uLL:
      v3 = *(result + 24);
      result = *(result + 16);
      v4 = v3;
LABEL_9:
      result = sub_1ABEB40F4(result, v4);
      break;
    case 3uLL:
      result = 0;
      v2 = 0;
      goto LABEL_5;
    default:
      v2 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_1ABEB4078(result, v2);
      break;
  }

  return result;
}

uint64_t sub_1ABEB325C()
{
  sub_1ABA7BBF8();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[3] = v5;
  v1[8] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1ABEB32D0, 0, 0);
}

uint64_t sub_1ABEB32D0()
{
  if (sub_1ABAAB7C8(*(v0 + 24)))
  {
    v2 = *(v0 + 56);
    v1 = *(v0 + 64);
    v15 = *(v0 + 40);
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    v4 = *(v0 + 24);
    *(v3 + 16) = v2;
    *(v3 + 24) = v4;
    *(v3 + 40) = v15;
    *(v3 + 56) = v1;
    v5 = *(MEMORY[0x1E69E8920] + 4);
    v6 = swift_task_alloc();
    *(v0 + 80) = v6;
    v7 = sub_1ABAD219C(&qword_1EB4DC3B8, &qword_1ABF766B0);
    *v6 = v0;
    v6[1] = sub_1ABEB34E8;

    return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD00000000000001BLL, 0x80000001ABF95370, sub_1ABEB3FA4, v3, v7);
  }

  else
  {
    if (qword_1ED871B38 != -1)
    {
      sub_1ABA7D178();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24664();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "No requests to perform", v11, 2u);
      sub_1ABA7BC34();
    }

    v12 = *(v0 + 8);
    v13 = MEMORY[0x1E69E7CC0];

    return v12(v13);
  }
}

uint64_t sub_1ABEB34E8()
{
  sub_1ABA7BBF8();
  v2 = *v1;
  sub_1ABA7D4E0();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  sub_1ABA7D4E0();
  *v7 = v6;
  *(v2 + 88) = v0;

  if (v0)
  {
    v8 = sub_1ABEB35F8;
  }

  else
  {
    v9 = *(v2 + 72);

    v8 = sub_1ABB269F8;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1ABEB35F8()
{
  sub_1ABA7BBF8();
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t UniversalEmbeddingModelClient.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1ABEB36B0(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v23 = a7;
  v24 = a2;
  v21 = a5;
  v10 = sub_1ABAD219C(&qword_1EB4DC3C0, &qword_1ABF766B8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - v13;
  if (a3 >> 62)
  {
    sub_1ABAFF390(0, &qword_1EB4DC3C8, 0x1E69AE3F8);

    sub_1ABF24CF4();
  }

  else
  {

    sub_1ABF25084();
    sub_1ABAFF390(0, &qword_1EB4DC3C8, 0x1E69AE3F8);
  }

  sub_1ABAFF390(0, &qword_1EB4DC3C8, 0x1E69AE3F8);
  v22 = sub_1ABF240C4();

  v15 = sub_1ABF240C4();
  if (a6)
  {
    a6 = sub_1ABF23BD4();
  }

  (*(v11 + 16))(v14, a1, v10);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v16, v14, v10);
  *(v18 + v17) = a3;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;
  aBlock[4] = sub_1ABEB3FB4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ABEB3EF0;
  aBlock[3] = &unk_1F20748F0;
  v19 = _Block_copy(aBlock);

  v20 = v22;
  [v24 performRequests:v22 text:v15 identifier:a6 completionHandler:{v19, v21}];
  _Block_release(v19);
}

void sub_1ABEB399C(int a1, id a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = a2;
LABEL_3:
    sub_1ABAD219C(&qword_1EB4DC3C0, &qword_1ABF766B8);
    sub_1ABF24254();
    return;
  }

  if (!sub_1ABAAB7C8(a4))
  {
    sub_1ABEB4210();
    swift_allocError();
    *v33 = 1;
    goto LABEL_3;
  }

  sub_1ABAAB7C0(0, (a4 & 0xC000000000000001) == 0, a4);
  if ((a4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1AC5AA170](0, a4);
  }

  else
  {
    v6 = *(a4 + 32);
  }

  v7 = v6;
  v8 = sub_1ABEB41A0(v6);
  if (!v8)
  {
    sub_1ABEB4210();
    swift_allocError();
    *v34 = 2;
    sub_1ABAD219C(&qword_1EB4DC3C0, &qword_1ABF766B8);
    sub_1ABF24254();

    return;
  }

  v9 = v8;
  v10 = sub_1ABAAB7C8(v8);
  v35 = v7;
  if (!v10)
  {
    goto LABEL_30;
  }

  if (v10 >= 1)
  {
    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0];
    v36 = v10;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1AC5AA170](v11, v9);
      }

      else
      {
        v13 = *(v9 + 8 * v11 + 32);
      }

      v14 = v13;
      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v15 = sub_1ABF237F4();
      sub_1ABA7AA24(v15, qword_1ED871B40);
      v16 = v14;
      v17 = sub_1ABF237D4();
      v18 = sub_1ABF24654();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 134217984;
        *(v19 + 4) = [v16 elementType];

        _os_log_impl(&dword_1ABA78000, v17, v18, "Embedding type = %ld", v19, 0xCu);
        MEMORY[0x1AC5AB8B0](v19, -1, -1);
      }

      else
      {

        v17 = v16;
      }

      v20 = v16;
      v21 = sub_1ABF237D4();
      v22 = sub_1ABF24654();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134217984;
        *(v23 + 4) = [v20 elementCount];

        _os_log_impl(&dword_1ABA78000, v21, v22, "Embedding count = %ld", v23, 0xCu);
        MEMORY[0x1AC5AB8B0](v23, -1, -1);
      }

      else
      {

        v21 = v20;
      }

      v24 = [v20 embeddingData];
      v25 = sub_1ABF21DD4();
      v27 = v26;

      v28 = sub_1ABEB31C8(v25, v27);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = *(v12 + 16);
        sub_1ABADCC48();
        v12 = v31;
      }

      v29 = *(v12 + 16);
      if (v29 >= *(v12 + 24) >> 1)
      {
        sub_1ABADCC48();
        v12 = v32;
      }

      ++v11;
      sub_1ABA96210(v25, v27);

      *(v12 + 16) = v29 + 1;
      *(v12 + 8 * v29 + 32) = v28;
    }

    while (v36 != v11);
LABEL_30:

    sub_1ABAD219C(&qword_1EB4DC3C0, &qword_1ABF766B8);
    sub_1ABF24264();

    return;
  }

  __break(1u);
}

char *sub_1ABEB3DE4@<X0>(char *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

  v4 = result;
  v5 = a2 - result;
  v6 = MEMORY[0x1E69E7CC0];
  if ((a2 - result + 1) < 3)
  {
LABEL_10:
    *a3 = v6;
    return result;
  }

  v7 = v5 / 2;
  v16 = MEMORY[0x1E69E7CC0];
  result = sub_1ABADE0CC(0, (v5 / 2) & ~((v5 / 2) >> 63), 0);
  if (v5 >= -1)
  {
    v6 = v16;
    v8 = *(v16 + 16);
    do
    {
      _H8 = *v4;
      v17 = v6;
      v10 = *(v6 + 24);
      if (v8 >= v10 >> 1)
      {
        result = sub_1ABADE0CC((v10 > 1), v8 + 1, 1);
        v6 = v17;
      }

      __asm { FCVT            S0, H8 }

      *(v6 + 16) = v8 + 1;
      *(v6 + 4 * v8 + 32) = _S0;
      v4 += 2;
      ++v8;
      --v7;
    }

    while (v7);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void sub_1ABEB3EF0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_1ABEB3FB4(int a1, void *a2)
{
  v5 = *(sub_1ABAD219C(&qword_1EB4DC3C0, &qword_1ABF766B8) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1ABEB399C(a1, a2, v2 + v6, v8);
}

char *sub_1ABEB4078(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v8 = WORD2(a2);
  v7 = a2;
  result = sub_1ABEB3DE4(&v6, &v6 + BYTE6(a2), &v5);
  if (!v2)
  {
    result = v5;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1ABEB40F4(uint64_t a1, uint64_t a2)
{
  result = sub_1ABF219E4();
  v6 = result;
  if (result)
  {
    result = sub_1ABF21A04();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v6 += a1 - result;
  }

  v7 = __OFSUB__(a2, a1);
  v8 = a2 - a1;
  if (v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = sub_1ABF219F4();
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = &v6[v10];
  if (v6)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  result = sub_1ABEB3DE4(v6, v12, &v13);
  if (!v2)
  {
    return v13;
  }

  return result;
}

uint64_t sub_1ABEB41A0(void *a1)
{
  v1 = [a1 embeddingResults];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1ABAFF390(0, &qword_1EB4DC3D8, 0x1E69AE3F0);
  v3 = sub_1ABF240D4();

  return v3;
}

unint64_t sub_1ABEB4210()
{
  result = qword_1EB4DC3D0;
  if (!qword_1EB4DC3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC3D0);
  }

  return result;
}

_BYTE *_s14EmbeddingErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABEB4344()
{
  result = qword_1EB4DC3E0;
  if (!qword_1EB4DC3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC3E0);
  }

  return result;
}

uint64_t sub_1ABEB4398(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a2 + qword_1EB4DC3E8);
  swift_unknownObjectRetain();
  os_unfair_lock_lock((v5 + 24));
  v6 = sub_1ABEB4418((v5 + 16), a1, a3);
  os_unfair_lock_unlock((v5 + 24));
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_1ABEB4418(id *a1, uint64_t a2, void *a3)
{
  v7 = *a1;
  v8 = [*a1 objectForKey_];
  if (v8)
  {
    v4 = v8;
  }

  else
  {
    v9 = sub_1ABEBADD4(a2, a3);
    if (!v3)
    {
      v4 = v9;
      [v7 setObject:v9 forKey:a2];
    }
  }

  swift_unknownObjectRelease();
  return v4;
}

id sub_1ABEB44C4(id *a1, void *a2)
{
  v5 = *a1;
  v6 = [*a1 objectForKey_];
  if (v6)
  {
    return v6;
  }

  sub_1ABEBABF8(a2);
  if (!v2)
  {
    v3 = v7;
    [v5 setObject:v7 forKey:a2];
  }

  return v3;
}

uint64_t UserDefault.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = objc_autoreleasePoolPush();
  v6 = *(a2 + 16);
  sub_1ABEB4764(v2);
  objc_autoreleasePoolPop(v5);
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

void sub_1ABEB4658(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 8);
  v5 = type metadata accessor for UserDefault();
  UserDefault.wrappedValue.getter(v5, a3);
}

uint64_t sub_1ABEB4694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(*(a3 + a4 - 8) - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6, v5);
  v9 = type metadata accessor for UserDefault();
  return UserDefault.wrappedValue.setter(v7, v9);
}

void sub_1ABEB4764(uint64_t a1)
{
  v2 = type metadata accessor for UserDefault();
  v3 = *(a1 + *(v2 + 32));
  v4 = sub_1ABF25044();
  v5 = (a1 + *(v2 + 28));
  v6 = *v5;
  v7 = v5[1];

  v8 = sub_1ABF23BD4();

  [v3 setObject:v4 forKey:v8];

  swift_unknownObjectRelease();
}

void (*UserDefault.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = sub_1ABAFDD10(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v6 = *(a2 + 16);
  v5[2] = v6;
  v7 = *(v6 - 8);
  v5[3] = v7;
  v8 = *(v7 + 64);
  v5[4] = sub_1ABAFDD10(v8);
  v9 = sub_1ABAFDD10(v8);
  v5[5] = v9;
  UserDefault.wrappedValue.getter(a2, v9);
  return sub_1ABEB4908;
}

void sub_1ABEB4908(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))((*a1)[4], v4, v5);
    UserDefault.wrappedValue.setter(v3, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v9 = v2[1];
    UserDefault.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

Swift::Void __swiftcall UserDefault.removeObject()()
{
  v2 = *(v1 + *(v0 + 32));
  v3 = (v1 + *(v0 + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = sub_1ABF23BD4();
  [v2 removeObjectForKey_];
}

uint64_t static NSUserDefaults.isKTSEnabled.setter()
{
  if (qword_1ED870D28 != -1)
  {
    sub_1ABA8FD38();
  }

  swift_beginAccess();
  v0 = objc_autoreleasePoolPush();
  sub_1ABBC29E8(&byte_1ED870D30);
  objc_autoreleasePoolPop(v0);
  return swift_endAccess();
}

void (*static NSUserDefaults.isKTSEnabled.modify(void *a1))(uint64_t a1)
{
  v2 = sub_1ABAFDD10(0x38uLL);
  *a1 = v2;
  if (qword_1ED870D28 != -1)
  {
    sub_1ABA8FD38();
  }

  swift_beginAccess();
  v3 = byte_1ED870D30;
  v4 = qword_1ED870D38;
  v5 = unk_1ED870D40;
  v6 = qword_1ED870D48;
  v7 = objc_autoreleasePoolPush();
  v8 = sub_1ABA84CB8(v3, v4, v5, v6);
  v2[5] = 0;
  objc_autoreleasePoolPop(v7);
  *(v2 + 48) = v8 & 1;
  return sub_1ABEB4BB4;
}

void sub_1ABEB4BB4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = objc_autoreleasePoolPush();
  v4 = v1[5];
  sub_1ABBC29E8(&byte_1ED870D30);
  objc_autoreleasePoolPop(v3);
  swift_endAccess();

  free(v1);
}

uint64_t sub_1ABEB4C44()
{
  sub_1ABA84BAC();
  result = static NSUserDefaults.makeIntelligencePlatformUserDefaults()();
  byte_1ED870D30 = 0;
  qword_1ED870D38 = 0xD000000000000020;
  unk_1ED870D40 = 0x80000001ABF95440;
  qword_1ED870D48 = result;
  return result;
}

id static NSUserDefaults.$isKTSEnabled.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED870D28 != -1)
  {
    sub_1ABA8FD38();
  }

  swift_beginAccess();
  v3 = qword_1ED870D38;
  v2 = unk_1ED870D40;
  v6 = qword_1ED870D48;
  v4 = qword_1ED870D48;
  *a1 = byte_1ED870D30;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;

  return v6;
}

unint64_t sub_1ABEB4D30(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_1ABA84BAC();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ABEB4DC0(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_1ABA7E1E0(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
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
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1ABEB4F04(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
LABEL_42:
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
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v17 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v17[1] = (a2 - 1);
            }
          }

          else
          {

            sub_1ABA7B9B4(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
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
        goto LABEL_42;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

IntelligencePlatform::UserInterestsType_optional __swiftcall UserInterestsType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF250B4();

  v5 = 0;
  v6 = 13;
  switch(v3)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v5 = 1;
      goto LABEL_25;
    case 2:
      v5 = 2;
      goto LABEL_25;
    case 3:
      v5 = 3;
      goto LABEL_25;
    case 4:
      v5 = 4;
      goto LABEL_25;
    case 5:
      v5 = 5;
      goto LABEL_25;
    case 6:
      v5 = 6;
      goto LABEL_25;
    case 7:
      v5 = 7;
      goto LABEL_25;
    case 8:
      v5 = 8;
      goto LABEL_25;
    case 9:
      v5 = 9;
      goto LABEL_25;
    case 10:
      v5 = 10;
      goto LABEL_25;
    case 11:
      v5 = 11;
      goto LABEL_25;
    case 12:
      v5 = 12;
LABEL_25:
      v6 = v5;
      break;
    case 13:
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    default:
      v6 = 31;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t UserInterestsType.rawValue.getter()
{
  result = 0x6172676F746F6870;
  switch(*v0)
  {
    case 1:
      return 0x6E696E6564726167;
    case 2:
      v2 = 1802465123;
      return v2 | 0x676E6900000000;
    case 3:
      v2 = 1684104562;
      return v2 | 0x676E6900000000;
    case 4:
      return 0x676E69746E696170;
    case 5:
      return 0x636973756DLL;
    case 6:
      return 7631457;
    case 7:
      return 0x6D61476F65646976;
    case 8:
      return 0x6E6F6968736166;
    case 9:
      return 0x7075656B616DLL;
    case 0xA:
      return 1634168697;
    case 0xB:
      v2 = 1818458467;
      return v2 | 0x676E6900000000;
    case 0xC:
      return 0x676E696B6968;
    case 0xD:
      v2 = 1835628403;
      return v2 | 0x676E6900000000;
    case 0xE:
      return 0x6369626F726561;
    case 0xF:
      v2 = 1852732786;
      return v2 | 0x676E6900000000;
    case 0x10:
      v2 = 1802264951;
      return v2 | 0x676E6900000000;
    case 0x11:
      return 0x726563636F73;
    case 0x12:
      return 0x74656B63697263;
    case 0x13:
      v3 = 0x74656B736162;
      goto LABEL_29;
    case 0x14:
      return 0x636F48646C656966;
    case 0x15:
      return 0x73696E6E6574;
    case 0x16:
      v3 = 0x79656C6C6F76;
LABEL_29:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6162000000000000;
      break;
    case 0x17:
      result = 0x6E6554656C626174;
      break;
    case 0x18:
      result = 0x6C6C616265736162;
      break;
    case 0x19:
      result = 0xD000000000000010;
      break;
    case 0x1A:
      result = 1718382439;
      break;
    case 0x1B:
      result = 6908787;
      break;
    case 0x1C:
      result = 0x6E61676576;
      break;
    case 0x1D:
      result = 0x6972617465676576;
      break;
    case 0x1E:
      result = 0x72466E6574756C67;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABEB5574@<X0>(uint64_t *a1@<X8>)
{
  result = UserInterestsType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ABEB56A4()
{
  sub_1ABAD219C(&qword_1EB4D1910, &qword_1ABF33AA0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1ABF76810;
  type metadata accessor for UserInterestsService.ScoreRankedUserInterestsTags.ScoreUserInterestsTag();
  v1 = swift_allocObject();
  *(v1 + 16) = 27;
  *(v1 + 24) = 0x3FDAE147AE147AE1;
  *(v0 + 32) = v1;
  v2 = sub_1ABA7E180();
  *(v2 + 16) = 12;
  *(v2 + 24) = 0x3FD51EB851EB851FLL;
  *(v0 + 40) = v2;
  v3 = sub_1ABA7E180();
  *(v3 + 16) = 21;
  *(v3 + 24) = 0x3FB47AE147AE147BLL;
  *(v0 + 48) = v3;
  v4 = sub_1ABA7E180();
  *(v4 + 16) = 5;
  *(v4 + 24) = 0x3FB47AE147AE147BLL;
  *(v0 + 56) = v4;
  v5 = sub_1ABA7E180();
  *(v5 + 16) = 6;
  *(v5 + 24) = 0x3FB47AE147AE147BLL;
  *(v0 + 64) = v5;
  type metadata accessor for UserInterestsService.ScoreRankedUserInterestsTags();
  result = swift_allocObject();
  *(result + 16) = v0;
  return result;
}

uint64_t UserInterestsService.ScoreRankedUserInterestsTags.ScoreUserInterestsTag.__allocating_init(tag:score:)(_BYTE *a1, double a2)
{
  result = swift_allocObject();
  *(result + 16) = *a1;
  *(result + 24) = a2;
  return result;
}

uint64_t UserInterestsService.ScoreRankedUserInterestsTags.__allocating_init(scoreUserInterestsTags:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t UserInterestsService.ScoreRankedUserInterestsTags.ScoreUserInterestsTag.init(tag:score:)(_BYTE *a1, double a2)
{
  *(v2 + 16) = *a1;
  *(v2 + 24) = a2;
  return _s20IntelligencePlatform37EntityResolutionRankingDirectFeedbackCfd_0();
}

uint64_t UserInterestsService.ScoreRankedUserInterestsTags.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t UserInterestsService.ScoreRankedUserInterestsTags.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_1ABEB592C()
{
  result = qword_1EB4DC3F8;
  if (!qword_1EB4DC3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC3F8);
  }

  return result;
}

unint64_t sub_1ABEB5984()
{
  result = qword_1EB4DC400;
  if (!qword_1EB4DC400)
  {
    sub_1ABAE2850(&qword_1EB4DC408, &qword_1ABF768C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC400);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserInterestsType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE2)
  {
    if (a2 + 30 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 30) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 31;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v5 = v6 - 31;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for UserInterestsType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE1)
  {
    v6 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
          *result = a2 + 30;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABEB5C40()
{
  result = qword_1EB4DC410[0];
  if (!qword_1EB4DC410[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4DC410);
  }

  return result;
}

void sub_1ABEB5CC8()
{
  v1 = *(*v0 + 80);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v3 = *(*(TupleTypeMetadata2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  (*(*(v1 - 8) + 16))(v4);
  sub_1ABA8FD60();
  __break(1u);
}

uint64_t sub_1ABEB5DDC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v0[3];
  v13 = v0[2];
  v14 = v2;
  v11 = *(v1 + 128);
  v12 = *(v1 + 136);
  v9[2] = v11;
  v9[3] = v12;
  v9[4] = sub_1ABEB6B90;
  v9[5] = &v10;
  v3 = type metadata accessor for OrderedDictionary();

  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1ABB66290(sub_1ABEB6BE0, v9, v3, TupleTypeMetadata2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v6);

  return v7;
}

void sub_1ABEB5F3C(uint64_t a1@<X0>, float (*a2)(uint64_t, uint64_t, float)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + *(swift_getTupleTypeMetadata2() + 48));
  v7 = *(swift_getTupleTypeMetadata2() + 48);
  *(a3 + v7) = a2(a3, a1, v6);
}

uint64_t sub_1ABEB5FFC(uint64_t a1, float a2)
{
  v44 = *v2;
  v5 = *(v44 + 128);
  sub_1ABA7DA44();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1ABA7BD7C();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7AC18();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v41 - v21;
  v23 = *(v5 - 8);
  (*(v23 + 16))(&v41 - v21, a1, v5, v20);
  *&v22[*(TupleTypeMetadata2 + 48)] = a2;
  v24 = v2[8];
  if (*(v2 + 36) == 1)
  {
    v25 = v24 > a2;
  }

  else
  {
    v25 = v24 < a2;
  }

  if (v25)
  {
    v42 = v17;
    v43 = v14;
    v26 = *(v8 + 16);
    v27 = sub_1ABA7EC98();
    v26(v27);
    swift_beginAccess();
    v28 = *(v2 + 2);
    v29 = *(v2 + 3);
    v30 = *(v44 + 136);
    sub_1ABE1B8A4();
    if (v46)
    {
      swift_endAccess();
      v44 = v8;
      v41 = *(v23 + 8);
      v31 = sub_1ABA8EE28();
      v32(v31);
      (v26)(v42, v22, TupleTypeMetadata2);
      v33 = sub_1ABA7EC98();
      v26(v33);
      sub_1ABA7FB24();
      sub_1ABA7DA44();
      type metadata accessor for OrderedDictionary();
      sub_1ABE1B8B8();
      swift_endAccess();
      (*(v44 + 8))(v22, TupleTypeMetadata2);
LABEL_12:
      v39 = sub_1ABA8EE28();
      return v41(v39);
    }

    v44 = v30;
    v34 = v45;
    swift_endAccess();
    v35 = *(v23 + 8);
    v36 = sub_1ABA8EE28();
    v35(v36);
    if (*(v2 + 36) == 1)
    {
      v37 = v34 > a2;
    }

    else
    {
      v37 = v34 < a2;
    }

    if (v37)
    {
      v41 = v35;
      (v26)(v42, v22, TupleTypeMetadata2);
      v38 = sub_1ABA7EC98();
      v26(v38);
      sub_1ABA7FB24();
      sub_1ABA7DA44();
      type metadata accessor for OrderedDictionary();
      sub_1ABE1B8B8();
      swift_endAccess();
      (*(v8 + 8))(v22, TupleTypeMetadata2);
      goto LABEL_12;
    }
  }

  return (*(v8 + 8))(v22, TupleTypeMetadata2);
}

uint64_t sub_1ABEB63E4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
}

uint64_t sub_1ABEB641C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_1ABEB644C()
{
  sub_1ABEB641C();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABEB64F8()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[8];

  sub_1ABE36260(v2);
  v3 = *(v1 + 128);
  swift_getTupleTypeMetadata2();
  sub_1ABA7DA44();
  type metadata accessor for PriorityQueue();
  swift_getWitnessTable();
  sub_1ABF24214();
  sub_1ABA7DA44();
  sub_1ABF241F4();
  swift_getWitnessTable();
  return sub_1ABF23FF4();
}

uint64_t sub_1ABEB6620(uint64_t a1, float a2)
{
  v3 = v2;
  v6 = *(*v3 + 128);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1ABA7DA44();
  sub_1ABF247E4();
  sub_1ABA7BD7C();
  v59 = v9;
  v60 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7AC18();
  v58 = v12 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  sub_1ABA7BD7C();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7AC18();
  v64 = v22 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v62 = &v55 - v25;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v55 - v28;
  v30 = *(v6 - 8);
  v63 = *(v30 + 16);
  v63(&v55 - v28, a1, v6, v27);
  *&v29[*(TupleTypeMetadata2 + 48)] = a2;
  v31 = *(v3 + 16);
  if (v31 < 1)
  {
    return (*(v18 + 8))(v29, TupleTypeMetadata2);
  }

  v61 = v6;
  swift_beginAccess();
  v32 = *(v3 + 48);
  v65 = *(v3 + 32);
  v66 = v32;
  v67 = *(v3 + 56);
  sub_1ABA7DA44();
  v33 = type metadata accessor for PriorityQueue();
  if (PriorityQueue.count.getter(v33) >= v31)
  {
    v57 = v18;
    v38 = *(v3 + 40);
    v39 = *(v3 + 48);
    v40 = *(v3 + 56);
    v41 = *(v3 + 64);
    *&v65 = *(v3 + 32);
    *(&v65 + 1) = v38;
    v66 = v39;
    *&v67 = v40;
    *(&v67 + 1) = v41;

    sub_1ABE36260(v40);
    v56 = v33;
    PriorityQueue.peek()(v33);
    v42 = v67;

    sub_1ABAC9398(v42);
    result = sub_1ABA7E1E0(v16, 1, TupleTypeMetadata2);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v43 = *(TupleTypeMetadata2 + 48);
      v44 = *&v16[v43];
      v46 = v61;
      v45 = v62;
      (*(v30 + 32))(v62, v16, v61);
      *&v45[v43] = v44;
      if (*(v3 + 24) == 1)
      {
        v47 = v44 > a2;
      }

      else
      {
        v47 = v44 < a2;
      }

      v48 = v57;
      if (v47)
      {
        sub_1ABA81314();
        v49 = v58;
        v50 = v56;
        PriorityQueue.pop()(v56);
        swift_endAccess();
        (*(v59 + 8))(v49, v60);
        v51 = *(TupleTypeMetadata2 + 48);
        v52 = v64;
        (v63)(v64, v29, v46);
        *(v52 + v51) = a2;
        sub_1ABA81314();
        PriorityQueue.push(_:)(v52, v50);
        swift_endAccess();
        v53 = *(v48 + 8);
        v54 = sub_1ABA8EE28();
        v53(v54);
      }

      else
      {
        v53 = *(v57 + 8);
      }

      (v53)(v45, TupleTypeMetadata2);
      return (v53)(v29, TupleTypeMetadata2);
    }
  }

  else
  {
    v34 = *(TupleTypeMetadata2 + 48);
    v35 = v64;
    (v63)(v64, v29, v61);
    *(v35 + v34) = a2;
    sub_1ABA81314();
    PriorityQueue.push(_:)(v35, v33);
    swift_endAccess();
    v36 = *(v18 + 8);
    v36(v35, TupleTypeMetadata2);
    return (v36)(v29, TupleTypeMetadata2);
  }

  return result;
}

uint64_t sub_1ABEB6AAC()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[7];
  v3 = v0[8];

  return sub_1ABAC9398(v4);
}

void *sub_1ABEB6AFC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[7];
  v4 = v0[8];

  sub_1ABAC9398(v3);
  return v0;
}

uint64_t sub_1ABEB6B44()
{
  sub_1ABEB6AFC();

  return swift_deallocClassInstance();
}

void sub_1ABEB6BE0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  sub_1ABEB5F3C(a1, *(v2 + 32), a2);
}

void sub_1ABEB6C04(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1ABAAB7C8(a1);
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v5 == v6)
    {
      goto LABEL_17;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1AC5AA170](v6, a1);
    }

    else
    {
      if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v8 = *(a1 + 8 * v6 + 32);
    }

    if (__OFADD__(v6, 1))
    {
      break;
    }

    v20 = v8;
    sub_1ABEB9978(&v20, a2, a3, &v18);
    if (v3)
    {

LABEL_17:
      sub_1ABEBA5A4(a2);
      return;
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = *(v7 + 16);
        sub_1ABADCC6C();
        v7 = v14;
      }

      v11 = *(v7 + 16);
      if (v11 >= *(v7 + 24) >> 1)
      {
        sub_1ABADCC6C();
        v7 = v15;
      }

      *(v7 + 16) = v11 + 1;
      v12 = v7 + 16 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v10;
    }

    ++v6;
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

sqlite3_stmt **sub_1ABEB6D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, sqlite3_stmt **a6)
{
  v9 = a2;
  v10 = a1;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_21;
  }

  v7 = a6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    goto LABEL_9;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_21:
    sub_1ABF24A74();
    if (v6)
    {

      return v7;
    }

    v7 = v17;
  }

  else
  {
    v12 = sub_1ABF22E54();
    if ((a5 & 0x1000000000000000) != 0)
    {
      goto LABEL_26;
    }

    if ((a5 & 0x2000000000000000) == 0)
    {
      v10 = a4 & 0xFFFFFFFFFFFFLL;
      while (1)
      {
        if (v10 <= 0x7FFFFFFF)
        {
          goto LABEL_17;
        }

        __break(1u);
LABEL_9:
        v16[0] = v10;
        v16[1] = v9 & 0xFFFFFFFFFFFFFFLL;
        v9 = sub_1ABF22E54();
        if ((a5 & 0x1000000000000000) == 0)
        {
          break;
        }

        v12 = sub_1ABF23DF4();
        if (v12 >= 0xFFFFFFFF80000000)
        {
          goto LABEL_28;
        }

        __break(1u);
LABEL_26:
        v15 = v12;
        v12 = sub_1ABF23DF4();
        if (v12 < 0xFFFFFFFF80000000)
        {
          __break(1u);
LABEL_28:
          v10 = v12;
LABEL_12:
          if (v10 > 0x7FFFFFFF)
          {
            __break(1u);
            goto LABEL_14;
          }

LABEL_15:
          v13 = v16;
          v12 = v9;
          goto LABEL_18;
        }

        v10 = v12;
        v12 = v15;
      }

      if ((a5 & 0x2000000000000000) == 0)
      {
        v10 = a4 & 0xFFFFFFFFFFFFLL;
        goto LABEL_12;
      }

LABEL_14:
      v10 = HIBYTE(a5) & 0xF;
      goto LABEL_15;
    }

    v10 = HIBYTE(a5) & 0xF;
LABEL_17:
    v13 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_18:
    v7 = sqlite3_prepare_v2(v12, v13, v10, v7, 0);
  }

  return v7;
}

uint64_t static SearchMode.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (a1[1])
  {
    if (v2 == v3)
    {
      return *(a2 + 8);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return (a2[1] & 1) == 0 && *&v2 == *&v3;
  }
}

uint64_t sub_1ABEB6F7C(void *a1)
{
  v2 = *a1;
  v39 = sub_1ABF22EE4();
  v3 = *(v39 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1ABAD219C(&qword_1EB4D1200, &unk_1ABF4B4D0);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v35 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v37 = &v34 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v34 - v13);
  v15 = sub_1ABAD219C(&unk_1EB4D5810, &qword_1ABF48B70);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v34 - v18;
  v42 = a1;
  v20 = MEMORY[0x1E69A0008];
  sub_1ABEBA6B4(&qword_1EB4D5030, MEMORY[0x1E69A0008]);
  sub_1ABF23F04();
  v21 = *(v16 + 44);
  sub_1ABEBA6B4(&qword_1EB4D0208, v20);
  v38 = (v3 + 8);
  v36 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1ABF244A4();
    sub_1ABEBA6B4(&qword_1EB4D0200, MEMORY[0x1E69A00E0]);
    v22 = v39;
    v23 = sub_1ABF23BB4();
    (*v38)(v6, v22);
    if (v23)
    {
      break;
    }

    v24 = sub_1ABF245D4();
    v25 = v37;
    sub_1ABAAB860(v26, v37);
    v24(v40, 0);
    sub_1ABF244B4();
    sub_1ABEBA644(v25, v14);
    v27 = *v14 == 0x6469776F72 && v14[1] == 0xE500000000000000;
    if (v27 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA925A4(v14, &qword_1EB4D1200, &unk_1ABF4B4D0);
    }

    else
    {
      sub_1ABEBA644(v14, v35);
      v28 = v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = *(v28 + 16);
        sub_1ABADEDFC();
        v28 = v41;
      }

      v31 = *(v28 + 16);
      if (v31 >= *(v28 + 24) >> 1)
      {
        sub_1ABADEDFC();
        v28 = v41;
      }

      *(v28 + 16) = v31 + 1;
      v32 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v36 = v28;
      sub_1ABEBA644(v35, v28 + v32 + *(v34 + 72) * v31);
    }
  }

  sub_1ABA925A4(v19, &unk_1EB4D5810, &qword_1ABF48B70);
  return v36;
}

uint64_t sub_1ABEB7410(char a1, float a2)
{
  v5 = MEMORY[0x1E69E7CC0];
  v6 = sub_1ABF239C4();
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  *(v2 + 32) = a2;
  *(v2 + 36) = a1;
  return v2;
}

uint64_t sub_1ABEB747C(uint64_t a1, char a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v2 + 32) = sub_1ABEBA7F0;
  *(v2 + 40) = v4;
  *(v2 + 48) = MEMORY[0x1E69E7CC0];
  *(v2 + 56) = sub_1ABEBA7F0;
  *(v2 + 64) = v4;

  return v2;
}

BOOL sub_1ABEB74E8(float a1, float a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 1)
  {
    return a2 < a1;
  }

  else
  {
    return a1 < a2;
  }
}

uint64_t static VectorSearchError.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v12 = *a1;
      if (v3 != v5 || v2 != v4)
      {
        v9 = sub_1ABF25054();
        sub_1ABA7BE8C();
        sub_1ABA7DE6C();
        sub_1ABA7DE6C();
        sub_1ABB95F08();
        sub_1ABA7BE8C();
        goto LABEL_16;
      }

      sub_1ABA7DE6C();
      sub_1ABA7DE6C();
      sub_1ABB95F08();
      sub_1ABB95F08();
      return 1;
    }

LABEL_9:
    sub_1ABA7BE8C();
    sub_1ABA7DE6C();
    sub_1ABA7DE6C();
    sub_1ABB95F08();
    sub_1ABA7BE8C();
    sub_1ABB95F08();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v3 == v5 && v2 == v4)
  {
    v10 = 1;
    sub_1ABA7D230();
    sub_1ABD3C1AC();
    sub_1ABA7D230();
    sub_1ABD3C1AC();
    sub_1ABA7D230();
    sub_1ABB95F08();
    sub_1ABA7D230();
    sub_1ABB95F08();
    return v10;
  }

  v8 = *a1;
  v9 = sub_1ABF25054();
  sub_1ABA7BE8C();
  sub_1ABD3C1AC();
  sub_1ABA7D230();
  sub_1ABD3C1AC();
  sub_1ABA7D230();
  sub_1ABB95F08();
  sub_1ABA7BE8C();
LABEL_16:
  sub_1ABB95F08();
  return v9 & 1;
}

IntelligencePlatform::VectorSearchSimilarityMetric_optional __swiftcall VectorSearchSimilarityMetric.init(rawValue:)(Swift::String rawValue)
{
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

uint64_t VectorSearchSimilarityMetric.rawValue.getter()
{
  v1 = 0x616564696C637565;
  if (*v0 != 1)
  {
    v1 = 7630692;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656E69736F63;
  }
}

uint64_t sub_1ABEB7734(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974737561687865 && a2 == 0xEA00000000006576;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1265659764 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABEB7804(char a1)
{
  if (a1)
  {
    return 1265659764;
  }

  else
  {
    return 0x6974737561687865;
  }
}

uint64_t sub_1ABEB7838(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6C6F687365726874 && a2 == 0xE900000000000064)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABEB78D4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x74696D694C6D756ELL && a2 == 0xE900000000000073)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABEB79A0@<X0>(uint64_t *a1@<X8>)
{
  result = VectorSearchSimilarityMetric.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ABEB7A80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABEB7734(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABEB7AA8(uint64_t a1)
{
  v2 = sub_1ABEB7F24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEB7AE4(uint64_t a1)
{
  v2 = sub_1ABEB7F24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABEB7B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABEB7838(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABEB7B50(uint64_t a1)
{
  v2 = sub_1ABEB7FCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEB7B8C(uint64_t a1)
{
  v2 = sub_1ABEB7FCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABEB7BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABEB78D4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABEB7BF8(uint64_t a1)
{
  v2 = sub_1ABEB7F78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEB7C34(uint64_t a1)
{
  v2 = sub_1ABEB7F78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SearchMode.encode(to:)()
{
  sub_1ABA81AB4();
  v38 = v1;
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4DC598, &qword_1ABF76BF0);
  v5 = sub_1ABA7BB64(v4);
  v35 = v6;
  v36 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v32 - v10;
  v11 = sub_1ABAD219C(&qword_1EB4DC5A0, &qword_1ABF76BF8);
  v12 = sub_1ABA7BB64(v11);
  v32 = v13;
  v33 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  v19 = sub_1ABAD219C(&qword_1EB4DC5A8, &qword_1ABF76C00);
  sub_1ABA7BB64(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v32 - v25;
  v37 = *v0;
  v27 = *(v0 + 8);
  v28 = v3[4];
  sub_1ABA93E20(v3, v3[3]);
  sub_1ABEB7F24();
  sub_1ABF252E4();
  if (v27)
  {
    v40 = 1;
    sub_1ABEB7F78();
    v29 = v34;
    sub_1ABF24EC4();
    v30 = v36;
    sub_1ABF24F74();
    (*(v35 + 8))(v29, v30);
  }

  else
  {
    v39 = 0;
    sub_1ABEB7FCC();
    sub_1ABF24EC4();
    v31 = v33;
    sub_1ABF24F64();
    (*(v32 + 8))(v18, v31);
  }

  (*(v21 + 8))(v26, v19);
  sub_1ABA8CD68();
}

unint64_t sub_1ABEB7F24()
{
  result = qword_1ED871838;
  if (!qword_1ED871838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871838);
  }

  return result;
}

unint64_t sub_1ABEB7F78()
{
  result = qword_1ED871810;
  if (!qword_1ED871810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871810);
  }

  return result;
}

unint64_t sub_1ABEB7FCC()
{
  result = qword_1ED86B340;
  if (!qword_1ED86B340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B340);
  }

  return result;
}

void SearchMode.init(from:)()
{
  sub_1ABA81AB4();
  v66 = v1;
  v67 = v0;
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4DC5B0, &qword_1ABF76C08);
  v63 = sub_1ABA7BB64(v4);
  v64 = v5;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v57[-v9];
  v11 = sub_1ABAD219C(&qword_1EB4DC5B8, &qword_1ABF76C10);
  sub_1ABA7BB64(v11);
  v62 = v12;
  v14 = *(v13 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v57[-v16];
  v18 = sub_1ABAD219C(&qword_1EB4DC5C0, &unk_1ABF76C18);
  sub_1ABA7BB64(v18);
  v65 = v19;
  v21 = *(v20 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v57[-v23];
  v25 = v3[4];
  sub_1ABA93E20(v3, v3[3]);
  sub_1ABEB7F24();
  v26 = v67;
  sub_1ABF252C4();
  if (v26)
  {
    goto LABEL_12;
  }

  v60 = v17;
  v61 = v10;
  v67 = v3;
  v27 = v66;
  v28 = v24;
  v29 = sub_1ABF24EA4();
  sub_1ABAD4EA4(v29, 0);
  if (v31 == v32 >> 1)
  {
    goto LABEL_8;
  }

  v59 = 0;
  if (v31 < (v32 >> 1))
  {
    v33 = *(v30 + v31);
    sub_1ABAD4E90(v31 + 1);
    v35 = v34;
    v37 = v36;
    swift_unknownObjectRelease();
    if (v35 == v37 >> 1)
    {
      v58 = v33;
      if (v33)
      {
        v69 = 1;
        sub_1ABEB7F78();
        sub_1ABA83D28();
        v38 = v59;
        sub_1ABF24D94();
        if (!v38)
        {
          v46 = sub_1ABF24E54();
          swift_unknownObjectRelease();
          v47 = sub_1ABA8E620();
          v48(v47);
          v49 = sub_1ABA81334();
          v50(v49);
LABEL_14:
          *v27 = v46;
          *(v27 + 8) = v58;
          sub_1ABA84B54(v67);
          goto LABEL_13;
        }
      }

      else
      {
        v68 = 0;
        sub_1ABEB7FCC();
        v43 = v59;
        sub_1ABA83D28();
        sub_1ABF24D94();
        if (!v43)
        {
          sub_1ABF24E44();
          v52 = v51;
          swift_unknownObjectRelease();
          v53 = sub_1ABA8E620();
          v54(v53);
          v55 = sub_1ABA81334();
          v56(v55);
          v46 = v52;
          goto LABEL_14;
        }
      }

      v44 = sub_1ABA81334();
      v45(v44);
      swift_unknownObjectRelease();
      v3 = v67;
LABEL_12:
      sub_1ABA84B54(v3);
LABEL_13:
      sub_1ABA8CD68();
      return;
    }

LABEL_8:
    v39 = sub_1ABF24B44();
    swift_allocError();
    v41 = v40;
    v42 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v41 = &type metadata for SearchMode;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v65 + 8))(v28, v18);
    v3 = v67;
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t SearchMode.description.getter()
{
  if (v0[1])
  {
    v4 = 0x284B706F74;
    v3 = *v0;
    v1 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v1);
  }

  else
  {
    v4 = 0;
    MEMORY[0x1AC5A9410](0x6974737561687865, 0xEB00000000286576);
    sub_1ABF24374();
  }

  MEMORY[0x1AC5A9410](41, 0xE100000000000000);
  return v4;
}

uint64_t VectorSearchEngine.init(db:table:vectorColumnName:keyColumnName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, void *a9@<X8>)
{
  v9 = 0x6E69646465626D65;
  if (a6)
  {
    v9 = a5;
  }

  *a9 = a3;
  a9[1] = a4;
  v10 = 0xE900000000000067;
  if (a6)
  {
    v10 = a6;
  }

  v11 = 0x6469776F72;
  a9[2] = result;
  a9[3] = a2;
  if (a8)
  {
    v11 = a7;
  }

  a9[4] = v9;
  a9[5] = v10;
  if (a8)
  {
    v12 = a8;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  a9[6] = v11;
  a9[7] = v12;
  return result;
}

void VectorSearchEngine.search(for:using:in:filterClause:joinColumnName:)()
{
  sub_1ABA81AB4();
  v2 = v1;
  v3 = v0[1];
  v34[0] = *v0;
  v34[1] = v3;
  v4 = v0[3];
  v6 = *v0;
  v5 = v0[1];
  v34[2] = v0[2];
  v34[3] = v4;
  v8 = *v7;
  v10 = *v9;
  v11 = *(v9 + 8);
  v33[0] = v6;
  v33[1] = v5;
  v12 = v0[3];
  v33[2] = v0[2];
  v33[3] = v12;
  v30 = sub_1ABEB89C4(v13, v14, v15, v16);
  v18 = v17;
  if (qword_1ED871B18 != -1)
  {
    swift_once();
  }

  v19 = sub_1ABF237F4();
  sub_1ABA7AA24(v19, qword_1ED871B20);

  v20 = sub_1ABF237D4();
  v21 = sub_1ABF24684();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = v8;
    v24 = v10;
    v25 = swift_slowAlloc();
    *&v33[0] = v25;
    *v22 = 136315138;
    *(v22 + 4) = sub_1ABADD6D8(v30, v18, v33);
    _os_log_impl(&dword_1ABA78000, v20, v21, "ECR VectorSearch: search command: %s", v22, 0xCu);
    sub_1ABA84B54(v25);
    v26 = v25;
    v10 = v24;
    v8 = v23;
    MEMORY[0x1AC5AB8B0](v26, -1, -1);
    v27 = v22;
    v2 = v1;
    MEMORY[0x1AC5AB8B0](v27, -1, -1);
  }

  if (v11)
  {
    sub_1ABAD219C(&qword_1EB4DC5C8, &qword_1ABF76C28);
    swift_allocObject();
    sub_1ABEB747C(v10, v8);
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4DC5D0, &qword_1ABF76C30);
    swift_allocObject();
    sub_1ABEB7410(v8, *&v10);
  }

  v32 = MEMORY[0x1E69E7CC0];
  v31 = sub_1ABF239C4();
  ObjectType = swift_getObjectType();
  MEMORY[0x1EEE9AC00](ObjectType);
  sub_1ABF22464();
  if (v2)
  {
  }

  else
  {

    v29 = v32;
    sub_1ABEB9E70(v34, v33);
    sub_1ABEB6C04(v29, v34, &v31);
  }

  sub_1ABA8CD68();
}

uint64_t sub_1ABEB89C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[1];
  v23 = *v4;
  v6 = v4[4];
  v7 = v4[5];
  v9 = v4[6];
  v8 = v4[7];
  if (a2 && a4)
  {
    v14 = v9 == 0x6469776F72 && v8 == 0xE500000000000000;
    if (v14 || (v15 = v4[6], v16 = v4[7], (sub_1ABF25054() & 1) != 0))
    {
      v17 = v9 == a3 && v8 == a4;
      if (v17 || (sub_1ABF25054() & 1) != 0)
      {
        MEMORY[0x1AC5A9410](v9, v8);
        MEMORY[0x1AC5A9410](8236, 0xE200000000000000);
        v18 = v6;
        v19 = v7;
      }

      else
      {
        MEMORY[0x1AC5A9410](v9, v8);
        MEMORY[0x1AC5A9410](8236, 0xE200000000000000);
        MEMORY[0x1AC5A9410](v6, v7);
        MEMORY[0x1AC5A9410](8236, 0xE200000000000000);
        v18 = a3;
        v19 = a4;
      }

      MEMORY[0x1AC5A9410](v18, v19);
      v24 = 0;
      sub_1ABF24AB4();
      MEMORY[0x1AC5A9410](0xD000000000000019, 0x80000001ABF956A0);
      MEMORY[0x1AC5A9410](a1, a2);
      MEMORY[0x1AC5A9410](0xD000000000000022, 0x80000001ABF95700);
      MEMORY[0x1AC5A9410](32, 0xE100000000000000);

      MEMORY[0x1AC5A9410](0x4F5246202020200ALL, 0xEA0000000000204DLL);
      MEMORY[0x1AC5A9410](v23, v5);
      MEMORY[0x1AC5A9410](0xD000000000000019, 0x80000001ABF95730);
      MEMORY[0x1AC5A9410](v9, v8);
      MEMORY[0x1AC5A9410](0xD000000000000011, 0x80000001ABF95750);
      MEMORY[0x1AC5A9410](v6, v7);
      MEMORY[0x1AC5A9410](0xD000000000000042, 0x80000001ABF95770);
      MEMORY[0x1AC5A9410](a3, a4);
      MEMORY[0x1AC5A9410](0xD000000000000013, 0x80000001ABF956E0);
      v20 = a3;
    }

    else
    {
      v24 = 0;
      sub_1ABF24AB4();
      MEMORY[0x1AC5A9410](0xD000000000000019, 0x80000001ABF956A0);
      MEMORY[0x1AC5A9410](a1, a2);
      MEMORY[0x1AC5A9410](0x5443454C45530A29, 0xE900000000000020);
      MEMORY[0x1AC5A9410](v23, v5);
      MEMORY[0x1AC5A9410](46, 0xE100000000000000);
      MEMORY[0x1AC5A9410](v9, v8);
      MEMORY[0x1AC5A9410](8236, 0xE200000000000000);
      MEMORY[0x1AC5A9410](v23, v5);
      MEMORY[0x1AC5A9410](46, 0xE100000000000000);
      MEMORY[0x1AC5A9410](v6, v7);
      MEMORY[0x1AC5A9410](0x204D4F52460ALL, 0xE600000000000000);
      MEMORY[0x1AC5A9410](v23, v5);
      MEMORY[0x1AC5A9410](0xD00000000000001FLL, 0x80000001ABF956C0);
      MEMORY[0x1AC5A9410](v23, v5);
      MEMORY[0x1AC5A9410](46, 0xE100000000000000);
      MEMORY[0x1AC5A9410](a3, a4);
      MEMORY[0x1AC5A9410](0xD000000000000013, 0x80000001ABF956E0);
      v20 = a3;
    }

    v21 = a4;
  }

  else
  {
    sub_1ABF24AB4();

    v24 = 0x205443454C4553;
    MEMORY[0x1AC5A9410](v9, v8);
    MEMORY[0x1AC5A9410](8236, 0xE200000000000000);
    MEMORY[0x1AC5A9410](v6, v7);
    MEMORY[0x1AC5A9410](0x204D4F524620, 0xE600000000000000);
    v20 = v23;
    v21 = v5;
  }

  MEMORY[0x1AC5A9410](v20, v21);
  MEMORY[0x1AC5A9410](59, 0xE100000000000000);
  return v24;
}

uint64_t sub_1ABEB8EC4(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, char a6, uint64_t a7, uint64_t *a8, uint64_t *a9)
{
  v83 = a8;
  v92 = a4;
  v82 = a9;
  v97[1] = *MEMORY[0x1E69E9840];
  v91 = sub_1ABF22854();
  v87 = *(v91 - 8);
  v16 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v86 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1ABAD219C(&qword_1EB4D3038, &unk_1ABF3A870);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v89 = &v81 - v20;
  v21 = sub_1ABF220F4();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v88 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97[0] = 0;

  v85 = a1;
  v90 = a2;
  v93 = a3;
  sub_1ABEB6D9C(a2, a3, a1, a2, a3, v97);
  v84 = v9;
  v24 = v97[0];
  while (1)
  {
    v25 = sqlite3_step(v24);
    if (v25 != 100)
    {
      break;
    }

    v26 = sub_1ABF251E4();
    v27 = sqlite3_column_bytes(v24, 1);
    v28 = v24;
    if (!sqlite3_column_blob(v24, 1))
    {
      *&v95[0] = 0;
      *(&v95[0] + 1) = 0xE000000000000000;
      sub_1ABF24AB4();

      *&v95[0] = 0xD00000000000001DLL;
      *(&v95[0] + 1) = 0x80000001ABF95640;
      v60 = v92[4];
      v61 = v92[5];
      goto LABEL_32;
    }

    v29 = v27 / 4;
    v30 = *(a5 + 16);
    if (v30 != v29)
    {
      *&v95[0] = 0;
      *(&v95[0] + 1) = 0xE000000000000000;
      sub_1ABF24AB4();

      *&v95[0] = 0xD00000000000001BLL;
      *(&v95[0] + 1) = 0x80000001ABF95660;
      v94 = v30;
      v62 = sub_1ABF24FF4();
      MEMORY[0x1AC5A9410](v62);

      MEMORY[0x1AC5A9410](0xD000000000000012, 0x80000001ABF95680);
      v94 = v29;
      v63 = sub_1ABF24FF4();
      MEMORY[0x1AC5A9410](v63);

      v60 = 41;
      v61 = 0xE100000000000000;
LABEL_32:
      MEMORY[0x1AC5A9410](v60, v61);
      v65 = *(&v95[0] + 1);
      v64 = *&v95[0];
      sub_1ABEBA760();
      swift_allocError();
      *v66 = v64;
      *(v66 + 8) = v65;
      *(v66 + 16) = 1;
      swift_willThrow();
      v24 = v28;
LABEL_44:
      result = sqlite3_finalize(v24);
      v80 = *MEMORY[0x1E69E9840];
      return result;
    }

    cblas_sdot_NEWLAPACK();
    v32 = v31;
    if (a6)
    {
      v24 = v28;
      if (a6 == 1)
      {
        cblas_sdot_NEWLAPACK();
        v34 = v33;
        cblas_sdot_NEWLAPACK();
        v32 = sqrtf((v34 + v35) - (v32 + v32));
      }
    }

    else
    {
      cblas_snrm2_NEWLAPACK();
      v37 = v36;
      cblas_snrm2_NEWLAPACK();
      v32 = v32 / ((v37 * v38) + 0.00000011921);
      v24 = v28;
    }

    *&v95[0] = v26;
    (*(*a7 + 104))(v95, v32);
  }

  if (v25 != 101)
  {
    sub_1ABF220D4();
    sub_1ABA7B9B4(v89, 1, 1, v91);
    sub_1ABF22384();
    sub_1ABEBA6B4(&qword_1EB4DB310, MEMORY[0x1E699FE10]);
    swift_allocError();

    sub_1ABF22344();
    swift_willThrow();
    goto LABEL_44;
  }

  v90 = v24;
  v39 = (*(*a7 + 96))();
  v40 = sub_1ABF239C4();
  v93 = *(v39 + 16);
  if (!v93)
  {
LABEL_23:
    v54 = *v83;
    *v83 = v40;

    v55 = *(v39 + 16);
    if (v55)
    {
      *&v95[0] = MEMORY[0x1E69E7CC0];
      sub_1ABADE24C();
      v56 = *&v95[0];
      v57 = *(*&v95[0] + 16);
      v58 = 32;
      do
      {
        v59 = *(v39 + v58);
        *&v95[0] = v56;
        if (v57 >= *(v56 + 24) >> 1)
        {
          sub_1ABADE24C();
          v56 = *&v95[0];
        }

        *(v56 + 16) = v57 + 1;
        *(v56 + 8 * v57 + 32) = v59;
        v58 += 16;
        ++v57;
        --v55;
      }

      while (v55);
    }

    else
    {

      v56 = MEMORY[0x1E69E7CC0];
    }

    v67 = *(v56 + 16);
    v68 = sub_1ABF22934();
    v70 = v69;
    v71 = v92[6];
    v72 = v92[7];
    v73 = v71 == 0x6469776F72 && v72 == 0xE500000000000000;
    v24 = v90;
    if (v73 || (sub_1ABF25054() & 1) != 0)
    {
      *&v95[0] = 0;
      *(&v95[0] + 1) = 0xE000000000000000;
      sub_1ABF24AB4();

      *&v95[0] = 0xD000000000000015;
      *(&v95[0] + 1) = 0x80000001ABF95620;
    }

    else
    {
      *&v95[0] = 0;
      *(&v95[0] + 1) = 0xE000000000000000;
      sub_1ABF24AB4();

      strcpy(v95, "SELECT * FROM ");
      HIBYTE(v95[0]) = -18;
    }

    MEMORY[0x1AC5A9410](*v92, v92[1]);
    MEMORY[0x1AC5A9410](0x20455245485720, 0xE700000000000000);
    MEMORY[0x1AC5A9410](v71, v72);
    MEMORY[0x1AC5A9410](0x28206E6920, 0xE500000000000000);
    MEMORY[0x1AC5A9410](v68, v70);

    MEMORY[0x1AC5A9410](15145, 0xE200000000000000);
    sub_1ABF22BB4();
    *&v95[0] = v56;
    sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
    sub_1ABEBA6FC();
    v74 = v86;
    sub_1ABF22864();
    v96 = 0;
    memset(v95, 0, sizeof(v95));
    v75 = v84;
    v76 = sub_1ABF22B84();
    if (v75)
    {

      sub_1ABA925A4(v95, &unk_1EB4D38A0, &qword_1ABF3A8B0);
      (*(v87 + 8))(v74, v91);
    }

    else
    {
      v77 = v76;

      sub_1ABA925A4(v95, &unk_1EB4D38A0, &qword_1ABF3A8B0);
      (*(v87 + 8))(v74, v91);
      v78 = *v82;
      *v82 = v77;
    }

    goto LABEL_44;
  }

  v41 = 0;
  v42 = (v39 + 40);
  while (1)
  {
    if (v41 >= *(v39 + 16))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
    }

    v43 = *(v42 - 1);
    v44 = *v42;
    swift_isUniquelyReferenced_nonNull_native();
    *&v95[0] = v40;
    v45 = sub_1ABAFF5A4(v43);
    if (__OFADD__(v40[2], (v46 & 1) == 0))
    {
      goto LABEL_46;
    }

    v47 = v45;
    v48 = v46;
    sub_1ABAD219C(&qword_1EB4DC600, qword_1ABF772B8);
    if ((sub_1ABF24C64() & 1) == 0)
    {
      goto LABEL_18;
    }

    v49 = sub_1ABAFF5A4(v43);
    if ((v48 & 1) != (v50 & 1))
    {
      break;
    }

    v47 = v49;
LABEL_18:
    v40 = *&v95[0];
    if (v48)
    {
      *(*(*&v95[0] + 56) + 4 * v47) = v44;
    }

    else
    {
      *(*&v95[0] + 8 * (v47 >> 6) + 64) |= 1 << v47;
      *(v40[6] + 8 * v47) = v43;
      *(v40[7] + 4 * v47) = v44;
      v51 = v40[2];
      v52 = __OFADD__(v51, 1);
      v53 = v51 + 1;
      if (v52)
      {
        goto LABEL_47;
      }

      v40[2] = v53;
    }

    ++v41;
    v42 += 4;
    if (v93 == v41)
    {
      goto LABEL_23;
    }
  }

  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABEB98C0@<X0>(const char *a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, sqlite3_stmt **a4@<X4>, _DWORD *a5@<X8>)
{
  v10 = sub_1ABF22E54();
  if ((a3 & 0x1000000000000000) != 0)
  {
    v13 = sub_1ABF23DF4();
    if (v13 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    v11 = v13;
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
LABEL_6:
      v11 = HIBYTE(a3) & 0xF;
      goto LABEL_7;
    }

    v11 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v11 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  result = sqlite3_prepare_v2(v10, a1, v11, a4, 0);
  *a5 = result;
  return result;
}

uint64_t sub_1ABEB9978@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1ABAD219C(&qword_1EB4D1200, &unk_1ABF4B4D0);
  v63 = *(v9 - 8);
  v10 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v62 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v55 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v65 = v55 - v16;
  v17 = *a1;
  v18 = *(a2 + 48);
  v19 = *(a2 + 56);
  sub_1ABB33688();
  if (v4)
  {
    goto LABEL_24;
  }

  v21 = sub_1ABAD5BC8(v20, *a3);
  if ((v21 & 0x100000000) != 0)
  {
    result = 0;
    LODWORD(v22) = 0;
LABEL_19:
    *a4 = result;
    *(a4 + 8) = v22;
    return result;
  }

  v22 = v21;

  v24 = sub_1ABEB6F7C(v23);
  sub_1ABAD219C(&qword_1EB4D3050, &qword_1ABF3DF20);
  v25 = sub_1ABF239C4();
  v61 = *(v24 + 16);
  if (!v61)
  {

LABEL_18:
    sub_1ABF22BB4();
    result = sub_1ABF22BD4();
    goto LABEL_19;
  }

  v55[0] = v22;
  v55[1] = 0;
  v56 = a4;
  v57 = v24;
  v26 = 0;
  v27 = *(v63 + 80);
  v59 = v9;
  v60 = v24 + ((v27 + 32) & ~v27);
  v58 = v14;
  while (v26 < *(v24 + 16))
  {
    v28 = *(v63 + 72);
    v64 = v26;
    v29 = v60 + v28 * v26;
    v30 = v65;
    sub_1ABAAB860(v29, v65);
    sub_1ABAAB860(v30, v14);
    v32 = *v14;
    v31 = v14[1];
    v33 = v62;
    sub_1ABAAB860(v30, v62);
    v34 = *(v33 + 8);

    v35 = *(v9 + 48);
    v36 = sub_1ABF223D4();
    *(&v70 + 1) = v36;
    v71 = MEMORY[0x1E699FE38];
    v37 = sub_1ABA93DC0(&v69);
    v38 = *(v36 - 8);
    (*(v38 + 32))(v37, v33 + v35, v36);
    v66 = v69;
    v67 = v70;
    v68 = v71;
    swift_isUniquelyReferenced_nonNull_native();
    v72 = v25;
    v39 = v32;
    v40 = sub_1ABA94FC8(v32, v31);
    if (__OFADD__(v25[2], (v41 & 1) == 0))
    {
      goto LABEL_21;
    }

    v42 = v40;
    v43 = v41;
    sub_1ABAD219C(&qword_1EB4DC5F8, &qword_1ABF772B0);
    if (sub_1ABF24C64())
    {
      v44 = sub_1ABA94FC8(v32, v31);
      v14 = v58;
      v46 = v59;
      if ((v43 & 1) != (v45 & 1))
      {
        goto LABEL_23;
      }

      v42 = v44;
      if (v43)
      {
LABEL_13:

        v25 = v72;
        sub_1ABEBA5D4(&v66, v72[7] + 40 * v42);
        sub_1ABA925A4(v65, &qword_1EB4D1200, &unk_1ABF4B4D0);
        goto LABEL_14;
      }
    }

    else
    {
      v14 = v58;
      v46 = v59;
      if (v43)
      {
        goto LABEL_13;
      }
    }

    v25 = v72;
    v72[(v42 >> 6) + 8] |= 1 << v42;
    v47 = (v25[6] + 16 * v42);
    *v47 = v39;
    v47[1] = v31;
    v48 = v25[7] + 40 * v42;
    v49 = v68;
    v50 = v67;
    *v48 = v66;
    *(v48 + 16) = v50;
    *(v48 + 32) = v49;
    sub_1ABA925A4(v65, &qword_1EB4D1200, &unk_1ABF4B4D0);
    v51 = v25[2];
    v52 = __OFADD__(v51, 1);
    v53 = v51 + 1;
    if (v52)
    {
      goto LABEL_22;
    }

    v25[2] = v53;
LABEL_14:
    v26 = v64 + 1;
    v9 = v46;
    (*(v38 + 8))(v14 + *(v46 + 48), v36);
    v24 = v57;
    if (v61 == v26)
    {

      a4 = v56;
      LODWORD(v22) = v55[0];
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  sub_1ABF25104();
  __break(1u);
LABEL_24:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_1ABEB9EAC()
{
  result = qword_1EB4DC5D8;
  if (!qword_1EB4DC5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC5D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VectorSearchSimilarityMetric(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SearchMode(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
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

uint64_t storeEnumTagSinglePayload for SearchMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchMode.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1ABEBA18C(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1ABEBA23C()
{
  result = qword_1EB4DC5E0;
  if (!qword_1EB4DC5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC5E0);
  }

  return result;
}

unint64_t sub_1ABEBA294()
{
  result = qword_1EB4DC5E8;
  if (!qword_1EB4DC5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC5E8);
  }

  return result;
}

unint64_t sub_1ABEBA2EC()
{
  result = qword_1EB4DC5F0;
  if (!qword_1EB4DC5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC5F0);
  }

  return result;
}

unint64_t sub_1ABEBA344()
{
  result = qword_1ED871800;
  if (!qword_1ED871800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871800);
  }

  return result;
}

unint64_t sub_1ABEBA39C()
{
  result = qword_1ED871808;
  if (!qword_1ED871808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871808);
  }

  return result;
}

unint64_t sub_1ABEBA3F4()
{
  result = qword_1ED871818;
  if (!qword_1ED871818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871818);
  }

  return result;
}

unint64_t sub_1ABEBA44C()
{
  result = qword_1ED871820;
  if (!qword_1ED871820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871820);
  }

  return result;
}

unint64_t sub_1ABEBA4A4()
{
  result = qword_1ED871828;
  if (!qword_1ED871828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871828);
  }

  return result;
}

unint64_t sub_1ABEBA4FC()
{
  result = qword_1ED871830;
  if (!qword_1ED871830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871830);
  }

  return result;
}

unint64_t sub_1ABEBA550()
{
  result = qword_1ED868A38[0];
  if (!qword_1ED868A38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED868A38);
  }

  return result;
}

uint64_t sub_1ABEBA5D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D3050, &qword_1ABF3DF20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABEBA644(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D1200, &unk_1ABF4B4D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABEBA6B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1ABEBA6FC()
{
  result = qword_1EB4DC608;
  if (!qword_1EB4DC608)
  {
    sub_1ABAE2850(&qword_1EB4D4768, &qword_1ABF497E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC608);
  }

  return result;
}

unint64_t sub_1ABEBA760()
{
  result = qword_1EB4DC610;
  if (!qword_1EB4DC610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC610);
  }

  return result;
}

uint64_t sub_1ABEBA824()
{
  v1 = v0[6];
  sub_1ABA93E20(v0 + 2, v0[5]);
  v2 = sub_1ABA7FB54();
  return v3(v2);
}

id sub_1ABEBA878(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v7 = *(v3 + qword_1EB4DC3E8);
  os_unfair_lock_lock((v7 + 24));
  v8 = sub_1ABEBA8FC((v7 + 16), a1, a2, a3);
  os_unfair_lock_unlock((v7 + 24));
  return v8;
}

id sub_1ABEBA8FC(id *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v8 = *a1;
  v9 = [*a1 objectForKey_];
  if (v9)
  {
    return v9;
  }

  v10 = a4;
  v11 = a3(a2);
  if (!v4)
  {
    v10 = v11;
    [v8 setObject:v11 forKey:a2];
  }

  return v10;
}

uint64_t sub_1ABEBA9A8()
{
  v1 = v0[11];
  sub_1ABA93E20(v0 + 7, v0[10]);
  v2 = sub_1ABA7FB54();
  return v3(v2);
}

uint64_t sub_1ABEBA9FC()
{
  sub_1ABA7C84C();
  v4 = v0[15];
  v5 = v0[16];
  sub_1ABA93E20(v0 + 12, v4);
  return (*(v5 + 8))(v3, v2, v1, v4, v5);
}

uint64_t *sub_1ABEBAA74()
{
  sub_1ABA84B54(v0 + 2);
  sub_1ABA84B54(v0 + 7);
  sub_1ABA84B54(v0 + 12);
  return v0;
}

uint64_t sub_1ABEBAAA4()
{
  sub_1ABEBAA74();

  return swift_deallocClassInstance();
}

id sub_1ABEBAB68(void *a1)
{
  v2 = *(v1 + 16);
  result = [a1 viewArtifactURL];
  if (result)
  {
    v4 = result;
    v5 = *(v2 + qword_1EB4DC3E8);
    os_unfair_lock_lock((v5 + 24));
    v6 = sub_1ABEB44C4((v5 + 16), v4);
    os_unfair_lock_unlock((v5 + 24));

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1ABEBABF8(void *a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1ABEBB724(a1);
  if (!v2)
  {
    sub_1ABEBB788();
    swift_allocError();
    v8 = 0;
    *v9 = 0;
LABEL_7:
    swift_willThrow();

    goto LABEL_8;
  }

  v3 = v1;
  v4 = v2;
  v11[0] = 0;
  v5 = objc_allocWithZone(MEMORY[0x1E69C5D88]);
  if (!sub_1ABEBB6A4(v3, v4, 3473409, v11, 0))
  {
    v6 = v11[0];
    if (!v11[0])
    {
      sub_1ABEBB788();
      swift_allocError();
      *v7 = 1;
    }

    v8 = v6;
    goto LABEL_7;
  }

LABEL_8:
  v10 = *MEMORY[0x1E69E9840];
}

id sub_1ABEBAD3C(void *a1)
{
  v4 = *(v1 + 16);
  result = [a1 viewArtifactURL];
  if (result)
  {
    v6 = result;
    swift_unknownObjectRetain();
    v7 = sub_1ABEB4398(v6, v4, a1);

    if (v2)
    {
      return MEMORY[0x1E699FE28];
    }

    else
    {
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABEBADD4(uint64_t a1, void *a2)
{
  v3 = sub_1ABF238C4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1ABA7BC58();
  v63 = v6 - v5;
  v7 = sub_1ABAD219C(&qword_1EB4DC620, &qword_1ABF77440);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v56 - v9;
  v11 = sub_1ABF23884();
  sub_1ABA7BD7C();
  v59 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7AC18();
  sub_1ABA93A94();
  MEMORY[0x1EEE9AC00](v16);
  v57 = v56 - v17;
  v56[0] = sub_1ABF22ED4();
  sub_1ABA7BD7C();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1ABA7BC58();
  v25 = (v24 - v23);
  sub_1ABF22334();
  sub_1ABA7BD7C();
  v61 = v27;
  v62 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA7AC18();
  v58 = v30 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = v56 - v33;
  v35 = sub_1ABF21CF4();
  sub_1ABA7BD7C();
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v40);
  sub_1ABA7BC58();
  v43 = v42 - v41;
  v44 = [a2 viewArtifactURL];
  sub_1ABF21CA4();

  v45 = sub_1ABF21CC4();
  v56[1] = v46;
  v56[2] = v45;
  (*(v37 + 8))(v43, v35);
  sub_1ABF22324();
  sub_1ABF222E4();
  sub_1ABF22314();
  *v25 = 0x4059000000000000;
  (*(v19 + 104))(v25, *MEMORY[0x1E69A00D8], v56[0]);
  sub_1ABF22304();
  qos_class_self();
  sub_1ABF23874();
  if (sub_1ABA7E1E0(v10, 1, v11) == 1)
  {
    v47 = v59;
    v48 = v57;
    (*(v59 + 104))(v57, *MEMORY[0x1E69E7F80], v11);
    if (sub_1ABA7E1E0(v10, 1, v11) != 1)
    {
      sub_1ABEBB7DC(v10);
    }
  }

  else
  {
    v47 = v59;
    v48 = v57;
    (*(v59 + 32))(v57, v10, v11);
  }

  (*(v47 + 16))(v60, v48, v11);
  sub_1ABF238B4();
  sub_1ABF222F4();
  v50 = v61;
  v49 = v62;
  (*(v61 + 16))(v58, v34, v62);
  v51 = sub_1ABF223B4();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();
  v54 = sub_1ABF22394();
  (*(v47 + 8))(v48, v11);
  (*(v50 + 8))(v34, v49);
  return v54;
}

uint64_t sub_1ABEBB2A8()
{
  type metadata accessor for UnicodeWrapperTokenizer();
  sub_1ABEBB844();
  return sub_1ABF22DE4();
}

id sub_1ABEBB31C()
{
  sub_1ABA7C84C();
  v4 = *(v0 + 16);
  v5 = sub_1ABF21C54();
  v9 = v2;
  v10 = v1;
  v11 = v3;
  v6 = sub_1ABEBA878(v5, sub_1ABEBB89C, &v8);

  return v6;
}

char *sub_1ABEBB3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v6 = sub_1ABF21CF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  v14 = sub_1ABF23074();
  v34 = *(v14 - 8);
  v35 = v14;
  v15 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v33 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v33 - v22;
  v24 = a2 == 0xD000000000000016 && 0x80000001ABF958F0 == a3;
  if (v24 || (sub_1ABF25054() & 1) != 0)
  {
    (*(v7 + 16))(v13, v36, v6);
    v25 = v37;
    sub_1ABF23064();
    if (v25)
    {
      return v13;
    }

    v17 = v23;
  }

  else
  {
    (*(v7 + 16))(v10, v36, v6);
    v26 = v37;
    sub_1ABF23064();
    if (v26)
    {
      return v13;
    }
  }

  v28 = v34;
  v27 = v35;
  (*(v34 + 16))(v20, v17, v35);
  v29 = sub_1ABF23044();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v13 = sub_1ABF22FF4();
  (*(v28 + 8))(v17, v27);
  return v13;
}

id sub_1ABEBB6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1ABF23BD4();

  v10 = [v5 initWithFilename:v9 flags:a3 error:a4 errorHandler:a5];

  swift_unknownObjectRelease();
  return v10;
}

uint64_t sub_1ABEBB724(void *a1)
{
  v1 = [a1 path];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1ABF23C04();

  return v3;
}

unint64_t sub_1ABEBB788()
{
  result = qword_1EB4DC618;
  if (!qword_1EB4DC618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC618);
  }

  return result;
}

uint64_t sub_1ABEBB7DC(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4DC620, &qword_1ABF77440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1ABEBB844()
{
  result = qword_1ED871EB8[0];
  if (!qword_1ED871EB8[0])
  {
    type metadata accessor for UnicodeWrapperTokenizer();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED871EB8);
  }

  return result;
}

uint64_t *sub_1ABEBB8BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v68 = a8;
  v62 = a6;
  v63 = a4;
  v64 = a3;
  v61 = a2;
  sub_1ABA7BD7C();
  v13 = v12;
  v15 = *(v14 + 64);
  v66 = a10;
  v67 = a9;
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7AC18();
  sub_1ABA93A94();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v57 - v18;
  v59 = &v57 - v18;
  sub_1ABA7BD7C();
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA7AC18();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v57 - v29;
  sub_1ABA7BD7C();
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1ABA7AC18();
  v38 = v36 - v37;
  v40 = MEMORY[0x1EEE9AC00](v39);
  v42 = &v57 - v41;
  v43 = *(v32 + 32);
  v58 = v44;
  v43(&v57 - v41, v40);
  v60 = v21;
  (*(v21 + 32))(v30, v61, a7);
  v45 = v19;
  v46 = v62;
  (*(v13 + 32))(v45, v64, v62);
  v64 = swift_allocObject();
  (*(v32 + 16))(v38, v42, a5);
  (*(v21 + 16))(v27, v30, a7);
  v47 = v13;
  v48 = *(v13 + 16);
  v49 = v65;
  v50 = v59;
  v48(v65, v59, v46);
  v51 = v38;
  v52 = v49;
  v53 = v58;
  v54 = v46;
  v55 = sub_1ABEBBC10(v51, v27, v52, v64, v58, v46, a7, v68, v67, v66);
  (*(v47 + 8))(v50, v54);
  (*(v60 + 8))(v30, a7);
  (*(v32 + 8))(v42, v53);
  return v55;
}

uint64_t *sub_1ABEBBC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a4[10] = a5;
  a4[11] = a8;
  v17 = sub_1ABA93DC0(a4 + 7);
  (*(*(a5 - 8) + 32))(v17, a1, a5);
  a4[5] = a7;
  a4[6] = a10;
  v18 = sub_1ABA93DC0(a4 + 2);
  (*(*(a7 - 8) + 32))(v18, a2, a7);
  a4[15] = a6;
  a4[16] = a9;
  v19 = sub_1ABA93DC0(a4 + 12);
  (*(*(a6 - 8) + 32))(v19, a3, a6);
  return a4;
}

_BYTE *storeEnumTagSinglePayload for ViewDatabaseInstances.CacheError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1ABEBBE04()
{
  result = qword_1EB4DC628;
  if (!qword_1EB4DC628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC628);
  }

  return result;
}

void *ViewService.subgraphView(name:tableName:batchSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v10 = *(v5 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  v11 = sub_1ABF23BD4();
  v28[0] = 0;
  v12 = [v10 requestAssertionForViewName:v11 error:v28];

  v13 = v28[0];
  if (v12)
  {
    v26 = a3;
    v27 = a5;
    v14 = *(v5 + OBJC_IVAR___GDSwiftViewService_databaseCache);
    v16 = v14[5];
    v15 = v14[6];
    v5 = sub_1ABA93E20(v14 + 2, v16);
    v17 = *(v15 + 8);
    v18 = v13;
    v19 = v17(v12, v16, v15);
    if (v6)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = v19;
      v23 = v20;
      type metadata accessor for SubgraphView();
      swift_allocObject();
      v5 = SubgraphView.init(accessAssertion:database:tableName:batchSize:)(v12, v22, v23, v26, a4, v27);
    }
  }

  else
  {
    v21 = v28[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  v24 = *MEMORY[0x1E69E9840];
  return v5;
}

char *ViewService.addressContactResolverEmbeddingView()()
{
  v2 = v1;
  v20[1] = *MEMORY[0x1E69E9840];
  sub_1ABF21CF4();
  sub_1ABA7BD7C();
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7C918();
  v6 = *(v0 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  v7 = sub_1ABF23BD4();
  v20[0] = 0;
  v8 = [v6 requestAssertionForViewName:v7 error:v20];

  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR___GDSwiftViewService_databaseCache);
    v10 = v20[0];
    v11 = [v8 viewArtifactURL];
    sub_1ABF21CA4();

    v2 = "Provider";
    v12 = v9[16];
    sub_1ABA93E20(v9 + 12, v9[15]);
    v13 = *(v12 + 8);
    sub_1ABAA3E98();
    v14();
    if (!v1)
    {
      sub_1ABA99800();
    }

    swift_unknownObjectRelease();
    v15 = sub_1ABA94DE8();
    v16(v15);
  }

  else
  {
    v17 = v20[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  v18 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t ViewService.knosisEntitySubgraphService()()
{
  result = sub_1ABD97210(v2);
  if (!v0)
  {
    return sub_1ABD92724(v2);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ViewService.reportSQLiteError(for:sqliteErrorCode:)(Swift::String a1, Swift::Int64 sqliteErrorCode)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = *(v2 + OBJC_IVAR___GDSwiftViewService_errorReporter);
  if (v3)
  {
    countAndFlagsBits = a1._countAndFlagsBits;
    swift_unknownObjectRetain();
    sub_1ABF23BD4();
    sub_1ABA97E70();
    v6 = [v3 reportSQLiteError:countAndFlagsBits sqliteErrorCode:sqliteErrorCode error:v16];

    if (v6)
    {
      v7 = v16[0];
    }

    else
    {
      v14 = v16[0];
      sub_1ABF21BE4();

      swift_willThrow();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED870750 != -1)
    {
      sub_1ABA7D72C();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED870758);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24664();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      sub_1ABAA3060(&dword_1ABA78000, v12, v13, "ViewService: reportSQLiteError not supported");
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t static ViewService.clientService(useCase:)(uint64_t a1)
{
  if (qword_1ED872150 != -1)
  {
    a1 = sub_1ABA81D90();
  }

  v1 = *(qword_1ED8721E0 + OBJC_IVAR____TtC20IntelligencePlatform22ViewServiceUserManager_lockedServices);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1ABEBEA40((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

id ViewService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ViewService.init()()
{
  ObjectType = swift_getObjectType();
  v2 = static ViewService.clientService.getter(ObjectType);
  *&v0[OBJC_IVAR___GDSwiftViewService_accessRequester] = *&v2[OBJC_IVAR___GDSwiftViewService_accessRequester];
  *&v0[OBJC_IVAR___GDSwiftViewService_errorReporter] = *&v2[OBJC_IVAR___GDSwiftViewService_errorReporter];
  *&v0[OBJC_IVAR___GDSwiftViewService_databaseCache] = *&v2[OBJC_IVAR___GDSwiftViewService_databaseCache];
  v3 = *&v2[OBJC_IVAR___GDSwiftViewService_useCase];
  swift_unknownObjectRetain();

  v4 = v3;
  swift_unknownObjectRetain();

  *&v0[OBJC_IVAR___GDSwiftViewService_useCase] = v4;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

char *ViewService.__allocating_init(accessRequester:)()
{
  v0 = objc_allocWithZone(sub_1ABA9EFD8());
  sub_1ABA7D1BC();
  return ViewService.init(accessRequester:)();
}

char *ViewService.init(accessRequester:)()
{
  sub_1ABA9EFD8();
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___GDSwiftViewService_accessRequester] = v0;
  *&v1[OBJC_IVAR___GDSwiftViewService_errorReporter] = 0;
  v3 = type metadata accessor for ViewDatabasePasProvider();
  v4 = sub_1ABAA4768();
  v5 = objc_allocWithZone(sub_1ABAD219C(&qword_1EB4DC660, &qword_1ABF77500));
  swift_unknownObjectRetain();
  *(v4 + 16) = [v5 init];
  v6 = type metadata accessor for ViewDatabaseGRDBProvider();
  v7 = sub_1ABAA4768();
  *(v7 + 16) = [objc_allocWithZone(sub_1ABAD219C(&qword_1EB4DC668 &qword_1ABF77508))];
  v8 = type metadata accessor for VectorDatabaseClientProvider();
  v9 = sub_1ABAA4768();
  *(v9 + 16) = [objc_allocWithZone(sub_1ABAD219C(&unk_1EB4DC670 &qword_1ABF77510))];
  type metadata accessor for ViewDatabaseInstances();
  v10 = swift_allocObject();
  v10[10] = v3;
  v10[11] = &off_1F2081468;
  v10[7] = v4;
  v10[5] = v6;
  v10[6] = &off_1F20804C0;
  v10[2] = v7;
  v10[15] = v8;
  v10[16] = &off_1F20A1618;
  v10[12] = v9;
  *&v1[OBJC_IVAR___GDSwiftViewService_databaseCache] = v10;
  v11 = *MEMORY[0x1E698E938];
  *&v1[OBJC_IVAR___GDSwiftViewService_useCase] = *MEMORY[0x1E698E938];
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v12 = v11;
  objc_msgSendSuper2(&v14, sel_init);
  sub_1ABA7D1BC();
  swift_unknownObjectRelease();
  return sel_init;
}

char *ViewService.__allocating_init(viewAccessRequester:)()
{
  v0 = objc_allocWithZone(sub_1ABA9EFD8());
  sub_1ABA7D1BC();
  return ViewService.init(viewAccessRequester:)();
}

char *ViewService.init(viewAccessRequester:)()
{
  sub_1ABA9EFD8();
  ObjectType = swift_getObjectType();
  v3 = static ViewService.clientService.getter(ObjectType);
  v4 = v3;
  v5 = OBJC_IVAR___GDSwiftViewService_accessRequester;
  if (v0)
  {
    v6 = v0;
  }

  else
  {
    v7 = *(v3 + OBJC_IVAR___GDSwiftViewService_accessRequester);
    v6 = swift_unknownObjectRetain();
  }

  *&v1[v5] = v6;
  *&v1[OBJC_IVAR___GDSwiftViewService_errorReporter] = 0;
  *&v1[OBJC_IVAR___GDSwiftViewService_databaseCache] = *&v4[OBJC_IVAR___GDSwiftViewService_databaseCache];
  v8 = *&v4[OBJC_IVAR___GDSwiftViewService_useCase];
  swift_unknownObjectRetain();

  v9 = v8;

  *&v1[OBJC_IVAR___GDSwiftViewService_useCase] = v9;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, sel_init);
  sub_1ABA7D1BC();
  swift_unknownObjectRelease();
  return v1;
}

id ViewService.init(accessRequester:grdbDatabaseProvider:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___GDSwiftViewService_accessRequester] = a1;
  *&v3[OBJC_IVAR___GDSwiftViewService_errorReporter] = 0;
  v23 = type metadata accessor for ViewDatabaseInstances();
  v6 = type metadata accessor for ViewDatabasePasProvider();
  v7 = sub_1ABAA4768();
  v8 = objc_allocWithZone(sub_1ABAD219C(&qword_1EB4DC660, &qword_1ABF77500));
  swift_unknownObjectRetain();
  *(v7 + 16) = [v8 init];
  sub_1ABA93E64(a2, v28);
  v9 = type metadata accessor for VectorDatabaseClientProvider();
  v10 = sub_1ABAA4768();
  v11 = objc_allocWithZone(sub_1ABAD219C(&unk_1EB4DC670, &qword_1ABF77510));

  *(v10 + 16) = [v11 &selRef_requestAssertionForViewName_error_];
  v13 = v29;
  v12 = v30;
  sub_1ABA94E50(v28, v29);
  sub_1ABA7BD7C();
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7C918();
  (*(v17 + 16))(&off_1E7963000);
  v26 = v10;
  v27 = v7;
  v18 = sub_1ABEBB8BC(&v27, &off_1E7963000, &v26, v23, v6, v9, v13, &off_1F2081468, &off_1F20A1618, v12);

  sub_1ABA84B54(v28);
  *&v3[OBJC_IVAR___GDSwiftViewService_databaseCache] = v18;
  v19 = *MEMORY[0x1E698E938];
  *&v3[OBJC_IVAR___GDSwiftViewService_useCase] = *MEMORY[0x1E698E938];
  v25.receiver = v3;
  v25.super_class = ObjectType;
  v20 = v19;
  v21 = objc_msgSendSuper2(&v25, sel_init);
  swift_unknownObjectRelease();
  sub_1ABA84B54(a2);
  return v21;
}

BOOL sub_1ABEBCE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1ABF23C04();
  v12 = v11;
  if (v10 == sub_1ABF23C04() && v12 == v13)
  {

    if (a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v15 = sub_1ABF25054();

    result = 0;
    if ((v15 & 1) == 0)
    {
      return result;
    }

    if (a3)
    {
LABEL_7:
      if (a6)
      {
        v17 = a2 == a5 && a3 == a6;
        if (v17 || (sub_1ABF25054() & 1) != 0)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return !a6;
}

uint64_t sub_1ABEBCF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ABF23C04();
  sub_1ABF23D34();

  if (!a4)
  {
    return sub_1ABF25254();
  }

  sub_1ABF25254();

  return sub_1ABF23D34();
}

uint64_t sub_1ABEBD024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABF25234();
  sub_1ABEBCF8C(v7, a1, a2, a3);
  return sub_1ABF25294();
}

uint64_t sub_1ABEBD09C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1ABF25234();
  sub_1ABEBCF8C(v5, v1, v2, v3);
  return sub_1ABF25294();
}

uint64_t sub_1ABEBD110()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_1ABEBD140()
{
  sub_1ABEBD110();

  return swift_deallocClassInstance();
}

id sub_1ABEBD218(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a1;
  v6 = a4();

  return v6;
}

void sub_1ABEBD4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1ABA7BF50();
  a21 = v25;
  a22 = v26;
  v28 = v27;
  a10 = *MEMORY[0x1E69E9840];
  v29 = *(v22 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  sub_1ABF23BD4();
  sub_1ABA7E480();
  v30 = [v29 requestAssertionForViewName:v24 error:&a9];

  v31 = a9;
  if (v30)
  {
    v32 = *(v22 + OBJC_IVAR___GDSwiftViewService_databaseCache);
    v33 = v32[10];
    v34 = v32[11];
    sub_1ABA93E20(v32 + 7, v33);
    v35 = *(v34 + 8);
    v36 = v31;
    v37 = v35(v30, v33, v34);
    if (v23)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = v37;
      v41 = objc_opt_self();
      a9 = 0;
      if (sub_1ABA83D3C(v41, *v28))
      {
        v42 = a9;
      }

      else
      {
        v43 = a9;
        sub_1ABA99800();
        sub_1ABF21BE4();

        swift_willThrow();
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v38 = a9;
    sub_1ABF21BE4();

    swift_willThrow();
  }

  v39 = *MEMORY[0x1E69E9840];
  sub_1ABA84498();
  sub_1ABA8FEC8();
}

uint64_t ViewService.objcLanguageView()()
{
  v12[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  sub_1ABA8E56C();
  v2 = sub_1ABF23BD4();
  v12[0] = 0;
  v3 = [v1 requestAssertionForViewName:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = type metadata accessor for GDLanguageView();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR____TtC20IntelligencePlatform14GDLanguageView_assertion] = v3;
    v11.receiver = v6;
    v11.super_class = v5;
    v7 = v4;
    result = objc_msgSendSuper2(&v11, sel_init);
  }

  else
  {
    v9 = v12[0];
    sub_1ABF21BE4();

    result = swift_willThrow();
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

__objc2_class **ViewService.autonamingView(viewName:)(uint64_t a1, uint64_t a2)
{
  result = ViewService.subgraphView(name:tableName:batchSize:)(a1, a2, 0x6870617267627573, 0xE800000000000000, 10);
  if (!v2)
  {
    v4 = result;
    v5 = objc_allocWithZone(type metadata accessor for AutonamingView());
    return AutonamingView.init(subgraph:isForLiveServing:)(v4, 1);
  }

  return result;
}

void *ViewService.gdSwiftSubgraphViewContext(name:tableName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = ViewService.subgraphView(name:tableName:batchSize:)(a1, a2, a3, a4, 10);
  if (!v4)
  {
    v6 = objc_allocWithZone(type metadata accessor for _GDSwiftSubgraphViewContext());
    return sub_1ABC79E20();
  }

  return result;
}

uint64_t ViewService.handleView.getter()
{
  v2 = *MEMORY[0x1E69E9840];
  result = sub_1ABEBE030(0x614D656C646E6168, 0xE900000000000070);
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ViewService.languageView.getter()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = sub_1ABA8E56C();
  result = sub_1ABEBE030(v0, v1);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ViewService.entityRelevanceHistoricalFeatureView.getter()
{
  sub_1ABA81628();
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = *(v1 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  sub_1ABA7F0D0();
  v4 = sub_1ABF23BD4();
  v11[0] = 0;
  v5 = [v3 requestAssertionForViewName:v4 error:v11];

  if (v5)
  {
    v6 = v11[0];
    result = sub_1ABB8F030(v5, v11);
    if (!v2)
    {
      v8 = v11[1];
      *v0 = v11[0];
      *(v0 + 8) = v8;
    }
  }

  else
  {
    v9 = v11[0];
    sub_1ABF21BE4();

    result = swift_willThrow();
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ViewService.knosisIFContextSubgraphService()()
{
  result = sub_1ABD9735C(v2);
  if (!v0)
  {
    return sub_1ABD92BF8(v2);
  }

  return result;
}

void *ViewService.entityAliasEuclidEmbeddingView()()
{
  v2 = v1;
  v19[1] = *MEMORY[0x1E69E9840];
  sub_1ABF21CF4();
  sub_1ABA7BD7C();
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7C918();
  v6 = *(v0 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  v7 = sub_1ABF23BD4();
  v19[0] = 0;
  v8 = [v6 requestAssertionForViewName:v7 error:v19];

  if (v8)
  {
    v2 = *(v0 + OBJC_IVAR___GDSwiftViewService_databaseCache);
    v9 = v19[0];
    v10 = [v8 viewArtifactURL];
    sub_1ABF21CA4();

    v11 = v2[16];
    sub_1ABA93E20(v2 + 12, v2[15]);
    v12 = *(v11 + 8);
    sub_1ABAA3E98();
    v13();
    if (!v1)
    {
      sub_1ABA99800();
    }

    swift_unknownObjectRelease();
    v14 = sub_1ABA94DE8();
    v15(v14);
  }

  else
  {
    v16 = v19[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  v17 = *MEMORY[0x1E69E9840];
  return v2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ViewService.reportUnknownError(for:)(Swift::String a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = *(v1 + OBJC_IVAR___GDSwiftViewService_errorReporter);
  if (v2)
  {
    swift_unknownObjectRetain();
    v3 = sub_1ABF23BD4();
    v14[0] = 0;
    v4 = [v2 reportUnknownError:v3 error:v14];

    if (v4)
    {
      v5 = v14[0];
    }

    else
    {
      v12 = v14[0];
      sub_1ABF21BE4();

      swift_willThrow();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED870750 != -1)
    {
      sub_1ABA7D72C();
    }

    v6 = sub_1ABF237F4();
    sub_1ABA7AA24(v6, qword_1ED870758);
    v7 = sub_1ABF237D4();
    v8 = sub_1ABF24664();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      sub_1ABAA3060(&dword_1ABA78000, v10, v11, "ViewService: reportUnknownError not supported");
      MEMORY[0x1AC5AB8B0](v9, -1, -1);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

id sub_1ABEBE9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ViewService();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR___GDSwiftViewService_accessRequester] = a1;
  *&v9[OBJC_IVAR___GDSwiftViewService_errorReporter] = a2;
  *&v9[OBJC_IVAR___GDSwiftViewService_databaseCache] = a3;
  *&v9[OBJC_IVAR___GDSwiftViewService_useCase] = a4;
  v11.receiver = v9;
  v11.super_class = v8;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_1ABEBEA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v104 = a3 - 1;
  if (a3 < 1)
  {
    sub_1ABEC2E2C();
    sub_1ABA7BD00();
    *v7 = 0xD00000000000002ALL;
    *(v7 + 8) = 0x80000001ABF95D90;
    *(v7 + 16) = 1;
    return swift_willThrow();
  }

  v4 = v3;
  sub_1ABA7EF0C();
  swift_beginAccess();
  if (*(a1 + 32))
  {
    v6 = *(a1 + 32);
  }

  else
  {
    type metadata accessor for KnosisQueryParam();
    v6 = sub_1ABF239C4();
  }

  v9 = *(v6 + 64);
  v102 = v6 + 64;
  v10 = *(v6 + 32);
  sub_1ABA7D32C();
  v13 = v12 & v11;
  v101 = (v14 + 63) >> 6;

  v15 = 0;
  v103 = a1;
  v105 = v6;
  while (1)
  {
    if (!v13)
    {
      while (1)
      {
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
          goto LABEL_74;
        }

        if (v16 >= v101)
        {
          break;
        }

        v13 = *(v102 + 8 * v16);
        ++v15;
        if (v13)
        {
          v15 = v16;
          goto LABEL_12;
        }
      }

      if (!*(a1 + 40))
      {
        return result;
      }

      v96 = *(a1 + 40);

      sub_1ABEBEA58(v97, a2, v104);
    }

LABEL_12:
    v17 = (*(v6 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v13)))));
    v18 = *v17;
    v19 = v17[1];
    sub_1ABAA3378();
    sub_1ABA94DF8();
    swift_beginAccess();
    v20 = *(a1 + 32);
    if (!v20)
    {
      goto LABEL_79;
    }

    v21 = *(v20 + 16);

    if (!v21)
    {
      break;
    }

    v22 = sub_1ABA904F8();
    v24 = sub_1ABA94FC8(v22, v23);
    if ((v25 & 1) == 0)
    {
      break;
    }

    v13 &= v13 - 1;
    v26 = *(*(v20 + 56) + 8 * v24);
    swift_endAccess();
    sub_1ABA7EF0C();
    swift_beginAccess();
    v27 = *(v26 + 16);
    v109 = v26;
    if (v27[2])
    {
      v107 = v4;
      v29 = v27[4];
      v28 = v27[5];

      v30 = sub_1ABEC2DAC(v29, v28);
      if (*(a2 + 16))
      {
        v32 = sub_1ABA94FC8(v30, v31);
        v34 = v33;

        if (v34)
        {
          v35 = *(*(a2 + 56) + 8 * v32);
        }

        else
        {
          v35 = 0;
        }

        a1 = v103;
      }

      else
      {

        v35 = 0;
      }

      sub_1ABAA276C();
      if ((sub_1ABF23E64() & 1) == 0)
      {

        v4 = v107;
        v26 = v109;
        goto LABEL_46;
      }

      v26 = v109;
      if (!v35)
      {
        goto LABEL_45;
      }

      sub_1ABA7EF0C();
      swift_beginAccess();
      if (*(v109 + 24))
      {
        sub_1ABAA3378();
        sub_1ABA94DF8();
        swift_beginAccess();
        v44 = *(a1 + 32);
        if (!v44)
        {
          goto LABEL_81;
        }

        if (!*(v44 + 16))
        {
          goto LABEL_80;
        }

        v45 = sub_1ABA904F8();
        v47 = sub_1ABA94FC8(v45, v46);
        if ((v48 & 1) == 0)
        {
          goto LABEL_80;
        }

        v49 = *(*(v44 + 56) + 8 * v47);
        swift_endAccess();

        sub_1ABA7EF0C();
        swift_beginAccess();
        v50 = *(v35 + 16);

        swift_beginAccess();
        v51 = *(v49 + 16);
        *(v49 + 16) = v50;

LABEL_45:

        v4 = v107;
LABEL_46:
        sub_1ABA7EF0C();
        swift_beginAccess();
        v67 = *(v26 + 24);
        if (!v67)
        {

          goto LABEL_62;
        }

        v68 = *(v26 + 24);

        sub_1ABEBEA58(v67, a2, v104);

        v6 = v105;
        if (v4)
        {
        }
      }

      else
      {

        v100 = sub_1ABE73EEC();

        sub_1ABAA3378();
        sub_1ABA7C32C();
        if (!*(a1 + 32))
        {
          goto LABEL_83;
        }

        swift_isUniquelyReferenced_nonNull_native();
        v69 = *(a1 + 32);
        sub_1ABAA2AEC();
        *(a1 + 32) = v70;
        v71 = sub_1ABA904F8();
        sub_1ABA94FC8(v71, v72);
        v73 = *(v69 + 16);
        v99 = v74;
        sub_1ABA7AD10();
        if (__OFADD__(v76, v77))
        {
          goto LABEL_75;
        }

        v78 = v75;
        sub_1ABAD219C(&qword_1EB4D1E20, &unk_1ABF34900);
        sub_1ABA844A4();
        if (sub_1ABF24C64())
        {
          v79 = sub_1ABA904F8();
          sub_1ABA94FC8(v79, v80);
          sub_1ABA976E4();
          if (!v66)
          {
            goto LABEL_84;
          }

          v78 = v81;
          v83 = v100;
        }

        else
        {
          v83 = v100;
          v82 = v99;
        }

        if (v82)
        {
          v90 = *(v110 + 56);
          v91 = *(v90 + 8 * v78);
          *(v90 + 8 * v78) = v83;
        }

        else
        {
          sub_1ABA7D110(v110 + 8 * (v78 >> 6));
          sub_1ABAA3B10();
          *(v92 + 8 * v78) = v93;
          v94 = *(v110 + 16);
          v88 = __OFADD__(v94, 1);
          v95 = v94 + 1;
          if (v88)
          {
            goto LABEL_77;
          }

          *(v110 + 16) = v95;
        }

        *(a1 + 32) = v110;
        swift_endAccess();

        v4 = v107;
        v6 = v105;
      }
    }

    else
    {

      v36 = sub_1ABA904F8();
      v38 = sub_1ABEC2DAC(v36, v37);
      if (*(a2 + 16))
      {
        v40 = sub_1ABA94FC8(v38, v39);
        v42 = v41;

        if (v42)
        {
          v43 = *(*(a2 + 56) + 8 * v40);
        }

        else
        {
          v43 = 0;
        }

        a1 = v103;
        v26 = v109;
      }

      else
      {

        v43 = 0;
      }

      sub_1ABAA276C();
      if ((sub_1ABF23E64() & 1) == 0)
      {

        goto LABEL_46;
      }

      if (!v43)
      {
        goto LABEL_46;
      }

      v106 = sub_1ABE73EEC();

      sub_1ABAA3378();
      sub_1ABA7C32C();
      if (!*(a1 + 32))
      {
        goto LABEL_82;
      }

      swift_isUniquelyReferenced_nonNull_native();
      v52 = *(a1 + 32);
      sub_1ABAA2AEC();
      *(a1 + 32) = v53;
      v54 = sub_1ABA904F8();
      sub_1ABA94FC8(v54, v55);
      v56 = *(v52 + 16);
      sub_1ABA7AD10();
      if (__OFADD__(v59, v60))
      {
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        break;
      }

      v61 = v57;
      v98 = v58;
      sub_1ABAD219C(&qword_1EB4D1E20, &unk_1ABF34900);
      sub_1ABA844A4();
      if (sub_1ABF24C64())
      {
        v62 = sub_1ABA904F8();
        sub_1ABA94FC8(v62, v63);
        sub_1ABA976E4();
        if (!v66)
        {
          goto LABEL_84;
        }

        v61 = v64;
      }

      else
      {
        v65 = v98;
      }

      if (v65)
      {
        v84 = *(v110 + 56);
        v85 = *(v84 + 8 * v61);
        *(v84 + 8 * v61) = v106;
      }

      else
      {
        sub_1ABA7D110(v110 + 8 * (v61 >> 6));
        sub_1ABAA3B10();
        *(v86 + 8 * v61) = v106;
        v87 = *(v110 + 16);
        v88 = __OFADD__(v87, 1);
        v89 = v87 + 1;
        if (v88)
        {
          goto LABEL_76;
        }

        *(v110 + 16) = v89;
      }

      *(a1 + 32) = v110;
      swift_endAccess();

LABEL_62:

      v6 = v105;
    }
  }

  swift_endAccess();
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  swift_endAccess();
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABEBF1A0(uint64_t a1, uint64_t a2)
{
  if (qword_1ED86BE18 != -1)
  {
    sub_1ABA83D58();
  }

  v4 = *(a2 + 16);
  v3 = *(a2 + 24);

  sub_1ABB130E0();
  LOBYTE(v4) = v5;

  return v4 & 1;
}

void sub_1ABEBF224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v9 = 0xD00000000000001ALL;
  v10 = *(a6 + 16) == 0xD00000000000001ALL && 0x80000001ABF7EB30 == *(a6 + 24);
  if (!v10 && (sub_1ABF25054() & 1) == 0)
  {
    v85 = 0;
    v86 = 0xE000000000000000;
    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0xD00000000000004FLL, 0x80000001ABF95C70);
    v56 = *(v6 + 16);
    v55 = *(v6 + 24);

    v57 = sub_1ABA7D2D8();
    MEMORY[0x1AC5A9410](v57);

LABEL_57:
    sub_1ABEC2E2C();
    v61 = sub_1ABA7BD00();
    sub_1ABA7C930(v61, v62);
    return;
  }

  v80 = a2;
  sub_1ABA7EF0C();
  swift_beginAccess();
  if (!*(v6 + 32))
  {
LABEL_56:
    v85 = 0;
    v86 = 0xE000000000000000;
    sub_1ABF24AB4();

    v85 = v9 - 7;
    v86 = 0x80000001ABF95CC0;
    v59 = *(v6 + 16);
    v58 = *(v6 + 24);

    v60 = sub_1ABA7D2D8();
    MEMORY[0x1AC5A9410](v60);

    MEMORY[0x1AC5A9410](0x6E6F6E2074756220, 0xEF646E756F662065);
    goto LABEL_57;
  }

  v11 = *(v6 + 32);

  v12 = sub_1ABAE305C(0x657079746469, 0xE600000000000000);
  if (!v12)
  {
LABEL_55:

    goto LABEL_56;
  }

  v13 = v12;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v14 = *(v13 + 16);
  if (!v14[2])
  {

    goto LABEL_55;
  }

  v74 = a1;
  v15 = v14[4];
  v16 = v14[5];

  v17._countAndFlagsBits = v15;
  v17._object = v16;
  LiveGlobalKnowledge.ExternalIdentifierType.init(rawValue:)(v17);
  v18 = v85;
  v70 = sub_1ABAE305C(7562345, 0xE300000000000000);
  if (!v70)
  {
LABEL_52:

LABEL_53:

    goto LABEL_56;
  }

  v19 = sub_1ABAE305C(0x69747265706F7270, 0xEA00000000007365);

  if (!v19)
  {

    goto LABEL_53;
  }

  sub_1ABA7EF0C();
  swift_beginAccess();
  v20 = *(v70 + 16);
  v72 = *(v20 + 16);

  sub_1ABA7EF0C();
  swift_beginAccess();
  v21 = 0;
  v73 = v20;
  v71 = v20 + 32;
  v6 = 3481;
  v78 = MEMORY[0x1E69E7CC8];
  v9 = v19;
  v69 = v19;
LABEL_12:
  if (v21 == v72)
  {
    goto LABEL_61;
  }

  if (v21 < *(v73 + 16))
  {
    v22 = (v71 + 16 * v21);
    v75 = *v22;
    v76 = v22[1];
    v77 = v21 + 1;
    v23 = *(v9 + 16);
    v81 = v23 + 32;
    v82 = *(v23 + 16);
    swift_bridgeObjectRetain_n();
    v89 = v23;

    v9 = 0;
    v79 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v9 == v82)
      {

        sub_1ABE8ACC8(v79);
        swift_isUniquelyReferenced_nonNull_native();
        v85 = v78;
        sub_1ABAFADB8();
        swift_bridgeObjectRelease_n();
        v78 = v85;
        v9 = v69;
        v21 = v77;
        goto LABEL_12;
      }

      if (v9 >= *(v89 + 16))
      {
        __break(1u);
LABEL_63:
        v63 = sub_1ABF25054();

        if (v63)
        {
          v64 = 0;
        }

        else
        {
          v64 = 256;
        }

LABEL_66:

        v65 = v80 + *(type metadata accessor for QueryContext() + 44);
        v66 = *v65;
        v67 = *(v65 + 8);
        v68 = *(v65 + 16);
        *v74 = v78;
        *(v74 + 8) = v66;
        *(v74 + 16) = v67;
        *(v74 + 24) = v64 | v68;
        *(v74 + 88) = 0;
        *(v74 + 104) = 16;
        sub_1ABB3F4DC(v66, v67, v68);
        return;
      }

      v24 = (v81 + 16 * v9);
      v25 = v24[1];
      if ((v25 & 0x1000000000000000) == 0)
      {
        if ((v25 & 0x2000000000000000) != 0)
        {
          *__s2 = *v24;
          v84 = v25 & 0xFFFFFFFFFFFFFFLL;
          v33 = _Records_GDEntityPredicate_records;
          v34 = _Records_GDEntityPredicate_predicateIds;

          v35 = (v33 + 4);
          v36 = 280;
          while (--v36)
          {
            if (!v33)
            {
              goto LABEL_71;
            }

            v37 = *v35;
            if (*v35 >= 3481)
            {
              __break(1u);
LABEL_60:
              __break(1u);
LABEL_61:

              switch(v18)
              {
                case 0:
                case 1:
                case 2:
                case 4:
                  goto LABEL_63;
                case 3:

                  v64 = 0;
                  goto LABEL_66;
                default:
                  goto LABEL_52;
              }
            }

            if (!v34)
            {
              goto LABEL_73;
            }

            v35 += 3;
            if (!strcmp(&v34[v37], __s2))
            {
              v38 = *(v35 - 16);
              v39 = *(v35 - 2);
              goto LABEL_35;
            }
          }

          v38 = 0;
          v37 = 0;
          v39 = 0;
LABEL_35:
          v85 = v38;
          v86 = v37;
          v87 = v39;
          v88 = v36 == 0;
          goto LABEL_36;
        }

        if ((*v24 & 0x1000000000000000) != 0)
        {
          v26 = _Records_GDEntityPredicate_records;
          v27 = _Records_GDEntityPredicate_predicateIds;

          v28 = (v26 + 4);
          v29 = 280;
          while (--v29)
          {
            if (!v26)
            {
              goto LABEL_72;
            }

            v30 = *v28;
            if (*v28 >= 3481)
            {
              goto LABEL_60;
            }

            if (!v27)
            {
              goto LABEL_74;
            }

            v28 += 3;
            if (!strcmp(&v27[v30], ((v25 & 0xFFFFFFFFFFFFFFFLL) + 32)))
            {
              v31 = *(v28 - 16);
              v32 = *(v28 - 2);
              goto LABEL_38;
            }
          }

          v31 = 0;
          v30 = 0;
          v32 = 0;
LABEL_38:
          v85 = v31;
          v86 = v30;
          v87 = v32;
          v88 = v29 == 0;

          goto LABEL_39;
        }
      }

      v51 = v24[1];

      sub_1ABAD219C(&qword_1EB4D3BC0, &unk_1ABF77750);
      sub_1ABF24A74();
LABEL_36:

LABEL_39:
      ++v9;
      if (!v88)
      {
        if (v86 >= 3481)
        {
          goto LABEL_69;
        }

        if (v87 >= 4281)
        {
          goto LABEL_70;
        }

        if (!_Records_GDEntityPredicate_predicateIds)
        {
          goto LABEL_76;
        }

        v40 = v85;
        v41 = sub_1ABF23DD4();
        if (!_Records_GDEntityPredicate_labels)
        {
          goto LABEL_75;
        }

        v43 = v41;
        v44 = v42;
        v45 = sub_1ABF23DD4();
        v47 = v46;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = *(v79 + 16);
          sub_1ABA7BEF0();
          sub_1ABAD8B6C();
          v79 = v53;
        }

        v48 = *(v79 + 16);
        v49 = v48 + 1;
        if (v48 >= *(v79 + 24) >> 1)
        {
          sub_1ABAD8B6C();
          v49 = v48 + 1;
          v79 = v54;
        }

        *(v79 + 16) = v49;
        v50 = v79 + 40 * v48;
        *(v50 + 32) = v43;
        *(v50 + 40) = v44;
        *(v50 + 48) = v45;
        *(v50 + 56) = v47;
        *(v50 + 64) = v40;
      }
    }
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
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
}

void sub_1ABEBFBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v12 = v10;
  v108 = *v13;
  v109 = v13[1];
  v112 = v13[3];
  v107 = v13[4];
  v110 = v13[2];
  v111 = v13[5];
  sub_1ABA7EF0C();
  swift_beginAccess();
  v14 = v10[16];
  v16 = *(v14 + 64);
  v15 = v14 + 64;
  v17 = *(v10[16] + 32);
  sub_1ABA7D32C();
  v20 = v19 & v18;
  v22 = (v21 + 63) >> 6;
  v115 = v23;

  v24 = 0;
  v25 = MEMORY[0x1E69E7CC0];
  v120 = v10;
  v113 = v22;
  v114 = v15;
  if (!v20)
  {
    goto LABEL_2;
  }

  while (1)
  {
LABEL_6:
    v27 = __clz(__rbit64(v20)) | (v24 << 6);
    v28 = (*(v115 + 48) + 16 * v27);
    v29 = *v28;
    v30 = v28[1];
    memcpy(__dst, (*(v115 + 56) + 112 * v27), sizeof(__dst));
    v129 = v29;
    v130 = v30;
    memcpy(v131, __dst, sizeof(v131));
    sub_1ABA94DF8();
    swift_beginAccess();
    v31 = *(v12[16] + 16);
    v121 = v29;
    v123 = v30;
    v32 = sub_1ABAA4C30();
    if (!v34)
    {
      sub_1ABEC2E80(v32, v33);
LABEL_41:
      swift_endAccess();

      v126[0] = 0;
      v126[1] = 0xE000000000000000;
      sub_1ABF24AB4();

      sub_1ABA7E19C();
      v126[0] = v103;
      v126[1] = v102;
      MEMORY[0x1AC5A9410](v121, v123);
      sub_1ABEC2E2C();
      v104 = sub_1ABA7BD00();
      sub_1ABA90B04(v104, v105);

      sub_1ABEC2EF0(&v129);
      goto LABEL_44;
    }

    sub_1ABEC2E80(v32, v33);

    v35 = sub_1ABA94FC8(v29, v30);
    v37 = v36;

    if ((v37 & 1) == 0)
    {
      goto LABEL_41;
    }

    v118 = v25;
    v119 = v20;
    sub_1ABA81DB0();
    v40 = v38 + v35 * v39;
    memcpy(v125, v40, sizeof(v125));
    v25 = v125[4];
    v41 = v125[2];
    memcpy(__src, (v40 + 40), sizeof(__src));
    swift_endAccess();
    v42 = sub_1ABAA4C30();
    sub_1ABEC2E80(v42, v43);
    sub_1ABB51320(v125, v126);

    sub_1ABB5137C(__dst);

    v44 = *(v41 + 16);
    if (v44)
    {
      v116 = v25;
      v126[0] = MEMORY[0x1E69E7CC0];
      sub_1ABADDBD4();
      v45 = v126[0];
      v46 = (v41 + 40);
      do
      {
        v47 = *(v46 - 1);
        v48 = *v46;
        v49 = sub_1ABF23C84();
        v51 = v50;
        v126[0] = v45;
        v52 = v45[2];
        if (v52 >= v45[3] >> 1)
        {
          sub_1ABADDBD4();
          v45 = v126[0];
        }

        v45[2] = v52 + 1;
        v53 = &v45[2 * v52];
        v53[4] = v49;
        v53[5] = v51;
        v46 += 2;
        --v44;
      }

      while (v44);
      swift_bridgeObjectRelease_n();
      v12 = v120;
      v25 = v116;
    }

    else
    {
      swift_bridgeObjectRelease_n();
      v45 = MEMORY[0x1E69E7CC0];
    }

    v54 = sub_1ABF23C84();
    v56 = v55;
    swift_bridgeObjectRelease_n();
    v57 = sub_1ABAA4C30();
    sub_1ABEC2E80(v57, v58);
    sub_1ABB5137C(__dst);
    v124[0] = v121;
    v124[1] = v123;
    v124[2] = v45;
    v124[3] = v54;
    v117 = v56;
    v124[4] = v56;
    memcpy(&v124[5], __src, 0x48uLL);
    sub_1ABA7C32C();
    sub_1ABB51320(v124, v126);
    v59 = v12[16];
    swift_isUniquelyReferenced_nonNull_native();
    v60 = v12[16];
    sub_1ABAA2AEC();
    v12[16] = v61;
    sub_1ABA94FC8(v121, v123);
    v62 = *(v60 + 16);
    sub_1ABA7AD10();
    if (__OFADD__(v65, v66))
    {
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      sub_1ABD8EE6C(v25);
      v25 = v106;
LABEL_30:
      v91 = *(v25 + 16);
      v129 = v25 + 32;
      v130 = v91;
      sub_1ABAF1EB0(&v129);
      v92 = v12[20];
      v122 = v12[19];
      v93 = v12[21];
      v94 = v12[22];
      v95 = v120[23];
      v96 = v120[24];
      v120[19] = v108;
      v120[20] = v109;
      v120[21] = v110;
      v120[22] = v112;
      v120[23] = v107;
      v120[24] = v111;

      sub_1ABEC0FFC(v122);
      sub_1ABEC1068();
      if (v11)
      {

        v126[0] = v11;
        v97 = v11;
        sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
        sub_1ABAA4C30();
        if (swift_dynamicCast())
        {
          v99 = v129;
          v98 = v130;
          if (v131[0] != 1)
          {
            goto LABEL_42;
          }

          v100 = HIBYTE(v130) & 0xF;
          if ((v130 & 0x2000000000000000) == 0)
          {
            v100 = v129 & 0xFFFFFFFFFFFFLL;
          }

          if (v100)
          {

            sub_1ABEC2E2C();
            sub_1ABA7BD00();
            *v101 = v99;
            *(v101 + 8) = v98;
            *(v101 + 16) = 0;
            swift_willThrow();
          }

          else
          {
LABEL_42:
            sub_1ABB95F08();
          }
        }
      }

      else
      {

        sub_1ABEC178C();
      }

LABEL_44:
      sub_1ABA7BC90();
      return;
    }

    v67 = v63;
    v25 = v64;
    sub_1ABAD219C(&qword_1EB4D1FA8, &qword_1ABF35198);
    sub_1ABA844A4();
    if (sub_1ABF24C64())
    {
      break;
    }

    v71 = v119;
    v68 = v121;
    if ((v25 & 1) == 0)
    {
LABEL_19:
      v72 = a10;
      sub_1ABA7D110(a10 + 8 * (v67 >> 6));
      v73 = (*(a10 + 48) + 16 * v67);
      *v73 = v68;
      v73[1] = v123;
      sub_1ABA81DB0();
      memcpy((v74 + v67 * v75), v124, 0x70uLL);
      v76 = *(a10 + 16);
      v77 = __OFADD__(v76, 1);
      v78 = v76 + 1;
      if (v77)
      {
        goto LABEL_47;
      }

      *(a10 + 16) = v78;
      v79 = v123;
      goto LABEL_23;
    }

LABEL_22:
    v72 = a10;
    sub_1ABA81DB0();
    v82 = (v80 + v67 * v81);
    memcpy(v126, v82, 0x70uLL);
    memcpy(v82, v124, 0x70uLL);
    sub_1ABB5137C(v126);
    v79 = v123;

LABEL_23:
    v12[16] = v72;
    swift_endAccess();
    v83 = sub_1ABAA4C30();
    sub_1ABEC2E80(v83, v84);
    sub_1ABB5137C(__dst);
    v25 = v118;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v88 = *(v118 + 16);
      sub_1ABA7BEF0();
      sub_1ABAAA4F4();
      v25 = v89;
    }

    v86 = *(v25 + 16);
    v85 = *(v25 + 24);
    if (v86 >= v85 >> 1)
    {
      sub_1ABA819D0(v85);
      sub_1ABAAA4F4();
      v25 = v90;
    }

    v20 = (v71 - 1) & v71;
    sub_1ABEC2EF0(&v129);
    *(v25 + 16) = v86 + 1;
    v87 = v25 + 16 * v86;
    *(v87 + 32) = v121;
    *(v87 + 40) = v79;
    v126[0] = v121;
    v126[1] = v79;
    v126[2] = v45;
    v126[3] = v54;
    v126[4] = v117;
    memcpy(&v126[5], __src, 0x48uLL);
    sub_1ABB5137C(v126);
    v22 = v113;
    v15 = v114;
    if (!v20)
    {
      while (1)
      {
LABEL_2:
        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          __break(1u);
          goto LABEL_46;
        }

        if (v26 >= v22)
        {
          break;
        }

        v20 = *(v15 + 8 * v26);
        ++v24;
        if (v20)
        {
          v24 = v26;
          goto LABEL_6;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_30;
    }
  }

  v68 = v121;
  v69 = sub_1ABA94FC8(v121, v123);
  v71 = v119;
  if ((v25 & 1) == (v70 & 1))
  {
    v67 = v69;
    if ((v25 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  sub_1ABF25104();
  __break(1u);
}

uint64_t sub_1ABEC0334(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

LABEL_3:
  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_1ABF25054();
  }
}

uint64_t sub_1ABEC0388()
{
  result = sub_1ABE8AE5C(&unk_1F208EA18);
  qword_1ED87C3E8 = result;
  return result;
}

void sub_1ABEC03B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1ABA7BCA8();
  v12 = v11;
  *(v10 + 136) = v13;
  *(v10 + 144) = 25;
  *(v10 + 152) = 0u;
  *(v10 + 168) = 0u;
  *(v10 + 184) = 0u;
  sub_1ABA7EF0C();
  sub_1ABEC0FFC(v14);
  v15 = 0;
  v48 = v10;
  *(v10 + 128) = sub_1ABF239C4();
  v16 = (v10 + 128);
  v51 = (v10 + 128);
  v52 = v12;
  v18 = *(v12 + 64);
  v17 = v12 + 64;
  v19 = *(v17 - 32);
  sub_1ABA7D32C();
  v22 = v21 & v20;
  v24 = (v23 + 63) >> 6;
  v49 = v24;
  v50 = v17;
  if ((v21 & v20) != 0)
  {
LABEL_6:
    while (1)
    {
      v26 = __clz(__rbit64(v22)) | (v15 << 6);
      v27 = (*(v52 + 48) + 16 * v26);
      v28 = *v27;
      v29 = v27[1];
      memcpy(__dst, (*(v52 + 56) + 112 * v26), sizeof(__dst));
      v56[0] = v28;
      v56[1] = v29;
      memcpy(v57, __dst, sizeof(v57));
      memcpy(__src, &__dst[2], sizeof(__src));
      sub_1ABEC2E80(v56, v53);
      sub_1ABEC2E80(v56, v53);

      sub_1ABEC2E80(v56, v53);
      sub_1ABB5137C(__dst);
      v58[0] = v28;
      v58[1] = v29;
      memcpy(&v58[2], __src, 0x60uLL);
      sub_1ABA7C32C();
      sub_1ABB51320(v58, v53);
      v30 = *v16;
      swift_isUniquelyReferenced_nonNull_native();
      v31 = *v16;
      sub_1ABAA2AEC();
      *v16 = v32;
      sub_1ABA94FC8(v28, v29);
      v33 = *(v31 + 16);
      sub_1ABA7AD10();
      if (__OFADD__(v36, v37))
      {
        break;
      }

      v38 = v34;
      v39 = v35;
      sub_1ABAD219C(&qword_1EB4D1FA8, &qword_1ABF35198);
      sub_1ABA844A4();
      if (sub_1ABF24C64())
      {
        v40 = sub_1ABA94FC8(v28, v29);
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_20;
        }

        v38 = v40;
      }

      if (v39)
      {

        v42 = a10;
        v43 = (a10[7] + 112 * v38);
        memcpy(v53, v43, 0x70uLL);
        memcpy(v43, v58, 0x70uLL);
        sub_1ABB5137C(v53);
      }

      else
      {
        v42 = a10;
        sub_1ABA7D110(&a10[v38 >> 6]);
        v44 = (a10[6] + 16 * v38);
        *v44 = v28;
        v44[1] = v29;
        memcpy((a10[7] + 112 * v38), v58, 0x70uLL);
        v45 = a10[2];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_19;
        }

        a10[2] = v47;
      }

      v22 &= v22 - 1;
      v16 = v51;
      *v51 = v42;
      swift_endAccess();
      sub_1ABEC2EF0(v56);
      v53[0] = v28;
      v53[1] = v29;
      memcpy(&v53[2], __src, 0x60uLL);
      sub_1ABB5137C(v53);
      v24 = v49;
      v17 = v50;
      if (!v22)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    while (1)
    {
      v25 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v25 >= v24)
      {

        v48[6] = 0u;
        v48[7] = 0u;
        v48[4] = 0u;
        v48[5] = 0u;
        v48[2] = 0u;
        v48[3] = 0u;
        v48[1] = 0u;
        sub_1ABA7BC90();
        return;
      }

      v22 = *(v17 + 8 * v25);
      ++v15;
      if (v22)
      {
        v15 = v25;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  sub_1ABF25104();
  __break(1u);
}

void *sub_1ABEC06FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1ABA94DF8();
  swift_beginAccess();
  if (*(*(v3 + 128) + 16) && (sub_1ABA94FC8(a1, a2), (v7 & 1) != 0))
  {
    sub_1ABA81DB0();
    memcpy(__dst, (v9 + v8 * v10), sizeof(__dst));
    swift_endAccess();
    sub_1ABB51320(__dst, &v13);
    return memcpy(a3, __dst, 0x70uLL);
  }

  else
  {
    swift_endAccess();
    sub_1ABF24AB4();

    MEMORY[0x1AC5A9410](a1, a2);
    MEMORY[0x1AC5A9410](0xD00000000000001ELL, 0x80000001ABF95DC0);
    sub_1ABEC2E2C();
    sub_1ABA7BD00();
    *v12 = 0x726F74617265706FLL;
    *(v12 + 8) = 0xE900000000000020;
    *(v12 + 16) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1ABEC084C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (qword_1ED86BE18 != -1)
  {
    sub_1ABA83D58();
  }

  v7 = *a5;
  v8 = *(*a5 + 16);
  v9 = *(*a5 + 24);

  sub_1ABB130E0();
  LOBYTE(v8) = v10;

  if (v8)
  {
    v11 = *(v7 + 16) == 0xD00000000000001ALL && 0x80000001ABF7EB30 == *(v7 + 24);
    if (v11 || (sub_1ABF25054() & 1) != 0)
    {
      v12 = 0;
      *(v7 + 64) = 8;
      *(v7 + 48) = 500;
    }

    else
    {
      v12 = 0;
      *(v7 + 64) = 6;
    }

    return v12 & 1;
  }

  result = sub_1ABEC09C0(v7, 25);
  if (v5)
  {
    return v12 & 1;
  }

  v14 = result;
  if (result)
  {

    for (i = v14; ; i = v16)
    {
      v16 = *(i + 40);
      if (!v16)
      {
        break;
      }

      v17 = *(i + 40);
    }

    *(i + 40) = *(v7 + 40);

    *(v14 + 48) = *(v7 + 48);

    *a5 = v14;
    v12 = 1;
    return v12 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABEC09C0(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (a2 > 0)
  {
    sub_1ABA7EF0C();
    swift_beginAccess();
    v54 = v2;
    if (*(v3 + 32))
    {
      v5 = *(v3 + 32);
    }

    else
    {
      type metadata accessor for KnosisQueryParam();
      v5 = sub_1ABF239C4();
    }

    v10 = *(v5 + 64);
    v11 = *(v5 + 32);
    sub_1ABA7D32C();
    v14 = v13 & v12;
    v16 = (v15 + 63) >> 6;
    v53 = a2 - 1;

    v17 = 0;
    v18 = v5;
    while (1)
    {
      while (1)
      {
        if (!v14)
        {
          while (1)
          {
            v19 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              __break(1u);
              goto LABEL_55;
            }

            if (v19 >= v16)
            {
              break;
            }

            v14 = *(v5 + 64 + 8 * v19);
            ++v17;
            if (v14)
            {
              v17 = v19;
              goto LABEL_13;
            }
          }

          result = sub_1ABEC267C(v3);
          if (!v54 && !result)
          {
          }

          return result;
        }

LABEL_13:
        v20 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v21 = v20 | (v17 << 6);
        v22 = (*(v18 + 48) + 16 * v21);
        v23 = *v22;
        v24 = v22[1];
        v56 = *(*(v18 + 56) + 8 * v21);
        sub_1ABA94DF8();
        swift_beginAccess();
        v25 = *(v3 + 32);
        if (v25)
        {
          if (*(v25 + 16))
          {
            break;
          }
        }

        swift_endAccess();
      }

      swift_bridgeObjectRetain_n();
      swift_retain_n();
      v26 = sub_1ABA94FC8(v23, v24);
      v28 = v27;

      if ((v28 & 1) == 0)
      {
        break;
      }

      v29 = *(*(v25 + 56) + 8 * v26);
      swift_endAccess();

      swift_beginAccess();
      if (!*(v29 + 24))
      {

        goto LABEL_31;
      }

      v30 = *(a1 + 16) == 0x68636165726F66 && *(a1 + 24) == 0xE700000000000000;
      if (v30 || (sub_1ABF25054()) && (v23 == 0x726F74617265706FLL ? (v31 = v24 == 0xE800000000000000) : (v31 = 0), v31 || (sub_1ABF25054()))
      {
      }

      else
      {

        v33 = sub_1ABEC09C0(v32, v53);
        if (v54)
        {
          goto LABEL_56;
        }

        v34 = v33;

        v35 = *(v29 + 24);
        *(v29 + 24) = v34;
      }

LABEL_35:
      v18 = v5;
      v3 = a1;
    }

    swift_endAccess();

LABEL_31:

    goto LABEL_35;
  }

  v6 = *(a1 + 16);
  v7 = *(a1 + 24);

  v8 = sub_1ABEC25D4();

  sub_1ABA7EF0C();
  swift_beginAccess();
  if (*(v3 + 32))
  {
    v9 = *(v3 + 32);
  }

  else
  {
    type metadata accessor for KnosisQueryParam();
    v9 = sub_1ABF239C4();
  }

  v37 = 0;
  v38 = *(v9 + 64);
  v39 = *(v9 + 32);
  sub_1ABA7D32C();
  v42 = v41 & v40;
  v44 = (v43 + 63) >> 6;
LABEL_41:
  if (v42)
  {
    v45 = v37;
    goto LABEL_47;
  }

  while (1)
  {
    v45 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v45 >= v44)
    {

      if (v8 != 1)
      {
      }

LABEL_50:
      sub_1ABF24AB4();
      MEMORY[0x1AC5A9410](0x726F74617265706FLL, 0xE900000000000020);
      v49 = *(a1 + 16);
      v48 = *(a1 + 24);

      v50 = sub_1ABA7D2D8();
      MEMORY[0x1AC5A9410](v50);

      MEMORY[0x1AC5A9410](0xD00000000000003ELL, 0x80000001ABF95CE0);
      sub_1ABEC2E2C();
      v51 = sub_1ABA7BD00();
      return sub_1ABA7C930(v51, v52);
    }

    v42 = *(v9 + 64 + 8 * v45);
    ++v37;
    if (v42)
    {
      v37 = v45;
LABEL_47:
      v46 = __clz(__rbit64(v42));
      v42 &= v42 - 1;
      v47 = *(*(v9 + 56) + ((v45 << 9) | (8 * v46)));
      sub_1ABA7EF0C();
      swift_beginAccess();
      if (*(v47 + 24))
      {

        goto LABEL_50;
      }

      goto LABEL_41;
    }
  }

LABEL_55:
  __break(1u);
LABEL_56:
}

uint64_t sub_1ABEC0F00()
{
  v1 = v0[16];

  v2 = v0[17];

  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[21];
  v6 = v0[22];
  v7 = v0[23];
  v8 = v0[24];

  return sub_1ABEC0FFC(v3);
}

uint64_t sub_1ABEC0F40()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v17 = *(v0 + 112);
  v18 = *(v0 + 120);
  v15 = *(v0 + 80);
  v16 = *(v0 + 96);
  sub_1ABAD4FFC(*(v0 + 16), *(v0 + 24));
  v7 = *(v0 + 128);

  v8 = *(v0 + 136);

  v9 = *(v0 + 160);
  v10 = *(v0 + 168);
  v11 = *(v0 + 176);
  v12 = *(v0 + 184);
  v13 = *(v0 + 192);
  sub_1ABEC0FFC(*(v0 + 152));
  return v0;
}

uint64_t sub_1ABEC0FA4()
{
  sub_1ABEC0F40();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABEC0FFC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1ABEC1068()
{
  sub_1ABA7BCA8();
  v110 = v1;
  v119 = v0;
  v3 = v2;
  v118 = sub_1ABF25324();
  v4 = *(v118 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v117 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E7CC0];
  v8 = sub_1ABF239C4();
  v9 = *(v3 + 16);
  if (!v9)
  {
    v120 = v7;
LABEL_54:
    v104 = v120;
    if (*(v120 + 16))
    {
      v123 = 0;
      v124 = 0xE000000000000000;
      sub_1ABF24AB4();

      v123 = 0xD000000000000026;
      v124 = 0x80000001ABF95E90;
      v105 = MEMORY[0x1AC5A9750](v104, MEMORY[0x1E69E6158]);
      v107 = v106;

      MEMORY[0x1AC5A9410](v105, v107);

      sub_1ABEC2E2C();
      v108 = sub_1ABA7BD00();
      sub_1ABA90B04(v108, v109);
    }

    else
    {
    }

    sub_1ABA7BC90();
    return;
  }

  v116 = v4 + 8;
  v111 = 0x80000001ABF95E70;
  v112 = 0x80000001ABF95EC0;
  v10 = (v3 + 40);
  v120 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v12 = *(v10 - 1);
    v11 = *v10;
    v13 = HIBYTE(*v10) & 0xFLL;
    if ((*v10 & 0x2000000000000000) == 0)
    {
      v13 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13)
    {
      break;
    }

    v14 = *v10;

    v15 = sub_1ABF23E94();
    if ((v16 & 0x2000000000000000) != 0)
    {
      v17 = HIBYTE(v16) & 0xF;
    }

    else
    {
      v17 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (!v17)
    {
      goto LABEL_59;
    }

    if ((v16 & 0x1000000000000000) != 0)
    {
      v18 = sub_1ABF23CE4();
    }

    else
    {
      v18 = sub_1ABF24A94() << 16;
    }

    v121 = v10;
    v122 = v9;
    if (v18 >> 14 == 4 * v17)
    {
      v19 = sub_1ABA95870();
      if ((sub_1ABDEFBB8(v19, v20) & 0x100000000) != 0)
      {
        goto LABEL_62;
      }

      v21 = v117;
      sub_1ABF25334();
      sub_1ABF252F4();
      v22 = sub_1ABAA55F4();
      v23(v22);
      if (v21)
      {
        goto LABEL_26;
      }
    }

    sub_1ABA95870();
    if ((sub_1ABF23AC4() & 1) == 0)
    {
      goto LABEL_21;
    }

    sub_1ABA95870();
    if (sub_1ABF23AF4())
    {
      v24 = sub_1ABA95870();
      if ((sub_1ABDEFBB8(v24, v25) & 0x100000000) != 0)
      {
        goto LABEL_63;
      }

      v26 = v117;
      sub_1ABF25334();
      sub_1ABF25314();
      v27 = sub_1ABAA55F4();
      v28(v27);
      if (v26)
      {
        goto LABEL_26;
      }
    }

    sub_1ABA95870();
    if ((sub_1ABF23AD4() & 1) == 0 || (sub_1ABA95870(), (sub_1ABF23AC4() & 1) == 0))
    {
LABEL_26:
      v36 = 1;
    }

    else
    {
LABEL_21:
      v29 = v8;
      v123 = 0;
      v124 = 0xE000000000000000;
      sub_1ABF24AB4();

      v123 = 0xD00000000000001DLL;
      v124 = v111;
      v30 = sub_1ABA9EE9C();
      MEMORY[0x1AC5A9410](v30);
      v31 = v123;
      v32 = v124;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v33 = v120;
      }

      else
      {
        v101 = *(v120 + 16);
        sub_1ABA7BEF0();
        sub_1ABAAA4F4();
        v33 = v102;
      }

      v35 = *(v33 + 16);
      v34 = *(v33 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1ABA819D0(v34);
        sub_1ABAAA4F4();
        v33 = v103;
      }

      v36 = 0;
      *(v33 + 16) = v35 + 1;
      v120 = v33;
      v37 = v33 + 16 * v35;
      *(v37 + 32) = v31;
      *(v37 + 40) = v32;
      v8 = v29;
    }

    sub_1ABA9EE9C();
    v38 = sub_1ABF23C84();
    v40 = v39;
    if (v8[2])
    {
      v41 = sub_1ABA8EF78();
      v43 = sub_1ABA94FC8(v41, v42);
      if (v44)
      {
        v45 = v8;
        v46 = (v8[7] + 16 * v43);
        v47 = *v46;
        v48 = v46[1];
        v123 = 0;
        v124 = 0xE000000000000000;

        sub_1ABF24AB4();

        v123 = 0xD000000000000015;
        v124 = v112;
        MEMORY[0x1AC5A9410](v47, v48);

        MEMORY[0x1AC5A9410](2108704, 0xE300000000000000);
        v49 = sub_1ABA9EE9C();
        MEMORY[0x1AC5A9410](v49);
        v50 = v123;
        v51 = v124;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v52 = v120;
        }

        else
        {
          v98 = *(v120 + 16);
          sub_1ABA7BEF0();
          sub_1ABAAA4F4();
          v52 = v99;
        }

        v54 = *(v52 + 16);
        v53 = *(v52 + 24);
        if (v54 >= v53 >> 1)
        {
          sub_1ABA819D0(v53);
          sub_1ABAAA4F4();
          v52 = v100;
        }

        *(v52 + 16) = v54 + 1;
        v120 = v52;
        v55 = v52 + 16 * v54;
        *(v55 + 32) = v50;
        *(v55 + 40) = v51;
        v8 = v45;
LABEL_42:
        v71 = v119;
        sub_1ABA7C32C();
        v72 = *(v71 + 128);
        v73 = sub_1ABA9EE9C();
        v75 = sub_1ABA94FC8(v73, v74);
        if (v76)
        {
          v77 = v75;
          v115 = v8;
          v78 = v119;
          v79 = *(v119 + 128);
          swift_isUniquelyReferenced_nonNull_native();
          v125 = *(v78 + 128);
          *(v78 + 128) = 0x8000000000000000;
          v80 = *(v125 + 24);
          sub_1ABAD219C(&qword_1EB4D1FA8, &qword_1ABF35198);
          sub_1ABA844A4();
          sub_1ABF24C64();
          v81 = *(*(v125 + 48) + 16 * v77 + 8);

          sub_1ABA81DB0();
          v84 = (v82 + v77 * v83);
          v85 = v84[1];
          v86 = v84[2];
          v87 = v84[4];
          v88 = v84[7];
          v89 = v84[9];
          v90 = v84[10];
          v91 = v84[11];
          v92 = v84[13];
          v113 = v91;
          v114 = v92;

          sub_1ABF24C84();
          *(v78 + 128) = v125;
          v8 = v115;
        }

        swift_endAccess();
LABEL_45:

        goto LABEL_46;
      }
    }

    if ((v36 & 1) == 0)
    {

      goto LABEL_42;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v123 = v8;
    v56 = sub_1ABA8EF78();
    sub_1ABA94FC8(v56, v57);
    v58 = v8[2];
    sub_1ABA7AD10();
    if (__OFADD__(v61, v62))
    {
      goto LABEL_60;
    }

    v63 = v59;
    v64 = v60;
    sub_1ABAD219C(&unk_1EB4D33F0, &qword_1ABF35190);
    if (sub_1ABF24C64())
    {
      v65 = sub_1ABA8EF78();
      v67 = sub_1ABA94FC8(v65, v66);
      if ((v64 & 1) != (v68 & 1))
      {
        goto LABEL_64;
      }

      v63 = v67;
    }

    v8 = v123;
    if (v64)
    {
      v69 = (*(v123 + 56) + 16 * v63);
      v70 = v69[1];
      *v69 = v12;
      v69[1] = v11;

      goto LABEL_45;
    }

    sub_1ABA7D110(v123 + 8 * (v63 >> 6));
    v93 = (v8[6] + 16 * v63);
    *v93 = v38;
    v93[1] = v40;
    v94 = (v8[7] + 16 * v63);
    *v94 = v12;
    v94[1] = v11;
    v95 = v8[2];
    v96 = __OFADD__(v95, 1);
    v97 = v95 + 1;
    if (v96)
    {
      goto LABEL_61;
    }

    v8[2] = v97;
LABEL_46:
    v10 = v121 + 2;
    v9 = v122 - 1;
    if (v122 == 1)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  sub_1ABF25104();
  __break(1u);
}

void sub_1ABEC178C()
{
  v2 = v1;
  v3 = v0;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v4 = *(v0 + 128);
  v6 = *(v4 + 64);
  v5 = v4 + 64;
  v7 = *(*(v0 + 128) + 32);
  sub_1ABA7D32C();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  v39 = v13;

  v14 = 0;
  v40 = v0;
  while (v10)
  {
    v15 = v14;
LABEL_7:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v17 = (*(v39 + 48) + ((v15 << 10) | (16 * v16)));
    v19 = *v17;
    v18 = v17[1];

    sub_1ABEC1B74();
    if (v2)
    {
      sub_1ABA7C32C();
      v20 = *(v3 + 128);
      v21 = sub_1ABA94FC8(v19, v18);
      if (v22)
      {
        v38 = v21;
        v23 = *(v3 + 128);
        swift_isUniquelyReferenced_nonNull_native();
        v41 = *(v40 + 128);
        *(v40 + 128) = 0x8000000000000000;
        v37 = v2;
        v24 = *(v41 + 24);
        sub_1ABAD219C(&qword_1EB4D1FA8, &qword_1ABF35198);
        sub_1ABA844A4();
        sub_1ABF24C64();
        v25 = *(*(v41 + 48) + 16 * v38 + 8);

        sub_1ABA81DB0();
        v28 = (v26 + v38 * v27);
        v32 = v28[2];
        v29 = v28[4];
        v30 = v28[7];
        v31 = v28[9];
        v33 = v28[10];
        v34 = v28[1];
        v35 = v28[11];
        v36 = v28[13];

        v3 = v40;

        v2 = v37;

        sub_1ABF24C84();
        *(v40 + 128) = v41;
      }

      swift_endAccess();

      MEMORY[0x1AC5A9410](v19, v18);

      MEMORY[0x1AC5A9410](32, 0xE100000000000000);
      sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
      sub_1ABF24C54();

      v2 = 0;
      v14 = v15;
    }

    else
    {

      v14 = v15;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      return;
    }

    v10 = *(v5 + 8 * v15);
    ++v14;
    if (v10)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_1ABEC1B74()
{
  sub_1ABA7BCA8();
  v5 = v0;
  v7 = v6;
  v8 = v4;
  v9 = v3;
  v10 = v2;
  v11 = v2[2];
  if (v11)
  {
    v12 = v2[4] == v3 && v2[5] == v4;
    if (v12 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABF24AB4();

      sub_1ABA7E19C();
      __dst[0] = v14 + 7;
      __dst[1] = v13;
      v15 = MEMORY[0x1AC5A9750](v10, MEMORY[0x1E69E6158]);
      MEMORY[0x1AC5A9410](v15);

      MEMORY[0x1AC5A9410](544497952, 0xE400000000000000);
LABEL_27:
      MEMORY[0x1AC5A9410](v9, v8);
      sub_1ABEC2E2C();
      v52 = sub_1ABA7BD00();
      sub_1ABA81094(v52, v53);
LABEL_28:
      sub_1ABA7BC90();
      return;
    }
  }

  sub_1ABA94DF8();
  swift_beginAccess();
  if (!*(v0[16] + 16) || (sub_1ABA94FC8(v9, v8), (v16 & 1) == 0))
  {
    swift_endAccess();
    sub_1ABF24AB4();

    sub_1ABA7E19C();
    __dst[0] = v51;
    __dst[1] = v50;
    goto LABEL_27;
  }

  sub_1ABA81DB0();
  v20 = (v18 + v17 * v19);
  memcpy(__dst, v20, sizeof(__dst));
  memcpy(__src, v20, sizeof(__src));
  v21 = __dst[10];
  v112 = __dst[11];
  *v132 = v20[6];
  swift_endAccess();
  if (v7 <= 0)
  {
    sub_1ABB51320(__dst, v120);
    sub_1ABF24AB4();

    sub_1ABA7E19C();
    *v120 = v55 + 29;
    *&v120[8] = v54;
    MEMORY[0x1AC5A9410](v9, v8);
    sub_1ABEC2E2C();
    v56 = sub_1ABA7BD00();
    v58 = sub_1ABA81094(v56, v57);
    sub_1ABA97E7C(v58, v59, v60, v61, v62, v63, v64, v65, v95, v96, v97, v98, v99[0], v99[1], v100, v101, v102, v103, v104, v105, v106, v107, v110[0], v110[1], v111, v112, 0, 0xE000000000000000, v115[0], v115[1], v116, v117, v118, v119, *v120, *&v120[8], v121, *(&v121 + 1), v122, v123, v124, v125, v126, v127, v128, v129, v130, *(&v130 + 1), __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], v132[0]);
    v128 = v21;
LABEL_36:
    v129 = v113;
LABEL_37:
    v130 = *v132;
    sub_1ABB5137C(v120);
    goto LABEL_28;
  }

  v22 = __dst[10];
  v108 = v21;
  if (__dst[10])
  {
    sub_1ABB51320(__dst, v120);
    goto LABEL_13;
  }

  v102 = v7;
  v103 = v11;
  v66 = v5[19];
  if (v66)
  {
    v104 = v5;
    v105 = v5[22];
    v110[0] = __dst[8];
    v106 = __dst[9];
    *v114 = *(v5 + 19);
    v115[0] = v5[21];
    v115[1] = v105;
    v116 = v5[23];
    v117 = v5[24];
    sub_1ABB51320(__dst, v120);
    sub_1ABEC2F58(v66);
    v67 = sub_1ABE1CB7C(v110[0], v106);
    if (v1)
    {

      v68 = v1;
      sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
      if (swift_dynamicCast())
      {

        *v110 = *v115;
        *v120 = *v114;
        v121 = *v115;
        v122 = v116;
        v123 = v117;
        LOBYTE(v124) = v118;
        ParserError.description.getter();

        sub_1ABEC2E2C();
        v69 = sub_1ABA7BD00();
        sub_1ABA81094(v69, v70);
      }

LABEL_35:
      sub_1ABA97E7C(v25, v26, v27, v28, v29, v30, v31, v32, v95, v96, v97, v98, v99[0], v99[1], v100, v101, v102, v103, v104, v105, v106, v108, v110[0], v110[1], v111, v112, v114[0], v114[1], v115[0], v115[1], v116, v117, v118, v119, *v120, *&v120[8], v121, *(&v121 + 1), v122, v123, v124, v125, v126, v127, v128, v129, v130, *(&v130 + 1), __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], v132[0]);
      v128 = v109;
      goto LABEL_36;
    }

    v83 = v67;

    v22 = v83;

    v108 = v83;
    v11 = v103;
LABEL_13:
    v23 = v22;
    sub_1ABA900B8();
    sub_1ABEC2284(v24);
    if (!v1)
    {
      v33 = v25;
      v95 = v23;
      v103 = v11;
      v35 = v25 + 56;
      v34 = *(v25 + 56);
      v36 = *(v25 + 32);
      sub_1ABA7D32C();
      v39 = v38 & v37;
      v101 = (v40 + 63) >> 6;
      v97 = v7 - 1;

      v42 = 0;
      *v99 = xmmword_1ABF34740;
      v104 = v5;
      v96 = v35;
      v110[0] = v9;
      v102 = v7;
      v98 = v41;
      while (v39)
      {
        v43 = v42;
LABEL_20:
        v44 = (*(v33 + 48) + ((v43 << 10) | (16 * __clz(__rbit64(v39)))));
        v45 = v44[1];
        v105 = *v44;
        sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_1ABF34740;
        *(v46 + 32) = v110[0];
        *(v46 + 40) = v8;
        v106 = v45;

        if (!swift_isUniquelyReferenced_nonNull_native() || (v47 = v10[3] >> 1, v48 = v10, v47 <= v103))
        {
          sub_1ABAAA4F4();
          v48 = v49;
          v47 = v49[3] >> 1;
        }

        if (v47 <= v48[2])
        {
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        swift_arrayInitWithCopy();

        ++v48[2];
        sub_1ABA900B8();
        sub_1ABEC1B74();
        if (v35)
        {

          goto LABEL_35;
        }

        v39 &= v39 - 1;

        v42 = v43;
        v33 = v98;
        v35 = v96;
      }

      while (1)
      {
        v43 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          __break(1u);
          goto LABEL_47;
        }

        if (v43 >= v101)
        {
          break;
        }

        v39 = *(v35 + 8 * v43);
        ++v42;
        if (v39)
        {
          goto LABEL_20;
        }
      }

      v71 = __dst[11];

      if (v71)
      {
        v72 = v112;
        v73 = v108;
LABEL_40:
        memcpy(v134, __src, sizeof(v134));
        v135 = v73;
        v136 = v72;
        v137 = *v132;
        sub_1ABA7C32C();

        sub_1ABB51320(v134, v120);
        v74 = *(v104 + 128);
        swift_isUniquelyReferenced_nonNull_native();
        *v120 = *(v104 + 128);
        sub_1ABAFB9F0();
        *(v104 + 128) = *v120;

        v75 = swift_endAccess();
        sub_1ABA97E7C(v75, v76, v77, v78, v79, v80, v81, v82, v95, v96, v97, v98, 1, 2, v100, v101, v102, v103, v104, v105, v106, v108, v110[0], v110[1], v111, v112, v114[0], v114[1], v115[0], v115[1], v116, v117, v118, v119, *v120, *&v120[8], v121, *(&v121 + 1), v122, v123, v124, v125, v126, v127, v128, v129, v130, *(&v130 + 1), __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], v132[0]);
        v128 = v73;
        v129 = v72;
        goto LABEL_37;
      }

      sub_1ABA900B8();
      v86 = sub_1ABEC09C0(v84, v85);
      v73 = v108;
      if (!v35)
      {
        v72 = v86;
        goto LABEL_40;
      }

      v87 = swift_willThrow();
      sub_1ABA97E7C(v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, 1, 2, v100, v101, v102, v103, v104, v105, v106, v108, v110[0], v110[1], v111, v112, v114[0], v114[1], v115[0], v115[1], v116, v117, v118, v119, *v120, *&v120[8], v121, *(&v121 + 1), v122, v123, v124, v125, v126, v127, v128, v129, v130, *(&v130 + 1), __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], v132[0]);
      v128 = v73;
      v129 = 0;
      goto LABEL_37;
    }

    goto LABEL_35;
  }

LABEL_48:
  __break(1u);
}

void sub_1ABEC2284(void *a1)
{
  v2 = v1;
  v50[4] = MEMORY[0x1E69E7CD0];
  v4 = a1[2];
  v5 = a1[3];

  v6 = sub_1ABEC25D4();

  if (v6)
  {
    if (v6 == 1)
    {
      v7 = a1[2];
      v8 = a1[3];

      sub_1ABB1840C(v50, v7, v8);
    }

    sub_1ABA7EF0C();
    swift_beginAccess();
    if (a1[4])
    {
      v9 = a1[4];
    }

    else
    {
      type metadata accessor for KnosisQueryParam();
      v9 = sub_1ABF239C4();
    }

    v17 = *(v9 + 64);
    v47 = v9 + 64;
    v18 = *(v9 + 32);
    sub_1ABA7F040();
    v21 = v20 & v19;
    v46 = (v22 + 63) >> 6;

    v23 = 0;
    v48 = v9;
    do
    {
LABEL_9:
      if (!v21)
      {
        while (1)
        {
          v24 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_28;
          }

          if (v24 >= v46)
          {

            return;
          }

          v21 = *(v47 + 8 * v24);
          ++v23;
          if (v21)
          {
            v23 = v24;
            break;
          }
        }
      }

      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v26 = v25 | (v23 << 6);
      v27 = *(*(v9 + 48) + 16 * v26 + 8);
      v28 = *(*(v9 + 56) + 8 * v26);
      sub_1ABA7EF0C();
      swift_beginAccess();
    }

    while (!*(v28 + 24));

    v30 = sub_1ABEC2284(v29);
    if (v2)
    {

      return;
    }

    v31 = v30;
    v32 = 0;
    v34 = v30 + 56;
    v33 = *(v30 + 56);
    v35 = *(v30 + 32);
    sub_1ABA7F040();
    v38 = v37 & v36;
    v40 = (v39 + 63) >> 6;
    if ((v37 & v36) == 0)
    {
      goto LABEL_18;
    }

    do
    {
      v41 = v32;
LABEL_22:
      v42 = __clz(__rbit64(v38));
      v38 &= v38 - 1;
      v43 = (*(v31 + 48) + ((v41 << 10) | (16 * v42)));
      v44 = *v43;
      v45 = v43[1];

      sub_1ABB1840C(v49, v44, v45);
    }

    while (v38);
LABEL_18:
    while (1)
    {
      v41 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v41 >= v40)
      {

        v2 = 0;
        v9 = v48;
        goto LABEL_9;
      }

      v38 = *(v34 + 8 * v41);
      ++v32;
      if (v38)
      {
        v32 = v41;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    sub_1ABF24AB4();

    sub_1ABA7E19C();
    v50[0] = v11;
    v50[1] = v10;
    v13 = a1[2];
    v12 = a1[3];

    v14 = sub_1ABA7D2D8();
    MEMORY[0x1AC5A9410](v14);

    sub_1ABEC2E2C();
    v15 = sub_1ABA7BD00();
    sub_1ABA90B04(v15, v16);
  }
}

uint64_t sub_1ABEC25D4()
{
  sub_1ABA94DF8();
  swift_beginAccess();
  if (*(*(v0 + 128) + 16) && (v1 = sub_1ABA7D2D8(), sub_1ABA94FC8(v1, v2), (v3 & 1) != 0))
  {
    swift_endAccess();
    return 1;
  }

  else
  {
    swift_endAccess();
    v5 = *(v0 + 136);

    sub_1ABA7D2D8();
    sub_1ABB130E0();
    v7 = v6;

    if (v7)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1ABEC267C(uint64_t a1)
{
  v3 = a1;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *v1;
  sub_1ABA94DF8();
  swift_beginAccess();
  if (!*(v1[16] + 16) || (, v7 = sub_1ABA94FC8(v5, v4), v9 = v8, , (v9 & 1) == 0))
  {
    swift_endAccess();

    return v3;
  }

  v72 = v2;
  sub_1ABA81DB0();
  v12 = (v10 + v7 * v11);
  v13 = v12[1];
  v76 = *v12;
  v14 = v12[2];
  v78 = v12[3];
  v15 = v12[4];
  v16 = v12[7];
  v17 = v12[9];
  v18 = v12[10];
  v19 = v12[11];
  v20 = v12[13];
  swift_endAccess();
  type metadata accessor for KnosisQueryParam();
  v79 = v13;

  v77 = v19;

  v21 = sub_1ABF239C4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v22 = *(v3 + 32);
  if (!v22)
  {
    v27 = v13;
LABEL_32:
    if (v77)
    {

      v3 = sub_1ABE71D94();

      v68 = *(v3 + 104);
      *(v3 + 96) = v76;
      *(v3 + 104) = v27;

      sub_1ABEBEA58(v3, v21, 25);
      if (!v72)
      {

        return v3;
      }

      goto LABEL_37;
    }

    sub_1ABF24AB4();

    MEMORY[0x1AC5A9410](v76, v27);

    MEMORY[0x1AC5A9410](0x61766E6920736920, 0xEB0000000064696CLL);
    sub_1ABEC2E2C();
    v69 = sub_1ABA7BD00();
    sub_1ABA7C930(v69, v70);

LABEL_36:

LABEL_37:

    return v3;
  }

  v23 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v23 = v78 & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    v24 = *(v14 + 16);
    v25 = *(v22 + 16);
    v26 = v25 == v24 - 1;
  }

  else
  {
    v26 = 0;
    v25 = *(v22 + 16);
    v24 = *(v14 + 16);
  }

  v27 = v13;
  if (v25 != v24 && !v26)
  {
    v61 = *(v3 + 32);

    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](544239478, 0xE400000000000000);

    MEMORY[0x1AC5A9410](v76, v13);

    MEMORY[0x1AC5A9410](0xD000000000000012, 0x80000001ABF95D40);
    v3 = v14;
    v62 = MEMORY[0x1AC5A9750](v14, MEMORY[0x1E69E6158]);
    MEMORY[0x1AC5A9410](v62);

    MEMORY[0x1AC5A9410](0xD000000000000023, 0x80000001ABF95D60);
    v63 = sub_1ABF23984();
    v65 = v64;

    MEMORY[0x1AC5A9410](v63, v65);

    sub_1ABEC2E2C();
    v66 = sub_1ABA7BD00();
    sub_1ABA7C930(v66, v67);

    goto LABEL_36;
  }

  v30 = v22 + 64;
  v29 = *(v22 + 64);
  v31 = *(v22 + 32);
  sub_1ABA7D32C();
  v34 = v33 & v32;
  v36 = (v35 + 63) >> 6;

  v3 = 0;
  v73 = v36;
  v74 = v22 + 64;
  v75 = v22;
  if (v34)
  {
    goto LABEL_20;
  }

LABEL_16:
  while (1)
  {
    v37 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v37 >= v36)
    {

      goto LABEL_32;
    }

    v34 = *(v30 + 8 * v37);
    ++v3;
    if (v34)
    {
      v3 = v37;
      while (1)
      {
LABEL_20:
        v38 = __clz(__rbit64(v34)) | (v3 << 6);
        v39 = (*(v22 + 48) + 16 * v38);
        v40 = *v39;
        v41 = v39[1];
        v42 = *(*(v22 + 56) + 8 * v38);
        v43 = sub_1ABF23C84();
        v45 = v44;
        swift_retain_n();
        swift_isUniquelyReferenced_nonNull_native();
        sub_1ABA94FC8(v43, v45);
        v46 = v21[2];
        sub_1ABA7AD10();
        if (__OFADD__(v49, v50))
        {
          goto LABEL_41;
        }

        v51 = v47;
        v52 = v48;
        sub_1ABAD219C(&qword_1EB4D1E20, &unk_1ABF34900);
        if (sub_1ABF24C64())
        {
          v53 = sub_1ABA94FC8(v43, v45);
          v22 = v75;
          if ((v52 & 1) != (v54 & 1))
          {
            goto LABEL_43;
          }

          v51 = v53;
          if ((v52 & 1) == 0)
          {
LABEL_24:
            sub_1ABA7D110(&v21[v51 >> 6]);
            v55 = (v21[6] + 16 * v51);
            *v55 = v43;
            v55[1] = v45;
            *(v21[7] + 8 * v51) = v42;

            v56 = v21[2];
            v57 = __OFADD__(v56, 1);
            v58 = v56 + 1;
            if (v57)
            {
              goto LABEL_42;
            }

            v21[2] = v58;
            goto LABEL_28;
          }
        }

        else
        {
          v22 = v75;
          if ((v52 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        v59 = v21[7];
        v60 = *(v59 + 8 * v51);
        *(v59 + 8 * v51) = v42;

LABEL_28:
        v27 = v79;
        v30 = v74;
        v36 = v73;
        v34 &= v34 - 1;
        if (!v34)
        {
          goto LABEL_16;
        }
      }
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABEC2DAC(uint64_t a1, unint64_t a2)
{
  sub_1ABAA276C();
  v4 = sub_1ABF23E64();

  if (v4)
  {
    sub_1ABAA276C();
    v5 = sub_1ABF23D44();
    v6 = sub_1ABAA958C(v5, a1, a2);
    a1 = MEMORY[0x1AC5A9330](v6);
  }

  return a1;
}

unint64_t sub_1ABEC2E2C()
{
  result = qword_1EB4DC688;
  if (!qword_1EB4DC688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC688);
  }

  return result;
}

uint64_t sub_1ABEC2E80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4DC690, qword_1ABF77760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABEC2EF0(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4DC690, qword_1ABF77760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABEC2F58(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1ABEC2FC4()
{
  result = qword_1ED86D6D8;
  if (!qword_1ED86D6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86D6D8);
  }

  return result;
}

uint64_t sub_1ABEC3034()
{
  sub_1ABE7A61C();
  v1 = v0;
  sub_1ABEC5A64();
  return v1;
}

uint64_t sub_1ABEC307C()
{
  sub_1ABE7AB84(v0);
  v2 = v1;

  return v2;
}

uint64_t sub_1ABEC30B0()
{
  sub_1ABE7AD14();
  v1 = v0;

  return v1;
}

uint64_t sub_1ABEC30E4()
{
  sub_1ABE7AE44();
  v1 = v0;

  return v1;
}

uint64_t sub_1ABEC3118()
{
  sub_1ABE7B094();
  v1 = v0;

  return v1;
}

uint64_t sub_1ABEC314C()
{
  sub_1ABE7B2E0();
  v1 = v0;
  sub_1ABEC5A64();
  return v1;
}

uint64_t sub_1ABEC31B4()
{
  v0 = sub_1ABA81DBC();
  v2 = *(*sub_1ABA93E20(v0, v1) + 16);
}

IntelligencePlatform::VisualUnderstandingService::Error_optional __swiftcall VisualUnderstandingService.Error.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t VisualUnderstandingService.Error.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1ABEC3238@<X0>(uint64_t *a1@<X8>)
{
  result = VisualUnderstandingService.Error.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1ABEC3260(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABEC6F50();
  v5 = sub_1ABC70940();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

uint64_t VisualUnderstandingService.__allocating_init(client:version:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_1ABA7D0F8();
  VisualUnderstandingService.init(client:version:)();
  return v3;
}

void VisualUnderstandingService.init(client:version:)()
{
  sub_1ABA7BCA8();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for EntityRecognitionClient(0);
  v8 = sub_1ABA7AB80(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7BC58();
  v13 = v12 - v11;
  v14 = sub_1ABAD219C(&qword_1EB4D1E40, &qword_1ABF349F0);
  v15 = sub_1ABA7AB80(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7AC18();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v41 - v22;
  v24 = type metadata accessor for VisualUnderstandingService.Version(0);
  v25 = sub_1ABA7AB80(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA7BC58();
  v30 = v29 - v28;
  v31 = OBJC_IVAR____TtC20IntelligencePlatform26VisualUnderstandingService_client;
  sub_1ABA7E1B0();
  sub_1ABEC366C(v6, v2 + v31, v32);
  sub_1ABEC366C(v4, v30, type metadata accessor for VisualUnderstandingService.Version);
  v33 = sub_1ABAD219C(&qword_1EB4DC6C8, &qword_1ABF77858);
  if (sub_1ABA7E1E0(v30, 1, v33) == 1)
  {
    sub_1ABF24CD4();
    __break(1u);
  }

  else
  {
    sub_1ABE10E7C(v30, v23);
    sub_1ABA7E1B0();
    sub_1ABEC366C(v6, v13, v34);
    sub_1ABB3E5B4(v23, v20, &qword_1EB4D1E40, &qword_1ABF349F0);
    v35 = type metadata accessor for VisualUnderstandingServiceBackendV1(0);
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    v38 = sub_1ABEC71D0(v13, v20);
    if (v1)
    {
      sub_1ABA94E04();
      sub_1ABEC5A64();
      sub_1ABAB480C(v23, &qword_1EB4D1E40, &qword_1ABF349F0);
      sub_1ABEC5A64();
      type metadata accessor for VisualUnderstandingService(0);
      v39 = *(*v2 + 48);
      v40 = *(*v2 + 52);
      swift_deallocPartialClassInstance();
    }

    else
    {
      v43 = v35;
      v44 = &off_1F2079A28;
      *&v42 = v38;
      sub_1ABA94E04();
      sub_1ABA8FDA0();
      sub_1ABEC5A64();
      sub_1ABAB480C(v23, &qword_1EB4D1E40, &qword_1ABF349F0);
      sub_1ABA946C0(&v42, v2 + 16);
    }

    sub_1ABA7BC90();
  }
}

uint64_t sub_1ABEC366C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1ABA7BBB0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

void sub_1ABEC36CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABA81DBC();
  v8 = *sub_1ABA93E20(v6, v7);
  sub_1ABEC73FC(a1, a2, a3);
}

uint64_t sub_1ABEC3728(uint64_t a1)
{
  v2 = sub_1ABA81DBC();
  v4 = *sub_1ABA93E20(v2, v3);
  return sub_1ABEC7F1C(a1);
}

uint64_t sub_1ABEC376C(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_1ABA81DBC();
  v4 = *(*sub_1ABA93E20(v2, v3) + 16);
  return sub_1ABF23424();
}

uint64_t sub_1ABEC37B8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1ABA81DBC();
  v10 = v4;
  v11 = v3;
  v7 = *sub_1ABA93E20(v5, v6);
  result = sub_1ABEC80E8(&v11, &v10);
  if (v2)
  {
    return v9 & 1;
  }

  return result;
}

void sub_1ABEC3820(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_1ABA81DBC();
  v5 = v1;
  v4 = *sub_1ABA93E20(v2, v3);
  sub_1ABEC820C(&v5);
}

void sub_1ABEC3868(uint64_t *a1@<X8>)
{
  v2 = sub_1ABA81DBC();
  v4 = *sub_1ABA93E20(v2, v3);
  sub_1ABEC7D10(a1);
}

void sub_1ABEC38A0(uint64_t *a1@<X8>)
{
  v2 = sub_1ABA81DBC();
  v4 = *sub_1ABA93E20(v2, v3);
  sub_1ABEC7D10(a1);
}

void sub_1ABEC38E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = sub_1ABA81DBC();
  v6[0] = v1;
  v6[1] = v2;
  v5 = *sub_1ABA93E20(v3, v4);
  sub_1ABEC7880(v6);
}

uint64_t VisualUnderstandingService.deinit()
{
  sub_1ABA84B54((v0 + 16));
  sub_1ABA8FDA0();
  sub_1ABEC5A64();
  return v0;
}

uint64_t VisualUnderstandingService.__deallocating_deinit()
{
  sub_1ABA84B54(v0 + 2);
  sub_1ABA8FDA0();
  sub_1ABEC5A64();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1ABEC3A50(uint64_t a1, uint64_t *a2, unsigned int *a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for EntityRecognitionClient(0);
  sub_1ABB9009C(v9, a2);
  v10 = sub_1ABA7D0F8();
  v12 = sub_1ABA7AA24(v10, v11);
  v13 = *(v9 + 20);
  v14 = *a3;
  v15 = sub_1ABF235E4();
  sub_1ABA7BBB0(v15);
  (*(v16 + 104))(&v12[v13], v14);
  v17 = *(v9 + 24);
  v18 = *MEMORY[0x1E69E05E8];
  v19 = sub_1ABF23484();
  sub_1ABA7BBB0(v19);
  result = (*(v20 + 104))(&v12[v17], v18);
  *v12 = a4;
  *(v12 + 1) = a5;
  return result;
}

uint64_t sub_1ABEC3C78@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for EntityRecognitionClient(0);
  sub_1ABA7AA24(v5, a2);
  sub_1ABA7E1B0();
  return sub_1ABEC366C(v6, a3, v7);
}

uint64_t static EntityRecognitionClient.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (sub_1ABF25054()) && (v3 = type metadata accessor for EntityRecognitionClient(0), v4 = *(v3 + 20), sub_1ABF235E4(), sub_1ABA7FBB4(), sub_1ABEC5AD8(v5, 255, v6), sub_1ABF24014(), sub_1ABF24014(), v11 == v10))
  {
    v7 = *(v3 + 24);
    v8 = sub_1ABF23474();
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t EntityRecognitionClient.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1ABF23D34();
  v3 = type metadata accessor for EntityRecognitionClient(0);
  v4 = *(v3 + 20);
  sub_1ABF235E4();
  sub_1ABA7FBB4();
  sub_1ABEC5AD8(v5, 255, v6);
  sub_1ABF23A94();
  v7 = *(v3 + 24);
  sub_1ABF23484();
  sub_1ABA83D78();
  sub_1ABEC5AD8(v8, 255, v9);
  return sub_1ABF23A94();
}

uint64_t EntityRecognitionClient.hashValue.getter()
{
  sub_1ABA7AB5C();
  v1 = *v0;
  v2 = v0[1];
  sub_1ABF23D34();
  v3 = type metadata accessor for EntityRecognitionClient(0);
  v4 = *(v3 + 20);
  sub_1ABF235E4();
  sub_1ABA7FBB4();
  sub_1ABEC5AD8(v5, 255, v6);
  sub_1ABF23A94();
  v7 = *(v3 + 24);
  sub_1ABF23484();
  sub_1ABA83D78();
  sub_1ABEC5AD8(v8, 255, v9);
  sub_1ABF23A94();
  return sub_1ABF25294();
}

uint64_t sub_1ABEC3FA8(uint64_t a1, uint64_t a2)
{
  sub_1ABF25234();
  v4 = *v2;
  v5 = v2[1];
  sub_1ABF23D34();
  v6 = *(a2 + 20);
  sub_1ABF235E4();
  sub_1ABEC5AD8(&qword_1EB4DC6D8, 255, MEMORY[0x1E69E0630]);
  sub_1ABF23A94();
  v7 = *(a2 + 24);
  sub_1ABF23484();
  sub_1ABEC5AD8(&qword_1EB4DC6E0, 255, MEMORY[0x1E69E05F0]);
  sub_1ABF23A94();
  return sub_1ABF25294();
}

uint64_t VisualUnderstandingStreamingGallery.__allocating_init()()
{
  v0 = swift_allocObject();
  VisualUnderstandingStreamingGallery.init()();
  return v0;
}

uint64_t VisualUnderstandingStreamingGallery.init()()
{
  v2 = sub_1ABF231F4();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_1ABF231E4();
  if (v1)
  {
    type metadata accessor for VisualUnderstandingStreamingGallery();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v0 + 16) = v5;
  }

  return v0;
}

uint64_t VisualUnderstandingStreamingGallery.__allocating_init(for:)()
{
  type metadata accessor for VisualUnderstandingStreamingGallery();
  v0 = swift_allocObject();
  VisualUnderstandingStreamingGallery.init()();
  sub_1ABA8FDA0();
  sub_1ABEC5A64();
  return v0;
}

void sub_1ABEC41D0()
{
  sub_1ABA7BCA8();
  v71 = v0;
  v72 = v1;
  v75 = v2;
  v76 = v3;
  v74 = v4;
  v70 = sub_1ABF235F4();
  v5 = sub_1ABA7BB64(v70);
  v66 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7BC58();
  v65 = v10 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4DC6E8, &unk_1ABF77860);
  sub_1ABA7AB80(v11);
  v13 = *(v12 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v65 - v15;
  v16 = sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);
  v17 = sub_1ABA7AB80(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7AC18();
  v73 = v20 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v65 - v23;
  v25 = sub_1ABF23654();
  v26 = sub_1ABA7BB64(v25);
  v68 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA7BC58();
  v67 = v31 - v30;
  v32 = type metadata accessor for VisualUnderstandingService.Context(0);
  v33 = sub_1ABA7BBB0(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1ABA7AC18();
  v38 = v36 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v65 - v40;
  v42 = sub_1ABAD219C(&qword_1EB4DC6F8, &unk_1ABF77870);
  sub_1ABA7AB80(v42);
  v44 = *(v43 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v65 - v46;
  v48 = sub_1ABAD219C(&qword_1EB4DC700, &unk_1ABF785B0);
  sub_1ABA7AB80(v48);
  v50 = *(v49 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v65 - v52;
  v71 = *(v71 + 16);
  sub_1ABB3E5B4(v72, v47, &qword_1EB4DC6F8, &unk_1ABF77870);
  v54 = 1;
  if (sub_1ABA7E1E0(v47, 1, v32) != 1)
  {
    sub_1ABEC5B64(v47, v41);
    v55 = sub_1ABA7D0F8();
    sub_1ABEC366C(v55, v56, v57);
    v72 = v24;
    sub_1ABB3E5B4(v38, v24, &qword_1EB4DC6F0, qword_1ABF78360);
    sub_1ABB3E5B4(v38 + *(v32 + 20), v73, &qword_1EB4DC6F0, qword_1ABF78360);
    v58 = MEMORY[0x1E69E0650];
    v59 = 1;
    v61 = v69;
    v60 = v70;
    switch(*(v38 + *(v32 + 24)))
    {
      case 1:
        v58 = MEMORY[0x1E69E0648];
        goto LABEL_5;
      case 2:
        v58 = MEMORY[0x1E69E0658];
        goto LABEL_5;
      case 3:
        goto LABEL_6;
      default:
LABEL_5:
        v63 = v65;
        v62 = v66;
        (*(v66 + 104))(v65, *v58, v70);
        (*(v62 + 32))(v61, v63, v60);
        v59 = 0;
LABEL_6:
        sub_1ABA7B9B4(v61, v59, 1, v60);
        v64 = v67;
        sub_1ABF23634();
        sub_1ABEC5A64();
        sub_1ABEC5A64();
        (*(v68 + 32))(v53, v64, v25);
        v54 = 0;
        break;
    }
  }

  sub_1ABA7B9B4(v53, v54, 1, v25);
  sub_1ABF231B4();
  sub_1ABAB480C(v53, &qword_1EB4DC700, &unk_1ABF785B0);
  sub_1ABA7BC90();
}

uint64_t VUGallery.Context.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34[1] = a2;
  v3 = sub_1ABF235F4();
  v4 = sub_1ABA7BB64(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  v11 = v10 - v9;
  v12 = sub_1ABAD219C(&qword_1EB4DC6E8, &unk_1ABF77860);
  sub_1ABA7AB80(v12);
  v14 = *(v13 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v34 - v16;
  v18 = sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);
  v19 = sub_1ABA7AB80(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7AC18();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABB3E5B4(a1, v34 - v26, &qword_1EB4DC6F0, qword_1ABF78360);
  v27 = type metadata accessor for VisualUnderstandingService.Context(0);
  sub_1ABB3E5B4(a1 + *(v27 + 20), v24, &qword_1EB4DC6F0, qword_1ABF78360);
  v28 = MEMORY[0x1E69E0650];
  v29 = 1;
  switch(*(a1 + *(v27 + 24)))
  {
    case 1:
      v28 = MEMORY[0x1E69E0648];
      goto LABEL_4;
    case 2:
      v28 = MEMORY[0x1E69E0658];
      goto LABEL_4;
    case 3:
      goto LABEL_5;
    default:
LABEL_4:
      (*(v6 + 104))(v11, *v28, v3);
      v30 = *(v6 + 32);
      v31 = sub_1ABA7D0F8();
      v32(v31);
      v29 = 0;
LABEL_5:
      sub_1ABA7B9B4(v17, v29, 1, v3);
      sub_1ABF23634();
      return sub_1ABEC5A64();
  }
}

void sub_1ABEC48D4()
{
  sub_1ABA7BCA8();
  v2 = sub_1ABF231A4();
  v3 = sub_1ABA7BB64(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7AC18();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v32 - v12;
  v14 = *(v0 + 16);
  v15 = sub_1ABF231D4();
  if (!v1)
  {
    v16 = v15;
    if (v15)
    {
      v17 = *(v15 + 16);
      if (v17)
      {
        v37 = v13;
        v32[1] = 0;
        v41 = MEMORY[0x1E69E7CC0];
        sub_1ABADEEC4(0, v17, 0);
        v19 = *(v5 + 16);
        v18 = v5 + 16;
        v20 = (*(v18 + 64) + 32) & ~*(v18 + 64);
        v21 = v18;
        v32[0] = v16;
        v22 = v16 + v20;
        v35 = *(v21 + 56);
        v36 = v19;
        v38 = v21;
        v33 = v2;
        v34 = (v21 - 8);
        do
        {
          v23 = v37;
          v24 = v36;
          (v36)(v37, v22, v2);
          v25 = sub_1ABA7D0F8();
          v24(v25);
          v40 = sub_1ABF23184();
          v39 = sub_1ABF23174();
          v26 = sub_1ABF23194();
          v27 = *v34;
          (*v34)(v10, v2);
          v27(v23, v2);
          v29 = *(v41 + 16);
          v28 = *(v41 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_1ABADEEC4((v28 > 1), v29 + 1, 1);
          }

          *(v41 + 16) = v29 + 1;
          v30 = v41 + 24 * v29;
          v31 = v39;
          *(v30 + 32) = v40;
          *(v30 + 40) = v31;
          *(v30 + 48) = v26 & 1;
          v22 += v35;
          --v17;
          v2 = v33;
        }

        while (v17);
      }
    }
  }

  sub_1ABA7BC90();
}

uint64_t VisualUnderstandingStreamingGallery.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t VisualUnderstandingStreamingGallery.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1ABEC4BB8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = _s20IntelligencePlatform37EntityResolutionRankingDirectFeedbackCfd_0();
  *a1 = result;
  return result;
}

uint64_t sub_1ABEC4C94()
{
  sub_1ABA844B0();
  v1 = *(v0 + 48);
  sub_1ABA94E50(v0 + 16, *(v0 + 40));
  sub_1ABF24864();
  swift_endAccess();
  return v3;
}

uint64_t VisualUnderstandingService.ObservationSequence.__deallocating_deinit()
{
  sub_1ABA84B54((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1ABEC4E04@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = sub_1ABEC4C94();
  *a1 = result;
  *(a1 + 8) = v5 & 1;
  return result;
}

uint64_t sub_1ABEC4E38()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1ABEC4E64()
{
  sub_1ABA844B0();
  v1 = *(v0 + 64);
  sub_1ABA94E50(v0 + 32, *(v0 + 56));
  sub_1ABAA4354();
  return swift_endAccess();
}

uint64_t VisualUnderstandingService.ChangeSequence.deinit()
{
  v1 = *(v0 + 24);

  sub_1ABA84B54((v0 + 32));
  return v0;
}

uint64_t sub_1ABEC4EE4()
{
  v1 = *(v0 + 24);

  sub_1ABA84B54((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1ABEC4FD4()
{
  sub_1ABA844B0();
  v1 = *(v0 + 48);
  sub_1ABA94E50(v0 + 16, *(v0 + 40));
  sub_1ABAA4354();
  return swift_endAccess();
}

uint64_t VisualUnderstandingService.EntityUpdate.tag.getter()
{
  v2 = sub_1ABAA0880();
  v3 = type metadata accessor for VisualUnderstandingService.EntityUpdate(v2);
  return sub_1ABB3E5B4(v1 + *(v3 + 24), v0, &qword_1EB4DC6F0, qword_1ABF78360);
}

uint64_t VisualUnderstandingService.UpdateType.hashValue.getter(unsigned __int8 a1)
{
  sub_1ABA7AB5C();
  MEMORY[0x1AC5AA8A0](a1);
  return sub_1ABF25294();
}

uint64_t sub_1ABEC51FC()
{
  v1 = *v0;
  sub_1ABF25234();
  VisualUnderstandingService.UpdateType.hash(into:)(v3, v1);
  return sub_1ABF25294();
}

void static VisualUnderstandingService.ChangeBookmark.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  JUMPOUT(0x1AC5A7420);
}

uint64_t sub_1ABEC5254(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x72656E6E69 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABEC52E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABEC5254(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABEC530C(uint64_t a1)
{
  v2 = sub_1ABEC5BE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEC5348(uint64_t a1)
{
  v2 = sub_1ABEC5BE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void VisualUnderstandingService.ChangeBookmark.encode(to:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v3 = sub_1ABAD219C(&qword_1EB4DC708, &qword_1ABF77880);
  sub_1ABA7BB64(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  v11 = *v0;
  v12 = v0[1];
  v13 = v2[4];
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABB0DBF0(v11, v12);
  sub_1ABEC5BE8();
  sub_1ABF252E4();
  v14 = v11;
  v15 = v12;
  sub_1ABC38D74();
  sub_1ABF24F84();
  sub_1ABA96210(v14, v15);
  (*(v5 + 8))(v10, v3);
  sub_1ABA7BC90();
}

uint64_t VisualUnderstandingService.ChangeBookmark.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1ABF21DE4();
}

uint64_t VisualUnderstandingService.ChangeBookmark.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1ABA7AB5C();
  sub_1ABF21DE4();
  return sub_1ABF25294();
}

void VisualUnderstandingService.ChangeBookmark.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4DC710, &qword_1ABF77888);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v14 - v11;
  v13 = v2[4];
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABEC5BE8();
  sub_1ABF252C4();
  if (!v0)
  {
    sub_1ABC38DC8();
    sub_1ABF24E64();
    (*(v7 + 8))(v12, v5);
    *v4 = v14;
  }

  sub_1ABA84B54(v2);
  sub_1ABA7BC90();
}

uint64_t sub_1ABEC569C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1ABF25234();
  sub_1ABF21DE4();
  return sub_1ABF25294();
}

uint64_t VisualUnderstandingService.Source.hashValue.getter()
{
  v1 = *v0;
  sub_1ABA7AB5C();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

uint64_t VisualUnderstandingService.Context.init()()
{
  sub_1ABAA0880();
  sub_1ABF21F04();
  sub_1ABA9980C(v0);
  v1 = type metadata accessor for VisualUnderstandingService.Context(0);
  v2 = *(v1 + 20);
  sub_1ABA9980C(v0 + v2);
  v3 = *(v1 + 24);
  *(v0 + v3) = 3;
  sub_1ABAB480C(v0, &qword_1EB4DC6F0, qword_1ABF78360);
  sub_1ABA9980C(v0);
  sub_1ABAB480C(v0 + v2, &qword_1EB4DC6F0, qword_1ABF78360);
  result = sub_1ABA9980C(v0 + v2);
  *(v0 + v3) = 3;
  return result;
}

uint64_t sub_1ABEC58D8()
{
  v2 = sub_1ABAA0880();
  v4 = v3(v2);
  return sub_1ABB3E5B4(v1 + *(v4 + 20), v0, &qword_1EB4DC6F0, qword_1ABF78360);
}

uint64_t VisualUnderstandingService.Context.asset.setter()
{
  v2 = sub_1ABAA4348();
  v3 = v1 + *(type metadata accessor for VisualUnderstandingService.Context(v2) + 20);

  return sub_1ABEC5C5C(v0, v3);
}

uint64_t (*VisualUnderstandingService.Context.asset.modify())(void)
{
  v0 = sub_1ABAA4348();
  v1 = *(type metadata accessor for VisualUnderstandingService.Context(v0) + 20);
  return nullsub_1;
}

uint64_t VisualUnderstandingService.Context.source.getter()
{
  v2 = sub_1ABAA0880();
  result = type metadata accessor for VisualUnderstandingService.Context(v2);
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t VisualUnderstandingService.Context.source.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for VisualUnderstandingService.Context(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t (*VisualUnderstandingService.Context.source.modify())(void)
{
  v0 = sub_1ABAA4348();
  v1 = *(type metadata accessor for VisualUnderstandingService.Context(v0) + 24);
  return nullsub_1;
}

uint64_t sub_1ABEC5A64()
{
  v1 = sub_1ABAA4348();
  v3 = v2(v1);
  sub_1ABA7BBB0(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1ABEC5AD8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1ABEC5B64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualUnderstandingService.Context(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ABEC5BE8()
{
  result = qword_1EB4CFA70;
  if (!qword_1EB4CFA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFA70);
  }

  return result;
}

uint64_t sub_1ABEC5C5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ABEC5CD0()
{
  result = qword_1EB4DC718;
  if (!qword_1EB4DC718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC718);
  }

  return result;
}

unint64_t sub_1ABEC5F24()
{
  result = qword_1EB4DC748;
  if (!qword_1EB4DC748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC748);
  }

  return result;
}

unint64_t sub_1ABEC5F7C()
{
  result = qword_1EB4DC750;
  if (!qword_1EB4DC750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC750);
  }

  return result;
}

unint64_t sub_1ABEC5FD4()
{
  result = qword_1EB4DC758;
  if (!qword_1EB4DC758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC758);
  }

  return result;
}

uint64_t sub_1ABEC6030()
{
  result = type metadata accessor for EntityRecognitionClient(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of VisualUnderstandingService.entities(for:)()
{
  sub_1ABA7D5F0();
  return (*(v0 + 120))();
}

{
  sub_1ABA7D5F0();
  return (*(v0 + 128))();
}

uint64_t sub_1ABEC6324()
{
  sub_1ABEC637C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1ABEC637C()
{
  if (!qword_1ED86E290)
  {
    sub_1ABEC68A0(0, &unk_1ED8705A8, MEMORY[0x1E6968FB0]);
    if (!v1)
    {
      atomic_store(v0, &qword_1ED86E290);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for VisualUnderstandingService.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1ABEC64E4()
{
  result = sub_1ABF235E4();
  if (v1 <= 0x3F)
  {
    result = sub_1ABF23484();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1ABEC6800()
{
  sub_1ABEC68A0(319, &qword_1ED8705A0, MEMORY[0x1E69695A8]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1ABEC68A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1ABF247E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1ABEC692C()
{
  result = type metadata accessor for VisualUnderstandingService.EntityUpdate(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ABEC6998(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 16))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
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

uint64_t sub_1ABEC69E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void sub_1ABEC6A68()
{
  sub_1ABEC68A0(319, &qword_1ED8705A0, MEMORY[0x1E69695A8]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

_BYTE *sub_1ABEC6B08(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1ABEC6C0C()
{
  sub_1ABEC68A0(319, &qword_1ED8705A0, MEMORY[0x1E69695A8]);
  if (v0 <= 0x3F)
  {
    sub_1ABEC6CAC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1ABEC6CAC()
{
  if (!qword_1EB4CFA38)
  {
    v0 = sub_1ABF247E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4CFA38);
    }
  }
}

uint64_t getEnumTagSinglePayload for VisualUnderstandingStreamingGallery.ClusterResult(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for VisualUnderstandingStreamingGallery.ClusterResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VisualUnderstandingService.ChangeBookmark.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1ABEC6E4C()
{
  result = qword_1EB4DC760;
  if (!qword_1EB4DC760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC760);
  }

  return result;
}

unint64_t sub_1ABEC6EA4()
{
  result = qword_1EB4CFA60;
  if (!qword_1EB4CFA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFA60);
  }

  return result;
}

unint64_t sub_1ABEC6EFC()
{
  result = qword_1EB4CFA68;
  if (!qword_1EB4CFA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFA68);
  }

  return result;
}

unint64_t sub_1ABEC6F50()
{
  result = qword_1EB4DC768;
  if (!qword_1EB4DC768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC768);
  }

  return result;
}

uint64_t sub_1ABEC6FDC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for VisualUnderstandingServiceBackendV1.EntitySequenceV1(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABEC967C(a1, v7);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1ABEC97FC(v7, v9 + v8);
  *(v2 + 16) = sub_1ABEC96E0;
  *(v2 + 24) = v9;
  sub_1ABEC967C(a1, v7);
  v16 = &type metadata for VisualUnderstandingServiceBackendV1.EntitySequenceV1.Iterator;
  v17 = sub_1ABEC9750();
  v10 = sub_1ABF233D4();
  v12 = v11;
  sub_1ABEC97A4(v7, type metadata accessor for VisualUnderstandingServiceBackendV1.EntitySequenceV1);
  *&v15 = v10;
  *(&v15 + 1) = v12;
  sub_1ABEC97A4(a1, type metadata accessor for VisualUnderstandingServiceBackendV1.EntitySequenceV1);
  sub_1ABA946C0(&v15, v2 + 32);
  return v2;
}

uint64_t sub_1ABEC715C(uint64_t a1)
{
  *(v1 + 16) = sub_1ABEC9598;
  *(v1 + 24) = a1;
  *(v1 + 56) = &type metadata for VisualUnderstandingServiceBackendV1.ChangeSequenceV1.Iterator;
  *(v1 + 64) = sub_1ABEC95B4();
  *(v1 + 32) = a1;
  *(v1 + 40) = 0;

  return v1;
}

void *sub_1ABEC71D0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_1ABAD219C(&qword_1EB4D1E40, &qword_1ABF349F0);
  v8 = sub_1ABA7AB80(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v13 = sub_1ABF235E4();
  v14 = sub_1ABA7BB64(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7BC58();
  v21 = v20 - v19;
  v22 = type metadata accessor for EntityRecognitionClient(0);
  (*(v16 + 16))(v21, a1 + *(v22 + 20), v13);
  sub_1ABB3E5B4(a2, v12, &qword_1EB4D1E40, &qword_1ABF349F0);
  v23 = sub_1ABF236E4();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = sub_1ABF235A4();
  if (v3)
  {
    sub_1ABAB480C(a2, &qword_1EB4D1E40, &qword_1ABF349F0);
    sub_1ABA7C950();
    sub_1ABEC97A4(a1, v27);
    type metadata accessor for VisualUnderstandingServiceBackendV1(0);
    v28 = *(*v4 + 48);
    v29 = *(*v4 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v30 = v26;
    sub_1ABAB480C(a2, &qword_1EB4D1E40, &qword_1ABF349F0);
    v4[2] = v30;
    sub_1ABEC97FC(a1, v4 + OBJC_IVAR____TtC20IntelligencePlatform35VisualUnderstandingServiceBackendV1_client);
  }

  return v4;
}

void sub_1ABEC73FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = sub_1ABF234C4();
  v6 = sub_1ABA7BB64(v65);
  v67 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7BC58();
  v62 = v11 - v10;
  v12 = sub_1ABA8409C();
  v13 = type metadata accessor for VisualUnderstandingService.RecognitionResult(v12);
  v14 = sub_1ABA7BB64(v13);
  v63 = v15;
  v64 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7BC58();
  v66 = (v19 - v18);
  v20 = sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);
  v21 = sub_1ABA7AB80(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7AC18();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v56 - v28;
  v30 = sub_1ABAD219C(&qword_1EB4DC700, &unk_1ABF785B0);
  v31 = sub_1ABA7AB80(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v57 = &v56 - v34;
  sub_1ABA8409C();
  v35 = sub_1ABF21F04();
  if (sub_1ABA7E1E0(a2, 1, v35) == 1 && sub_1ABA7E1E0(a3, 1, v35) == 1)
  {
    v36 = sub_1ABF23654();
    v37 = 1;
    v38 = v57;
  }

  else
  {
    sub_1ABB3E5B4(a2, v29, &qword_1EB4DC6F0, qword_1ABF78360);
    sub_1ABB3E5B4(a3, v26, &qword_1EB4DC6F0, qword_1ABF78360);
    v38 = v57;
    MEMORY[0x1AC5A8CA0](v29, v26);
    v36 = sub_1ABF23654();
    v37 = 0;
  }

  sub_1ABA7B9B4(v38, v37, 1, v36);
  v39 = *(v3 + 16);
  v40 = *(type metadata accessor for EntityRecognitionClient(0) + 24);
  v41 = sub_1ABF236C4();
  if (v41)
  {
    v42 = v41;
    v43 = *(v41 + 16);
    if (v43)
    {
      v68 = MEMORY[0x1E69E7CC0];
      sub_1ABADEE3C();
      v44 = 0;
      v45 = v68;
      v60 = v42 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
      v61 = v42;
      v58 = v67 + 8;
      v59 = v67 + 16;
      v46 = v64;
      while (v44 < *(v42 + 16))
      {
        v47 = v67;
        v48 = v62;
        v49 = v65;
        (*(v67 + 16))(v62, v60 + *(v67 + 72) * v44, v65);
        v50 = sub_1ABF232F4();
        v51 = v66;
        v52 = v66 + *(v46 + 20);
        sub_1ABF234B4();
        sub_1ABF23494();
        *v51 = v50;
        *(v51 + *(v46 + 24)) = v53;
        (*(v47 + 8))(v48, v49);
        v68 = v45;
        v55 = *(v45 + 16);
        v54 = *(v45 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_1ABA81DC8(v54);
          sub_1ABADEE3C();
          v51 = v66;
          v45 = v68;
        }

        ++v44;
        *(v45 + 16) = v55 + 1;
        sub_1ABEC97FC(v51, v45 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v55);
        v42 = v61;
        if (v43 == v44)
        {

          sub_1ABAB480C(v57, &qword_1EB4DC700, &unk_1ABF785B0);
          return;
        }
      }

      __break(1u);
    }

    else
    {

      sub_1ABAB480C(v38, &qword_1EB4DC700, &unk_1ABF785B0);
    }
  }

  else
  {
    sub_1ABAB480C(v38, &qword_1EB4DC700, &unk_1ABF785B0);
  }
}

void sub_1ABEC7880(uint64_t *a1)
{
  v3 = v2;
  v4 = v1;
  v5 = *a1;
  v6 = a1[1];
  sub_1ABEC8558();
  sub_1ABF23684();
  v7 = sub_1ABF246B4();
  if (!v2)
  {
    if (v7)
    {
      v17 = *(v4 + 16);
      v18 = v7;
      sub_1ABF23664();

      type metadata accessor for VisualUnderstandingService.ChangeSequence();
      swift_allocObject();

      sub_1ABEC715C(v28);

      return;
    }

    if (qword_1ED871B38 != -1)
    {
      sub_1ABA7DE3C();
      swift_once();
    }

    v19 = sub_1ABF237F4();
    sub_1ABA7AA24(v19, qword_1ED871B40);
    v20 = sub_1ABF237D4();
    v21 = sub_1ABF24664();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v29 = v23;
      *v22 = 136315138;
      sub_1ABAD219C(&qword_1EB4DC778, &qword_1ABF78350);
      v24 = sub_1ABF23C74();
      v26 = sub_1ABADD6D8(v24, v25, &v29);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1ABA78000, v20, v21, "Unexpected bookmark result: %s", v22, 0xCu);
      sub_1ABA84B54(v23);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    sub_1ABEC859C();
    v3 = sub_1ABA7BD00();
    *v27 = 0;
    swift_willThrow();
  }

  if (qword_1ED871B38 != -1)
  {
    sub_1ABA7DE3C();
    swift_once();
  }

  v8 = sub_1ABF237F4();
  sub_1ABA7AA24(v8, qword_1ED871B40);
  v9 = v3;
  v10 = sub_1ABF237D4();
  v11 = sub_1ABF24664();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v3;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_1ABA78000, v10, v11, "Failed to decode bookmark: %@", v12, 0xCu);
    sub_1ABAB480C(v13, &unk_1EB4D57F0, &qword_1ABF390C0);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  sub_1ABEC859C();
  sub_1ABA7BD00();
  *v16 = 0;
  swift_willThrow();
}

void sub_1ABEC7D10(uint64_t *a1@<X8>)
{
  v3 = sub_1ABF234C4();
  v4 = sub_1ABA7BB64(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  v11 = v10 - v9;
  v12 = sub_1ABAD219C(&qword_1EB4DC780, &qword_1ABF78358);
  v13 = sub_1ABA7AB80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7AC18();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v31 - v20;
  v22 = *(v1 + 16);
  sub_1ABF23534();
  sub_1ABB3E5B4(v21, v18, &qword_1EB4DC780, &qword_1ABF78358);
  if (sub_1ABA7E1E0(v18, 1, v3) == 1)
  {
    sub_1ABAB480C(v21, &qword_1EB4DC780, &qword_1ABF78358);
    type metadata accessor for VisualUnderstandingService.RecognitionResult(0);
    v23 = sub_1ABA8C900();
  }

  else
  {
    (*(v6 + 32))(v11, v18, v3);
    v27 = sub_1ABF232F4();
    v28 = type metadata accessor for VisualUnderstandingService.RecognitionResult(0);
    v29 = a1 + *(v28 + 20);
    sub_1ABF234B4();
    sub_1ABF23494();
    *a1 = v27;
    *(a1 + *(v28 + 24)) = v30;
    (*(v6 + 8))(v11, v3);
    sub_1ABAB480C(v21, &qword_1EB4DC780, &qword_1ABF78358);
    v23 = a1;
    v24 = 0;
    v25 = 1;
    v26 = v28;
  }

  sub_1ABA7B9B4(v23, v24, v25, v26);
  sub_1ABA7BC1C();
}

uint64_t sub_1ABEC7F1C(uint64_t a1)
{
  v3 = sub_1ABF233F4();
  v4 = sub_1ABA7BB64(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  v11 = v10 - v9;
  v12 = type metadata accessor for VisualUnderstandingServiceBackendV1.EntitySequenceV1(0);
  v13 = sub_1ABA7AB80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7BC58();
  v18 = v17 - v16;
  v19 = *(v1 + 16);
  if (a1)
  {
    v20 = *(a1 + 16);
    if (v20)
    {
      v27 = v6;
      v28 = v3;
      v29 = MEMORY[0x1E69E7CC0];
      sub_1ABADE07C();
      v21 = (a1 + 32);
      do
      {
        v23 = *v21++;
        v22 = v23;
        v25 = *(v29 + 16);
        v24 = *(v29 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1ABA81DC8(v24);
          sub_1ABADE07C();
        }

        *(v29 + 16) = v25 + 1;
        *(v29 + 8 * v25 + 32) = v22;
        --v20;
      }

      while (v20);
      v3 = v28;
      v6 = v27;
    }
  }

  sub_1ABF236A4();

  (*(v6 + 32))(v18, v11, v3);
  type metadata accessor for VisualUnderstandingService.EntitySequence();
  swift_allocObject();
  return sub_1ABEC6FDC(v18);
}

uint64_t sub_1ABEC80E8(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_1ABF23464();
  v6 = sub_1ABA7BB64(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7BC58();
  v13 = v12 - v11;
  v14 = *a1;
  v15 = *a2;
  v16 = *(v2 + 16);
  (*(v8 + 104))(v12 - v11, *MEMORY[0x1E69E05E0], v5);
  v17 = sub_1ABF23324();
  (*(v8 + 8))(v13, v5);
  if ((v17 & 0x100000000) != 0)
  {
    *&result = 0.0;
  }

  else
  {
    *&result = *&v17;
  }

  return result;
}

void sub_1ABEC820C(uint64_t *a1)
{
  v3 = sub_1ABF23464();
  v4 = sub_1ABA7BB64(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  v11 = v10 - v9;
  v12 = *a1;
  v13 = *(v1 + 16);
  (*(v6 + 104))(v10 - v9, *MEMORY[0x1E69E05E0], v3);
  v14 = sub_1ABF23454();
  (*(v6 + 8))(v11, v3);
  v15 = *(v14 + 16);
  if (v15)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1ABADEE94();
    v16 = 0;
    v17 = v24;
    v18 = (v14 + 40);
    while (v16 < *(v14 + 16))
    {
      v19 = *(v18 - 1);
      v20 = *v18;
      v21 = *(v24 + 16);
      if (v21 >= *(v24 + 24) >> 1)
      {
        sub_1ABADEE94();
      }

      ++v16;
      *(v24 + 16) = v21 + 1;
      v22 = v24 + 16 * v21;
      *(v22 + 32) = v19;
      *(v22 + 40) = v20;
      v18 += 4;
      if (v15 == v16)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
LABEL_9:
    type metadata accessor for VisualUnderstandingService.SimilarEntitySequence();
    v23 = swift_allocObject();
    v23[5] = &type metadata for VisualUnderstandingServiceBackendV1.SimilarEntitySequenceV1.Iterator;
    v23[6] = sub_1ABEC9608();
    v23[2] = v17;
    v23[3] = 0;
  }
}

uint64_t sub_1ABEC8420()
{
  v1 = v0[2];

  sub_1ABA7C950();
  sub_1ABEC97A4(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1ABEC84B8()
{
  result = type metadata accessor for EntityRecognitionClient(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1ABEC8558()
{
  result = qword_1EB4CF7B8;
  if (!qword_1EB4CF7B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB4CF7B8);
  }

  return result;
}

unint64_t sub_1ABEC859C()
{
  result = qword_1EB4DC770;
  if (!qword_1EB4DC770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC770);
  }

  return result;
}

void sub_1ABEC85F0(_BYTE *a1@<X8>)
{
  v2 = v1;
  v94 = a1;
  v3 = sub_1ABF23294();
  v4 = sub_1ABA7BB64(v3);
  v85 = v5;
  v86 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  v84 = v9 - v8;
  sub_1ABA8409C();
  v10 = sub_1ABF23204();
  v11 = sub_1ABA7BB64(v10);
  v92 = v12;
  v93 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7BC58();
  v91 = v16 - v15;
  sub_1ABA8409C();
  v17 = sub_1ABF232D4();
  v18 = sub_1ABA7BB64(v17);
  v88 = v19;
  v89 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7BC58();
  v87 = v23 - v22;
  v24 = sub_1ABAD219C(&qword_1EB4DC798, &unk_1ABF78530);
  v25 = sub_1ABA7AB80(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v84 - v28;
  v30 = sub_1ABF23164();
  v31 = sub_1ABA7BB64(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABA7AC18();
  v36 = v34 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v84 - v38;
  v40 = *v1;
  v42 = (v41 + 32);
  v99 = (v41 + 88);
  v100 = (v41 + 16);
  v98 = *MEMORY[0x1E69E0548];
  v97 = *MEMORY[0x1E69E0550];
  v90 = v41;
  v43 = (v41 + 8);
  v95 = (v41 + 32);
  v96 = v40;
  while (1)
  {
    sub_1ABF233B4();
    if (sub_1ABA7E1E0(v29, 1, v30) == 1)
    {
      sub_1ABAB480C(v29, &qword_1EB4DC798, &unk_1ABF78530);
      v54 = type metadata accessor for VisualUnderstandingService.MappingChange(0);
      v55 = v94;
      v56 = 1;
      goto LABEL_17;
    }

    (*v42)(v39, v29, v30);
    (*v100)(v36, v39, v30);
    v44 = *v99;
    v45 = sub_1ABA99828();
    v47 = v46(v45);
    if (v47 == v98)
    {
      v58 = *(v90 + 96);
      v57 = v90 + 96;
      v59 = sub_1ABA99828();
      v60(v59);
      v62 = v87;
      v61 = v88;
      v63 = v89;
      (*(v88 + 32))(v87, v36, v89);
      v64 = v91;
      sub_1ABF232A4();
      v65 = sub_1ABEC8C2C();
      (*(v92 + 8))(v64, v93);
      v66 = sub_1ABF232C4();
      v67 = sub_1ABF232B4();
      (*(v61 + 8))(v62, v63);
      (*(v57 - 88))(v39, v30);
      v68 = v94;
      *v94 = v65;
      *(v68 + 1) = v66;
      *(v68 + 2) = v67;
      v69 = type metadata accessor for VisualUnderstandingService.MappingChange(0);
      swift_storeEnumTagMultiPayload();
      v55 = v68;
      goto LABEL_16;
    }

    if (v47 == v97)
    {
      break;
    }

    if (v2[1])
    {
      v48 = *v43;
      (*v43)(v39, v30);
    }

    else
    {
      if (qword_1ED871B38 != -1)
      {
        sub_1ABA7DE3C();
        swift_once();
      }

      v49 = sub_1ABF237F4();
      sub_1ABA7AA24(v49, qword_1ED871B40);
      v50 = sub_1ABF237D4();
      v51 = sub_1ABF24674();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_1ABA78000, v50, v51, "Unknown type of VUGalleryUpdate was received. Ignoring.", v52, 2u);
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }

      v48 = *v43;
      (*v43)(v39, v30);
      *(v2 + 8) = 1;
      v42 = v95;
    }

    v53 = sub_1ABA99828();
    (v48)(v53);
  }

  v71 = *(v90 + 96);
  v70 = v90 + 96;
  v72 = sub_1ABA99828();
  v73(v72);
  v75 = v85;
  v74 = v86;
  v76 = *(v85 + 32);
  v100 = v39;
  v77 = v84;
  v76(v84, v36, v86);
  v78 = v91;
  sub_1ABF23264();
  v79 = sub_1ABEC8C2C();
  (*(v92 + 8))(v78, v93);
  v80 = sub_1ABF23274();
  v81 = type metadata accessor for VisualUnderstandingService.EntityUpdate(0);
  v82 = v94;
  v83 = &v94[*(v81 + 24)];
  sub_1ABF23284();
  (*(v75 + 8))(v77, v74);
  (*(v70 - 88))(v100, v30);
  *v82 = v79;
  *(v82 + 1) = v80;
  v69 = type metadata accessor for VisualUnderstandingService.MappingChange(0);
  swift_storeEnumTagMultiPayload();
  v55 = v82;
LABEL_16:
  v56 = 0;
  v54 = v69;
LABEL_17:
  sub_1ABA7B9B4(v55, v56, 1, v54);
  sub_1ABA7BC1C();
}

uint64_t sub_1ABEC8C2C()
{
  v1 = sub_1ABF23204();
  v2 = sub_1ABA7BB64(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7BC58();
  v9 = v8 - v7;
  (*(v4 + 16))(v8 - v7, v0, v1);
  v10 = (*(v4 + 88))(v9, v1);
  if (v10 == *MEMORY[0x1E69E0560])
  {
    return 0;
  }

  if (v10 == *MEMORY[0x1E69E0570])
  {
    return 1;
  }

  if (v10 == *MEMORY[0x1E69E0568])
  {
    return 2;
  }

  result = sub_1ABF24CD4();
  __break(1u);
  return result;
}

void sub_1ABEC8D98(uint64_t *a1@<X8>)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1ABF233C4();
  if (v2)
  {
    v3 = v2;
    v13[0] = 0;
    v4 = [objc_opt_self() archivedDataWithRootObject:v2 requiringSecureCoding:1 error:v13];
    v5 = v13[0];
    if (v4)
    {
      v6 = sub_1ABF21DD4();
      v8 = v7;

      *a1 = v6;
      a1[1] = v8;
    }

    else
    {
      v11 = v5;
      sub_1ABF21BE4();

      swift_willThrow();
    }
  }

  else
  {
    sub_1ABEC859C();
    v9 = sub_1ABA7BD00();
    sub_1ABA9A7C8(v9, v10);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1ABEC8EAC(uint64_t a1@<X8>)
{
  v3 = sub_1ABF23334();
  v4 = sub_1ABA7BB64(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  v11 = v10 - v9;
  v12 = sub_1ABF23314();
  v13 = sub_1ABA7BB64(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7BC58();
  v20 = v19 - v18;
  v21 = v1[1];
  v22 = *(*v1 + 16);
  if (v21 == v22)
  {
    sub_1ABAD219C(&qword_1EB4D3878, &unk_1ABF3DF08);
    sub_1ABA8C900();
    sub_1ABA7BC1C();

    sub_1ABA7B9B4(v23, v24, v25, v26);
  }

  else if (v21 >= v22)
  {
    __break(1u);
  }

  else
  {
    v28 = *v1 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v21;
    v1[1] = v21 + 1;
    (*(v15 + 16))(v20, v28, v12);
    v33 = sub_1ABF232F4();
    sub_1ABF232F4();
    sub_1ABF24454();
    sub_1ABEC9148();
    (*(v6 + 8))(v11, v3);
    sub_1ABF232E4();
    sub_1ABA82858();
    type metadata accessor for VisualUnderstandingService.ObservationSequence();
    v29 = swift_allocObject();
    v29[5] = &type metadata for VisualUnderstandingServiceBackendV1.ObservationSequenceV1.Iterator;
    v29[6] = sub_1ABB66238();
    v29[2] = v20;
    v29[3] = 0;
    v30 = sub_1ABAD219C(&qword_1EB4D3878, &unk_1ABF3DF08);
    v31 = *(v30 + 64);
    v32 = *(v30 + 80);
    *a1 = v33;
    *(a1 + 8) = v34;
    *(a1 + 24) = v35;
    *(a1 + 32) = v36;
    *(a1 + 40) = v37;
    sub_1ABF23304();
    (*(v15 + 8))(v20, v12);
    *(a1 + v32) = v29;
    sub_1ABA7B9B4(a1, 0, 1, v30);
    sub_1ABA7BC1C();
  }
}

void sub_1ABEC9148()
{
  v1 = v0;
  v2 = sub_1ABF23334();
  v3 = sub_1ABA7BB64(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7BC58();
  v10 = v9 - v8;
  (*(v5 + 16))(v9 - v8, v1, v2);
  v11 = (*(v5 + 88))(v10, v2);
  if (v11 != *MEMORY[0x1E69E05D0])
  {
    if (v11 != *MEMORY[0x1E69E05C8])
    {
      if (v11 != *MEMORY[0x1E69E05C0])
      {
        if (_Records_GDEntityClass_records)
        {
          sub_1ABA8882C(*_Records_GDEntityClass_records, *(_Records_GDEntityClass_records + 8), *(_Records_GDEntityClass_records + 8 + 8), v16);
          v15 = sub_1ABA8EE34();
          (*(v5 + 8))(v10, v2, v15);
          return;
        }

        goto LABEL_17;
      }

      if (_Records_GDEntityClass_records)
      {
        v12 = *(_Records_GDEntityClass_records + 0x5A8);
        v13 = *(_Records_GDEntityClass_records + 0x5B0);
        v14 = *(_Records_GDEntityClass_records + 0x5A0);
        goto LABEL_10;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    if (_Records_GDEntityClass_records)
    {
      v12 = *(_Records_GDEntityClass_records + 0x278);
      v13 = *(_Records_GDEntityClass_records + 0x280);
      v14 = *(_Records_GDEntityClass_records + 0x270);
      goto LABEL_10;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(_Records_GDEntityClass_records + 8);
  v13 = *(_Records_GDEntityClass_records + 8 + 8);
  v14 = *_Records_GDEntityClass_records;
LABEL_10:
  sub_1ABA8882C(v14, v12, v13, v16);
  sub_1ABA8EE34();
}

void sub_1ABEC936C(uint64_t *a1@<X8>)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1ABF233E4();
  if (v2)
  {
    v3 = v2;
    v13[0] = 0;
    v4 = [objc_opt_self() archivedDataWithRootObject:v2 requiringSecureCoding:1 error:v13];
    v5 = v13[0];
    if (v4)
    {
      v6 = sub_1ABF21DD4();
      v8 = v7;

      *a1 = v6;
      a1[1] = v8;
    }

    else
    {
      v11 = v5;
      sub_1ABF21BE4();

      swift_willThrow();
    }
  }

  else
  {
    sub_1ABEC859C();
    v9 = sub_1ABA7BD00();
    sub_1ABA9A7C8(v9, v10);
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1ABEC9480@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1ABEC947C();
  v5 = v4;
  result = sub_1ABEC97A4(v1, type metadata accessor for VisualUnderstandingServiceBackendV1.EntitySequenceV1);
  *a1 = v3;
  a1[1] = v5;
  return result;
}

void sub_1ABEC94DC(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
  }

  else if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = *v1 + 16 * v2;
    v5 = *(v4 + 40);
    *a1 = *(v4 + 32);
    *(a1 + 8) = v5;
    v1[1] = v2 + 1;
    *(a1 + 16) = 0;
  }
}

uint64_t sub_1ABEC952C()
{
  v1 = v0[1];
  v2 = *(*v0 + 16);
  if (v1 == v2)
  {
    return 0;
  }

  if (v1 >= v2)
  {
    __break(1u);
  }

  else
  {
    result = *(*v0 + 8 * v1 + 32);
    v0[1] = v1 + 1;
  }

  return result;
}

uint64_t sub_1ABEC9568@<X0>(uint64_t a1@<X8>)
{
  result = sub_1ABEC952C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_1ABEC95B4()
{
  result = qword_1EB4CF998;
  if (!qword_1EB4CF998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF998);
  }

  return result;
}

unint64_t sub_1ABEC9608()
{
  result = qword_1EB4DC788;
  if (!qword_1EB4DC788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC788);
  }

  return result;
}

uint64_t sub_1ABEC967C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualUnderstandingServiceBackendV1.EntitySequenceV1(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1ABEC96E0(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for VisualUnderstandingServiceBackendV1.EntitySequenceV1(0);
  sub_1ABA7AB80(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  sub_1ABEC936C(a1);
}

unint64_t sub_1ABEC9750()
{
  result = qword_1EB4CF990;
  if (!qword_1EB4CF990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF990);
  }

  return result;
}

uint64_t sub_1ABEC97A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1ABA7BBB0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1ABEC97FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABA82858();
  v6 = v5(v4);
  sub_1ABA7BBB0(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1ABEC9890()
{
  result = sub_1ABF233F4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1ABEC9920(uint64_t a1)
{
  result = sub_1ABEC9948();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABEC9948()
{
  result = qword_1EB4DC790;
  if (!qword_1EB4DC790)
  {
    type metadata accessor for VisualUnderstandingServiceBackendV1.EntitySequenceV1(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC790);
  }

  return result;
}

uint64_t sub_1ABEC99B8()
{
  v9 = MEMORY[0x1E69E7CC0];
  sub_1ABADE07C();
  while (1)
  {
    v0 = sub_1ABEC4C94();
    if (v1)
    {
      break;
    }

    v2 = v0;
    if (!v0)
    {
      if (qword_1EB4CE780 != -1)
      {
        swift_once();
      }

      v3 = sub_1ABF237F4();
      sub_1ABA7AA24(v3, qword_1EB4CE788);
      v4 = sub_1ABF237D4();
      v5 = sub_1ABF24674();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_1ABA78000, v4, v5, "GDVUGalleryTransaction.entities: Observation ID should never be zero. This is an error in VU.", v6, 2u);
        MEMORY[0x1AC5AB8B0](v6, -1, -1);
      }
    }

    v7 = *(v9 + 16);
    if (v7 >= *(v9 + 24) >> 1)
    {
      sub_1ABADE07C();
    }

    *(v9 + 16) = v7 + 1;
    *(v9 + 8 * v7 + 32) = v2;
  }

  return v9;
}

id GDVUVisualUnderstandingService.gallery.getter()
{
  v0 = *(*sub_1ABAA2E98(OBJC_IVAR___GDVUVisualUnderstandingService_inner) + 16);
  v1 = objc_allocWithZone(GDVUGallery);
  *&v1[OBJC_IVAR___GDVUGallery_inner] = v0;
  v3.receiver = v1;
  v3.super_class = GDVUGallery;

  return objc_msgSendSuper2(&v3, sel_init);
}

id GDVUVisualUnderstandingService.init(client:version:url:)(void *a1, uint64_t a2, uint64_t a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1ABF21CF4();
  v7 = 0;
  if (sub_1ABA7E1E0(a3, 1, v6) != 1)
  {
    v7 = sub_1ABF21C54();
    (*(*(v6 - 8) + 8))(a3, v6);
  }

  v13[0] = 0;
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithClient:a1 version:a2 url:v7 error:v13];

  if (v8)
  {
    v9 = v13[0];
  }

  else
  {
    v10 = v13[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

void GDVUVisualUnderstandingService.init(client:version:url:)()
{
  sub_1ABA7BCA8();
  v4 = v3;
  v6 = v5;
  v7 = sub_1ABAA4780();
  v8 = type metadata accessor for EntityRecognitionClient(v7);
  v9 = sub_1ABA7AB80(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BC58();
  v12 = type metadata accessor for VisualUnderstandingService.Version(0);
  v13 = sub_1ABA7AB80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7AC18();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  if (v6 == 1)
  {
    sub_1ABAE2EC4();
    v19 = sub_1ABAD219C(&qword_1EB4DC6C8, &qword_1ABF77858);
    v20 = v18;
    v21 = 0;
  }

  else
  {
    if (v6)
    {
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_1ABF24AB4();
      MEMORY[0x1AC5A9410](0xD000000000000014, 0x80000001ABF96220);
      type metadata accessor for GDVUVersion(0);
      sub_1ABF24C54();
      sub_1ABF24CD4();
      __break(1u);
      return;
    }

    v19 = sub_1ABAD219C(&qword_1EB4DC6C8, &qword_1ABF77858);
    v20 = v18;
    v21 = 1;
  }

  sub_1ABA7B9B4(v20, v21, 1, v19);
  v22 = *(**&v2[OBJC_IVAR___GDVUEntityRecognitionClient_inner] + 88);
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA8C4CC();
  sub_1ABED22C8();
  sub_1ABED22C8();
  v23 = type metadata accessor for VisualUnderstandingService(0);
  sub_1ABA90758(v23);
  swift_allocObject();
  VisualUnderstandingService.init(client:version:)();
  if (v1)
  {

    sub_1ABAB480C(v4, &qword_1EB4D1E40, &qword_1ABF349F0);
    v25 = sub_1ABAA6260();
    type metadata accessor for GDVUVisualUnderstandingService(v25);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v26 = v24;
    sub_1ABAA6260();
    *&v0[OBJC_IVAR___GDVUVisualUnderstandingService_inner] = v26;
    v28.receiver = v0;
    v28.super_class = GDVUVisualUnderstandingService;
    objc_msgSendSuper2(&v28, sel_init);

    sub_1ABAB480C(v4, &qword_1EB4D1E40, &qword_1ABF349F0);
  }

  sub_1ABA7BC90();
}

void GDVUVisualUnderstandingService.recognize(in:context:)()
{
  sub_1ABA7BCA8();
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for VisualUnderstandingService.RecognitionResult(0);
  v8 = sub_1ABA7BB64(v7);
  v41 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7BC58();
  sub_1ABA96A10();
  v12 = sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);
  v13 = sub_1ABA7AB80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7AC18();
  v18 = v16 - v17;
  *&v20 = MEMORY[0x1EEE9AC00](v19).n128_u64[0];
  v22 = v40 - v21;
  v23 = *(v0 + OBJC_IVAR___GDVUVisualUnderstandingService_inner);
  if (v4)
  {
    v24 = [v4 moment];
    sub_1ABF21EE4();

    v25 = sub_1ABF21F04();
    sub_1ABA7B9B4(v22, 0, 1, v25);
    v26 = [v4 asset];
    sub_1ABF21EE4();

    v27 = v18;
    v28 = 0;
  }

  else
  {
    v25 = sub_1ABF21F04();
    sub_1ABA7B9B4(v22, 1, 1, v25);
    v27 = v18;
    v28 = 1;
  }

  sub_1ABA7B9B4(v27, v28, 1, v25);
  v29 = *sub_1ABA93E20((v23 + 16), *(v23 + 40));
  sub_1ABEC73FC(v6, v22, v18);
  v31 = v30;
  sub_1ABAB480C(v18, &qword_1EB4DC6F0, qword_1ABF78360);
  sub_1ABAB480C(v22, &qword_1EB4DC6F0, qword_1ABF78360);
  if (!v1)
  {
    if (v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = MEMORY[0x1E69E7CC0];
    }

    v33 = *(v32 + 16);
    if (v33)
    {
      v43 = MEMORY[0x1E69E7CC0];
      v34 = sub_1ABF24BC4();
      type metadata accessor for GDVURecognitionResult(v34);
      v35 = *(v41 + 80);
      v40[1] = v32;
      v36 = v32 + ((v35 + 32) & ~v35);
      v37 = *(v41 + 72);
      do
      {
        sub_1ABED22C8();
        v42 = *v2;
        v38 = *(v7 + 20);
        sub_1ABECA518(*(v2 + *(v7 + 24)));
        sub_1ABA93AA8();
        sub_1ABED261C();
        sub_1ABF24B94();
        v39 = *(v43 + 16);
        sub_1ABF24BD4();
        sub_1ABF24BE4();
        sub_1ABF24BA4();
        v36 += v37;
        --v33;
      }

      while (v33);
    }
  }

  sub_1ABA7BC90();
}

id sub_1ABECA518(float a1)
{
  sub_1ABA81488();
  v3 = sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);
  sub_1ABA7AB80(v3);
  v5 = *(v4 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  v12 = *v1;
  sub_1ABA8E58C();
  sub_1ABAE2EC4();
  v9 = objc_allocWithZone(GDVURecognitionResult);
  return sub_1ABED1658(&v12, v8, a1);
}

uint64_t sub_1ABECA6CC(char *a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v72 = a3;
  v7 = sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v73 = &v65 - v9;
  v71 = sub_1ABAD219C(&qword_1EB4D3878, &unk_1ABF3DF08);
  v10 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v65 - v13;
  v15 = sub_1ABAD219C(&qword_1EB4D3870, &qword_1ABF3DF00);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v65 - v17;
  v19 = *(a2 + OBJC_IVAR___GDVUVisualUnderstandingService_inner);
  if (a1)
  {
    v20 = sub_1ABAAB7C8(a1);
    v21 = MEMORY[0x1E69E7CC0];
    if (v20)
    {
      v22 = v20;
      v69 = a1;
      *&v74 = MEMORY[0x1E69E7CC0];
      result = sub_1ABADDFFC(0, v20 & ~(v20 >> 63), 0);
      if (v22 < 0)
      {
        __break(1u);
LABEL_27:
        __break(1u);
        return result;
      }

      v66 = v19;
      v67 = v3;
      v24 = 0;
      v21 = v74;
      v25 = v69;
      i = v69 & 0xC000000000000001;
      do
      {
        if (i)
        {
          v26 = MEMORY[0x1AC5AA170](v24, v25);
        }

        else
        {
          v26 = *(v25 + 8 * v24 + 32);
        }

        v27 = v26;
        v28 = [v26 intValue];

        *&v74 = v21;
        v30 = *(v21 + 16);
        v29 = *(v21 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1ABADDFFC((v29 > 1), v30 + 1, 1);
          v25 = v69;
          v21 = v74;
        }

        ++v24;
        *(v21 + 16) = v30 + 1;
        *(v21 + 8 * v30 + 32) = v28;
      }

      while (v22 != v24);
      v19 = v66;
      v4 = v67;
    }
  }

  else
  {
    v21 = 0;
  }

  v31 = *sub_1ABA93E20((v19 + 16), *(v19 + 40));
  v32 = sub_1ABEC7F1C(v21);
  v33 = v4;

  if (v4)
  {
    _Block_release(v72);
  }

  else
  {
    v69 = (v72 + 16);

    v68 = v18;
    for (i = v32; ; v32 = i)
    {
      sub_1ABEC6FD0(v34);
      v35 = v71;
      if (sub_1ABA7E1E0(v18, 1, v71) == 1)
      {

        goto LABEL_23;
      }

      v36 = *(v18 + 4);
      v37 = v18[40];
      v38 = *(v35 + 64);
      v39 = *(v35 + 80);
      v40 = *&v18[v39];
      v41 = *(v18 + 1);
      *v14 = *v18;
      *(v14 + 1) = v41;
      *(v14 + 4) = v36;
      v14[40] = v37;
      sub_1ABED2054(&v18[v38], &v14[v38]);
      *&v14[v39] = v40;
      v42 = v33;
      sub_1ABEC99B8();
      v43 = v70;
      sub_1ABAE2EC4();
      v44 = *v43;
      v45 = v43[2];
      v46 = v43[4];

      v47 = *(v35 + 64);
      v48 = *(v43 + *(v35 + 80));

      v49 = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
      result = sub_1ABAB480C(v43 + v47, &qword_1EB4DC6F0, qword_1ABF78360);
      if (!v49)
      {
        goto LABEL_27;
      }

      type metadata accessor for GDVUEntityClass(result);
      v50 = *(v14 + 3);
      v51 = *(v14 + 4);
      v52 = v14[40];
      v74 = *(v14 + 8);
      v75 = v50;
      v76 = v51;
      v77 = v52;
      v53 = sub_1ABECB098(&v74);
      v54 = v73;
      sub_1ABAE2EC4();
      v55 = sub_1ABF21F04();
      v56 = sub_1ABA7E1E0(v54, 1, v55);
      v57 = 0;
      if (v56 != 1)
      {
        v58 = v73;
        v57 = sub_1ABF21ED4();
        (*(*(v55 - 8) + 8))(v58, v55);
      }

      v59 = sub_1ABF240C4();
      v60 = (*(v72 + 2))(v72, v49, v53, v57, v59);

      v33 = v42;
      if (!v60)
      {
        break;
      }

      v34 = sub_1ABAB480C(v14, &qword_1EB4D3878, &unk_1ABF3DF08);
      v18 = v68;
    }

    v32 = i;

    v61 = sub_1ABAB480C(v14, &qword_1EB4D3878, &unk_1ABF3DF08);
LABEL_23:
    v62 = *(v32 + 24);
    v63 = (*(v32 + 16))(&v74, v61);
    type metadata accessor for GDVUChangeBookmark(v63);
    v64 = v74;
    v78 = v74;
    v4 = sub_1ABECB128(&v78);

    sub_1ABA96210(v64, *(&v64 + 1));
    _Block_release(v72);
  }

  return v4;
}

void GDVUVisualUnderstandingService.entities(for:body:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v69 = v3;
  v70 = v4;
  v6 = v5;
  v72 = sub_1ABAD219C(&qword_1EB4D3878, &unk_1ABF3DF08);
  v7 = sub_1ABA7BBB0(v72);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7AC18();
  v71 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v65 - v13;
  v15 = sub_1ABAD219C(&qword_1EB4D3870, &qword_1ABF3DF00);
  sub_1ABA7AB80(v15);
  v17 = *(v16 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v65 - v19;
  v21 = *(v0 + OBJC_IVAR___GDVUVisualUnderstandingService_inner);
  if (v6)
  {
    v22 = sub_1ABAAB7C8(v6);
    v23 = MEMORY[0x1E69E7CC0];
    if (v22)
    {
      v24 = v22;
      *&v74 = MEMORY[0x1E69E7CC0];
      sub_1ABADDFFC(0, v22 & ~(v22 >> 63), 0);
      if (v24 < 0)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        return;
      }

      v66 = v21;
      v67 = v1;
      v25 = 0;
      v23 = v74;
      i = v6 & 0xC000000000000001;
      v79 = v6;
      v26 = v24;
      do
      {
        if (i)
        {
          v27 = MEMORY[0x1AC5AA170](v25, v6);
        }

        else
        {
          v27 = *(v6 + 8 * v25 + 32);
        }

        v28 = v27;
        v29 = [v27 intValue];

        *&v74 = v23;
        v31 = *(v23 + 16);
        v30 = *(v23 + 24);
        if (v31 >= v30 >> 1)
        {
          v32 = sub_1ABA7BBEC(v30);
          sub_1ABADDFFC(v32, v31 + 1, 1);
          v23 = v74;
        }

        ++v25;
        *(v23 + 16) = v31 + 1;
        *(v23 + 8 * v31 + 32) = v29;
        v6 = v79;
      }

      while (v26 != v25);
      v21 = v66;
      v2 = v67;
    }
  }

  else
  {
    v23 = 0;
  }

  v33 = *sub_1ABA93E20((v21 + 16), *(v21 + 40));
  v34 = sub_1ABEC7F1C(v23);
  v35 = v2;

  if (!v2)
  {

    v37 = &qword_1EB4D3878;
    v68 = v20;
    for (i = v34; ; v34 = i)
    {
      sub_1ABEC6FD0(v36);
      v38 = v72;
      if (sub_1ABA7E1E0(v20, 1, v72) == 1)
      {

        goto LABEL_21;
      }

      v39 = *(v20 + 4);
      v40 = v20[40];
      v41 = *(v38 + 64);
      v42 = *(v38 + 80);
      v43 = v38;
      v44 = *&v20[v42];
      v45 = *(v20 + 1);
      *v14 = *v20;
      *(v14 + 1) = v45;
      *(v14 + 4) = v39;
      v14[40] = v40;
      sub_1ABED2054(&v20[v41], &v14[v41]);
      *&v14[v42] = v44;
      v46 = sub_1ABEC99B8();
      v80 = v35;
      v47 = v71;
      v48 = v37;
      sub_1ABAE2EC4();
      v49 = *v47;
      v50 = v47[2];
      v51 = v47[4];

      v52 = *(v43 + 64);
      v53 = *(v47 + *(v43 + 80));

      v54 = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
      v55 = sub_1ABAB480C(v47 + v52, &qword_1EB4DC6F0, qword_1ABF78360);
      if (!v54)
      {
        goto LABEL_24;
      }

      type metadata accessor for GDVUEntityClass(v55);
      v56 = *(v14 + 3);
      v57 = *(v14 + 4);
      v58 = v14[40];
      v74 = *(v14 + 8);
      v75 = v56;
      v76 = v57;
      v77 = v58;
      v59 = sub_1ABECB098(&v74);
      v60 = v69(v54, v59, &v14[v41], v46);

      if ((v60 & 1) == 0)
      {
        break;
      }

      v37 = v48;
      v36 = sub_1ABAB480C(v14, v48, &unk_1ABF3DF08);
      v35 = v80;
      v20 = v68;
    }

    v34 = i;

    v61 = sub_1ABAB480C(v14, &qword_1EB4D3878, &unk_1ABF3DF08);
LABEL_21:
    v62 = *(v34 + 24);
    v63 = (*(v34 + 16))(&v74, v61);
    type metadata accessor for GDVUChangeBookmark(v63);
    v64 = v74;
    v78 = v74;
    sub_1ABECB128(&v78);

    sub_1ABA96210(v64, *(&v64 + 1));
  }

  sub_1ABA7BC90();
}

id sub_1ABECB098(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = *(a1 + 32);
  v6 = objc_allocWithZone(GDVUEntityClass);
  v7 = &v6[OBJC_IVAR___GDVUEntityClass_inner];
  *v7 = v2;
  *(v7 + 1) = v1;
  *(v7 + 2) = v4;
  *(v7 + 3) = v3;
  v7[32] = v5;
  v9.receiver = v6;
  v9.super_class = GDVUEntityClass;

  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_1ABECB128(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = objc_allocWithZone(GDVUChangeBookmark);
  v4 = &v3[OBJC_IVAR___GDVUChangeBookmark_inner];
  *v4 = v1;
  *(v4 + 1) = v2;
  v5 = sub_1ABA7D000();
  sub_1ABB0DBF0(v5, v6);
  v8.receiver = v3;
  v8.super_class = GDVUChangeBookmark;
  return objc_msgSendSuper2(&v8, sel_init);
}

void GDVUVisualUnderstandingService.keyObservation(for:output:)(void *a1, uint64_t *a2)
{
  v5 = *(v2 + OBJC_IVAR___GDVUVisualUnderstandingService_inner);
  v14 = [a1 intValue];
  v6 = sub_1ABEC376C(&v14);
  if (!v3)
  {
    if (v7)
    {
      v6 = 0;
LABEL_5:
      *a2 = v6;
      return;
    }

    if (v6)
    {
      goto LABEL_5;
    }

    if (qword_1EB4CE780 != -1)
    {
      sub_1ABA8FDB8();
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1EB4CE788);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    v11 = sub_1ABA84024();
    if (os_log_type_enabled(v11, v12))
    {
      sub_1ABA8179C();
      v13 = swift_slowAlloc();
      *v13 = 0;
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    *a2 = 0;
  }
}

uint64_t GDVUVisualUnderstandingService.similarity(withBetween:and:output:)(void *a1, void *a2, double *a3)
{
  v7 = *(v3 + OBJC_IVAR___GDVUVisualUnderstandingService_inner);
  v12 = [a1 intValue];
  v11 = [a2 intValue];
  result = sub_1ABEC37B8(&v12, &v11);
  if (!v4)
  {
    v10 = *&result;
    if (v9)
    {
      v10 = NAN;
    }

    *a3 = v10;
  }

  return result;
}

void sub_1ABECB5B0(void *a1, uint64_t a2, uint64_t (**a3)(void, void, double))
{
  v5 = *(a2 + OBJC_IVAR___GDVUVisualUnderstandingService_inner);
  v10[0] = [a1 intValue];
  sub_1ABEC3820(v10);
  if (v3)
  {
LABEL_6:
    _Block_release(a3);
  }

  else
  {
    while (1)
    {
      sub_1ABEC4FD4();
      if (v11)
      {
LABEL_5:

        goto LABEL_6;
      }

      v6 = *&v10[1];
      v7 = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
      if (!v7)
      {
        break;
      }

      v8 = v7;
      v9 = (a3)[2](a3, v7, v6);

      if ((v9 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void GDVUVisualUnderstandingService.similarEntities(to:body:)(void *a1, uint64_t (*a2)(double))
{
  v5 = *(v2 + OBJC_IVAR___GDVUVisualUnderstandingService_inner);
  v10[0] = [a1 intValue];
  sub_1ABEC3820(v10);
  if (!v3)
  {
    while (1)
    {
      sub_1ABEC4FD4();
      if (v11)
      {
LABEL_5:

        return;
      }

      v6 = *&v10[1];
      v7 = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
      if (!v7)
      {
        break;
      }

      v8 = v7;
      v9 = a2(v6);

      if ((v9 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

id sub_1ABECB854(uint64_t a1, uint64_t a2, uint64_t (**a3)(void, void))
{
  v6 = type metadata accessor for VisualUnderstandingService.EntityUpdate(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - v11;
  v13 = type metadata accessor for VisualUnderstandingService.MappingChange(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1ABAD219C(&qword_1EB4D3868, &qword_1ABF3DEF8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v46 - v19;
  v21 = *(a2 + OBJC_IVAR___GDVUVisualUnderstandingService_inner);
  v22 = *(a1 + OBJC_IVAR___GDVUChangeBookmark_inner + 8);
  v49 = *(a1 + OBJC_IVAR___GDVUChangeBookmark_inner);
  v50 = v22;
  sub_1ABB0DBF0(v49, v22);
  v23 = v53;
  sub_1ABEC38E4(&v49);
  v25 = v24;
  sub_1ABA96210(v49, v50);
  if (!v23)
  {
    v47 = 0;
    v53 = a3 + 2;

    v48 = v20;
    while (1)
    {
      sub_1ABEC4E60(v26);
      if (sub_1ABA7E1E0(v20, 1, v13) == 1)
      {
        break;
      }

      sub_1ABED25C4();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        sub_1ABED25C4();
        sub_1ABED22C8();
        v28 = objc_allocWithZone(GDVUEntityUpdate);
        v29 = sub_1ABED1308();
        v30 = (a3)[2](a3, v29);

        v26 = sub_1ABED261C();
        if ((v30 & 1) == 0)
        {
          break;
        }
      }

      else
      {
        v31 = *v16;
        v32 = v13;
        v33 = v12;
        v34 = a3;
        v35 = v25;
        v36 = v9;
        v37 = *(v16 + 1);
        v38 = *(v16 + 2);
        type metadata accessor for GDVUObservationUpdate(EnumCaseMultiPayload);
        LOBYTE(v49) = v31;
        v50 = v37;
        v51 = v38;
        v9 = v36;
        v25 = v35;
        a3 = v34;
        v12 = v33;
        v13 = v32;
        v20 = v48;
        v39 = sub_1ABECBF08(&v49);
        LOBYTE(v37) = (a3)[2](a3, v39);

        if ((v37 & 1) == 0)
        {
          break;
        }
      }
    }

    v21 = *(v25 + 24);
    v41 = v47;
    v42 = (*(v25 + 16))(&v49, v40);
    if (!v41)
    {
      type metadata accessor for GDVUChangeBookmark(v42);
      v44 = v49;
      v45 = v50;
      v52[0] = v49;
      v52[1] = v50;
      v21 = sub_1ABECB128(v52);

      sub_1ABA96210(v44, v45);
      _Block_release(a3);
      return v21;
    }
  }

  _Block_release(a3);
  return v21;
}

void GDVUVisualUnderstandingService.changes(since:body:)()
{
  sub_1ABA7BCA8();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for VisualUnderstandingService.EntityUpdate(0);
  v10 = sub_1ABA7AB80(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7AC18();
  v57 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v54 - v16;
  v56 = type metadata accessor for VisualUnderstandingService.MappingChange(0);
  v18 = sub_1ABA7BBB0(v56);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7BC58();
  v23 = (v22 - v21);
  v24 = sub_1ABAD219C(&qword_1EB4D3868, &qword_1ABF3DEF8);
  sub_1ABA7AB80(v24);
  v26 = *(v25 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABAA26DC();
  v28 = *(v1 + OBJC_IVAR___GDVUVisualUnderstandingService_inner);
  v29 = *(v8 + OBJC_IVAR___GDVUChangeBookmark_inner + 8);
  v59 = *(v8 + OBJC_IVAR___GDVUChangeBookmark_inner);
  v60 = v29;
  sub_1ABB0DBF0(v59, v29);
  sub_1ABEC38E4(&v59);
  v31 = v30;
  sub_1ABA96210(v59, v60);
  if (!v2)
  {
    v55 = 0;

    v33 = v56;
    v34 = v57;
    v58 = v31;
    v63 = v0;
    do
    {
      sub_1ABEC4E60(v32);
      if (sub_1ABA7E1E0(v0, 1, v33) == 1)
      {
        break;
      }

      sub_1ABED25C4();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        sub_1ABED25C4();
        sub_1ABED22C8();
        v36 = objc_allocWithZone(GDVUEntityUpdate);
        v37 = sub_1ABED1308();
        v38 = v6();

        v32 = sub_1ABED261C();
      }

      else
      {
        v39 = *v23;
        v40 = v33;
        v41 = v17;
        v42 = v34;
        v43 = v6;
        v44 = v4;
        v45 = *(v23 + 1);
        v46 = *(v23 + 2);
        type metadata accessor for GDVUObservationUpdate(EnumCaseMultiPayload);
        LOBYTE(v59) = v39;
        v60 = v45;
        v61 = v46;
        v4 = v44;
        v6 = v43;
        v34 = v42;
        v17 = v41;
        v33 = v40;
        v31 = v58;
        v47 = sub_1ABECBF08(&v59);
        v38 = v6();
      }

      v0 = v63;
    }

    while ((v38 & 1) != 0);

    v49 = *(v31 + 24);
    v50 = v55;
    v51 = (*(v31 + 16))(&v59, v48);
    if (v50)
    {
    }

    else
    {
      type metadata accessor for GDVUChangeBookmark(v51);
      v52 = v59;
      v53 = v60;
      v62[0] = v59;
      v62[1] = v60;
      sub_1ABECB128(v62);

      sub_1ABA96210(v52, v53);
    }
  }

  sub_1ABA7BC90();
}

id sub_1ABECBF08(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = objc_allocWithZone(GDVUObservationUpdate);
  v5 = &v4[OBJC_IVAR___GDVUObservationUpdate_inner];
  *v5 = v1;
  *(v5 + 1) = v2;
  *(v5 + 2) = v3;
  v7.receiver = v4;
  v7.super_class = GDVUObservationUpdate;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_1ABECC04C()
{
  v0 = type metadata accessor for VisualUnderstandingService.RecognitionResult(0);
  v1 = sub_1ABA7BBB0(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7BC58();
  sub_1ABAA26DC();
  v4 = sub_1ABAD219C(&qword_1EB4DC910, &qword_1ABF78650);
  v5 = sub_1ABA7AB80(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7AC18();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v18 - v12);
  v14 = *sub_1ABAA2E98(OBJC_IVAR___GDVUVisualUnderstandingService_inner);
  sub_1ABEC7D10(v13);
  sub_1ABAE2EC4();
  if (sub_1ABA7E1E0(v10, 1, v0) == 1)
  {
    sub_1ABAB480C(v13, &qword_1EB4DC910, &qword_1ABF78650);
    return 0;
  }

  else
  {
    v16 = sub_1ABA99834();
    type metadata accessor for GDVURecognitionResult(v16);
    v15 = sub_1ABAA5B60();
    sub_1ABA93AA8();
    sub_1ABED261C();
    sub_1ABAB480C(v13, &qword_1EB4DC910, &qword_1ABF78650);
  }

  return v15;
}

id sub_1ABECC210()
{
  v0 = type metadata accessor for VisualUnderstandingService.RecognitionResult(0);
  v1 = sub_1ABA7BBB0(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7BC58();
  sub_1ABAA26DC();
  v4 = sub_1ABAD219C(&qword_1EB4DC910, &qword_1ABF78650);
  v5 = sub_1ABA7AB80(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7AC18();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v18 - v12);
  v14 = *sub_1ABAA2E98(OBJC_IVAR___GDVUVisualUnderstandingService_inner);
  sub_1ABEC7D10(v13);
  sub_1ABAE2EC4();
  if (sub_1ABA7E1E0(v10, 1, v0) == 1)
  {
    sub_1ABAB480C(v13, &qword_1EB4DC910, &qword_1ABF78650);
    return 0;
  }

  else
  {
    v16 = sub_1ABA99834();
    type metadata accessor for GDVURecognitionResult(v16);
    v15 = sub_1ABAA5B60();
    sub_1ABA93AA8();
    sub_1ABED261C();
    sub_1ABAB480C(v13, &qword_1EB4DC910, &qword_1ABF78650);
  }

  return v15;
}

void GDVUGallery.observationsCountPerEntity.getter()
{
  v1 = *(v0 + OBJC_IVAR___GDVUGallery_inner);
  v2 = sub_1ABF23594();
  v3 = *(v2 + 16);
  if (v3)
  {
    v34 = MEMORY[0x1E69E7CC0];
    sub_1ABADEEE4();
    v4 = v34;
    v7 = sub_1ABAB0E08(v2);
    v8 = 0;
    v9 = v2 + 64;
    v29 = v5;
    v30 = v3;
    v28 = v2 + 72;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v2 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_25;
      }

      if (*(v2 + 36) != v5)
      {
        goto LABEL_26;
      }

      v32 = v8;
      v33 = v5;
      v31 = v6;
      v11 = v2;
      v12 = *(*(v2 + 48) + 8 * v7);
      v13 = *(*(v2 + 56) + 8 * v7);
      v14 = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
      if (!v14)
      {
        goto LABEL_30;
      }

      v15 = v14;
      v16 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v18 = *(v34 + 16);
      v17 = *(v34 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1ABA7BBEC(v17);
        sub_1ABADEEE4();
      }

      *(v34 + 16) = v18 + 1;
      v19 = v34 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      v20 = 1 << *(v11 + 32);
      if (v7 >= v20)
      {
        goto LABEL_27;
      }

      v21 = *(v9 + 8 * v10);
      if ((v21 & (1 << v7)) == 0)
      {
        goto LABEL_28;
      }

      v2 = v11;
      if (*(v11 + 36) != v33)
      {
        goto LABEL_29;
      }

      v22 = v21 & (-2 << (v7 & 0x3F));
      if (v22)
      {
        v20 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v10 << 6;
        v24 = v10 + 1;
        v25 = (v28 + 8 * v10);
        while (v24 < (v20 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            sub_1ABAC933C(v7, v33, v31 & 1);
            v20 = __clz(__rbit64(v26)) + v23;
            goto LABEL_20;
          }
        }

        sub_1ABAC933C(v7, v33, v31 & 1);
      }

LABEL_20:
      v6 = 0;
      v8 = v32 + 1;
      v7 = v20;
      v5 = v29;
      if (v32 + 1 == v30)
      {

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
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

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
LABEL_23:
    sub_1ABECCCA8(v4);
  }
}

uint64_t sub_1ABECCCA8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1ABAD219C(&qword_1EB4D5510, &qword_1ABF4AAD0);
    v3 = sub_1ABF24D54();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1ABED20EC(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void sub_1ABECCE68(uint64_t a1, uint64_t (*a2)(id, uint64_t))
{
  v4 = objc_allocWithZone(GDVUGalleryTransaction);
  *&v4[OBJC_IVAR___GDVUGalleryTransaction_inner] = a1;
  v8.receiver = v4;
  v8.super_class = GDVUGalleryTransaction;

  v5 = objc_msgSendSuper2(&v8, sel_init);
  v7 = a2(v5, v6);

  if (v7)
  {
    swift_willThrow();
  }
}

id sub_1ABECCFC0(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a2, a1);

  return v2;
}

void GDVUGallery.clusters(for:)()
{
  sub_1ABA7E2A8();
  v2 = v0;
  sub_1ABAA4780();
  v3 = sub_1ABF23334();
  v4 = sub_1ABA7BB64(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  sub_1ABAA20B0();
  sub_1ABAFF390(0, &qword_1ED871D80, 0x1E69E58C0);
  v9 = objc_opt_self();
  v10 = [v9 person];
  v11 = sub_1ABF247B4();

  if (v11)
  {
    v12 = *(v0 + OBJC_IVAR___GDVUGallery_inner);
    v13 = MEMORY[0x1E69E05C8];
LABEL_5:
    (*(v6 + 104))(v1, *v13, v3);
    sub_1ABF23694();
    (*(v6 + 8))(v1, v3);
    sub_1ABA7BC1C();
    return;
  }

  v14 = [v9 animal];
  sub_1ABA826A8();
  v15 = sub_1ABF247B4();

  if (v15)
  {
    v16 = *(v2 + OBJC_IVAR___GDVUGallery_inner);
    v13 = MEMORY[0x1E69E05C0];
    goto LABEL_5;
  }

  sub_1ABAD219C(&qword_1EB4D1970, &qword_1ABF33B00);
  sub_1ABA7BC1C();

  sub_1ABF239C4();
}

Swift::Void __swiftcall GDVUGallery.updateSocialGroups(with:)(Swift::OpaquePointer with)
{
  sub_1ABA7E2A8();
  sub_1ABAA4348();
  v4 = sub_1ABF23374();
  v5 = sub_1ABA7BB64(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7BC58();
  sub_1ABAA3B24();
  v10 = *(v2 + OBJC_IVAR___GDVUGallery_inner);
  v11 = sub_1ABAAB7C8();
  if (!v11)
  {
LABEL_10:
    sub_1ABF23504();

    sub_1ABA7BC1C();
    return;
  }

  v12 = v11;
  v20 = MEMORY[0x1E69E7CC0];
  sub_1ABADEF24();
  if ((v12 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v12; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1AC5AA170](i);
      }

      else
      {
        v14 = *(v1 + 8 * i + 32);
      }

      v15 = v14;
      v16 = *&v14[OBJC_IVAR___GDVUSocialGroup_inner];
      v17 = *(*v16 + 88);
      sub_1ABA7EF0C();
      swift_beginAccess();
      (*(v7 + 16))(v3, v16 + v17, v4);

      v19 = *(v20 + 16);
      v18 = *(v20 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1ABA7BBEC(v18);
        sub_1ABADEF24();
      }

      *(v20 + 16) = v19 + 1;
      (*(v7 + 32))(v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19, v3, v4);
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t GDVUGallery.reset(with:)(uint64_t a1)
{
  v3 = sub_1ABF236B4();
  v4 = sub_1ABA7BB64(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7AC18();
  v11 = v9 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - v14;
  v16 = *(v1 + OBJC_IVAR___GDVUGallery_inner);
  v17 = MEMORY[0x1E69E0670];
  if (a1 != 1)
  {
    v17 = MEMORY[0x1E69E0668];
  }

  (*(v6 + 104))(v11, *v17, v3, v13);
  (*(v6 + 32))(v15, v11, v3);
  sub_1ABF235C4();
  return (*(v6 + 8))(v15, v3);
}

uint64_t GDVUGallery.update(progressHandler:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  v6 = *(v2 + OBJC_IVAR___GDVUGallery_inner);
  v7 = sub_1ABA826A8();
  sub_1ABE36260(v7);
  sub_1ABA7AC64();
  sub_1ABF23624();
  v8 = sub_1ABA7AC64();
  sub_1ABAC9398(v8);
  v9 = sub_1ABA7AC64();
  return sub_1ABAC9398(v9);
}

uint64_t sub_1ABECD754(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = sub_1ABF23414();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  v10 = objc_allocWithZone(GDVUProgressStatus);
  v11 = sub_1ABECDD64(v8);
  v12 = a2();

  return v12 & 1;
}

uint64_t GDVUGallery.keyObservations(for:limit:offset:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___GDVUGallery_inner);
  v3 = sub_1ABF23444();
  v4 = *(v3 + 16);
  if (v4)
  {
    if (qword_1EB4CE780 != -1)
    {
      sub_1ABA8FDB8();
      swift_once();
    }

    sub_1ABF237F4();
    v5 = (v3 + 40);
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v7 = *(v5 - 1);
      v8 = *v5;
      v9 = sub_1ABA826A8();
      sub_1ABA7AA24(v9, v10);
      v11 = sub_1ABF237D4();
      v12 = sub_1ABF24654();
      v13 = sub_1ABA84024();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 134218496;
        *(v15 + 4) = a1;
        *(v15 + 12) = 2048;
        *(v15 + 14) = v7;
        *(v15 + 22) = 2048;
        *(v15 + 24) = v8;
        _os_log_impl(&dword_1ABA78000, v11, v12, "keyObservation for entity %ld : %ld (%f", v15, 0x20u);
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }

      sub_1ABAD219C(&qword_1EB4DC7C8, &qword_1ABF78598);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF34740;
      *(inited + 32) = v7;
      *(inited + 40) = v8;
      v17 = sub_1ABF239C4();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = *(v6 + 16);
        sub_1ABADCD4C();
        v6 = v21;
      }

      v19 = *(v6 + 16);
      v18 = *(v6 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1ABA7BBEC(v18);
        sub_1ABADCD4C();
        v6 = v22;
      }

      *(v6 + 16) = v19 + 1;
      *(v6 + 8 * v19 + 32) = v17;
      v5 += 4;
      --v4;
    }

    while (v4);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v6;
}

id sub_1ABECDD64(uint64_t a1)
{
  v3 = sub_1ABF23414();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, a1, v3, v6);
  v9 = sub_1ABAD219C(&qword_1EB4DC920, &unk_1ABF78660);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  (*(v4 + 32))(v12 + *(*v12 + 88), v8, v3);
  *&v1[OBJC_IVAR___GDVUProgressStatus_inner] = v12;
  v15.receiver = v1;
  v15.super_class = GDVUProgressStatus;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  (*(v4 + 8))(a1, v3);
  return v13;
}

float GDVUProgressStatus.fractionCompleted.getter()
{
  v1 = sub_1ABF23414();
  v2 = sub_1ABA7BB64(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7BC58();
  sub_1ABAA20B0();
  sub_1ABA97E98(OBJC_IVAR___GDVUProgressStatus_inner);
  v8 = *(v7 + 88);
  sub_1ABA7EF0C();
  swift_beginAccess();
  v9 = sub_1ABAA560C();
  v10(v9);
  sub_1ABF23404();
  v12 = v11;
  (*(v4 + 8))(v0, v1);
  return v12;
}

void __swiftcall GDVUSocialGroup.init(numberOfMomentNodes:tags:)(GDVUSocialGroup *__return_ptr retstr, NSNumber_optional numberOfMomentNodes, Swift::OpaquePointer tags)
{
  isa = numberOfMomentNodes.value.super.super.isa;
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1ABF21F04();
  v5 = sub_1ABF240C4();

  sub_1ABA8E58C();
  [v6 v7];
}

id GDVUSocialGroup.init(numberOfMomentNodes:tags:)()
{
  sub_1ABAA4348();
  v3 = sub_1ABF23374();
  v4 = sub_1ABA7BB64(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  sub_1ABA96A10();
  if (v0)
  {
    [v0 integerValue];
  }

  sub_1ABF23354();
  v9 = sub_1ABAD219C(&qword_1EB4DC7D8, &unk_1ABF785A0);
  sub_1ABA90758(v9);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + *(*v10 + 88), v2, v3);
  *&v1[OBJC_IVAR___GDVUSocialGroup_inner] = v10;
  v13.receiver = v1;
  v13.super_class = GDVUSocialGroup;
  v11 = objc_msgSendSuper2(&v13, sel_init);

  return v11;
}

id sub_1ABECE2BC()
{
  v2 = sub_1ABF23374();
  v3 = sub_1ABA7BB64(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7BC58();
  sub_1ABA96A10();
  v8 = *(v0 + OBJC_IVAR___GDVUSocialGroup_inner);
  v9 = *(*v8 + 88);
  sub_1ABA7EF0C();
  swift_beginAccess();
  (*(v5 + 16))(v1, v8 + v9, v2);
  v10 = sub_1ABF23344();
  LOBYTE(v9) = v11;
  (*(v5 + 8))(v1, v2);
  result = 0;
  if ((v9 & 1) == 0)
  {
    return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }

  return result;
}

id sub_1ABECE404(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  sub_1ABF21F04();
  v5 = sub_1ABF240C4();

  return v5;
}

uint64_t sub_1ABECE470()
{
  v1 = sub_1ABF23374();
  v2 = sub_1ABA7BB64(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7BC58();
  sub_1ABAA20B0();
  sub_1ABA97E98(OBJC_IVAR___GDVUSocialGroup_inner);
  v8 = *(v7 + 88);
  sub_1ABA7EF0C();
  swift_beginAccess();
  v9 = sub_1ABAA560C();
  v10(v9);
  v11 = sub_1ABF23364();
  (*(v4 + 8))(v0, v1);
  return v11;
}

id sub_1ABECE5A8()
{
  v1 = type metadata accessor for VisualUnderstandingService.Context(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1ABF21F04();
  sub_1ABA7B9B4(v5, 1, 1, v6);
  v7 = *(v2 + 28);
  sub_1ABA7B9B4(&v5[v7], 1, 1, v6);
  v8 = *(v2 + 32);
  v5[v8] = 3;
  sub_1ABAB480C(v5, &qword_1EB4DC6F0, qword_1ABF78360);
  sub_1ABA7B9B4(v5, 1, 1, v6);
  sub_1ABAB480C(&v5[v7], &qword_1EB4DC6F0, qword_1ABF78360);
  sub_1ABA7B9B4(&v5[v7], 1, 1, v6);
  v5[v8] = 3;
  v9 = sub_1ABAD219C(&qword_1EB4DC900, &unk_1ABF78640);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = *(*v12 + 88);
  sub_1ABED25C4();
  *&v0[OBJC_IVAR___GDVUContext_inner] = v12;
  v15.receiver = v0;
  v15.super_class = GDVUContext;
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t GDVUContext.moment.getter()
{
  v1 = OBJC_IVAR___GDVUContext_inner;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v2 = *(**(v0 + v1) + 88);
  sub_1ABA7EF0C();
  swift_beginAccess();
  return sub_1ABAE2EC4();
}

void GDVUContext.moment.setter()
{
  sub_1ABA7E2A8();
  v3 = sub_1ABAA4348();
  v4 = type metadata accessor for VisualUnderstandingService.Context(v3);
  v5 = sub_1ABA7AB80(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7BC58();
  v10 = v9 - v8;
  v11 = sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);
  sub_1ABA7AB80(v11);
  v13 = *(v12 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABAA3B24();
  sub_1ABA8E58C();
  sub_1ABAE2EC4();
  v15 = OBJC_IVAR___GDVUContext_inner;
  swift_beginAccess();
  v16 = *(**(v1 + v15) + 88);
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA7E1C8();
  sub_1ABED22C8();
  sub_1ABAA3384(v10);
  sub_1ABA8E58C();
  sub_1ABAE2EC4();
  sub_1ABED1F34(v10);
  sub_1ABAA3384(v2);
  swift_endAccess();
  sub_1ABAA3384(v0);
  sub_1ABA7BC1C();
}

uint64_t GDVUContext.asset.getter()
{
  v1 = OBJC_IVAR___GDVUContext_inner;
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA7AEA4(*(v0 + v1));
  v4 = v3 + *(v2 + 88);
  sub_1ABA7EF0C();
  swift_beginAccess();
  v5 = *(type metadata accessor for VisualUnderstandingService.Context(0) + 20);
  return sub_1ABAE2EC4();
}

void sub_1ABECEA48(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v8 = sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);
  sub_1ABA7AB80(v8);
  v10 = *(v9 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABAA20B0();
  if (a3)
  {
    sub_1ABF21EE4();
    v12 = sub_1ABF21F04();
    v13 = 0;
  }

  else
  {
    v12 = sub_1ABF21F04();
    v13 = 1;
  }

  sub_1ABA7B9B4(v4, v13, 1, v12);
  v14 = a1;
  a4(v4);
}

void GDVUContext.asset.setter()
{
  sub_1ABA7E2A8();
  v2 = sub_1ABAA4348();
  v3 = type metadata accessor for VisualUnderstandingService.Context(v2);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7BC58();
  v8 = v7 - v6;
  v9 = sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);
  sub_1ABA7AB80(v9);
  v11 = *(v10 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v17 - v13;
  sub_1ABA8E58C();
  sub_1ABAE2EC4();
  v15 = OBJC_IVAR___GDVUContext_inner;
  swift_beginAccess();
  v16 = *(**(v1 + v15) + 88);
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA7E1C8();
  sub_1ABED22C8();
  sub_1ABAA3384(v8 + *(v4 + 28));
  sub_1ABA8E58C();
  sub_1ABAE2EC4();
  sub_1ABED1F34(v8);
  sub_1ABAA3384(v14);
  swift_endAccess();
  sub_1ABAA3384(v0);
  sub_1ABA7BC1C();
}

uint64_t sub_1ABECEC78@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    sub_1ABF21EE4();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_1ABF21F04();

  return sub_1ABA7B9B4(a3, v6, 1, v7);
}

void sub_1ABECECF4(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = sub_1ABA826A8();
  v9 = sub_1ABAD219C(v7, v8);
  sub_1ABA7AB80(v9);
  v11 = *(v10 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  sub_1ABAE2EC4();
  v15 = *a2;
  v16 = sub_1ABF21F04();
  v17 = 0;
  if (sub_1ABA7E1E0(v14, 1, v16) != 1)
  {
    v17 = sub_1ABF21ED4();
    (*(*(v16 - 8) + 8))(v14, v16);
  }

  [v15 *a5];
}

uint64_t GDVUContext.source.getter()
{
  v1 = OBJC_IVAR___GDVUContext_inner;
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA7AEA4(*(v0 + v1));
  v4 = v3 + *(v2 + 88);
  sub_1ABA7EF0C();
  swift_beginAccess();
  return qword_1ABF78690[*(v4 + *(type metadata accessor for VisualUnderstandingService.Context(0) + 24))];
}

uint64_t GDVUContext.source.setter(unint64_t a1)
{
  v4 = type metadata accessor for VisualUnderstandingService.Context(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  sub_1ABA96A10();
  if (a1 >= 4)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0x2010003u >> (8 * a1);
  }

  v8 = OBJC_IVAR___GDVUContext_inner;
  swift_beginAccess();
  v9 = *(**(v1 + v8) + 88);
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA7E1C8();
  sub_1ABED22C8();
  *(v2 + *(v5 + 32)) = v7;
  sub_1ABED1F34(v2);
  return swift_endAccess();
}

uint64_t GDVUEntityClass.id.getter()
{
  v1 = *(v0 + OBJC_IVAR___GDVUEntityClass_inner);
  v2 = *(v0 + OBJC_IVAR___GDVUEntityClass_inner + 8);

  return sub_1ABA7D000();
}

id sub_1ABECF078(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_1ABF23BD4();

  return v3;
}

uint64_t GDVUEntityClass.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___GDVUEntityClass_inner + 16);
  v2 = *(v0 + OBJC_IVAR___GDVUEntityClass_inner + 24);

  return sub_1ABA7D000();
}

uint64_t GDVUEntityClass.isEqual(_:)()
{
  sub_1ABAE2EC4();
  if (!v7)
  {
    sub_1ABAB480C(&v6, &qword_1EB4D3000, &unk_1ABF3AA60);
LABEL_10:
    v3 = 0;
    return v3 & 1;
  }

  sub_1ABAFF238(&v6, v8);
  v1 = sub_1ABAE2BF0(v8, &v6);
  type metadata accessor for GDVUEntityClass(v1);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1ABA84B54(v8);
    goto LABEL_10;
  }

  if (*(v0 + OBJC_IVAR___GDVUEntityClass_inner + 16) == *&v5[OBJC_IVAR___GDVUEntityClass_inner + 16] && *(v0 + OBJC_IVAR___GDVUEntityClass_inner + 24) == *&v5[OBJC_IVAR___GDVUEntityClass_inner + 24])
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1ABF25054();
  }

  sub_1ABA84B54(v8);
  return v3 & 1;
}

void static GDVUEntityClass.person()()
{
  if (_Records_GDEntityClass_records)
  {
    v7 = v0;
    v8 = v1;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x270), *(_Records_GDEntityClass_records + 0x278), *(_Records_GDEntityClass_records + 0x280), v6);
    v2 = sub_1ABA90504();
    *&v3 = sub_1ABA83D90(v2, OBJC_IVAR___GDVUEntityClass_inner, v4).n128_u64[0];
    objc_msgSendSuper2(&v5, sel_init, v3);
  }

  else
  {
    __break(1u);
  }
}

void static GDVUEntityClass.animal()()
{
  if (_Records_GDEntityClass_records)
  {
    v7 = v0;
    v8 = v1;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x5A0), *(_Records_GDEntityClass_records + 0x5A8), *(_Records_GDEntityClass_records + 0x5B0), v6);
    v2 = sub_1ABA90504();
    *&v3 = sub_1ABA83D90(v2, OBJC_IVAR___GDVUEntityClass_inner, v4).n128_u64[0];
    objc_msgSendSuper2(&v5, sel_init, v3);
  }

  else
  {
    __break(1u);
  }
}

void static GDVUEntityClass.entity()()
{
  if (_Records_GDEntityClass_records)
  {
    v7 = v0;
    v8 = v1;
    sub_1ABA8882C(*_Records_GDEntityClass_records, *(_Records_GDEntityClass_records + 8), *(_Records_GDEntityClass_records + 8 + 8), v6);
    v2 = sub_1ABA90504();
    *&v3 = sub_1ABA83D90(v2, OBJC_IVAR___GDVUEntityClass_inner, v4).n128_u64[0];
    objc_msgSendSuper2(&v5, sel_init, v3);
  }

  else
  {
    __break(1u);
  }
}

void GDVUGalleryTransaction.add(with:context:priority:at:output:)()
{
  sub_1ABA7BCA8();
  v3 = v1;
  v45 = v4;
  v47 = v6;
  v48 = v5;
  v8 = v7;
  v9 = sub_1ABF23254();
  v10 = sub_1ABA7BB64(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7AC18();
  v46 = v15 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  v20 = type metadata accessor for VisualUnderstandingService.Context(0);
  v21 = sub_1ABA7AB80(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7BC58();
  sub_1ABAA3B24();
  v24 = sub_1ABAD219C(&qword_1EB4DC700, &unk_1ABF785B0);
  sub_1ABA7AB80(v24);
  v26 = *(v25 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v45 - v28;
  v30 = *(v0 + OBJC_IVAR___GDVUGalleryTransaction_inner);
  if (v8)
  {
    v31 = OBJC_IVAR___GDVUContext_inner;
    sub_1ABA7EF0C();
    swift_beginAccess();
    v32 = *(**(v8 + v31) + 88);
    sub_1ABA7EF0C();
    swift_beginAccess();
    sub_1ABA7E1C8();
    v3 = v1;
    sub_1ABED22C8();
    VUGallery.Context.init(_:)(v2, v29);
    v33 = sub_1ABF23654();
    v34 = 0;
  }

  else
  {
    v33 = sub_1ABF23654();
    v34 = 1;
  }

  sub_1ABA7B9B4(v29, v34, 1, v33);
  v35 = MEMORY[0x1E69E05A8];
  v36 = v46;
  if (v47)
  {
    v35 = MEMORY[0x1E69E05B0];
  }

  (*(v12 + 104))(v46, *v35, v9);
  (*(v12 + 32))(v19, v36, v9);
  v37 = sub_1ABF23214();
  if (v3)
  {
    v38 = *(v12 + 8);
    v39 = sub_1ABA7AC64();
    v40(v39);
    sub_1ABAB480C(v29, &qword_1EB4DC700, &unk_1ABF785B0);
  }

  else
  {
    v41 = v37;
    v42 = *(v12 + 8);
    v43 = sub_1ABA7AC64();
    v44(v43);
    sub_1ABAB480C(v29, &qword_1EB4DC700, &unk_1ABF785B0);
    *v45 = v41;
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABECF934(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v7 = a1;
  a5(a3);

  return 1;
}

void GDVUGalleryTransaction.tag(_:with:type:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1ABAA4780();
  v7 = sub_1ABF23244();
  v8 = sub_1ABA7BB64(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7BC58();
  sub_1ABAA3B24();
  if (v4)
  {
    v13 = *(v3 + OBJC_IVAR___GDVUGalleryTransaction_inner);
    if (a3 > 2)
    {
      v14 = MEMORY[0x1E69E05A0];
    }

    else
    {
      v14 = qword_1E7961E48[a3];
    }

    (*(v10 + 104))(v5, *v14, v7);
    sub_1ABF23224();
    (*(v10 + 8))(v5, v7);
  }

  else
  {
    if (qword_1EB4CE780 != -1)
    {
      sub_1ABA8FDB8();
      swift_once();
    }

    v15 = sub_1ABF237F4();
    sub_1ABA7AA24(v15, qword_1EB4CE788);
    v16 = sub_1ABF237D4();
    v17 = sub_1ABF24674();
    v18 = sub_1ABA84024();
    if (os_log_type_enabled(v18, v19))
    {
      sub_1ABA8179C();
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1ABA78000, v16, v17, "GDVUGalleryTransaction.tag: Observation ID should never be zero.", v20, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }
  }
}

void sub_1ABECFEA4(uint64_t a1, void (*a2)(void), const char *a3)
{
  if (a1)
  {
    v4 = *(v3 + OBJC_IVAR___GDVUGalleryTransaction_inner);
    a2();
  }

  else
  {
    if (qword_1EB4CE780 != -1)
    {
      sub_1ABA8FDB8();
      swift_once();
    }

    v6 = sub_1ABF237F4();
    sub_1ABA7AA24(v6, qword_1EB4CE788);
    v7 = sub_1ABF237D4();
    v8 = sub_1ABF24674();
    v9 = sub_1ABA84024();
    if (os_log_type_enabled(v9, v10))
    {
      sub_1ABA8179C();
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v7, v8, a3, v11, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }
  }
}

uint64_t sub_1ABECFFF0()
{
  v0 = sub_1ABF237F4();
  sub_1ABB9009C(v0, qword_1EB4CE788);
  sub_1ABA7AA24(v0, qword_1EB4CE788);
  return sub_1ABF237E4();
}

uint64_t sub_1ABED0064(void *a1)
{
  v3 = v1;
  type metadata accessor for VisualUnderstandingStreamingGallery();
  v5 = swift_allocObject();
  v6 = VisualUnderstandingStreamingGallery.init()();
  if (v2)
  {

    type metadata accessor for GDVUStreamingGallery(v7);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *&v3[OBJC_IVAR___GDVUStreamingGallery_inner] = v6;
    v9.receiver = v3;
    v9.super_class = GDVUStreamingGallery;
    v5 = objc_msgSendSuper2(&v9, sel_init);
  }

  return v5;
}

uint64_t sub_1ABED01E0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a1;
  a4();

  return 1;
}

void *GDVUStreamingGallery.update(withMaxKeyFacesPerCluster:)(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1ABF240C4();
  v11[0] = 0;
  v4 = [v1 updateWithMaxKeyFacesPerCluster:a1 sortBy:v3 error:v11];

  v6 = v11[0];
  if (v4)
  {
    type metadata accessor for GDVUClusterResult(v5);
    v3 = sub_1ABF240D4();
    v7 = v6;
  }

  else
  {
    v8 = v11[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v3;
}

void GDVUStreamingGallery.update(withMaxKeyFacesPerCluster:sortBy:)()
{
  v2 = *(v0 + OBJC_IVAR___GDVUStreamingGallery_inner);
  sub_1ABEC48D4();
  if (!v1)
  {
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    v5 = *(v4 + 16);
    if (v5)
    {
      v14 = MEMORY[0x1E69E7CC0];
      sub_1ABF24BC4();
      v6 = 0;
      v7 = (v4 + 48);
      while (v6 < *(v4 + 16))
      {
        v8 = *(v7 - 2);
        v9 = *v7;
        v10 = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
        if (!v10)
        {
          goto LABEL_14;
        }

        v11 = v10;
        ++v6;
        v12 = objc_allocWithZone(GDVUClusterResult);
        sub_1ABED0988(v8, v11, v9);
        sub_1ABF24B94();
        v13 = *(v14 + 16);
        sub_1ABF24BD4();
        sub_1ABF24BE4();
        sub_1ABF24BA4();
        v7 += 24;
        if (v5 == v6)
        {

          return;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
    }

    else
    {
    }
  }
}

uint64_t GDVUStreamingGallery.add(with:observationIdentifiers:trackIdentifiers:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1ABAD219C(&qword_1EB4DC6F8, &unk_1ABF77870);
  sub_1ABA7AB80(v7);
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABAA3B24();
  v11 = *(v4 + OBJC_IVAR___GDVUStreamingGallery_inner);
  if (a4)
  {
    v12 = OBJC_IVAR___GDVUContext_inner;
    sub_1ABA7EF0C();
    swift_beginAccess();
    v13 = *(**(a4 + v12) + 88);
    sub_1ABA7EF0C();
    swift_beginAccess();
    sub_1ABA7E1C8();
    sub_1ABED22C8();
    v14 = type metadata accessor for VisualUnderstandingService.Context(0);
    v15 = 0;
  }

  else
  {
    v14 = type metadata accessor for VisualUnderstandingService.Context(0);
    v15 = 1;
  }

  sub_1ABA7B9B4(v5, v15, 1, v14);
  sub_1ABEC41D0();
  v17 = v16;
  sub_1ABAB480C(v5, &qword_1EB4DC6F8, &unk_1ABF77870);
  return v17;
}

id sub_1ABED0988(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + OBJC_IVAR___GDVUClusterResult_observationIdentifier) = a1;
  *(v3 + OBJC_IVAR___GDVUClusterResult_entityIdentifier) = a2;
  *(v3 + OBJC_IVAR___GDVUClusterResult_isKeyFace) = a3;
  v5.super_class = GDVUClusterResult;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t GDVUChangeBookmark.encodeToData()()
{
  v1 = sub_1ABF21854();
  sub_1ABA90758(v1);
  swift_allocObject();
  sub_1ABF21844();
  v4 = *(v0 + OBJC_IVAR___GDVUChangeBookmark_inner);
  v5 = *(v0 + OBJC_IVAR___GDVUChangeBookmark_inner + 8);
  sub_1ABB0DBF0(v4, v5);
  sub_1ABED2334();
  v2 = sub_1ABF21834();
  sub_1ABA96210(v4, v5);

  return v2;
}

id static GDVUChangeBookmark.decode(from:)(uint64_t a1, id a2)
{
  sub_1ABAA4780();
  v4 = sub_1ABF217F4();
  sub_1ABA90758(v4);
  swift_allocObject();
  sub_1ABF217E4();
  sub_1ABED2388();
  sub_1ABF217D4();
  if (v2)
  {
  }

  else
  {
    v5 = v11;
    v6 = objc_allocWithZone(GDVUChangeBookmark);
    v7 = &v6[OBJC_IVAR___GDVUChangeBookmark_inner];
    *v7 = v10;
    *(v7 + 1) = v5;
    v9.receiver = v6;
    v9.super_class = GDVUChangeBookmark;
    a2 = objc_msgSendSuper2(&v9, sel_init);
  }

  return a2;
}

uint64_t GDVUChangeBookmark.isEqual(_:)()
{
  swift_getObjectType();
  sub_1ABAE2EC4();
  if (!v4)
  {
    sub_1ABAB480C(&v3, &qword_1EB4D3000, &unk_1ABF3AA60);
LABEL_6:
    v0 = 0;
    return v0 & 1;
  }

  sub_1ABAFF238(&v3, v5);
  sub_1ABAE2BF0(v5, &v3);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1ABA84B54(v5);
    goto LABEL_6;
  }

  sub_1ABAFF390(0, &qword_1ED871D80, 0x1E69E58C0);
  v0 = sub_1ABF247B4();

  sub_1ABA84B54(v5);
  return v0 & 1;
}

uint64_t sub_1ABED0F2C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1ABF248F4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_1ABAB480C(v10, &qword_1EB4D3000, &unk_1ABF3AA60);
  return v8 & 1;
}

uint64_t GDVUChangeBookmark.hash.getter()
{
  v1 = *(v0 + OBJC_IVAR___GDVUChangeBookmark_inner);
  v2 = *(v0 + OBJC_IVAR___GDVUChangeBookmark_inner + 8);
  sub_1ABF25234();
  sub_1ABF21DE4();
  return sub_1ABF25294();
}

uint64_t GDVUObservationUpdate.observationIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___GDVUObservationUpdate_inner + 8);
  if (!v1)
  {
    if (qword_1EB4CE780 != -1)
    {
      sub_1ABA8FDB8();
      swift_once();
    }

    v2 = sub_1ABF237F4();
    sub_1ABA7AA24(v2, qword_1EB4CE788);
    v3 = sub_1ABF237D4();
    v4 = sub_1ABF24674();
    v5 = sub_1ABA84024();
    if (os_log_type_enabled(v5, v6))
    {
      sub_1ABA8179C();
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1ABA78000, v3, v4, "GDVUObservationUpdate.observationIdentifier: Observation ID should never be zero. This is an error in VU.", v7, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }
  }

  return v1;
}

id GDVUObservationUpdate.entityIdentifier.getter()
{
  result = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_1ABED1308()
{
  v1 = type metadata accessor for VisualUnderstandingService.EntityUpdate(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1ABED22C8();
  v3 = sub_1ABAD219C(&qword_1EB4DC930, &qword_1ABF78678);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  v7 = *(*v6 + 88);
  sub_1ABED25C4();
  *&v0[OBJC_IVAR___GDVUEntityUpdate_inner] = v6;
  v10.receiver = v0;
  v10.super_class = GDVUEntityUpdate;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  sub_1ABED261C();
  return v8;
}

uint64_t GDVUEntityUpdate.updateType.getter()
{
  v1 = *(v0 + OBJC_IVAR___GDVUEntityUpdate_inner);
  v2 = *(*v1 + 88);
  sub_1ABA7EF0C();
  swift_beginAccess();
  return *(v1 + v2);
}

id GDVUEntityUpdate.entityIdentifier.getter()
{
  sub_1ABA7AEA4(*(v0 + OBJC_IVAR___GDVUEntityUpdate_inner));
  v3 = v2 + *(v1 + 88);
  sub_1ABA7EF0C();
  swift_beginAccess();
  result = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t GDVUEntityUpdate.tag.getter()
{
  sub_1ABA7AEA4(*(v0 + OBJC_IVAR___GDVUEntityUpdate_inner));
  v3 = v2 + *(v1 + 88);
  sub_1ABA7EF0C();
  swift_beginAccess();
  v4 = *(type metadata accessor for VisualUnderstandingService.EntityUpdate(0) + 24);
  return sub_1ABAE2EC4();
}

id sub_1ABED1658(void *a1, uint64_t a2, float a3)
{
  v7 = sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - v9;
  result = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
  if (result)
  {
    *&v3[OBJC_IVAR___GDVURecognitionResult_entityIdentifier] = result;
    sub_1ABAE2EC4();
    v12 = sub_1ABAD219C(&qword_1EB4DC938, &unk_1ABF78680);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    sub_1ABED2054(v10, v15 + *(*v15 + 88));
    *&v3[OBJC_IVAR___GDVURecognitionResult__tag] = v15;
    *&v3[OBJC_IVAR___GDVURecognitionResult_confidence] = a3;
    v17.receiver = v3;
    v17.super_class = GDVURecognitionResult;
    v16 = objc_msgSendSuper2(&v17, sel_init);
    sub_1ABAB480C(a2, &qword_1EB4DC6F0, qword_1ABF78360);
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id GDVURecognitionResult.entityIdentifier.getter()
{
  v1 = OBJC_IVAR___GDVURecognitionResult_entityIdentifier;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void GDVURecognitionResult.entityIdentifier.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___GDVURecognitionResult_entityIdentifier;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1ABED190C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 entityIdentifier];
  *a2 = result;
  return result;
}

id sub_1ABED1960(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);
  sub_1ABA7AB80(v5);
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABAA26DC();
  a3();
  v9 = sub_1ABF21F04();
  v10 = 0;
  if (sub_1ABA7E1E0(v3, 1, v9) != 1)
  {
    v10 = sub_1ABF21ED4();
    (*(*(v9 - 8) + 8))(v3, v9);
  }

  return v10;
}

uint64_t GDVURecognitionResult.tag.getter()
{
  sub_1ABA97E98(OBJC_IVAR___GDVURecognitionResult__tag);
  v1 = *(v0 + 88);
  sub_1ABA7EF0C();
  swift_beginAccess();
  return sub_1ABAE2EC4();
}

id sub_1ABED1B80()
{
  v1 = type metadata accessor for EntityRecognitionClient(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1ABED22C8();
  v3 = sub_1ABAD219C(&qword_1EB4DC918, &qword_1ABF78658);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  v7 = *(*v6 + 88);
  sub_1ABED25C4();
  *&v0[OBJC_IVAR___GDVUEntityRecognitionClient_inner] = v6;
  v10.receiver = v0;
  v10.super_class = GDVUEntityRecognitionClient;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  sub_1ABED261C();
  return v8;
}

id sub_1ABED1D28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAA4780();
  v5 = type metadata accessor for EntityRecognitionClient(v4);
  v6 = sub_1ABA7BBB0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7BC58();
  sub_1ABAA26DC();
  if (*v2 != -1)
  {
    swift_once();
  }

  sub_1ABA7AA24(v5, a2);
  sub_1ABA8C4CC();
  sub_1ABED22C8();
  v9 = objc_allocWithZone(GDVUEntityRecognitionClient);
  return sub_1ABED1B80();
}

uint64_t sub_1ABED1F34(uint64_t a1)
{
  v3 = *v1;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    v5 = *(*v4 + 88);
    swift_beginAccess();
    sub_1ABED2670(a1, v4 + v5);
    return swift_endAccess();
  }

  else
  {
    v7 = sub_1ABAD219C(&qword_1EB4DC900, &unk_1ABF78640);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    v11 = *(*v10 + 88);
    sub_1ABED25C4();
    v12 = *v1;

    *v1 = v10;
  }

  return result;
}

uint64_t sub_1ABED2054(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABED20EC(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v27 == v5)
    {
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    v7 = *i;
    v8 = *a3;
    v9 = *(i - 1);
    v10 = v7;
    sub_1ABAF8B70();
    v13 = v12;
    v14 = v8[2];
    v15 = (v11 & 1) == 0;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_17;
    }

    v16 = v11;
    if (v8[3] >= v14 + v15)
    {
      if ((a2 & 1) == 0)
      {
        sub_1ABAD219C(&qword_1EB4DC928, &qword_1ABF78670);
        sub_1ABF24C74();
      }
    }

    else
    {
      sub_1ABC06998();
      v17 = *a3;
      sub_1ABAF8B70();
      if ((v16 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

      v13 = v18;
    }

    v20 = *a3;
    if (v16)
    {

      v21 = v20[7];
      v22 = *(v21 + 8 * v13);
      *(v21 + 8 * v13) = v10;
    }

    else
    {
      v20[(v13 >> 6) + 8] |= 1 << v13;
      *(v20[6] + 8 * v13) = v9;
      *(v20[7] + 8 * v13) = v10;
      v23 = v20[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_18;
      }

      v20[2] = v25;
    }

    ++v5;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  sub_1ABAFF390(0, &unk_1EB4CE670, off_1E795FE98);
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABED22C8()
{
  sub_1ABA81488();
  v2 = v1(0);
  sub_1ABA7BBB0(v2);
  v4 = *(v3 + 16);
  v5 = sub_1ABA7D000();
  v6(v5);
  return v0;
}

unint64_t sub_1ABED2334()
{
  result = qword_1EB4CFA58;
  if (!qword_1EB4CFA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFA58);
  }

  return result;
}

unint64_t sub_1ABED2388()
{
  result = qword_1EB4CFA50;
  if (!qword_1EB4CFA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFA50);
  }

  return result;
}

uint64_t sub_1ABED24D8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1ABED255C()
{
  result = qword_1EB4DC908;
  if (!qword_1EB4DC908)
  {
    sub_1ABAFF390(255, &unk_1EB4CE670, off_1E795FE98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC908);
  }

  return result;
}

uint64_t sub_1ABED25C4()
{
  sub_1ABA81488();
  v2 = v1(0);
  sub_1ABA7BBB0(v2);
  v4 = *(v3 + 32);
  v5 = sub_1ABA7D000();
  v6(v5);
  return v0;
}

uint64_t sub_1ABED261C()
{
  v1 = sub_1ABAA4348();
  v3 = v2(v1);
  sub_1ABA7BBB0(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1ABED2670(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualUnderstandingService.Context(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void VOPBuilder.toString.getter()
{
  v4 = *v1;
  switch((*v1 >> 59) & 0x1E | (*v1 >> 2) & 1)
  {
    case 1uLL:
      v136 = 0;
      sub_1ABA7FBD4();
      v146 = v145[3];
      v252 = v145[2];
      v147 = v145[7];
      v148 = *(v147 + 16);
      v149 = MEMORY[0x1E69E7CC0];
      while (v148 != v136)
      {
        if (v136 >= *(v147 + 16))
        {
          goto LABEL_118;
        }

        *&v254 = *(v147 + 32 + 8 * v136);
        v150 = VOPBuilder.toString.getter(isUniquelyReferenced_nonNull_native, v138, v139, v140, v141, v142, v143, v144);
        v152 = v151;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v155 = v149[2];
          sub_1ABA7BEF0();
          sub_1ABAAA4F4();
          v149 = isUniquelyReferenced_nonNull_native;
        }

        v153 = v149[2];
        if (v153 >= v149[3] >> 1)
        {
          sub_1ABAAA4F4();
          v149 = isUniquelyReferenced_nonNull_native;
        }

        v149[2] = v153 + 1;
        v154 = &v149[2 * v153];
        v154[4] = v150;
        v154[5] = v152;
        ++v136;
      }

      sub_1ABA8EE50();
      MEMORY[0x1AC5A9410](v252, v146);
      sub_1ABA81358();
      v45 = sub_1ABD7343C(v149);
      goto LABEL_100;
    case 2uLL:
      v102 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      sub_1ABF24AB4();

      sub_1ABA9A7E8();
      *&v254 = v103;
      *(&v254 + 1) = 0xED0000202C4C494ELL;
      v259 = v102;
      v112 = VOPBuilder.toString.getter(v104, v105, v106, v107, v108, v109, v110, v111);
      MEMORY[0x1AC5A9410](v112);

      sub_1ABA97C60();

      return;
    case 3uLL:
      sub_1ABA7FBD4();
      v117 = *(v116 + 16);
      sub_1ABA7D028();
      v118 = swift_allocObject();
      sub_1ABA7D028();
      v119 = swift_allocObject();
      *(v119 + 16) = v117;
      *(v118 + 16) = v119 | 0x3000000000000004;
      *&v254 = v118 | 0x1000000000000000;

      goto LABEL_94;
    case 4uLL:
      sub_1ABA7FBD4();
      v48 = *(v47 + 16);
      v49 = *(v47 + 24);
      sub_1ABA9A7E8();
      *&v254 = v50;
      *(&v254 + 1) = 0xE800000000000000;

      v59 = VOPBuilder.toString.getter(v51, v52, v53, v54, v55, v56, v57, v58);
      MEMORY[0x1AC5A9410](v59);

      sub_1ABA81358();
      sub_1ABA7D028();
      v60 = swift_allocObject();
      *(v60 + 16) = v49;
      v259 = v60 | 0x2000000000000004;
      v68 = VOPBuilder.toString.getter(v60, v61, v62, v63, v64, v65, v66, v67);
      v70 = v69;

      v71 = v68;
      goto LABEL_111;
    case 5uLL:
    case 7uLL:
      sub_1ABA7FBD4();
      v6 = *(v5 + 16);
      *&v254 = 677670497;
      *(&v254 + 1) = 0xE400000000000000;
      v7 = *(v6 + 16);

      v16 = MEMORY[0x1E69E7CC0];
      while (2)
      {
        if (!v7)
        {
          goto LABEL_20;
        }

        if (*(v6 + 16))
        {
          sub_1ABA844CC(v8, v9, v10, v11, v12, v13, v14, v15, v251);
          sub_1ABA93AC0();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = *(v16 + 16);
            sub_1ABA7BEF0();
            sub_1ABAAA4F4();
            v16 = v19;
          }

          v17 = *(v16 + 24);
          if (*(v16 + 16) >= v17 >> 1)
          {
            sub_1ABA7DD04(v17);
            sub_1ABAAA4F4();
            v16 = v20;
          }

          sub_1ABA90BFC();
          continue;
        }

        break;
      }

      __break(1u);
      goto LABEL_116;
    case 6uLL:
      sub_1ABA7FBD4();
      v31 = *(v30 + 16);
      *&v254 = 2650735;
      *(&v254 + 1) = 0xE300000000000000;
      v32 = *(v31 + 16);

      v16 = MEMORY[0x1E69E7CC0];
      while (2)
      {
        if (!v32)
        {
LABEL_20:

          v259 = v16;
          sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
          sub_1ABAAA5C0();
          sub_1ABA7ECA8();
          v45 = sub_1ABF23B54();
LABEL_100:
          v243 = v45;
          v70 = v46;

          v71 = v243;
LABEL_111:
          MEMORY[0x1AC5A9410](v71, v70);
          goto LABEL_112;
        }

        if (*(v31 + 16))
        {
          sub_1ABA844CC(v33, v34, v35, v36, v37, v38, v39, v40, v251);
          sub_1ABA93AC0();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = *(v16 + 16);
            sub_1ABA7BEF0();
            sub_1ABAAA4F4();
            v16 = v43;
          }

          v41 = *(v16 + 24);
          if (*(v16 + 16) >= v41 >> 1)
          {
            sub_1ABA7DD04(v41);
            sub_1ABAAA4F4();
            v16 = v44;
          }

          sub_1ABA90BFC();
          continue;
        }

        break;
      }

LABEL_116:
      __break(1u);
      goto LABEL_117;
    case 8uLL:
      sub_1ABA7FBD4();
      v90 = *(v89 + 16);
      v91 = *(v90 + 16);

      v92 = 0;
      v93 = (v90 + 40);
      v94 = MEMORY[0x1E69E7CC0];
      while (2)
      {
        if (v91 != v92)
        {
          if (v92 < *(v90 + 16))
          {
            v96 = *(v93 - 1);
            v95 = *v93;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v99 = v94[2];
              sub_1ABA7BEF0();
              sub_1ABAAA4F4();
              v94 = v100;
            }

            v97 = v94[2];
            v2 = v97 + 1;
            if (v97 >= v94[3] >> 1)
            {
              sub_1ABAAA4F4();
              v94 = v101;
            }

            v94[2] = v2;
            v98 = &v94[2 * v97];
            v98[4] = v96;
            v98[5] = v95;
            v93 += 5;
            ++v92;
            continue;
          }

LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        break;
      }

      v232 = _Records_GDEntityPredicate_records;
      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_126;
      }

      v233 = swift_allocObject();
      sub_1ABA91D48(v232[156], *(v232 + 40), *(v232 + 41), &v254);
      v234 = v255;
      v235 = v256;
      v236 = v257;
      *(v233 + 16) = v254;
      *(v233 + 32) = v234;
      *(v233 + 40) = v235;
      *(v233 + 48) = v236;
      sub_1ABD7343C(v94);
      sub_1ABA93AC0();

      *(v233 + 56) = v232;
      *(v233 + 64) = v2;
      *(v233 + 72) = 0;
      *(v233 + 80) = 0;
      *(v233 + 87) = 0;
      *&v254 = v233;
LABEL_94:
      VOPBuilder.toString.getter(v120, v121, v122, v123, v124, v125, v126, v127);

      return;
    case 9uLL:
      sub_1ABA7FBD4();
      v22 = *(v21 + 16);
      v23 = *(v21 + 24);
      v24 = 0x28797469746E65;
      v25 = 0xE700000000000000;
      goto LABEL_83;
    case 0xAuLL:
      sub_1ABA7FBD4();
      v81 = *(v79 + 16);
      v80 = *(v79 + 24);
      sub_1ABA7C968();
      v259 = v82;
      v260 = v83;
      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_125;
      }

      v84 = *(_Records_GDEntityPredicate_records + 4);
      v85 = *(_Records_GDEntityPredicate_records + 5);
      v86 = _Records_GDEntityPredicate_records[12];

      sub_1ABA91D48(v86, v84, v85, &v254);
      v87 = v254;

      MEMORY[0x1AC5A9410](v87, *(&v87 + 1));

      v88 = sub_1ABA7ECA8();
      MEMORY[0x1AC5A9410](v88);
      MEMORY[0x1AC5A9410](v81, v80);

      sub_1ABA97C60();
      return;
    case 0xBuLL:
      sub_1ABA7FBD4();
      v175 = v174[2];
      v176 = v174[3];
      v177 = v174[4];
      sub_1ABA7C968();
      *&v254 = v178;
      *(&v254 + 1) = v179;
      v181 = sub_1ABED3538(v180);
      MEMORY[0x1AC5A9410](v181);

      goto LABEL_62;
    case 0xCuLL:
      sub_1ABA7FBD4();
      v27 = sub_1ABAA6288(v26);
      goto LABEL_35;
    case 0xDuLL:
      sub_1ABA7FBD4();
      v27 = sub_1ABAA6288(v113);
      v29 = v114 + 5;
LABEL_35:
      v115 = 0xE400000000000000;
      goto LABEL_38;
    case 0xEuLL:
      v194 = 0;
      sub_1ABA7FBD4();
      v196 = v195[3];
      v253 = v195[2];
      v197 = v195[4];
      v198 = *(v197 + 16);
      v199 = (v197 + 40);
      v200 = MEMORY[0x1E69E7CC0];
      while (2)
      {
        if (v198 == v194)
        {
          sub_1ABD7343C(v200);
          sub_1ABA94BE8();
          sub_1ABA8EE50();
          MEMORY[0x1AC5A9410](v253, v196);
          goto LABEL_109;
        }

        if (v194 < *(v197 + 16))
        {
          v201 = *(v199 - 1);
          v2 = *v199;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v204 = v200[2];
            sub_1ABA7BEF0();
            sub_1ABAAA4F4();
            v200 = v205;
          }

          v202 = v200[2];
          v3 = v202 + 1;
          if (v202 >= v200[3] >> 1)
          {
            sub_1ABAAA4F4();
            v200 = v206;
          }

          v200[2] = v3;
          v203 = &v200[2 * v202];
          v203[4] = v201;
          v203[5] = v2;
          v199 += 5;
          ++v194;
          continue;
        }

        break;
      }

LABEL_119:
      __break(1u);
      goto LABEL_120;
    case 0xFuLL:
      sub_1ABA7FBD4();
      v73 = v72[2];
      v74 = v72[3];
      v75 = v72[4];
      v76 = v72[5];
      v77 = v72[9];
      *&v254 = 0xD000000000000011;
      *(&v254 + 1) = 0x80000001ABF96BA0;
      MEMORY[0x1AC5A9410](v73, v74);
      sub_1ABA81358();
      sub_1ABA9052C();
      sub_1ABA81358();
      v78 = sub_1ABED3538(v77);
      MEMORY[0x1AC5A9410](v78);
      goto LABEL_112;
    case 0x10uLL:
      v210 = 0;
      sub_1ABA7FBD4();
      v212 = v211[2];
      v213 = v211[3];
      v214 = v211[4];
      *&v254 = 0;
      *(&v254 + 1) = 0xE000000000000000;
      v215 = *(v214 + 16);
      v216 = (v214 + 40);
      while (2)
      {
        if (v215 == v210)
        {
          return;
        }

        if (v210 < *(v214 + 16))
        {
          v218 = *(v216 - 1);
          v217 = *v216;
          if (v210)
          {
            v259 = 0x287465672ELL;
            v260 = 0xE500000000000000;
          }

          else
          {
            v259 = 678716775;
            v260 = 0xE400000000000000;

            MEMORY[0x1AC5A9410](v212, v213);
            v219 = sub_1ABA7ECA8();
            MEMORY[0x1AC5A9410](v219);
          }

          MEMORY[0x1AC5A9410](v218, v217);

          sub_1ABA97C60();
          MEMORY[0x1AC5A9410](v259, v260);

          v216 += 2;
          ++v210;
          continue;
        }

        break;
      }

LABEL_120:
      __break(1u);
      goto LABEL_121;
    case 0x11uLL:
      sub_1ABA7FBD4();
      v27 = v128[2];
      v28 = v128[3];
      v129 = v128[4];
      v130 = v128[5];
      v29 = 0x746567706F727071;
      v115 = 0xE900000000000028;
LABEL_38:
      *&v254 = v29;
      *(&v254 + 1) = v115;
      MEMORY[0x1AC5A9410](v27, v28);
LABEL_62:
      sub_1ABA81358();
      sub_1ABA9052C();
      goto LABEL_113;
    case 0x12uLL:
      sub_1ABA7FBD4();
      v172 = *(v171 + 16);
      v173 = *(v171 + 24);
      v24 = 677667937;
      goto LABEL_82;
    case 0x13uLL:
      sub_1ABA7FBD4();
      v208 = *(v207 + 16);
      v209 = *(v207 + 24);
      v24 = 677869153;
LABEL_82:
      v25 = 0xE400000000000000;
      goto LABEL_83;
    case 0x14uLL:
      sub_1ABA7FBD4();
      v157 = *(v156 + 16);
      v158 = *(v156 + 24);
      v24 = 0x28746E756F63;
      v25 = 0xE600000000000000;
LABEL_83:
      *&v254 = v24;
      *(&v254 + 1) = v25;

      sub_1ABA9052C();
      goto LABEL_112;
    case 0x15uLL:
      v2 = 0;
      sub_1ABA7FBD4();
      v3 = *(v159 + 16);
      v160 = *(v159 + 24);
      v161 = *(v3 + 16);
      v162 = MEMORY[0x1E69E7CC0];
      while (2)
      {
        v163 = v3 - 8;
LABEL_52:
        if (v161)
        {
          if (*(v3 + 16))
          {
            sub_1ABA8E598(v163);
            if (v0)
            {
              v165 = *v164;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v168 = v162[2];
                sub_1ABA7BEF0();
                sub_1ABAAA4F4();
                v162 = v169;
              }

              v166 = v162[2];
              if (v166 >= v162[3] >> 1)
              {
                sub_1ABA8C4E4();
                v162 = v170;
              }

              v162[2] = v166 + 1;
              v167 = &v162[2 * v166];
              v167[4] = v165;
              v167[5] = v0;
              continue;
            }

            goto LABEL_52;
          }

LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        break;
      }

      v237 = sub_1ABD7343C(v162);
      v239 = v238;

      v240 = *(v160 + 16);
      v241 = MEMORY[0x1E69E7CC0];
      v242 = v160 - 8;
      while (v240)
      {
        if (!*(v160 + 16))
        {
          goto LABEL_123;
        }

        sub_1ABA99860(v242);
      }

      sub_1ABD7343C(v241);
      sub_1ABA94BE8();
      v248 = 0x6373615F74726F73;
      v249 = 0xE900000000000028;
      goto LABEL_108;
    case 0x16uLL:
      v2 = 0;
      sub_1ABA7FBD4();
      v3 = *(v182 + 16);
      v183 = *(v182 + 24);
      v184 = *(v3 + 16);
      v185 = MEMORY[0x1E69E7CC0];
      break;
    case 0x17uLL:
      sub_1ABA7FBD4();
      v221 = *(v220 + 24);
      v259 = *(v220 + 16);
      *&v254 = VOPBuilder.toString.getter(v222, v223, v224, v225, v226, v227, v228, v229);
      *(&v254 + 1) = v230;
      v259 = 0x3D74696D696C2CLL;
      v260 = 0xE700000000000000;
      v258 = v221;

      v231 = sub_1ABF24FF4();
      MEMORY[0x1AC5A9410](v231);

      sub_1ABF23D64();

      sub_1ABED365C();
      sub_1ABF23DC4();

      return;
    default:
      v131 = *(v4 + 16);
      v132 = *(v4 + 24);
      v134 = *(v4 + 56);
      v133 = *(v4 + 64);
      v135 = *(v4 + 90);
      sub_1ABA8EE50();
      MEMORY[0x1AC5A9410]();
      sub_1ABA81358();
      v70 = 0xE000000000000000;
      v71 = 0;
      switch(v135)
      {
        case 1:
          v259 = v134;
          v71 = EntityIdentifier.stringValue.getter();
          v70 = v250;
          break;
        case 4:
          goto LABEL_111;
        default:

          v71 = v134;
          v70 = v133;
          break;
      }

      goto LABEL_111;
  }

LABEL_64:
  v186 = v3 - 8;
  while (v184)
  {
    if (!*(v3 + 16))
    {
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
      __break(1u);
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      return;
    }

    sub_1ABA8E598(v186);
    if (v0)
    {
      v188 = *v187;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v191 = v185[2];
        sub_1ABA7BEF0();
        sub_1ABAAA4F4();
        v185 = v192;
      }

      v189 = v185[2];
      if (v189 >= v185[3] >> 1)
      {
        sub_1ABA8C4E4();
        v185 = v193;
      }

      v185[2] = v189 + 1;
      v190 = &v185[2 * v189];
      v190[4] = v188;
      v190[5] = v0;
      goto LABEL_64;
    }
  }

  v237 = sub_1ABD7343C(v185);
  v239 = v244;

  v245 = *(v183 + 16);
  v246 = MEMORY[0x1E69E7CC0];
  v247 = v183 - 8;
  while (v245)
  {
    if (!*(v183 + 16))
    {
      goto LABEL_124;
    }

    sub_1ABA99860(v247);
  }

  sub_1ABD7343C(v246);
  sub_1ABA94BE8();
  v248 = 0x7365645F74726F73;
  v249 = 0xEA00000000002863;
LABEL_108:
  *&v254 = v248;
  *(&v254 + 1) = v249;
  MEMORY[0x1AC5A9410](v237, v239);

LABEL_109:
  sub_1ABA81358();
  MEMORY[0x1AC5A9410](v2, v3);
LABEL_112:

LABEL_113:
  sub_1ABA97C60();
}

uint64_t sub_1ABED3538(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 40);
  for (i = MEMORY[0x1E69E7CC0]; v1; --v1)
  {
    v5 = *(v2 - 1);
    v4 = *v2;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = i[2];
      sub_1ABAAA4F4();
      i = v9;
    }

    v6 = i[2];
    if (v6 >= i[3] >> 1)
    {
      sub_1ABAAA4F4();
      i = v10;
    }

    i[2] = v6 + 1;
    v7 = &i[2 * v6];
    v7[4] = v5;
    v7[5] = v4;
    v2 += 5;
  }

  v11 = sub_1ABD7343C(i);

  return v11;
}

unint64_t sub_1ABED365C()
{
  result = qword_1EB4DC940;
  if (!qword_1EB4DC940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC940);
  }

  return result;
}

uint64_t sub_1ABED36C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x69 && *(a1 + 8))
    {
      v2 = *a1 + 104;
    }

    else
    {
      v2 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 2) & 0xFFFFFF9F | (32 * (*a1 & 3))) ^ 0x7F;
      if (v2 >= 0x68)
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

uint64_t sub_1ABED3718(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x68)
  {
    *result = a2 - 105;
    if (a3 >= 0x69)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x69)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 5) & 3 | (4 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t WritableAssetRegistry.trialAssetManagerPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 56);
  v4 = *(v2 + 64);
  *a1 = v3;
  *(a1 + 8) = v4;
  v5 = *(v2 + 72);
  *(a1 + 16) = v5;
  return sub_1ABAF3440(v3, v4, v5);
}

uint64_t WritableAssetRegistry.__allocating_init(trialAssetManagerPolicy:)(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (qword_1ED870B70 != -1)
  {
    swift_once();
  }

  v5 = unk_1ED870BA0;
  qword_1ED870B98(v10);
  if (v1)
  {
    sub_1ABAFC7DC(v3, v2, v4);
  }

  else
  {
    sub_1ABA93E64(v10, v9);
    v7[0] = v3;
    v7[1] = v2;
    v8 = v4;
    v5 = swift_allocObject();
    sub_1ABED38C4(v9, v7);
    sub_1ABA84B54(v10);
  }

  return v5;
}

uint64_t sub_1ABED38C4(__int128 *a1, uint64_t a2)
{
  v4 = *a2;
  v19 = *(a2 + 8);
  v20 = v4;
  v5 = *(a2 + 16);
  v6 = type metadata accessor for AssetRegistry();
  v7 = *(a1 + 3);
  v21 = *(a1 + 4);
  v22 = v6;
  v8 = sub_1ABA93E20(a1, v7);
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 16);
  v14 = v13(v12, v11);
  v23[0] = v20;
  v23[1] = v19;
  v24 = v5;
  v15 = MEMORY[0x1EEE9AC00](v14);
  (v13)(v12, v12, v7, v15);
  v16 = sub_1ABA94614(v12, v23, v22, v7, *(*(v21 + 8) + 8));
  (*(v9 + 8))(v12, v7);
  *(v2 + 16) = v16;
  sub_1ABA946C0(a1, v2 + 24);
  return v2;
}

uint64_t WritableAssetRegistry.asset(for:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return sub_1ABA8C014();
}

uint64_t sub_1ABED3A6C()
{
  sub_1ABA7BBF8();
  v1 = *(v0[7] + 16);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1ABED3B10;
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return AssetRegistry.asset(for:in:)();
}

uint64_t sub_1ABED3B10()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v2 = *(v1 + 64);
  v3 = *v0;
  sub_1ABA7BBC0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t WritableAssetRegistry.assets(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1ABA8C014();
}

uint64_t sub_1ABED3C08()
{
  sub_1ABA7BBF8();
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1ABED3CA4;
  v3 = v0[2];

  return AssetRegistry.assets(for:)();
}

uint64_t sub_1ABED3CA4()
{
  sub_1ABA7BBF8();
  v3 = v2;
  sub_1ABA7BC10();
  v5 = *(v4 + 32);
  v6 = *v1;
  sub_1ABA7BBC0();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t WritableAssetRegistry.assetEntry(for:in:)()
{
  sub_1ABA81374();
  v1 = *(v0 + 16);
  v2 = v1[6];
  sub_1ABA93E20(v1 + 2, v1[5]);
  v3 = *(v2 + 8);
  v4 = sub_1ABA7C98C();
  return v5(v4);
}

uint64_t WritableAssetRegistry.overrideAssetEntry(for:in:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a5;
  v7 = *(a5 + 8);
  v8 = *(a5 + 16);
  v9 = *(a5 + 26);
  v10 = *(a5 + 24);
  v11 = v10;
  v12 = v5[6];
  v13 = v5[7];
  sub_1ABA93E20(v5 + 3, v12);
  v20 = v6;
  v21 = v7;
  v22 = v8;
  v24 = v9;
  v23 = v10;
  v14 = *(v13 + 16);
  sub_1ABAF8040(v6, v7, v8, v11);
  v14(a1, a2, a3, a4, &v20, v12, v13);
  return sub_1ABED3F1C(v20, v21, v22, v23 | (v24 << 16));
}

uint64_t sub_1ABED3F1C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if ((~a4 & 0xFE) != 0)
  {
    return sub_1ABAF7FB8(a1, a2, a3, a4);
  }

  return a1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WritableAssetRegistry.clearAssetEntryOverride(for:in:)(Swift::String a1, Swift::String in)
{
  sub_1ABA81374();
  v3 = v2[7];
  sub_1ABA93E20(v2 + 3, v2[6]);
  v4 = *(v3 + 16);
  v5 = sub_1ABA7C98C();
  v6(v5);
}

uint64_t WritableAssetRegistry.deinit()
{
  v1 = *(v0 + 16);

  sub_1ABA84B54((v0 + 24));
  return v0;
}

uint64_t WritableAssetRegistry.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  sub_1ABA84B54((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1ABED4048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1ABED4114;

  return WritableAssetRegistry.asset(for:in:)(a1, a2, a3, a4, a5);
}

uint64_t sub_1ABED4114()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1ABA7BBC0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1ABED41F8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1ABB9916C;

  return WritableAssetRegistry.assets(for:)(a1);
}

uint64_t sub_1ABED4314(void *a1)
{
  v3 = sub_1ABF21CF4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v14 - v9;
  sub_1ABED47B8();
  sub_1ABD32890();
  (*(v4 + 16))(v8, v10, v3);
  v11 = sub_1ABE0BB90(v8, a1);
  if (v1)
  {
    return (*(v4 + 8))(v10, v3);
  }

  v13 = v11;
  (*(v4 + 8))(v10, v3);
  type metadata accessor for EntityRerankerModel();
  sub_1ABA7D028();
  result = swift_allocObject();
  *(result + 16) = v13;
  return result;
}

id sub_1ABED44FC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x63735F7475706E69 && a2 == 0xEC0000007365726FLL;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABED4624()
{
  v1 = [*(v0 + 16) featureNames];
  v2 = sub_1ABF24394();

  return v2;
}

id sub_1ABED467C()
{
  v1 = *(v0 + 16);
  v2 = sub_1ABF23BD4();
  v3 = [v1 featureValueForName_];

  return v3;
}

id sub_1ABED46E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = sub_1ABF23C04();
  v7 = v6;

  v8 = a4(v5, v7);

  return v8;
}

uint64_t sub_1ABED4760()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_1ABA7D028();

  return swift_deallocClassInstance();
}

void sub_1ABED47B8()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1ABED5424(0xD000000000000013, 0x80000001ABF78AB0, 0x636C65646F6D6C6DLL, 0xE800000000000000, v1);
  if (v2)
  {
    v3 = v2;
    sub_1ABF21CA4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABED4874(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695FF08]) init];
  v3 = sub_1ABED48E0(a1, v2);

  return v3;
}

uint64_t sub_1ABED48E0(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *(v2 + 16);
  v13[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v13];
  v7 = v13[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for EntityRerankerModelOutput();
    sub_1ABA7D028();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v13[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  v11 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_1ABED49B4(void *a1)
{
  type metadata accessor for EntityRerankerModelInput();
  sub_1ABA7D028();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = a1;
  v4 = sub_1ABED4874(v2);

  return v4;
}

uint64_t sub_1ABED4A1C()
{
  sub_1ABA7D028();

  return swift_deallocClassInstance();
}

id sub_1ABED4AF0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x307475706E69 && a2 == 0xE600000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {
    v6 = 16;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  v8 = a1 == 0x317475706E69 && a2 == 0xE600000000000000;
  if (v8 || (sub_1ABF25054() & 1) != 0)
  {
    v6 = 24;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  return 0;
}

uint64_t sub_1ABED4BF8()
{
  sub_1ABED4BD0();

  return swift_deallocClassInstance();
}

id sub_1ABED4CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = sub_1ABF23C04();
  v7 = v6;

  v8 = a4(v5, v7);

  return v8;
}

uint64_t sub_1ABED4D50()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABED4DD0(void *a1)
{
  v3 = sub_1ABF21CF4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v14 - v9;
  sub_1ABED519C();
  sub_1ABD32890();
  (*(v4 + 16))(v8, v10, v3);
  v11 = sub_1ABE0BB90(v8, a1);
  if (v1)
  {
    return (*(v4 + 8))(v10, v3);
  }

  v13 = v11;
  (*(v4 + 8))(v10, v3);
  type metadata accessor for MentionGenerationModel();
  sub_1ABA7D028();
  result = swift_allocObject();
  *(result + 16) = v13;
  return result;
}

id sub_1ABED4FB8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x64695F6E656B6F74 && a2 == 0xE900000000000073;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  else
  {
    return 0;
  }
}

id sub_1ABED50FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = sub_1ABF23C04();
  v7 = v6;

  v8 = a4(v5, v7);

  return v8;
}

void sub_1ABED519C()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1ABED5424(0xD000000000000016, 0x80000001ABF78BB0, 0x636C65646F6D6C6DLL, 0xE800000000000000, v1);
  if (v2)
  {
    v3 = v2;
    sub_1ABF21CA4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABED5258(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695FF08]) init];
  v3 = sub_1ABED52C4(a1, v2);

  return v3;
}

uint64_t sub_1ABED52C4(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *(v2 + 16);
  v13[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v13];
  v7 = v13[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MentionGenerationModelOutput();
    sub_1ABA7D028();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v13[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  v11 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_1ABED5398(void *a1)
{
  type metadata accessor for MentionGenerationModelInput();
  sub_1ABA7D028();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = a1;
  v4 = sub_1ABED5258(v2);

  return v4;
}

id sub_1ABED5424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1ABF23BD4();

  v7 = sub_1ABF23BD4();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

void sub_1ABED5B3C(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [[GDSQLEntityIterator alloc] initWithColumns:511 statement:v3];
  v5 = [(GDSQLEntityIterator *)v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * v8);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v18;
          do
          {
            v14 = 0;
            do
            {
              if (*v18 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v17 + 1) + 8 * v14);
              (*(*(a1 + 32) + 16))();
              ++v14;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v12);
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [(GDSQLEntityIterator *)v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1ABEE1F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ABEE206C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ABEE260C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

void sub_1ABEE2664(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1ABEE2C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

void sub_1ABEE2CD0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1ABEE31F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_1ABEE3234(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1ABEE3760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

void sub_1ABEE37A4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1ABEE4A54(uint64_t a1, void *a2)
{
  tokenizer = a2;
  v3 = *(a1 + 40);
  v8.length = [*(a1 + 32) length];
  v8.location = 0;
  CFStringTokenizerSetString(tokenizer, v3, v8);
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  ITSTokenListPopulateFromString();
  v9.location = 0;
  v9.length = 1;
  CFStringTokenizerSetString(tokenizer, @"⌘", v9);
  CFRelease(tokenizer);
}

void sub_1ABEE4AF4()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x1E69C5D50]) initWithBlock:&unk_1F20A1918 idleTimeout:1.0];
  v2 = qword_1EB4DD468;
  qword_1EB4DD468 = v1;

  objc_autoreleasePoolPop(v0);
}

id sub_1ABEE4B58()
{
  v6.location = 0;
  v6.length = 0;
  v0 = CFStringTokenizerCreate(0, 0, v6, 0x810000uLL, 0);
  if (!v0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"ITSTokenListRef _createITSListForFTSQuery(NSString *__strong)_block_invoke_2"];
    [v3 handleFailureInFunction:v4 file:@"GDFTSTokenize.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"tokenizer"}];
  }

  v1 = [objc_alloc(MEMORY[0x1E69C5D60]) initWithGuardedData:v0];

  return v1;
}

void sub_1ABEE4E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABEE4E38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABEE4E50(void *a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v6 = a1[6];
  v7 = objc_alloc(objc_opt_class());
  v8 = [v10 entityIdentifier];
  v9 = [v7 initByCastingFrom:v8];

  if (v9)
  {
    objc_storeStrong((*(a1[4] + 8) + 40), v9);
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    *a3 = 1;
  }
}

id sub_1ABEF4058(void *a1)
{
  v24 = MEMORY[0x1E696AEC0];
  v2 = [a1 namePrefix];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F20A2CD8;
  }

  v23 = v4;
  v5 = [a1 givenName];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_1F20A2CD8;
  }

  v22 = v7;
  v8 = [a1 middleName];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_1F20A2CD8;
  }

  v11 = [a1 familyName];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_1F20A2CD8;
  }

  v14 = [a1 nameSuffix];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &stru_1F20A2CD8;
  }

  v17 = [a1 nickname];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = &stru_1F20A2CD8;
  }

  v20 = [v24 stringWithFormat:@"%@ %@ %@ %@ %@ %@", v23, v22, v10, v13, v16, v19];

  return v20;
}

void sub_1ABEFFC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABEFFCA8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABEFFCC0(void *a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v6 = a1[6];
  v7 = objc_alloc(objc_opt_class());
  v8 = [v10 entityIdentifier];
  v9 = [v7 initByCastingFrom:v8];

  if (v9)
  {
    objc_storeStrong((*(a1[4] + 8) + 40), v9);
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    *a3 = 1;
  }
}

id GDDefaultLog()
{
  if (qword_1ED87C070[0] != -1)
  {
    dispatch_once(qword_1ED87C070, &unk_1F20A1958);
  }

  v1 = qword_1ED87BF50;

  return v1;
}

uint64_t sub_1ABF00E48()
{
  qword_1ED87BF50 = os_log_create([@"com.apple.intelligenceplatform" UTF8String], "default");

  return MEMORY[0x1EEE66BB8]();
}

id GDSignpostLog()
{
  if (qword_1ED87C3B0 != -1)
  {
    dispatch_once(&qword_1ED87C3B0, &unk_1F20763D0);
  }

  v1 = qword_1ED87C3A0;

  return v1;
}

uint64_t sub_1ABF00EE4()
{
  qword_1ED87C3A0 = os_log_create([@"com.apple.intelligenceplatform" UTF8String], "signpost");

  return MEMORY[0x1EEE66BB8]();
}

id GDViewLog()
{
  if (qword_1ED87C398 != -1)
  {
    dispatch_once(&qword_1ED87C398, &unk_1F20763B0);
  }

  v1 = qword_1ED87C390;

  return v1;
}

uint64_t sub_1ABF00F80()
{
  qword_1ED87C390 = os_log_create([@"com.apple.intelligenceplatform" UTF8String], "views");

  return MEMORY[0x1EEE66BB8]();
}

id GDOrchestrationLog()
{
  if (qword_1ED877EE0 != -1)
  {
    dispatch_once(&qword_1ED877EE0, &unk_1F2076510);
  }

  v1 = qword_1ED877EE8;

  return v1;
}

uint64_t sub_1ABF0101C()
{
  qword_1ED877EE8 = os_log_create([@"com.apple.intelligenceplatform" UTF8String], "orchestration");

  return MEMORY[0x1EEE66BB8]();
}

id GDConstructionLog()
{
  if (qword_1ED877F00 != -1)
  {
    dispatch_once(&qword_1ED877F00, &unk_1F20764F0);
  }

  v1 = qword_1ED877F08;

  return v1;
}

uint64_t sub_1ABF010B8()
{
  qword_1ED877F08 = os_log_create([@"com.apple.intelligenceplatform" UTF8String], "construction");

  return MEMORY[0x1EEE66BB8]();
}

id GDOntologyLog()
{
  if (qword_1ED879020 != -1)
  {
    dispatch_once(&qword_1ED879020, &unk_1F20764D0);
  }

  v1 = qword_1ED879028;

  return v1;
}

uint64_t sub_1ABF01154()
{
  qword_1ED879028 = os_log_create([@"com.apple.intelligenceplatform" UTF8String], "ontology");

  return MEMORY[0x1EEE66BB8]();
}

id GDStorageLog()
{
  if (qword_1ED879EB0 != -1)
  {
    dispatch_once(&qword_1ED879EB0, &unk_1F2076490);
  }

  v1 = qword_1ED879EB8;

  return v1;
}

uint64_t sub_1ABF011F0()
{
  qword_1ED879EB8 = os_log_create([@"com.apple.intelligenceplatform" UTF8String], "storage");

  return MEMORY[0x1EEE66BB8]();
}

id GDECRLog()
{
  if (qword_1ED87BF40 != -1)
  {
    dispatch_once(&qword_1ED87BF40, &unk_1F2076470);
  }

  v1 = qword_1ED87BF48;

  return v1;
}

uint64_t sub_1ABF0128C()
{
  qword_1ED87BF48 = os_log_create([@"com.apple.intelligenceplatform" UTF8String], "ECR");

  return MEMORY[0x1EEE66BB8]();
}

id GDKTSLog()
{
  if (qword_1EB4DD470 != -1)
  {
    dispatch_once(&qword_1EB4DD470, &unk_1F2076450);
  }

  v1 = qword_1EB4DD478;

  return v1;
}

uint64_t sub_1ABF01328()
{
  qword_1EB4DD478 = os_log_create([@"com.apple.intelligenceplatform" UTF8String], "KTS");

  return MEMORY[0x1EEE66BB8]();
}

id GDBehaviorLog()
{
  if (qword_1ED877F10 != -1)
  {
    dispatch_once(&qword_1ED877F10, &unk_1F2076430);
  }

  v1 = qword_1ED877F18;

  return v1;
}

uint64_t sub_1ABF013C4()
{
  qword_1ED877F18 = os_log_create([@"com.apple.intelligenceplatform" UTF8String], "behavior");

  return MEMORY[0x1EEE66BB8]();
}

id GDKnosisLog()
{
  if (qword_1ED877EF0 != -1)
  {
    dispatch_once(&qword_1ED877EF0, &unk_1F2076410);
  }

  v1 = qword_1ED877EF8;

  return v1;
}

uint64_t sub_1ABF01460()
{
  qword_1ED877EF8 = os_log_create([@"com.apple.intelligenceplatform" UTF8String], "knosis");

  return MEMORY[0x1EEE66BB8]();
}

id GDAppIntentLog()
{
  if (qword_1EB549388 != -1)
  {
    dispatch_once(&qword_1EB549388, &unk_1F20763F0);
  }

  v1 = qword_1EB549380;

  return v1;
}

uint64_t sub_1ABF014FC()
{
  qword_1EB549380 = os_log_create([@"com.apple.intelligenceplatform" UTF8String], "appIntent");

  return MEMORY[0x1EEE66BB8]();
}

id GDK2TLog()
{
  if (qword_1EB549398 != -1)
  {
    dispatch_once(&qword_1EB549398, &unk_1F20A1978);
  }

  v1 = qword_1EB549390;

  return v1;
}

uint64_t sub_1ABF01598()
{
  qword_1EB549390 = os_log_create([@"com.apple.intelligenceplatform" UTF8String], "k2t");

  return MEMORY[0x1EEE66BB8]();
}

id GDLifeEventLog()
{
  if (qword_1ED873AD0[0] != -1)
  {
    dispatch_once(qword_1ED873AD0, &unk_1F20A1998);
  }

  v1 = qword_1ED8729C0;

  return v1;
}

uint64_t sub_1ABF01634()
{
  qword_1ED8729C0 = os_log_create([@"com.apple.intelligenceplatform" UTF8String], "lifeEvent");

  return MEMORY[0x1EEE66BB8]();
}

id GDLifeEventSummaryLog()
{
  if (qword_1EB5493A8 != -1)
  {
    dispatch_once(&qword_1EB5493A8, &unk_1F20A19B8);
  }

  v1 = qword_1EB5493A0;

  return v1;
}

uint64_t sub_1ABF016D0()
{
  qword_1EB5493A0 = os_log_create([@"com.apple.intelligenceplatform" UTF8String], "lifeEventSummary");

  return MEMORY[0x1EEE66BB8]();
}

id GDGlobalKnowledgeLog()
{
  if (qword_1EB4E3F20[0] != -1)
  {
    dispatch_once(qword_1EB4E3F20, &unk_1F20A19D8);
  }

  v1 = qword_1EB4DD480;

  return v1;
}

uint64_t sub_1ABF0176C()
{
  qword_1EB4DD480 = os_log_create([@"com.apple.intelligenceplatform" UTF8String], "globalKnowledge");

  return MEMORY[0x1EEE66BB8]();
}

id GDAutonamingLog()
{
  if (qword_1EB4DD488 != -1)
  {
    dispatch_once(&qword_1EB4DD488, &unk_1F20A19F8);
  }

  v1 = qword_1EB4DD490;

  return v1;
}

uint64_t sub_1ABF01808()
{
  qword_1EB4DD490 = os_log_create([@"com.apple.intelligenceplatform" UTF8String], "autonaming");

  return MEMORY[0x1EEE66BB8]();
}

id GDSearchLog()
{
  if (qword_1EB5493B8 != -1)
  {
    dispatch_once(&qword_1EB5493B8, &unk_1F20A1A18);
  }

  v1 = qword_1EB5493B0;

  return v1;
}

uint64_t sub_1ABF018A4()
{
  qword_1EB5493B0 = os_log_create([@"com.apple.intelligenceplatform" UTF8String], "search");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1ABF01B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF01B28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1ABF01B40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getInt64AsNSNumberForColumnAlias:"MD_ID"];
  v5 = [v3 getDoubleAsNSNumberForColumnAlias:"rank"];

  if (v4 && v5)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
  }

  v6 = MEMORY[0x1E69C5DD0];

  return *v6;
}

void sub_1ABF04F14()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E696AE30] processInfo];
  v2 = [v1 processName];
  v3 = qword_1ED87C3D0;
  qword_1ED87C3D0 = v2;

  objc_autoreleasePoolPop(v0);
}

void sub_1ABF05148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF0516C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABF05184(void *a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 accessInfoForKey:a1[4] useCase:a1[5]];
  v5 = *(a1[7] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(a1[7] + 8) + 40))
  {
    v7 = a1[5];
    v8 = *(a1[6] + 16);
    v9 = a1[4];
    v23 = 0;
    v10 = [v8 accessInfoForViewName:v9 useCase:v7 error:&v23];
    v11 = v23;
    v12 = v23;
    v13 = *(a1[7] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v10;

    v15 = *(*(a1[7] + 8) + 40);
    if (v15)
    {
      v16 = [v15 alwaysAvailable];
      v17 = *(*(a1[7] + 8) + 40);
      v18 = a1[4];
      v19 = a1[5];
      if (v16)
      {
        [v3 setPersistentInfo:v17 forKey:v18 useCase:v19];
      }

      else
      {
        [v3 setInfo:v17 forKey:v18 useCase:v19];
      }
    }

    else
    {
      v20 = GDViewLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v22 = a1[4];
        *buf = 138412546;
        v25 = v22;
        v26 = 2112;
        v27 = v12;
        _os_log_error_impl(&dword_1ABA78000, v20, OS_LOG_TYPE_ERROR, "Could not retrieve access info for view name %@ error: %@", buf, 0x16u);
      }

      objc_storeStrong((*(a1[8] + 8) + 40), v11);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

void sub_1ABF054D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF054FC(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKey:*(a1 + 32) useCase:*(a1 + 40)];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v7 = +[GDRemoteViewAccessRequester currentProcessIsSandboxed];
    v8 = [*(a1 + 32) isEqualToString:@"standardFeatureView"];
    v9 = *(*(a1 + 48) + 16);
    if (v8)
    {
      v10 = *(a1 + 40);
      v35 = 0;
      v11 = &v35;
      v12 = [v9 accessTokenForFeaturesWithIsSandboxed:v7 useCase:v10 error:&v35];
    }

    else
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v34 = 0;
      v11 = &v34;
      v12 = [v9 accessTokenForViewName:v13 isSandboxed:v7 useCase:v14 error:&v34];
    }

    v15 = v12;
    v16 = *v11;
    v17 = *v11;
    if (v15)
    {
      v18 = [_GDViewAccessAssertion alloc];
      v19 = *(a1 + 32);
      v33 = v17;
      v20 = [(_GDViewAccessAssertion *)v18 initWithViewName:v19 extensionToken:v15 error:&v33];
      v21 = v33;
      v22 = v33;

      v23 = *(*(a1 + 56) + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v20;

      v25 = *(*(*(a1 + 56) + 8) + 40);
      if (v25)
      {
        v26 = [v25 alwaysAvailable];
        v27 = *(*(*(a1 + 56) + 8) + 40);
        v28 = *(a1 + 32);
        v29 = *(a1 + 40);
        if (v26)
        {
          [v3 setPersistentObject:v27 forKey:v28 useCase:v29];
        }

        else
        {
          [v3 setObject:v27 forKey:v28 useCase:v29];
        }
      }

      else
      {
        objc_storeStrong((*(*(a1 + 64) + 8) + 40), v21);
      }

      v17 = v22;
    }

    else
    {
      v30 = GDViewLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v32 = *(a1 + 32);
        *buf = 138412546;
        v37 = v32;
        v38 = 2112;
        v39 = v17;
        _os_log_error_impl(&dword_1ABA78000, v30, OS_LOG_TYPE_ERROR, "Could not retrieve access token for view name %@ error: %@", buf, 0x16u);
      }

      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v16);
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

void sub_1ABF05818()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = objc_autoreleasePoolPush();
  getpid();
  v1 = sandbox_check();
  if (v1 == -1)
  {
    v2 = GDViewLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      v4 = __error();
      v5 = strerror(*v4);
      v6 = 136315138;
      v7 = v5;
      _os_log_fault_impl(&dword_1ABA78000, v2, OS_LOG_TYPE_FAULT, "Error checking sandbox policy: %s", &v6, 0xCu);
    }
  }

  dword_1ED87C388 = v1 != 0;
  objc_autoreleasePoolPop(v0);
  v3 = *MEMORY[0x1E69E9840];
}

void sub_1ABF060A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF060C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1ABF060D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumnName:"viewName" table:"kv"];
  v5 = [v3 getNSStringForColumnName:"featureName" table:"kv"];
  v6 = [v3 getNSStringForColumnName:"subidentifierName" table:"kv"];

  if (v4 && v5 && v6)
  {
    if (![v6 length])
    {

      v6 = 0;
    }

    v7 = *(a1 + 32);
    v8 = [[GDFeatureKey alloc] initWithViewName:v4 featureName:v5 subidentifierName:v6];
    [v7 addObject:v8];
  }

  v9 = MEMORY[0x1E69C5DD0];

  return *v9;
}

void sub_1ABF06434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ABF0644C(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) viewName];
  [v7 bindNamedParam:":viewName" toNSString:v3];

  v4 = [*(a1 + 32) featureName];
  [v7 bindNamedParam:":featureName" toNSString:v4];

  v5 = [*(a1 + 32) subidentifierName];

  if (v5)
  {
    v6 = [*(a1 + 32) subidentifierName];
    [v7 bindNamedParam:":subidentifierName" toNSString:v6];
  }
}

uint64_t sub_1ABF06520(uint64_t a1, void *a2)
{
  v3 = [a2 getNSDataForColumnName:"value" table:"kv"];
  if (v3)
  {
    v8 = 0;
    v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v8];
    v5 = v8;
    if (v4)
    {
      [*(a1 + 32) addObject:v4];
    }
  }

  v6 = MEMORY[0x1E69C5DD0];

  return *v6;
}

uint64_t sub_1ABF06774(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) objectForIdentifier:a2];
  if (objc_claimAutoreleasedReturnValue())
  {
    (*(*(a1 + 40) + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

void sub_1ABF06AE0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v27 = *(a1 + 40);
  v4 = a2;
  if (!v3)
  {
    goto LABEL_19;
  }

  v5 = [v27 objectFTSTerm];

  if (v5)
  {
    v6 = [v27 objectFTSTerm];
    [v4 bindNamedParam:":match" toNSString:v6];
  }

  else
  {
    v7 = [v27 objects];
    v8 = [v7 count];

    v9 = [v27 objects];
    v6 = v9;
    if (v8 == 1)
    {
      v10 = [v9 objectAtIndexedSubscript:0];
      [v4 bindNamedParam:":object" toNSString:v10];
    }

    else
    {
      v11 = [v9 count];

      if (!v11)
      {
        goto LABEL_9;
      }

      v6 = [v27 objects];
      [v4 bindNamedParam:":objects" toNSArray:v6];
    }
  }

LABEL_9:
  v12 = [v27 predicates];
  v13 = [v12 count];

  v14 = [v27 predicates];
  v15 = v14;
  if (v13 == 1)
  {
    v16 = [v14 objectAtIndexedSubscript:0];
    [v4 bindNamedParam:":predicate" toNSString:v16];

LABEL_13:
    goto LABEL_14;
  }

  v17 = [v14 count];

  if (v17)
  {
    v15 = [v27 predicates];
    [v4 bindNamedParam:":predicates" toNSArray:v15];
    goto LABEL_13;
  }

LABEL_14:
  v18 = [v27 subjects];
  v19 = [v18 count];

  if (v19 == 1)
  {
    v20 = [GDEntityIdentifier alloc];
    v21 = [v27 subjects];
    v22 = [v21 objectAtIndexedSubscript:0];
    v23 = [(GDEntityIdentifier *)v20 initWithString:v22];

    [v4 bindNamedParam:":subject" toInt64:{-[GDEntityIdentifier intValue](v23, "intValue")}];
  }

  else
  {
    v24 = [v27 subjects];
    v25 = [v24 count];

    if (!v25)
    {
      goto LABEL_19;
    }

    v23 = [v27 subjects];
    v26 = [(GDEntityIdentifier *)v23 _pas_mappedArrayWithTransform:&unk_1F20A1B18];
    [v4 bindNamedParam:":subjects" toNSArray:v26];
  }

LABEL_19:
}

uint64_t sub_1ABF06D9C(uint64_t a1, void *a2)
{
  v9 = 0;
  v3 = -[GDEntityIdentifier initWithValue:]([GDEntityIdentifier alloc], "initWithValue:", [a2 getInt64ForColumnName:"subject" table:0]);
  v4 = [(GDEntityIdentifier *)v3 entityClass];
  v5 = MEMORY[0x1E69C5DD0];
  if (v4 == *(*(a1 + 32) + 32))
  {
    v6 = *(a1 + 40);
    v7 = [(GDEntityIdentifier *)v3 stringValue];
    (*(v6 + 16))(v6, v7, &v9);

    if (v9)
    {
      v5 = MEMORY[0x1E69C5DD8];
    }
  }

  return *v5;
}

id sub_1ABF06E68(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[GDEntityIdentifier alloc] initWithString:v2];

  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[GDEntityIdentifier intValue](v3, "intValue")}];

  return v4;
}

id sub_1ABF06FEC(uint64_t a1, int a2)
{
  v15[9] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = objc_opt_new();
    v14[0] = &unk_1F20CF2D8;
    v14[1] = &unk_1F20CF2F0;
    v15[0] = @"subject";
    v15[1] = @"predicate";
    v14[2] = &unk_1F20CF308;
    v14[3] = &unk_1F20CF320;
    v15[2] = @"relationshipId";
    v15[3] = @"relationshipPredicate";
    v14[4] = &unk_1F20CF338;
    v14[5] = &unk_1F20CF350;
    v15[4] = @"object";
    v15[5] = @"sources";
    v14[6] = &unk_1F20CF368;
    v14[7] = &unk_1F20CF380;
    v15[6] = @"confidence";
    v15[7] = @"sourceDuplicates";
    v14[8] = &unk_1F20CF398;
    v15[8] = @"timestamp";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:9];
    v6 = 1;
    do
    {
      if ((v6 & a2) != 0)
      {
        v7 = [MEMORY[0x1E696AD98] numberWithInt:v6];
        v8 = [v5 objectForKeyedSubscript:v7];

        if (!v8)
        {
          v10 = [MEMORY[0x1E696AAA8] currentHandler];
          [v10 handleFailureInMethod:sel_columnQueryStringForColumns_ object:a1 file:@"GDSQLGraphObjectRetriever.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"columnName"}];
        }

        [v4 addObject:v8];
      }

      v9 = v6 >= 0x81;
      v6 = (2 * v6);
    }

    while (!v9);
    v11 = [v4 _pas_componentsJoinedByString:{@", "}];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

void sub_1ABF07248(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 bindNamedParam:":entityClassIdentifier" toInt64:*(a1[4] + 32)];
  [v3 bindNamedParam:":classOffset" toInt64:{+[GDEntityIdentifier entityClassOffset](GDEntityIdentifier, "entityClassOffset")}];
  v4 = [[GDSQLEntityIterator alloc] initWithColumns:a1[6] statement:v3];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v4;
  v6 = [(GDSQLEntityIterator *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = *(a1[4] + 40);
        v13 = [objc_alloc(objc_opt_class()) initWithTriplesIterator:v10];
        if (v13)
        {
          v16 = 0;
          v14 = objc_autoreleasePoolPush();
          (*(a1[5] + 16))();
          objc_autoreleasePoolPop(v14);
          if (v16 == 1)
          {

            objc_autoreleasePoolPop(v11);
            goto LABEL_12;
          }
        }

        objc_autoreleasePoolPop(v11);
      }

      v7 = [(GDSQLEntityIterator *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1ABF075CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF075F0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABF07608(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":subject" toInt64:{objc_msgSend(v3, "intValue")}];
  v5 = [GDSQLTripleRowIterator alloc];
  v6 = *(a1 + 56);
  v7 = [*(a1 + 32) stringValue];
  v12 = [(GDSQLTripleRowIterator *)v5 initWithColumns:v6 statement:v4 subjectOverride:v7];

  v8 = *(*(a1 + 40) + 40);
  v9 = [objc_alloc(objc_opt_class()) initWithTriplesIterator:v12];
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

uint64_t sub_1ABF0781C(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumnName:"subject" table:0];
  if (v3)
  {
    (*(*(a1 + 32) + 16))();
    v4 = MEMORY[0x1E69C5DD0];
  }

  else
  {
    v4 = MEMORY[0x1E69C5DD0];
  }

  v5 = *v4;

  return v5;
}

id *sub_1ABF078B4(id *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v12 = a2;
  v13 = a3;
  v14 = a4;
  if (a1)
  {
    v17.receiver = a1;
    v17.super_class = GDSQLGraphObjectRetriever;
    v15 = objc_msgSendSuper2(&v17, sel_init);
    a1 = v15;
    if (v15)
    {
      objc_storeStrong(v15 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      objc_storeStrong(a1 + 3, a4);
      a1[4] = a5;
      a1[5] = a6;
    }
  }

  return a1;
}

id sub_1ABF07A44(uint64_t a1, uint64_t a2)
{
  if (!a1 || *(a1 + a2 + 8) < 0)
  {
    v5 = 0;
  }

  else
  {
    v2 = [*(a1 + 24) getDoubleAsNSNumberForColumn:?];
    v3 = v2;
    v4 = &unk_1F20CF3C8;
    if (v2)
    {
      v4 = v2;
    }

    v5 = v4;
  }

  return v5;
}

__CFString *sub_1ABF07B74(uint64_t a1, uint64_t a2)
{
  if (!a1 || *(a1 + a2 + 8) < 0)
  {
    v5 = 0;
  }

  else
  {
    v2 = [*(a1 + 24) getNSStringForColumn:?];
    v3 = v2;
    v4 = &stru_1F20A2CD8;
    if (v2)
    {
      v4 = v2;
    }

    v5 = v4;
  }

  return v5;
}

id *sub_1ABF07EF4(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = GDLazyGraphTripleRow;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a3);
      objc_storeStrong(a1 + 11, a2);
    }
  }

  return a1;
}

_BYTE *sub_1ABF081D8(_BYTE *a1, int a2, void *a3)
{
  v6 = a3;
  if (a1)
  {
    v11.receiver = a1;
    v11.super_class = GDLazyGraphTripleRowCursor;
    v7 = objc_msgSendSuper2(&v11, sel_init);
    a1 = v7;
    if (v7)
    {
      v8 = 0;
      v9 = 0;
      *(v7 + 1) = -1;
      *(v7 + 16) = -1;
      do
      {
        if (((1 << v8) & a2) != 0)
        {
          *(v7 + v8 + 8) = v9++;
        }

        ++v8;
      }

      while (v8 != 9);
      objc_storeStrong(v7 + 3, a3);
      a1[32] = 0;
    }
  }

  return a1;
}

_BYTE *sub_1ABF08294(_BYTE *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = GDSQLTripleRowIterator;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
      a1[16] = 0;
    }
  }

  return a1;
}

uint64_t sub_1ABF08898(uint64_t a1, void *a2)
{
  v16 = 0;
  v3 = a2;
  v4 = [v3 getNSStringForColumnName:"topicId" table:0];
  [v3 getDoubleForColumnName:"score" table:0];
  v6 = v5;
  v7 = [v3 getNSStringForColumnName:"most_recent_documentId" table:0];

  if (!v4)
  {
    v10 = GDViewLog();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_7:

      v9 = *MEMORY[0x1E69C5DD0];
      goto LABEL_8;
    }

    v15 = 0;
    v11 = "Encountered nil topicId while enumerating topics -- skipping";
    v12 = &v15;
LABEL_10:
    _os_log_error_impl(&dword_1ABA78000, v10, OS_LOG_TYPE_ERROR, v11, v12, 2u);
    goto LABEL_7;
  }

  if (!v7)
  {
    v10 = GDViewLog();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v14 = 0;
    v11 = "Encountered nil mostRecentDocId while enumerating topics -- skipping";
    v12 = &v14;
    goto LABEL_10;
  }

  v8 = [[GDTopicViewTopic alloc] initWithTopicIdentifier:v4 topicScore:v7 mostRecentDocumentId:v6];
  (*(*(a1 + 32) + 16))();
  v9 = *MEMORY[0x1E69C5DD0];

LABEL_8:
  return v9;
}

void sub_1ABF09728()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [GDViewService alloc];
  v2 = +[GDSwiftViewService clientService];
  v3 = [(GDViewService *)v1 initWithSwiftViewService:v2];
  v4 = qword_1ED87C068;
  qword_1ED87C068 = v3;

  objc_autoreleasePoolPop(v0);
}

void sub_1ABF0B738(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 linkEntitiesForPerson:v4];
  (*(*(a1 + 40) + 16))();
}

void sub_1ABF0B9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF0B9C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABF0B9DC(uint64_t a1, void *a2, _BYTE *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [v6 visualIdentifierObjects];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v18 + 1) + 8 * v11) visualIdentifier];
        v13 = [v12 isEqual:*(a1 + 32)];

        if (v13)
        {

          [*(a1 + 40) linkEntitiesForPerson:v6];
          goto LABEL_12;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  [*(a1 + 40) linkEntitiesForPerson:v6];
  v14 = [v6 contactIdentifiers];
  if ([v14 containsObject:*(a1 + 32)])
  {
  }

  else
  {
    v16 = [v6 conversationIdentifiers];
    v17 = [v16 containsObject:*(a1 + 32)];

    if ((v17 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

LABEL_12:
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  *a3 = 1;
LABEL_13:

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1ABF0C940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF0C964(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABF0C97C(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCAssetRegistryService: error during overrideAssetEntryForAssetId call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1ABF0CA48(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF0CD24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF0CD48(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCAssetRegistryService: error during assetEntryDataForAssetId call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1ABF0CE14(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF0D060(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1ABF0D080(uint64_t a1)
{
  v2 = GDXPCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1ABA78000, v2, OS_LOG_TYPE_DEFAULT, "Connection to GDXPCAssetRegistryServer invalidated.", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = v5[1];
    v5[1] = 0;

    objc_sync_exit(v5);
  }
}

void sub_1ABF0D124()
{
  v0 = GDXPCLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1ABA78000, v0, OS_LOG_TYPE_ERROR, "Connection to GDXPCAssetRegistryServer interrupted.", v1, 2u);
  }
}

void sub_1ABF0D4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF0D4CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABF0D4E4(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCCoordinationService: error during sysdiagnoseInfo call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1ABF0D5B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF0D810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF0D834(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCCoordinationService: error during migrateViewDatabases call: %@", &v9, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1ABF0DB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1ABF0DBC8(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCCoordinationService: error during streamsUpdated call: %@", &v9, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1ABF0DF40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF0DF70(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 56)];
    v11 = 138412802;
    v12 = v9;
    v13 = 2112;
    v14 = v10;
    v15 = 2112;
    v16 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCCoordinationService: error during streamUpdatedWithStreamName call: %@ %@: %@", &v11, 0x20u);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 48) + 8) + 24) = 0;
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1ABF0E324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF0E350(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = a1[4];
    v10 = a1[5];
    v11 = 138412802;
    v12 = v9;
    v13 = 2112;
    v14 = v10;
    v15 = 2112;
    v16 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCCoordinationService: error during sourceUpdated call: %@ %@: %@", &v11, 0x20u);
  }

  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(a1[7] + 8) + 24) = 0;
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1ABF0E65C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF0E680(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCCoordinationService: error during graphUpdated call: %@", &v9, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1ABF0E948(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1ABF0E968(uint64_t a1)
{
  v2 = GDXPCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1ABA78000, v2, OS_LOG_TYPE_DEFAULT, "GDXPCCoordinationService: Connection invalidated.", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = v5[1];
    v5[1] = 0;

    objc_sync_exit(v5);
  }
}

void sub_1ABF0EA0C()
{
  v0 = GDXPCLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1ABA78000, v0, OS_LOG_TYPE_ERROR, "GDXPCCoordinationService: Connection interrupted.", v1, 2u);
  }
}

void sub_1ABF0EDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF0EDC4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABF0EDDC(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCEntityResolutionService: error during requestAssetDownloadForAssetType call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1ABF0EEA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF0F1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF0F1D8(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCEntityResolutionService: error during runTest call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1ABF0F2A4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF0F5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF0F5D4(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCEntityResolutionService: error during runTest call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1ABF0F6A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF0F9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF0F9D0(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCEntityResolutionService: error during runTest call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1ABF0FA9C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF0FD5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF0FD80(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCEntityResolutionService: error during runTest call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1ABF10030(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1ABF10050(uint64_t a1)
{
  v2 = GDXPCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1ABA78000, v2, OS_LOG_TYPE_DEFAULT, "Connection to GDXPCEntityResolutionService invalidated.", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = v5[1];
    v5[1] = 0;

    objc_sync_exit(v5);
  }
}

void sub_1ABF100F4()
{
  v0 = GDXPCLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1ABA78000, v0, OS_LOG_TYPE_ERROR, "Connection to GDXPCEntityResolutionService interrupted.", v1, 2u);
  }
}

void sub_1ABF10498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF104B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABF104C8(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCEventLogService: error during logInstantWithId call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1ABF107CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ABF107E4(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCEventLogService: error during logEndWithId call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1ABF10AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ABF10AC4(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCEventLogService: error during logStartWithId call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1ABF10D68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1ABF10D88(uint64_t a1)
{
  v2 = GDXPCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1ABA78000, v2, OS_LOG_TYPE_DEFAULT, "Connection to GDXPCEventLogServer invalidated.", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = v5[1];
    v5[1] = 0;

    objc_sync_exit(v5);
  }
}

void sub_1ABF10E2C()
{
  v0 = GDXPCLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1ABA78000, v0, OS_LOG_TYPE_ERROR, "Connection to GDXPCEventLogServer interrupted.", v1, 2u);
  }
}

void sub_1ABF111B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF111C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABF111E0(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCFeedbackService: error during logWithFeedbackData call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1ABF11484(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1ABF114A4(uint64_t a1)
{
  v2 = GDXPCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1ABA78000, v2, OS_LOG_TYPE_DEFAULT, "Connection to GDXPCFeedbackServer invalidated.", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = v5[1];
    v5[1] = 0;

    objc_sync_exit(v5);
  }
}

void sub_1ABF11548()
{
  v0 = GDXPCLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1ABA78000, v0, OS_LOG_TYPE_ERROR, "Connection to GDXPCFeedbackServer interrupted.", v1, 2u);
  }
}

void sub_1ABF118B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF118DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABF118F4(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCGraphSimulationService: error during mocking triples for entity tagging call: %@", &v9, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1ABF11BBC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1ABF11BDC(uint64_t a1)
{
  v2 = GDXPCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1ABA78000, v2, OS_LOG_TYPE_DEFAULT, "Connection to GDXPCGraphSimulationService invalidated.", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = v5[1];
    v5[1] = 0;

    objc_sync_exit(v5);
  }
}

void sub_1ABF11C80()
{
  v0 = GDXPCLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1ABA78000, v0, OS_LOG_TYPE_ERROR, "Connection to GDXPCGraphSimulationService interrupted.", v1, 2u);
  }
}

void sub_1ABF12040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF12064(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABF1207C(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInferenceSupportService: error during assetEntryDataForAssetId call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1ABF12148(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF12394(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1ABF123B4(uint64_t a1)
{
  v2 = GDXPCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1ABA78000, v2, OS_LOG_TYPE_DEFAULT, "Connection to GDXPCInferenceSupportServer invalidated.", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = v5[1];
    v5[1] = 0;

    objc_sync_exit(v5);
  }
}

void sub_1ABF12458()
{
  v0 = GDXPCLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1ABA78000, v0, OS_LOG_TYPE_ERROR, "Connection to GDXPCInferenceSupportServer interrupted.", v1, 2u);
  }
}

void sub_1ABF1279C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF127C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABF127D8(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during viewValidate call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1ABF12A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF12AC0(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during viewDumpState call: %@", &v9, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1ABF12E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF12E2C(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during viewRunUpdate: %@", &v11, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1ABF12F18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF131E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF13210(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = a1[4];
    v10 = 138412546;
    v11 = v9;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during viewSetEnabled [name=%@]: %@", &v10, 0x16u);
  }

  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(a1[6] + 8) + 24) = 0;
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1ABF13584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF135A8(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during viewClearAllData call: %@", &v11, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1ABF13694(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF138F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF13918(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during viewStop: %@", &v9, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1ABF13C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF13C90(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during viewRunUpdate: %@", &v11, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1ABF13D7C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF13FC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1ABF13FE8(uint64_t a1)
{
  v2 = GDXPCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1ABA78000, v2, OS_LOG_TYPE_DEFAULT, "Connection to GDXPCInternalBiomeServer invalidated.", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = v5[1];
    v5[1] = 0;

    objc_sync_exit(v5);
  }
}

void sub_1ABF1408C()
{
  v0 = GDXPCLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1ABA78000, v0, OS_LOG_TYPE_ERROR, "Connection to GDXPCInternalBiomeServer interrupted.", v1, 2u);
  }
}

void sub_1ABF14410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF14434(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABF1444C(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during featureKeysWithError call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1ABF14518(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF14820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1484C(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v9 = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during viewSql [name=%@]: %@", &v9, 0x16u);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1ABF14928(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF14BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF14C14(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during viewInfo call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1ABF14CE0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF14F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF14F64(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during clearEntityTaggingInjectedTags call: %@", &v9, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1ABF1527C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF152A0(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during showEntityTaggingInjectedTags call: %@", &v11, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1ABF1538C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF15620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF15644(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during injectTagForPerson call: %@", &v9, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1ABF15968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF15994(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during Behavior Understanding mockEntityRelevanceContext: %@", &v9, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1ABF15D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1ABF15D4C(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during generateActivityCentricLifeEvents call: %@", &v11, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1ABF15E38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF16130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1615C(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v11 = a1[4];
    v12 = 138412546;
    v13 = v11;
    v14 = 2112;
    v15 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during Behavior Understanding sampleEntityTaggingFeatures [personID=%@]: %@", &v12, 0x16u);
  }

  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1ABF16258(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF165C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_1ABF165EC(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v11 = a1[4];
    v12 = a1[5];
    v13 = a1[6];
    v14 = 138413058;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2112;
    v19 = v13;
    v20 = 2112;
    v21 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during Behavior Understanding evaluate [behaviorType=%@, queryName=%@, inferenceServiceInstanceId=%@]: %@", &v14, 0x2Au);
  }

  v5 = *(a1[7] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(a1[8] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1ABF166FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF16A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_1ABF16A94(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = *(a1 + 64);
    v14 = *(a1 + 72);
    v15 = 138413314;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    v19 = 2048;
    v20 = v13;
    v21 = 1024;
    v22 = v14;
    v23 = 2112;
    v24 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during PhotosMetadataWithStartDate [startDate=%@, endDate=%@, maxEvents=%ld, newestFirst=%d]: %@", &v15, 0x30u);
  }

  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1ABF16BB8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF16F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_1ABF16F4C(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v11 = a1[4];
    v12 = a1[5];
    v13 = a1[6];
    v14 = 138413058;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2112;
    v19 = v13;
    v20 = 2112;
    v21 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during ContextData fetch [startDate=%@, endDate=%@, source=%@]: %@", &v14, 0x2Au);
  }

  v5 = *(a1[7] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(a1[8] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1ABF1705C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF17394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_1ABF173C0(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v11 = a1[4];
    v12 = a1[5];
    v13 = 138412802;
    v14 = v11;
    v15 = 2112;
    v16 = v12;
    v17 = 2112;
    v18 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during Behavior Understanding featurizedBehaviors [featureName=%@, behaviorType=%@]: %@", &v13, 0x20u);
  }

  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1ABF174C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF17810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1783C(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v11 = a1[4];
    v12 = a1[5];
    v13 = 138412802;
    v14 = v11;
    v15 = 2112;
    v16 = v12;
    v17 = 2112;
    v18 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during Behavior Understanding histograms [kind=%@, behaviorType=%@]: %@", &v13, 0x20u);
  }

  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1ABF17940(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF17CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_1ABF17CD4(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v11 = a1[4];
    v12 = a1[5];
    v13 = a1[6];
    v14 = 138413058;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2112;
    v19 = v13;
    v20 = 2112;
    v21 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during Behavior Understanding featurizeBehavior [type=%@, identifier=%@, date=%@]: %@", &v14, 0x2Au);
  }

  v5 = *(a1[7] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(a1[8] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1ABF17DE4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF180DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF18108(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v11 = a1[4];
    v12 = 138412546;
    v13 = v11;
    v14 = 2112;
    v15 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during Behavior Understanding recentBehaviorsOfType [type=%@]: %@", &v12, 0x16u);
  }

  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1ABF18204(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF1847C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF184A0(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during Behavior Understanding Digest call: %@", &v9, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1ABF18794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF187B8(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during Behavior Understanding ClearAllData call: %@", &v9, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1ABF18AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF18AF4(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during Behavior Understanding Status call: %@", &v11, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1ABF18BE0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF18F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF18F48(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during runTest call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1ABF19014(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF192C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF192EC(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during vectorSearchBenchmark call: %@", &v11, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1ABF193D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF19674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF19698(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during validateGraph call: %@", &v11, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1ABF19784(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF199E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF19A08(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during benchmark call: %@", &v9, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1ABF19CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF19D08(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during runToMatchingPipeline call: %@", &v9, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1ABF19FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1A020(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during runDeltaUpdatePipeline call: %@", &v9, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1ABF1A2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1A320(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during stopPipeline call: %@", &v9, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1ABF1A59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1A5B4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v6 = a3;
  [v5 addObject:a2];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v6];
}

void sub_1ABF1A630(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = GDXPCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = a2;
    _os_log_error_impl(&dword_1ABA78000, v3, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during triplesQuery call: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1ABF1A8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1A910(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during stats call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1ABF1A9DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF1AC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1AC60(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during clearStatus call: %@", &v9, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1ABF1AF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1AF9C(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during status call: %@", &v11, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1ABF1B088(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF1B2D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1ABF1B2F4(uint64_t a1)
{
  v2 = GDXPCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1ABA78000, v2, OS_LOG_TYPE_DEFAULT, "Connection to GDXPCInternalServer invalidated.", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = v5[1];
    v5[1] = 0;

    objc_sync_exit(v5);
  }
}

void sub_1ABF1B398()
{
  v0 = GDXPCLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1ABA78000, v0, OS_LOG_TYPE_ERROR, "Connection to GDXPCInternalServer interrupted.", v1, 2u);
  }
}

void sub_1ABF1B884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF1B8A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABF1B8C0(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCKnosisService: error during runTest call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1ABF1B98C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF1BE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 256), 8);
  _Block_object_dispose((v39 - 208), 8);
  _Block_object_dispose((v39 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1BE8C(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCKnosisService: error during iteratingExecuteKGQ call: %@", &v9, 0xCu);
  }

  v5 = *(a1[4] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(a1[5] + 8) + 24) = 1;
  *(*(a1[6] + 8) + 24) = 1;

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1ABF1BF80(void *a1, void *a2, void *a3)
{
  v14 = a3;
  if (a2)
  {
    v6 = a2;
    *(*(a1[8] + 8) + 24) = [v6 hasMoreAnswers];
    v7 = [v6 offset];
    v8 = *(a1[9] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = [v6 limit];
    v11 = *(a1[10] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
    *(*(a1[6] + 8) + 24) = 1;
    *(*(a1[7] + 8) + 24) = 1;
  }

  v13 = *(a1[6] + 8);
  (*(a1[4] + 16))();
}

void sub_1ABF1C48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 224), 8);
  _Block_object_dispose((v37 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1C4F4(uint64_t a1, void *a2, _BYTE *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_6:
    *(*(*(a1 + 56) + 8) + 24) = 3;
    goto LABEL_19;
  }

  v10 = [v5 kgq];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = [v6 query];
  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  *(*(*(a1 + 56) + 8) + 24) = [v6 status];
  v16 = [v6 debug];
  v17 = *(*(a1 + 64) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ([v6 status] == 3)
  {
    v7 = [v6 errorMessage];
    v8 = *(*(a1 + 72) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v19 = [v6 answers];
    v20 = [v19 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v30;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [*(a1 + 32) addObject:*(*(&v29 + 1) + 8 * i)];
          v24 = *(*(a1 + 80) + 8);
          v25 = *(v24 + 24);
          v26 = v25 < 1;
          v27 = v25 - 1;
          if (!v26)
          {
            *(v24 + 24) = v27;
            if (!*(*(*(a1 + 80) + 8) + 24))
            {
              *a3 = 1;
              goto LABEL_18;
            }
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:
  }

LABEL_19:

  v28 = *MEMORY[0x1E69E9840];
}

void sub_1ABF1C8D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1ABF1C8F0(uint64_t a1)
{
  v2 = GDXPCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1ABA78000, v2, OS_LOG_TYPE_DEFAULT, "Connection to GDXPCKnosisServer invalidated.", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = v5[1];
    v5[1] = 0;

    objc_sync_exit(v5);
  }
}

void sub_1ABF1C994()
{
  v0 = GDXPCLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1ABA78000, v0, OS_LOG_TYPE_ERROR, "Connection to GDXPCKnosisServer interrupted.", v1, 2u);
  }
}

void sub_1ABF1CCD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF1CCFC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABF1CD14(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCKnowledgeConstructionService: error during checkIn call: %@", &v9, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1ABF1CFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1D014(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCKnowledgeConstructionService: error during stopPipeline call: %@", &v9, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1ABF1D300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1D324(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCKnowledgeConstructionService: error during runFastpassPipeline call: %@", &v9, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1ABF1D610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1D634(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCKnowledgeConstructionService: error during runFullPipeline call: %@", &v9, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1ABF1D7C8(uint64_t a1)
{
  v2 = GDXPCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1ABA78000, v2, OS_LOG_TYPE_DEFAULT, "Connection to GDXPCKnowledgeConstructionService invalidated.", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = v5[1];
    v5[1] = 0;

    objc_sync_exit(v5);
  }
}

void sub_1ABF1D86C()
{
  v0 = GDXPCLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1ABA78000, v0, OS_LOG_TYPE_ERROR, "Connection to GDXPCKnowledgeConstructionService interrupted.", v1, 2u);
  }
}

void sub_1ABF1DB7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF1DBA0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABF1DBB8(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCLighthouseService: error during collectDBStatus call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1ABF1DC84(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_1ABF1DF18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1DF3C(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCLighthouseService: error during collectDBStats call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1ABF1E008(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_1ABF1E24C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1ABF1E26C(uint64_t a1)
{
  v2 = GDXPCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1ABA78000, v2, OS_LOG_TYPE_DEFAULT, "Connection to GDXPCLighthouseServer invalidated.", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = v5[1];
    v5[1] = 0;

    objc_sync_exit(v5);
  }
}

void sub_1ABF1E310()
{
  v0 = GDXPCLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1ABA78000, v0, OS_LOG_TYPE_ERROR, "Connection to GDXPCLighthouseServer interrupted.", v1, 2u);
  }
}

void sub_1ABF1E690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF1E6B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABF1E6CC(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCSysdiagnoseService: error during event view diagnostics call: %@", &v11, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1ABF1E7B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF1EA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1EA78(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCSysdiagnoseService: error during Views supplemental diagnostics call: %@", &v11, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1ABF1EB64(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF1EE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1EE24(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCSysdiagnoseService: error during EntityResolution supplemental diagnostics call: %@", &v11, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1ABF1EF10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF1F1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1F1D0(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCSysdiagnoseService: error during EntityRelevanceRanking supplemental diagnostics call: %@", &v11, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1ABF1F2BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF1F558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1F57C(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCSysdiagnoseService: error during EntityTagging supplemental diagnostics call: %@", &v11, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1ABF1F668(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF1F904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1F928(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCSysdiagnoseService: error during diagnostics call: %@", &v11, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1ABF1FA14(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF1FC60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1ABF1FC80(uint64_t a1)
{
  v2 = GDXPCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1ABA78000, v2, OS_LOG_TYPE_DEFAULT, "GDXPCSysdiagnoseService: Connection invalidated.", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = v5[1];
    v5[1] = 0;

    objc_sync_exit(v5);
  }
}

void sub_1ABF1FD24()
{
  v0 = GDXPCLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1ABA78000, v0, OS_LOG_TYPE_ERROR, "GDXPCSysdiagnoseService: Connection interrupted.", v1, 2u);
  }
}

void sub_1ABF200E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF20110(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABF20128(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCViewService: error during reportSQLiteErrorForViewName call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1ABF20448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF20474(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCViewService: error during reportUnknownErrorForViewName call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1ABF20798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF207BC(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCViewService: error during accessTokenForFeaturesWithIsSandboxed call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1ABF20888(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF20B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1ABF20BBC(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCViewService: error during accessInfoForViewName call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1ABF20C88(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF20F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1ABF20FBC(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCViewService: error during accessTokenForViewName call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1ABF21088(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF21324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF21348(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCViewService: error during runUpdateWithViewName call: %@", &v9, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1ABF21628(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1ABF21648(uint64_t a1)
{
  v2 = GDXPCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1ABA78000, v2, OS_LOG_TYPE_DEFAULT, "Connection to GDXPCViewServer invalidated.", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = v5[1];
    v5[1] = 0;

    objc_sync_exit(v5);
  }
}

void sub_1ABF216EC()
{
  v0 = GDXPCLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1ABA78000, v0, OS_LOG_TYPE_ERROR, "Connection to GDXPCViewServer interrupted.", v1, 2u);
  }
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}