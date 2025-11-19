uint64_t sub_24A6FFD9C()
{
  v1 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - v3;
  v17 = 60;
  v18 = 0xE100000000000000;
  v5 = *v0;
  v6 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v6);

  MEMORY[0x24C21C9E0](2016419898, 0xE400000000000000);
  v16 = v0;
  sub_24A6CB660();
  v7 = sub_24A82D174();
  MEMORY[0x24C21C9E0](v7);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  v9 = v17;
  v8 = v18;
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_24A82D854();

  v17 = 980185717;
  v18 = 0xE400000000000000;
  sub_24A696E10(v0 + OBJC_IVAR____TtC8FMIPCore22FMIPGetURLInfoResponse_url, v4);
  v10 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v10);

  MEMORY[0x24C21C9E0](0x4373757461747320, 0xEC0000003A65646FLL);
  v16 = v0[6];
  v11 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](v11);

  MEMORY[0x24C21C9E0](15913, 0xE200000000000000);
  v12 = v17;
  v13 = v18;
  v17 = v9;
  v18 = v8;

  MEMORY[0x24C21C9E0](v12, v13);

  return v17;
}

uint64_t sub_24A6FFFCC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  sub_24A6D3E54(v0 + OBJC_IVAR____TtC8FMIPCore22FMIPGetURLInfoResponse_url);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMIPGetURLInfoResponse()
{
  result = qword_27EF5DAF0;
  if (!qword_27EF5DAF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A70009C()
{
  sub_24A6790B0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_24A700150()
{
  result = qword_27EF5DB08;
  if (!qword_27EF5DB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DB08);
  }

  return result;
}

unint64_t sub_24A7001B8()
{
  result = qword_27EF5DB10;
  if (!qword_27EF5DB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DB10);
  }

  return result;
}

unint64_t sub_24A700210()
{
  result = qword_27EF5DB18;
  if (!qword_27EF5DB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DB18);
  }

  return result;
}

unint64_t sub_24A700268()
{
  result = qword_27EF5DB20;
  if (!qword_27EF5DB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DB20);
  }

  return result;
}

uint64_t FMIPDisableTagSafetyAlertAction.__allocating_init(disabled:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void FMIPAddress.init(label:placemark:)(id a1@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X8>)
{
  v8 = [a1 country];
  if (v8)
  {
    v9 = v8;
    v10 = sub_24A82CFC4();
    v101 = v11;
    v102 = v10;
  }

  else
  {
    v101 = 0;
    v102 = 0;
  }

  v12 = [a1 ISOcountryCode];
  if (v12)
  {
    v13 = v12;
    v99 = sub_24A82CFC4();
    v100 = v14;
  }

  else
  {
    v99 = 0;
    v100 = 0;
  }

  v15 = [a1 thoroughfare];
  if (v15)
  {
    v16 = v15;
    v107 = sub_24A82CFC4();
    v18 = v17;
  }

  else
  {
    v107 = 0;
    v18 = 0;
  }

  v19 = [a1 thoroughfare];
  if (v19)
  {
    v20 = v19;
    v21 = sub_24A82CFC4();
    v97 = v22;
    v98 = v21;
  }

  else
  {
    v97 = 0;
    v98 = 0;
  }

  v23 = [a1 locality];
  if (v23)
  {
    v24 = v23;
    v105 = sub_24A82CFC4();
    v26 = v25;
  }

  else
  {
    v105 = 0;
    v26 = 0;
  }

  v27 = [a1 postalCode];
  if (v27)
  {
    v28 = v27;
    v29 = sub_24A82CFC4();
    v95 = v30;
    v96 = v29;
  }

  else
  {
    v95 = 0;
    v96 = 0;
  }

  v31 = [a1 administrativeArea];
  if (v31)
  {
    v32 = v31;
    v33 = sub_24A82CFC4();
    v93 = v34;
    v94 = v33;
  }

  else
  {
    v93 = 0;
    v94 = 0;
  }

  v35 = [a1 subAdministrativeArea];
  if (v35)
  {
    v36 = v35;
    v37 = sub_24A82CFC4();
    v91 = v38;
    v92 = v37;
  }

  else
  {
    v91 = 0;
    v92 = 0;
  }

  v39 = [a1 fullThoroughfare];
  if (v39)
  {
    v40 = v39;
    v41 = sub_24A82CFC4();
    v89 = v42;
    v90 = v41;
  }

  else
  {
    v89 = 0;
    v90 = 0;
  }

  v43 = [a1 areasOfInterest];
  v106 = v18;
  v104 = v26;
  if (v43)
  {
    v44 = v43;
    v88 = sub_24A82D244();
  }

  else
  {
    v88 = MEMORY[0x277D84F90];
  }

  v45 = [a1 _geoMapItem];
  v46 = &off_278FE8000;
  if (!v45)
  {
    goto LABEL_36;
  }

  v47 = [v45 addressObject];
  if (v47)
  {
    v48 = v47;
    v49 = [v47 fullAddressNoCurrentCountryWithMultiline_];

    if (v49)
    {
      v50 = sub_24A82CFC4();
      v85 = v51;
      v86 = v50;

      swift_unknownObjectRelease();
      goto LABEL_37;
    }

    swift_unknownObjectRelease();
LABEL_36:
    v85 = 0;
    v86 = 0;
LABEL_37:
    v52 = [a1 _geoMapItem];
    if (v52)
    {
      v53 = [v52 addressObject];
      swift_unknownObjectRelease();
      if (v53)
      {
        v54 = [v53 cityAndAboveNoCurrentCountryWithFallback_];
        v55 = v106;
        v56 = v104;
        if (v54)
        {
          v57 = a2;
          v58 = v54;
          v59 = sub_24A82CFC4();
          v61 = v60;

          v62 = HIBYTE(v61) & 0xF;
          v103 = v59;
          if ((v61 & 0x2000000000000000) == 0)
          {
            v62 = v59 & 0xFFFFFFFFFFFFLL;
          }

          if (!v62)
          {

            v103 = 0;
            v61 = 0;
          }

          v63 = v107;
          a2 = v57;
          v46 = &off_278FE8000;
          v84 = v61;
          if (!v106)
          {
            goto LABEL_55;
          }

LABEL_49:
          v64 = HIBYTE(v55) & 0xF;
          if ((v55 & 0x2000000000000000) == 0)
          {
            v64 = v63 & 0xFFFFFFFFFFFFLL;
          }

          if (v64)
          {

            v82 = v63;
            v83 = v55;
          }

          else
          {
            v82 = 0;
            v83 = 0;
          }

LABEL_56:
          v65 = sub_24A701FFC(v63, v55, v105, v56);
          v67 = v66;

          if (!v67)
          {
            goto LABEL_60;
          }

          v68 = HIBYTE(v67) & 0xF;
          if ((v67 & 0x2000000000000000) == 0)
          {
            v68 = v65 & 0xFFFFFFFFFFFFLL;
          }

          if (!v68)
          {

            v65 = 0;
            v67 = 0;
            v87 = a2;
            if (v53)
            {
LABEL_61:
              v69 = [v53 shortAddress];
              if (v69)
              {
                v70 = v69;
                v71 = sub_24A82CFC4();
                v73 = v72;

                v74 = HIBYTE(v73) & 0xF;
                if ((v73 & 0x2000000000000000) == 0)
                {
                  v74 = v71 & 0xFFFFFFFFFFFFLL;
                }

                if (v74)
                {
LABEL_67:
                  v75 = [v53 v46[214]];
                  if (v75)
                  {
                    v76 = v75;
                    v77 = sub_24A82CFC4();
                    v79 = v78;

                    v80 = HIBYTE(v79) & 0xF;
                    if ((v79 & 0x2000000000000000) == 0)
                    {
                      v80 = v77 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v80)
                    {
                      goto LABEL_76;
                    }
                  }

                  else
                  {
                  }

                  v77 = 0;
                  v79 = 0;
LABEL_76:
                  a3 = v81;
                  goto LABEL_77;
                }
              }

              v71 = 0;
              v73 = 0;
              goto LABEL_67;
            }
          }

          else
          {
LABEL_60:
            v87 = a2;
            if (v53)
            {
              goto LABEL_61;
            }
          }

          v71 = 0;
          v73 = 0;
          v77 = 0;
          v79 = 0;
LABEL_77:
          *a4 = v87;
          a4[1] = a3;
          a4[4] = v101;
          a4[5] = v99;
          a4[2] = 0;
          a4[3] = v102;
          a4[6] = v100;
          a4[7] = v107;
          a4[8] = v106;
          a4[9] = v98;
          a4[10] = v97;
          a4[11] = v105;
          a4[12] = v104;
          a4[13] = v96;
          a4[14] = v95;
          a4[15] = v94;
          a4[16] = v93;
          a4[17] = v92;
          a4[18] = v91;
          a4[19] = v86;
          a4[20] = v85;
          a4[21] = v88;
          a4[22] = v90;
          a4[23] = v89;
          a4[24] = v103;
          a4[25] = v84;
          a4[26] = v82;
          a4[27] = v83;
          a4[28] = v65;
          a4[29] = v67;
          a4[30] = v71;
          a4[31] = v73;
          a4[32] = v77;
          a4[33] = v79;
          a4[34] = 0;
          a4[35] = 0;
          return;
        }

        v103 = 0;
        v63 = v107;
        v84 = 0;
        if (v106)
        {
          goto LABEL_49;
        }

LABEL_55:
        v82 = v63;
        v83 = 0;
        goto LABEL_56;
      }

      v103 = 0;
    }

    else
    {
      v103 = 0;
      v53 = 0;
    }

    v55 = v106;
    v63 = v107;
    v56 = v104;
    v84 = 0;
    if (v106)
    {
      goto LABEL_49;
    }

    goto LABEL_55;
  }

  __break(1u);
}

uint64_t FMIPAddress.label.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FMIPAddress.country.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t FMIPAddress.countryCode.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t FMIPAddress.streetName.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t FMIPAddress.streetAddress.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t FMIPAddress.locality.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t FMIPAddress.stateCode.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t FMIPAddress.administrativeArea.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return v1;
}

uint64_t FMIPAddress.subAdministrativeArea.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return v1;
}

uint64_t FMIPAddress.mapItemFormattedAddress.getter()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return v1;
}

uint64_t FMIPAddress.fullThoroughfare.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return v1;
}

uint64_t FMIPAddress.coarseAddressModern.getter()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return v1;
}

uint64_t FMIPAddress.streetAddressModern.getter()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return v1;
}

uint64_t FMIPAddress.smallAddressModern.getter()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return v1;
}

uint64_t FMIPAddress.mediumAddressModern.getter()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);

  return v1;
}

uint64_t FMIPAddress.largeAddressModern.getter()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  return v1;
}

uint64_t FMIPAddress.poiAddressModern.getter()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);

  return v1;
}

uint64_t FMIPAddress.displayAddress.getter()
{
  v2 = v0[3];
  v1 = v0[4];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[16];
  if (v5 && (v8 = v0[13], v9 = v0[14], sub_24A82D0A4() >= 1))
  {

    if (!v3)
    {
      goto LABEL_4;
    }
  }

  else
  {

    v8 = v6;
    v5 = v7;
    if (!v3)
    {
LABEL_4:
      if (!v5)
      {
        if (!v1)
        {
          goto LABEL_6;
        }

LABEL_14:

        v8 = v2;
        v5 = v1;
        goto LABEL_15;
      }

      goto LABEL_15;
    }
  }

  if (!v5)
  {
    goto LABEL_21;
  }

  if (v4 == v8 && v3 == v5 || (sub_24A82DC04() & 1) != 0)
  {

    if (!v1)
    {
LABEL_6:
      if (!v3)
      {
        return v3;
      }

      goto LABEL_21;
    }

    goto LABEL_14;
  }

LABEL_15:
  v10 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v10 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    type metadata accessor for FMLocalize();
    if (v3)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v12 = objc_opt_self();

      v13 = [v12 bundleForClass_];
      sub_24A82C6F4();

      sub_24A6BBA94(&qword_27EF5D4B8, &qword_24A832868);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_24A8356C0;
      v15 = MEMORY[0x277D837D0];
      *(v14 + 56) = MEMORY[0x277D837D0];
      v16 = sub_24A6B243C();
      *(v14 + 32) = v4;
      *(v14 + 40) = v3;
      *(v14 + 96) = v15;
      *(v14 + 104) = v16;
      *(v14 + 64) = v16;
      *(v14 + 72) = v8;
      *(v14 + 80) = v5;
    }

    else
    {
      v22 = swift_getObjCClassFromMetadata();
      v23 = [objc_opt_self() bundleForClass_];
      sub_24A82C6F4();

      sub_24A6BBA94(&qword_27EF5D4B8, &qword_24A832868);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_24A8327A0;
      *(v24 + 56) = MEMORY[0x277D837D0];
      *(v24 + 64) = sub_24A6B243C();
      *(v24 + 32) = v8;
      *(v24 + 40) = v5;
    }

    goto LABEL_22;
  }

  if (!v3)
  {
    return v3;
  }

LABEL_21:
  type metadata accessor for FMLocalize();
  v17 = swift_getObjCClassFromMetadata();
  v18 = objc_opt_self();

  v19 = [v18 bundleForClass_];
  sub_24A82C6F4();

  sub_24A6BBA94(&qword_27EF5D4B8, &qword_24A832868);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_24A8327A0;
  *(v20 + 56) = MEMORY[0x277D837D0];
  *(v20 + 64) = sub_24A6B243C();
  *(v20 + 32) = v4;
  *(v20 + 40) = v3;
LABEL_22:
  v3 = sub_24A82CFF4();

  return v3;
}

unint64_t sub_24A701098(char a1)
{
  result = 0x6C6562616CLL;
  switch(a1)
  {
    case 1:
    case 9:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0x7972746E756F63;
      break;
    case 3:
      result = 0x437972746E756F63;
      break;
    case 4:
      result = 0x614E746565727473;
      break;
    case 5:
      result = 0x6441746565727473;
      break;
    case 6:
      result = 0x7974696C61636F6CLL;
      break;
    case 7:
      result = 0x646F436574617473;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0x6E49664F61657261;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
    case 14:
    case 16:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0xD000000000000012;
      break;
    case 18:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24A70129C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_24A701098(*a1);
  v5 = v4;
  if (v3 == sub_24A701098(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A82DC04();
  }

  return v8 & 1;
}

uint64_t sub_24A701324()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A701098(v1);
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A701388()
{
  sub_24A701098(*v0);
  sub_24A82D094();
}

uint64_t sub_24A7013DC()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A701098(v1);
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A70143C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A70377C();
  *a2 = result;
  return result;
}

unint64_t sub_24A70146C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24A701098(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24A7014B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A70377C();
  *a1 = result;
  return result;
}

uint64_t sub_24A7014E8(uint64_t a1)
{
  v2 = sub_24A685408();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A701524(uint64_t a1)
{
  v2 = sub_24A685408();

  return MEMORY[0x2821FE720](a1, v2);
}

void FMIPAddress.init(mapItem:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v120 = 0;
  v121 = 0;
  v118 = 0;
  v119 = 0;
  v4 = [a1 name];
  if (v4)
  {
    v5 = v4;
    sub_24A82CFC4();

    v6 = sub_24A82D194();
    v113 = v7;
    v114 = v6;
  }

  else
  {
    v113 = 0;
    v114 = 0;
  }

  v8 = [a1 geoAddress];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 formattedAddressLines];
    if (v10)
    {
      v11 = v10;
      sub_24A82D234();
    }

    v12 = [v9 structuredAddress];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 country];
      if (v14)
      {
        v15 = v14;
        sub_24A82CFC4();

        v16 = sub_24A82D194();
        v111 = v17;
        v112 = v16;
      }

      else
      {
        v111 = 0;
        v112 = 0;
      }

      v21 = [v13 countryCode];
      if (v21)
      {
        v22 = v21;
        sub_24A82CFC4();

        v23 = sub_24A82D194();
        v109 = v24;
        v110 = v23;
      }

      else
      {
        v109 = 0;
        v110 = 0;
      }

      v25 = [v13 thoroughfare];
      if (v25)
      {
        v26 = v25;
        sub_24A82CFC4();

        v25 = sub_24A82D194();
        v120 = v25;
        v121 = v27;
      }

      else
      {
        v27 = 0;
      }

      v116 = v27;
      v28 = v25;
      v29 = [v13 subThoroughfare];
      if (v29)
      {
        v30 = v29;
        sub_24A82CFC4();

        v31 = sub_24A82D194();
        v106 = v32;
        v107 = v31;
      }

      else
      {
        v106 = 0;
        v107 = 0;
      }

      v33 = [v13 locality];
      if (v33)
      {
        v34 = v33;
        sub_24A82CFC4();

        v105 = sub_24A82D194();
        v118 = v105;
        v119 = v35;
        v18 = v35;
      }

      else
      {
        v105 = 0;
        v18 = 0;
      }

      v36 = [v13 administrativeAreaCode];
      if (v36)
      {
        v37 = v36;
        sub_24A82CFC4();

        v38 = sub_24A82D194();
        v102 = v39;
        v103 = v38;
      }

      else
      {
        v102 = 0;
        v103 = 0;
      }

      v40 = [v13 administrativeArea];
      if (v40)
      {
        v41 = v40;
        sub_24A82CFC4();

        v42 = sub_24A82D194();
        v100 = v43;
        v101 = v42;
      }

      else
      {
        v100 = 0;
        v101 = 0;
      }

      v44 = [v13 subAdministrativeArea];
      if (v44)
      {
        v45 = v44;
        sub_24A82CFC4();

        v46 = sub_24A82D194();
        v98 = v47;
        v99 = v46;
      }

      else
      {

        v98 = 0;
        v99 = 0;
      }

      v19 = v28;
      v20 = v116;
      goto LABEL_36;
    }

    v98 = 0;
    v99 = 0;
    v100 = 0;
    v101 = 0;
    v102 = 0;
    v103 = 0;
    v106 = 0;
    v107 = 0;
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v112 = 0;
  }

  else
  {
    v98 = 0;
    v99 = 0;
    v100 = 0;
    v101 = 0;
    v102 = 0;
    v103 = 0;
    v106 = 0;
    v107 = 0;
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v112 = 0;
  }

  v105 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
LABEL_36:

  v48 = [a1 geoAddress];
  if (v48 && (v49 = v48, v50 = [v48 structuredAddress], v49, v50) && (v51 = objc_msgSend(v50, sel_fullThoroughfare), v50, v51))
  {
    v52 = sub_24A82CFC4();
    v96 = v53;
    v97 = v52;
  }

  else
  {
    v96 = 0;
    v97 = 0;
  }

  v54 = [a1 geoAddress];
  if (v54 && (v55 = v54, v56 = [v54 structuredAddress], v55, v56))
  {
    v57 = [v56 areaOfInterests];

    v58 = MEMORY[0x277D84F90];
    if (v57)
    {
      sub_24A82D234();
    }
  }

  else
  {
    v58 = MEMORY[0x277D84F90];
  }

  v95 = v58;
  v59 = [a1 addressObject];
  if (v59 && (v60 = v59, v61 = [v59 fullAddressNoCurrentCountryWithMultiline_], v60, v61))
  {
    v62 = sub_24A82CFC4();
    v93 = v63;
    v94 = v62;
  }

  else
  {
    v93 = 0;
    v94 = 0;
  }

  v64 = [a1 addressObject];
  v65 = v64;
  if (!v64 || (v66 = [v64 cityAndAboveNoCurrentCountryWithFallback_]) == 0)
  {
LABEL_58:
    v115 = 0;
    v70 = 0;
    v117 = v20;
    if (!v20)
    {
      goto LABEL_63;
    }

    goto LABEL_59;
  }

  v67 = v66;
  v68 = sub_24A82CFC4();
  v70 = v69;

  v71 = HIBYTE(v70) & 0xF;
  v115 = v68;
  if ((v70 & 0x2000000000000000) == 0)
  {
    v71 = v68 & 0xFFFFFFFFFFFFLL;
  }

  if (!v71)
  {

    goto LABEL_58;
  }

  v117 = v20;
  if (!v20)
  {
    goto LABEL_63;
  }

LABEL_59:
  v72 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v72 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v72)
  {

    v90 = v20;
    v91 = v19;
    goto LABEL_64;
  }

LABEL_63:
  v90 = 0;
  v91 = 0;
LABEL_64:
  v73 = sub_24A701E30(&v120, &v118);
  v75 = v74;

  if (v75)
  {
    v76 = HIBYTE(v75) & 0xF;
    if ((v75 & 0x2000000000000000) == 0)
    {
      v76 = v73 & 0xFFFFFFFFFFFFLL;
    }

    if (!v76)
    {

      v73 = 0;
      v75 = 0;
    }
  }

  else
  {
    v73 = 0;
  }

  v108 = v19;
  v104 = v18;
  v92 = v70;
  if (!v65)
  {
    v89 = v117;

    swift_unknownObjectRelease();
    v79 = 0;
    v81 = 0;
LABEL_86:
    v85 = 0;
    v87 = 0;
    goto LABEL_87;
  }

  v77 = [v65 shortAddress];
  if (!v77)
  {
    goto LABEL_76;
  }

  v78 = v77;
  v79 = sub_24A82CFC4();
  v81 = v80;

  v82 = HIBYTE(v81) & 0xF;
  if ((v81 & 0x2000000000000000) == 0)
  {
    v82 = v79 & 0xFFFFFFFFFFFFLL;
  }

  if (!v82)
  {

LABEL_76:
    v79 = 0;
    v81 = 0;
  }

  v83 = [v65 fullAddressNoCurrentCountryWithMultiline_];
  if (!v83)
  {
    v89 = v117;

    swift_unknownObjectRelease();

    goto LABEL_86;
  }

  v84 = v83;
  v85 = sub_24A82CFC4();
  v87 = v86;

  swift_unknownObjectRelease();
  if ((v87 & 0x2000000000000000) != 0)
  {
    v88 = HIBYTE(v87) & 0xF;
  }

  else
  {
    v88 = v85 & 0xFFFFFFFFFFFFLL;
  }

  if (!v88)
  {

    v85 = 0;
    v87 = 0;
  }

  v89 = v117;
LABEL_87:
  *a2 = v114;
  a2[1] = v113;
  a2[2] = 0;
  a2[3] = v112;
  a2[4] = v111;
  a2[5] = v110;
  a2[6] = v109;
  a2[7] = v108;
  a2[8] = v89;
  a2[9] = v107;
  a2[10] = v106;
  a2[11] = v105;
  a2[12] = v104;
  a2[13] = v103;
  a2[14] = v102;
  a2[15] = v101;
  a2[16] = v100;
  a2[17] = v99;
  a2[18] = v98;
  a2[19] = v94;
  a2[20] = v93;
  a2[21] = v95;
  a2[22] = v97;
  a2[23] = v96;
  a2[24] = v115;
  a2[25] = v92;
  a2[26] = v91;
  a2[27] = v90;
  a2[28] = v73;
  a2[29] = v75;
  a2[30] = v79;
  a2[31] = v81;
  a2[32] = v85;
  a2[33] = v87;
  a2[34] = 0;
  a2[35] = 0;
}

uint64_t sub_24A701E30(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = a1[1];
  if (!v4)
  {
    return 0;
  }

  v5 = *a1;
  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    return 0;
  }

  swift_beginAccess();
  v7 = a2[1];
  if (!v7)
  {
    return 0;
  }

  v8 = *a2;
  v9 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v9 = *a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    return 0;
  }

  type metadata accessor for FMLocalize();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();

  v12 = [v11 bundleForClass_];
  sub_24A82C6F4();

  sub_24A6BBA94(&qword_27EF5D4B8, &qword_24A832868);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_24A8356C0;
  v14 = MEMORY[0x277D837D0];
  *(v13 + 56) = MEMORY[0x277D837D0];
  v15 = sub_24A6B243C();
  *(v13 + 32) = v5;
  *(v13 + 40) = v4;
  *(v13 + 96) = v14;
  *(v13 + 104) = v15;
  *(v13 + 64) = v15;
  *(v13 + 72) = v8;
  *(v13 + 80) = v7;
  v16 = sub_24A82CFE4();

  return v16;
}

uint64_t sub_24A701FFC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  result = 0;
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 && a4)
  {
    v7 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v7 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      v8 = a1;
      type metadata accessor for FMLocalize();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v13 = objc_opt_self();

      v14 = [v13 bundleForClass_];
      sub_24A82C6F4();

      sub_24A6BBA94(&qword_27EF5D4B8, &qword_24A832868);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_24A8356C0;
      v16 = MEMORY[0x277D837D0];
      *(v15 + 56) = MEMORY[0x277D837D0];
      v17 = sub_24A6B243C();
      *(v15 + 32) = v8;
      *(v15 + 40) = a2;
      *(v15 + 96) = v16;
      *(v15 + 104) = v17;
      *(v15 + 64) = v17;
      *(v15 + 72) = a3;
      *(v15 + 80) = a4;
      v18 = sub_24A82CFE4();

      return v18;
    }

    return 0;
  }

  return result;
}

uint64_t FMIPAddress.encode(to:)(void *a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5DB38, &qword_24A8356D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v40 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v72 = v1[3];
  v73 = v10;
  v11 = v1[4];
  v12 = v1[5];
  v13 = v1[7];
  v70 = v1[6];
  v71 = v11;
  v67 = v13;
  v14 = v1[9];
  v68 = v1[8];
  v69 = v12;
  v15 = v1[10];
  v16 = v1[11];
  v65 = v14;
  v66 = v15;
  v17 = v1[12];
  v18 = v1[13];
  v63 = v16;
  v64 = v17;
  v19 = v1[14];
  v20 = v1[15];
  v61 = v18;
  v62 = v19;
  v21 = v1[16];
  v22 = v1[17];
  v59 = v20;
  v60 = v21;
  v24 = v1[18];
  v23 = v1[19];
  v57 = v22;
  v58 = v24;
  v56 = v23;
  v25 = v1[21];
  v55 = v1[20];
  v54 = v25;
  v26 = v1[23];
  v53 = v1[22];
  v52 = v26;
  v27 = v1[25];
  v51 = v1[24];
  v50 = v27;
  v28 = v1[27];
  v49 = v1[26];
  v48 = v28;
  v29 = v1[29];
  v47 = v1[28];
  v46 = v29;
  v30 = v1[31];
  v45 = v1[30];
  v44 = v30;
  v31 = v1[33];
  v41 = v1[32];
  v40 = v31;
  v32 = v1[35];
  v43 = v1[34];
  v42 = v32;
  v33 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A685408();

  sub_24A82DD84();
  v75 = v8;
  v76 = v9;
  v77 = 0;
  v34 = sub_24A6BBA94(&qword_27EF5D248, &unk_24A834970);
  sub_24A6CCEB0();
  v35 = v74;
  sub_24A82DB44();
  if (v35)
  {

    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    v38 = v71;
    v37 = v72;
    v74 = v34;

    v75 = v73;
    v77 = 1;
    sub_24A6BBA94(&qword_27EF5DB40, &qword_24A8356E0);
    sub_24A702900();
    sub_24A82DB44();
    v75 = v37;
    v76 = v38;
    v77 = 2;
    v73 = 0;
    sub_24A82DB44();
    v75 = v69;
    v76 = v70;
    v77 = 3;
    sub_24A82DB44();
    v75 = v67;
    v76 = v68;
    v77 = 4;
    sub_24A82DB44();
    v75 = v65;
    v76 = v66;
    v77 = 5;
    sub_24A82DB44();
    v75 = v63;
    v76 = v64;
    v77 = 6;
    sub_24A82DB44();
    v75 = v61;
    v76 = v62;
    v77 = 7;
    sub_24A82DB44();
    v75 = v59;
    v76 = v60;
    v77 = 8;
    sub_24A82DB44();
    v75 = v57;
    v76 = v58;
    v77 = 9;
    sub_24A82DB44();
    v75 = v56;
    v76 = v55;
    v77 = 10;
    sub_24A82DB44();
    v75 = v54;
    v77 = 11;
    sub_24A6BBA94(&qword_27EF5D9D0, &qword_24A835090);
    sub_24A7029A8(&qword_27EF5DB50);
    sub_24A82DB44();
    v75 = v53;
    v76 = v52;
    v77 = 12;
    sub_24A82DB44();
    v75 = v51;
    v76 = v50;
    v77 = 13;
    sub_24A82DB44();
    v75 = v49;
    v76 = v48;
    v77 = 14;
    sub_24A82DB44();
    v75 = v47;
    v76 = v46;
    v77 = 15;
    sub_24A82DB44();
    v75 = v45;
    v76 = v44;
    v77 = 16;
    sub_24A82DB44();
    v75 = v41;
    v76 = v40;
    v77 = 17;
    sub_24A82DB44();
    v75 = v43;
    v76 = v42;
    v77 = 18;
    v39 = v73;
    sub_24A82DB44();
    return (*(v4 + 8))(v39, v3);
  }
}

unint64_t sub_24A702900()
{
  result = qword_27EF5DB48;
  if (!qword_27EF5DB48)
  {
    sub_24A6CCDC0(&qword_27EF5DB40, &qword_24A8356E0);
    sub_24A7029A8(&qword_27EF5DB50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DB48);
  }

  return result;
}

uint64_t sub_24A7029A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_24A6CCDC0(&qword_27EF5D9D0, &qword_24A835090);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t FMIPAddress.debugDescription.getter()
{
  v1 = v0[2];
  v3 = v0[19];
  v2 = v0[20];

  sub_24A82D854();

  if (!v2)
  {

    sub_24A6BBA94(&qword_27EF5DB40, &qword_24A8356E0);
    v3 = sub_24A82D024();
    v2 = v4;
  }

  MEMORY[0x24C21C9E0](v3, v2);

  MEMORY[0x24C21C9E0](62, 0xE100000000000000);
  return 0xD000000000000017;
}

uint64_t _s8FMIPCore11FMIPAddressV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v186 = a1[4];
  v167 = a1[3];
  v175 = a1[6];
  v158 = a1[7];
  v165 = a1[8];
  v154 = a1[9];
  v161 = a1[10];
  v162 = a1[5];
  v150 = a1[11];
  v156 = a1[12];
  v146 = a1[13];
  v153 = a1[14];
  v149 = a1[16];
  v137 = a1[17];
  v145 = a1[18];
  v5 = a1[19];
  v6 = a1[20];
  v8 = a1[21];
  v7 = a1[22];
  v133 = a1[24];
  v9 = a1[25];
  v139 = a1[26];
  v140 = a1[23];
  v10 = a1[28];
  v141 = a1[27];
  v142 = a1[15];
  v12 = a1[29];
  v11 = a1[30];
  v14 = a1[31];
  v13 = a1[32];
  v16 = a1[33];
  v15 = a1[34];
  v17 = a1[35];
  v18 = a2[1];
  v19 = a2[2];
  v166 = a2[3];
  v177 = a2[4];
  v176 = a2[6];
  v159 = a2[7];
  v163 = a2[8];
  v164 = a2[5];
  v155 = a2[9];
  v160 = a2[10];
  v151 = a2[11];
  v157 = a2[12];
  v147 = a2[13];
  v152 = a2[14];
  v148 = a2[16];
  v136 = a2[17];
  v143 = a2[15];
  v144 = a2[18];
  v138 = a2[20];
  v20 = a2[22];
  v134 = a2[21];
  v135 = a2[19];
  v21 = a2[23];
  v22 = a2[24];
  v24 = a2[25];
  v23 = a2[26];
  v25 = a2[27];
  v131 = a2[28];
  v132 = a2[29];
  v129 = a2[30];
  v130 = a2[31];
  v26 = a2[32];
  v27 = a2[33];
  v28 = a2[34];
  v29 = a2[35];
  if (v3)
  {
    if (!v18)
    {
      return 0;
    }

    v120 = a2[32];
    v121 = a1[32];
    v123 = a1[30];
    v124 = a2[33];
    v125 = a1[33];
    v126 = a1[31];
    v122 = a2[35];
    v117 = a2[34];
    v118 = a1[34];
    v119 = a1[35];
    if (*a1 != *a2 || v3 != v18)
    {
      v114 = a2[24];
      v116 = a2[25];
      v30 = a1[29];
      v105 = a2[22];
      v31 = a1[28];
      v32 = a1[25];
      v33 = a2[27];
      v127 = a1[20];
      v34 = a1[22];
      v35 = a2[26];
      v36 = sub_24A82DC04();
      v23 = v35;
      v7 = v34;
      v6 = v127;
      v25 = v33;
      v9 = v32;
      v10 = v31;
      v20 = v105;
      v22 = v114;
      v12 = v30;
      v24 = v116;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v120 = a2[32];
    v121 = a1[32];
    v123 = a1[30];
    v124 = a2[33];
    v125 = a1[33];
    v126 = a1[31];
    v122 = a2[35];
    v117 = a2[34];
    v118 = a1[34];
    v119 = a1[35];
    if (v18)
    {
      return 0;
    }
  }

  if (v4)
  {
    if (!v19)
    {
      return 0;
    }

    v37 = v4;
    v38 = v19;
    v115 = v22;
    v39 = v7;
    v40 = v10;
    v41 = v9;
    v128 = v6;
    v42 = v21;
    v43 = v5;
    v44 = v20;
    v45 = v25;
    v46 = v23;
    v47 = sub_24A7D8798(v37, v38);
    v23 = v46;
    v25 = v45;
    v20 = v44;
    v5 = v43;
    v21 = v42;
    v6 = v128;
    v9 = v41;
    v10 = v40;
    v7 = v39;
    v22 = v115;
    if ((v47 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  if (v186)
  {
    if (!v177)
    {
      return 0;
    }

    if (v167 != v166 || v186 != v177)
    {
      v178 = v5;
      v48 = v10;
      v49 = v9;
      v168 = v12;
      v50 = v21;
      v106 = v20;
      v51 = v25;
      v52 = v23;
      v53 = sub_24A82DC04();
      v23 = v52;
      v25 = v51;
      v20 = v106;
      v21 = v50;
      v12 = v168;
      v9 = v49;
      v10 = v48;
      v5 = v178;
      if ((v53 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v177)
  {
    return 0;
  }

  if (v175)
  {
    if (!v176)
    {
      return 0;
    }

    if (v162 != v164 || v175 != v176)
    {
      v179 = v5;
      v54 = v10;
      v55 = v9;
      v169 = v12;
      v56 = v21;
      v107 = v20;
      v57 = v25;
      v58 = v23;
      v59 = sub_24A82DC04();
      v23 = v58;
      v25 = v57;
      v20 = v107;
      v21 = v56;
      v12 = v169;
      v9 = v55;
      v10 = v54;
      v5 = v179;
      if ((v59 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v176)
  {
    return 0;
  }

  if (v165)
  {
    if (!v163)
    {
      return 0;
    }

    if (v158 != v159 || v165 != v163)
    {
      v180 = v5;
      v60 = v10;
      v61 = v9;
      v170 = v12;
      v62 = v21;
      v108 = v20;
      v63 = v25;
      v64 = v23;
      v65 = sub_24A82DC04();
      v23 = v64;
      v25 = v63;
      v20 = v108;
      v21 = v62;
      v12 = v170;
      v9 = v61;
      v10 = v60;
      v5 = v180;
      if ((v65 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v163)
  {
    return 0;
  }

  if (v161)
  {
    if (!v160)
    {
      return 0;
    }

    if (v154 != v155 || v161 != v160)
    {
      v181 = v5;
      v66 = v10;
      v67 = v9;
      v171 = v12;
      v68 = v21;
      v109 = v20;
      v69 = v25;
      v70 = v23;
      v71 = sub_24A82DC04();
      v23 = v70;
      v25 = v69;
      v20 = v109;
      v21 = v68;
      v12 = v171;
      v9 = v67;
      v10 = v66;
      v5 = v181;
      if ((v71 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v160)
  {
    return 0;
  }

  if (v156)
  {
    if (!v157)
    {
      return 0;
    }

    if (v150 != v151 || v156 != v157)
    {
      v182 = v5;
      v72 = v10;
      v73 = v9;
      v172 = v12;
      v74 = v21;
      v110 = v20;
      v75 = v25;
      v76 = v23;
      v77 = sub_24A82DC04();
      v23 = v76;
      v25 = v75;
      v20 = v110;
      v21 = v74;
      v12 = v172;
      v9 = v73;
      v10 = v72;
      v5 = v182;
      if ((v77 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v157)
  {
    return 0;
  }

  if (v153)
  {
    if (!v152)
    {
      return 0;
    }

    if (v146 != v147 || v153 != v152)
    {
      v183 = v5;
      v78 = v10;
      v79 = v9;
      v173 = v12;
      v80 = v21;
      v111 = v20;
      v81 = v25;
      v82 = v23;
      v83 = sub_24A82DC04();
      v23 = v82;
      v25 = v81;
      v20 = v111;
      v21 = v80;
      v12 = v173;
      v9 = v79;
      v10 = v78;
      v5 = v183;
      if ((v83 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v152)
  {
    return 0;
  }

  if (v149)
  {
    if (!v148)
    {
      return 0;
    }

    if (v142 != v143 || v149 != v148)
    {
      v184 = v5;
      v84 = v10;
      v85 = v9;
      v174 = v12;
      v86 = v21;
      v112 = v20;
      v87 = v25;
      v88 = v23;
      v89 = sub_24A82DC04();
      v23 = v88;
      v25 = v87;
      v20 = v112;
      v21 = v86;
      v12 = v174;
      v9 = v85;
      v10 = v84;
      v5 = v184;
      if ((v89 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v148)
  {
    return 0;
  }

  if (v145)
  {
    if (!v144)
    {
      return 0;
    }

    v104 = v21;
    v113 = v20;
    v187 = v7;
    if (v137 != v136 || v145 != v144)
    {
      v185 = v5;
      v90 = v10;
      v91 = v9;
      v92 = v25;
      v93 = v23;
      v94 = sub_24A82DC04();
      v23 = v93;
      v25 = v92;
      v9 = v91;
      v10 = v90;
      v5 = v185;
      if ((v94 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v104 = v21;
    v113 = v20;
    v187 = v7;
    if (v144)
    {
      return 0;
    }
  }

  v95 = v12;
  v103 = v10;
  if (v6)
  {
    if (!v138)
    {
      return 0;
    }

    v96 = v5;
    v97 = v6;
    v98 = v23;
    v99 = v25;
    v100 = v9;
    v101 = v95;
    if ((v96 != v135 || v97 != v138) && (sub_24A82DC04() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v98 = v23;
    v99 = v25;
    v100 = v9;
    v101 = v95;
    if (v138)
    {
      return 0;
    }
  }

  if ((sub_24A7D8798(v8, v134) & 1) == 0)
  {
    return 0;
  }

  if (v140)
  {
    if (!v104 || (v187 != v113 || v140 != v104) && (sub_24A82DC04() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v104)
  {
    return 0;
  }

  if (v100)
  {
    if (!v24 || (v133 != v22 || v100 != v24) && (sub_24A82DC04() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  if (v141)
  {
    if (!v99 || (v139 != v98 || v141 != v99) && (sub_24A82DC04() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v99)
  {
    return 0;
  }

  if (v101)
  {
    if (!v132 || (v103 != v131 || v101 != v132) && (sub_24A82DC04() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v132)
  {
    return 0;
  }

  if (v126)
  {
    if (!v130 || (v123 != v129 || v126 != v130) && (sub_24A82DC04() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v130)
  {
    return 0;
  }

  if (!v125)
  {
    if (!v124)
    {
      goto LABEL_117;
    }

    return 0;
  }

  if (!v124 || (v121 != v120 || v125 != v124) && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

LABEL_117:
  result = (v119 | v122) == 0;
  if (v119 && v122)
  {
    if (v118 == v117 && v119 == v122)
    {
      return 1;
    }

    else
    {

      return sub_24A82DC04();
    }
  }

  return result;
}

uint64_t sub_24A703558(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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
      *(result + 168) = (a2 - 1);
      return result;
    }

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMIPAddress.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMIPAddress.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A703728()
{
  result = qword_27EF5DB58;
  if (!qword_27EF5DB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DB58);
  }

  return result;
}

uint64_t sub_24A70377C()
{
  v0 = sub_24A82DC24();

  if (v0 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v0;
  }
}

uint64_t FMIPRepairDeviceAction.__allocating_init(device:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  *(v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext) = 0;
  v6 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
  *v10 = 0;
  v10[1] = 0;
  *(v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession) = xmmword_24A8318F0;
  sub_24A6CAF68(a1, v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  return v5;
}

uint64_t FMIPRepairDeviceAction.init(device:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext) = 0;
  v2 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession) = xmmword_24A8318F0;
  sub_24A6CAF68(a1, v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  return v1;
}

uint64_t FMIPRepairDeviceAction.__deallocating_deinit()
{
  v0 = *FMIPDeviceAction.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMIPRepairDeviceAction()
{
  result = qword_27EF5DB60;
  if (!qword_27EF5DB60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FMIPFirmwareUpdateAction.__allocating_init(item:updateInitiated:)(uint64_t a1, char a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  *(v7 + OBJC_IVAR____TtC8FMIPCore24FMIPFirmwareUpdateAction_updateInitiated) = a2;
  sub_24A6CB364(a1, v7 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item);
  return v7;
}

uint64_t FMIPFirmwareUpdateAction.init(item:updateInitiated:)(uint64_t a1, char a2)
{
  *(v2 + OBJC_IVAR____TtC8FMIPCore24FMIPFirmwareUpdateAction_updateInitiated) = a2;
  sub_24A6CB364(a1, v2 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item);
  return v2;
}

uint64_t FMIPFirmwareUpdateAction.__deallocating_deinit()
{
  sub_24A6CB3F0(v0 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMIPFirmwareUpdateAction()
{
  result = qword_27EF5DB70;
  if (!qword_27EF5DB70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FMIPLockMetadata.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FMIPLockMetadata() + 20);
  v4 = sub_24A82CA34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24A703D0C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6F43737574617473;
  }

  else
  {
    v4 = 0x6954657461657263;
  }

  if (v3)
  {
    v5 = 0xEF706D617473656DLL;
  }

  else
  {
    v5 = 0xEA00000000006564;
  }

  if (*a2)
  {
    v6 = 0x6F43737574617473;
  }

  else
  {
    v6 = 0x6954657461657263;
  }

  if (*a2)
  {
    v7 = 0xEA00000000006564;
  }

  else
  {
    v7 = 0xEF706D617473656DLL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24A82DC04();
  }

  return v9 & 1;
}

uint64_t sub_24A703DC4()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A703E58()
{
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A703ED8()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A703F68@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24A82D9C4();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_24A703FC8(uint64_t *a1@<X8>)
{
  v2 = 0x6954657461657263;
  if (*v1)
  {
    v2 = 0x6F43737574617473;
  }

  v3 = 0xEF706D617473656DLL;
  if (*v1)
  {
    v3 = 0xEA00000000006564;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24A704018()
{
  if (*v0)
  {
    result = 0x6F43737574617473;
  }

  else
  {
    result = 0x6954657461657263;
  }

  *v0;
  return result;
}

uint64_t sub_24A704064@<X0>(char *a1@<X8>)
{
  v2 = sub_24A82D9C4();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_24A7040C8(uint64_t a1)
{
  v2 = sub_24A688C74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A704104(uint64_t a1)
{
  v2 = sub_24A688C74();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t FMIPLockMetadata.debugDescription.getter()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = &v0[*(type metadata accessor for FMIPLockMetadata() + 20)];
  v4 = sub_24A82C994();
  v5 = [v2 localizedStringFromDate:v4 dateStyle:1 timeStyle:4];

  v6 = sub_24A82CFC4();
  v8 = v7;

  sub_24A82D854();

  v11 = *v1;
  v9 = FMIPActionStatus.description.getter();
  MEMORY[0x24C21C9E0](v9);

  MEMORY[0x24C21C9E0](0x617473656D697420, 0xEC000000203A706DLL);
  MEMORY[0x24C21C9E0](v6, v8);

  MEMORY[0x24C21C9E0](62, 0xE100000000000000);
  return 0xD00000000000001BLL;
}

void FMIPLockMetadata.encode(to:)(void *a1)
{
  v4 = sub_24A6BBA94(&qword_27EF5DB88, &qword_24A835AC8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *(type metadata accessor for FMIPLockMetadata() + 20);
  v12[0] = v1;
  v10 = sub_24A82C994();
  v11 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A688C74();
  sub_24A82DD84();
  [v10 fm_epoch];
  v14 = 0;
  sub_24A82DB54();
  if (v2)
  {
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v12[1] = qword_24A835CF0[*v12[0]];
    sub_24A82DB84();
    v13 = 1;
    sub_24A82DB04();
    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_24A70455C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPLockMetadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24A7045C4()
{
  result = qword_27EF5DB90;
  if (!qword_27EF5DB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DB90);
  }

  return result;
}

uint64_t FMIPItemPairingState.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_24A82CAA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = [a1 status];
  if (v12 == 2)
  {

    v24 = sub_24A6BBA94(&qword_27EF5DB98, &qword_24A835D80);
    v14 = *(*(v24 - 8) + 56);
    v15 = v24;
    v16 = a2;
    v17 = 3;
    goto LABEL_9;
  }

  if (v12 == 1)
  {
    v18 = [a1 beaconIdentifier];
    if (v18)
    {
      v19 = v18;
      sub_24A82CA84();

      v20 = *(v5 + 32);
      v20(v11, v9, v4);
      v20(a2, v11, v4);
      v21 = sub_24A6BBA94(&qword_27EF5DB98, &qword_24A835D80);
      return (*(*(v21 - 8) + 56))(a2, 0, 3, v21);
    }

    goto LABEL_7;
  }

  if (v12)
  {
LABEL_7:

    v23 = sub_24A6BBA94(&qword_27EF5DB98, &qword_24A835D80);
    v14 = *(*(v23 - 8) + 56);
    v15 = v23;
    v16 = a2;
    v17 = 1;
    goto LABEL_9;
  }

  v13 = sub_24A6BBA94(&qword_27EF5DB98, &qword_24A835D80);
  v14 = *(*(v13 - 8) + 56);
  v15 = v13;
  v16 = a2;
  v17 = 2;
LABEL_9:

  return v14(v16, v17, 3, v15);
}

uint64_t FMIPItemPairingState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = sub_24A82CAA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMIPItemPairingState();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A82DD54();
  if (v2)
  {
    v17 = a1;
    return sub_24A6876E8(v17);
  }

  v31 = v12;
  v32 = a1;
  v29 = v5;
  v30 = v8;
  v14 = v37;
  sub_24A69A6C4(v35, v36);
  v15 = sub_24A82DBA4();
  v19 = v15;
  v20 = v16;
  v21 = v15 == 27509 && v16 == 0xE200000000000000;
  if (v21 || (sub_24A82DC04() & 1) != 0)
  {

    v22 = 1;
LABEL_11:
    v23 = v31;
LABEL_12:
    v24 = v32;
    v25 = sub_24A6BBA94(&qword_27EF5DB98, &qword_24A835D80);
    (*(*(v25 - 8) + 56))(v23, v22, 3, v25);
    sub_24A6876E8(v35);
    sub_24A704CE0(v23, v14);
    v17 = v24;
    return sub_24A6876E8(v17);
  }

  if (v19 == 117 && v20 == 0xE100000000000000 || (sub_24A82DC04() & 1) != 0)
  {

    v22 = 2;
    goto LABEL_11;
  }

  if (v19 == 112 && v20 == 0xE100000000000000)
  {

    v26 = v4;
LABEL_22:
    sub_24A69A6C4(v35, v36);
    sub_24A67EF7C(&qword_27EF5DBA0);
    v27 = v30;
    sub_24A82DBB4();
    v23 = v31;
    (*(v29 + 32))(v31, v27, v26);
    v22 = 0;
    goto LABEL_12;
  }

  if (sub_24A82DC04())
  {
    v26 = v4;

    goto LABEL_22;
  }

  if (v19 == 108 && v20 == 0xE100000000000000 || (sub_24A82DC04() & 1) != 0)
  {

    v22 = 3;
    goto LABEL_11;
  }

  v33 = 0;
  v34 = 0xE000000000000000;
  sub_24A82D854();

  v33 = 0xD000000000000015;
  v34 = 0x800000024A846370;
  MEMORY[0x24C21C9E0](v19, v20);
  result = sub_24A82D934();
  __break(1u);
  return result;
}

uint64_t sub_24A704CE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPItemPairingState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FMIPItemPairingState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_24A82CAA4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMIPItemPairingState();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A82DD74();
  sub_24A705018(v3, v13);
  v15 = sub_24A6BBA94(&qword_27EF5DB98, &qword_24A835D80);
  if ((*(*(v15 - 8) + 48))(v13, 3, v15))
  {
    sub_24A69A6C4(v18, v19);
    sub_24A82DBC4();
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    sub_24A69A6C4(v18, v19);
    sub_24A82DBC4();
    if (!v2)
    {
      sub_24A69A6C4(v18, v19);
      sub_24A67EF7C(&qword_27EF5DBA8);
      sub_24A82DBD4();
    }

    (*(v6 + 8))(v9, v5);
  }

  return sub_24A6876E8(v18);
}

uint64_t sub_24A705018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPItemPairingState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t FMIPItemPairingState.description.getter()
{
  v1 = type metadata accessor for FMIPItemPairingState();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A705018(v0, v4);
  v5 = sub_24A6BBA94(&qword_27EF5DB98, &qword_24A835D80);
  v6 = (*(*(v5 - 8) + 48))(v4, 3, v5);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      return 0x6465726961706E75;
    }

    v8 = 1801678700;
  }

  else
  {
    if (v6)
    {
      return 0x6E776F6E6B6E75;
    }

    v7 = sub_24A82CAA4();
    (*(*(v7 - 8) + 8))(v4, v7);
    v8 = 1919508848;
  }

  return v8 & 0xFFFF0000FFFFFFFFLL | 0x646500000000;
}

unint64_t sub_24A705208(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A705018(v1, v4);
  v5 = sub_24A6BBA94(&qword_27EF5DB98, &qword_24A835D80);
  v6 = (*(*(v5 - 8) + 48))(v4, 3, v5);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      return 0x6465726961706E75;
    }

    v8 = 1801678700;
  }

  else
  {
    if (v6)
    {
      return 0x6E776F6E6B6E75;
    }

    v7 = sub_24A82CAA4();
    (*(*(v7 - 8) + 8))(v4, v7);
    v8 = 1919508848;
  }

  return v8 & 0xFFFF0000FFFFFFFFLL | 0x646500000000;
}

uint64_t _s8FMIPCore20FMIPItemPairingStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A82CAA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMIPItemPairingState();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24A6BBA94(&qword_27EF5DBC8, &qword_24A835E68);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v25 - v16;
  v18 = *(v15 + 56);
  sub_24A705018(a1, &v25 - v16);
  sub_24A705018(a2, &v17[v18]);
  v19 = sub_24A6BBA94(&qword_27EF5DB98, &qword_24A835D80);
  v20 = *(*(v19 - 8) + 48);
  v21 = v20(v17, 3, v19);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      if (v20(&v17[v18], 3, v19) == 2)
      {
        goto LABEL_9;
      }
    }

    else if (v20(&v17[v18], 3, v19) == 3)
    {
      goto LABEL_9;
    }

LABEL_11:
    sub_24A705678(v17);
    v22 = 0;
    return v22 & 1;
  }

  if (!v21)
  {
    sub_24A705018(v17, v12);
    if (!v20(&v17[v18], 3, v19))
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v22 = sub_24A82CA74();
      v24 = *(v5 + 8);
      v24(v8, v4);
      v24(v12, v4);
      sub_24A7056E0(v17);
      return v22 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_11;
  }

  if (v20(&v17[v18], 3, v19) != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  sub_24A7056E0(v17);
  v22 = 1;
  return v22 & 1;
}

uint64_t sub_24A705678(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5DBC8, &qword_24A835E68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A7056E0(uint64_t a1)
{
  v2 = type metadata accessor for FMIPItemPairingState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A70573C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A82CAA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - v10;
  v12 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v12)
  {
    v57 = MEMORY[0x277D84F90];
    sub_24A6FCA2C(0, v12, 0);
    v14 = -1 << *(a1 + 32);
    v53 = a1 + 56;
    v54 = v57;
    result = sub_24A82D6C4();
    v15 = 0;
    v16 = (v5 + 8);
    v41 = a1 + 64;
    v42 = v5;
    v55 = v5 + 16;
    v43 = v12;
    v44 = a1;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
    {
      if ((*(v53 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_28;
      }

      v48 = 1 << result;
      v49 = result >> 6;
      v47 = v15;
      v51 = *(a1 + 36);
      v52 = result;
      v19 = *(*(a1 + 48) + 8 * result);

      v21 = v2;
      v22 = sub_24A705B18(v20);
      v50 = v21;
      v23 = *(v22 + 16);
      v24 = sub_24A67EFC0(&qword_281514670, MEMORY[0x277CC95F0]);
      v25 = MEMORY[0x24C21CCD0](v23, v4, v24);
      v56 = v25;
      if (v23)
      {
        v45 = v22;
        v46 = v19;
        v26 = v22 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
        v27 = *(v42 + 72);
        v28 = *(v42 + 16);
        do
        {
          v28(v9, v26, v4);
          sub_24A70BFA8(v11, v9);
          (*v16)(v11, v4);
          v26 += v27;
          --v23;
        }

        while (v23);

        v29 = v56;
      }

      else
      {
        v29 = v25;
      }

      v2 = v50;
      v30 = v51;
      v31 = v54;
      v57 = v54;
      v33 = *(v54 + 16);
      v32 = *(v54 + 24);
      result = v52;
      if (v33 >= v32 >> 1)
      {
        sub_24A6FCA2C((v32 > 1), v33 + 1, 1);
        v30 = v51;
        result = v52;
        v31 = v57;
      }

      *(v31 + 16) = v33 + 1;
      *(v31 + 8 * v33 + 32) = v29;
      a1 = v44;
      v17 = 1 << *(v44 + 32);
      if (result >= v17)
      {
        goto LABEL_29;
      }

      v34 = *(v53 + 8 * v49);
      if ((v34 & v48) == 0)
      {
        goto LABEL_30;
      }

      v54 = v31;
      if (v30 != *(v44 + 36))
      {
        goto LABEL_31;
      }

      v35 = v34 & (-2 << (result & 0x3F));
      if (v35)
      {
        v17 = __clz(__rbit64(v35)) | result & 0x7FFFFFFFFFFFFFC0;
        v18 = v47;
      }

      else
      {
        v36 = v49 << 6;
        v37 = v49 + 1;
        v38 = (v41 + 8 * v49);
        while (v37 < (v17 + 63) >> 6)
        {
          v40 = *v38++;
          v39 = v40;
          v36 += 64;
          ++v37;
          if (v40)
          {
            sub_24A6CA498(result, v30, 0);
            v17 = __clz(__rbit64(v39)) + v36;
            goto LABEL_24;
          }
        }

        sub_24A6CA498(result, v30, 0);
LABEL_24:
        v18 = v47;
      }

      v15 = v18 + 1;
      result = v17;
      if (v15 == v43)
      {
        return v54;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  return result;
}

uint64_t sub_24A705B18(uint64_t a1)
{
  v33 = sub_24A82CAA4();
  v3 = *(v33 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v33);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v31[1] = v1;
  v42 = MEMORY[0x277D84F90];
  sub_24A6FCAAC(0, v7, 0);
  v8 = v42;
  v9 = -1 << *(a1 + 32);
  v41 = a1 + 56;
  result = sub_24A82D6C4();
  v11 = result;
  v12 = 0;
  v36 = v3 + 32;
  v37 = v3 + 16;
  v32 = a1 + 64;
  v13 = v33;
  v34 = v7;
  v35 = a1;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v15 = v11 >> 6;
    if ((*(v41 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_22;
    }

    v38 = v12;
    v40 = *(a1 + 36);
    v16 = *(v3 + 72);
    (*(v3 + 16))(v6, *(a1 + 48) + v16 * v11, v13);
    v42 = v8;
    v17 = v13;
    v19 = *(v8 + 16);
    v18 = *(v8 + 24);
    v20 = v19 + 1;
    if (v19 >= v18 >> 1)
    {
      v39 = v19 + 1;
      sub_24A6FCAAC(v18 > 1, v19 + 1, 1);
      v20 = v39;
      v8 = v42;
    }

    *(v8 + 16) = v20;
    v21 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v39 = v8;
    v22 = v8 + v21 + v19 * v16;
    v23 = v3;
    result = (*(v3 + 32))(v22, v6, v17);
    v14 = 1 << *(v35 + 32);
    if (v11 >= v14)
    {
      goto LABEL_23;
    }

    v24 = *(v41 + 8 * v15);
    if ((v24 & (1 << v11)) == 0)
    {
      goto LABEL_24;
    }

    v13 = v17;
    a1 = v35;
    if (v40 != *(v35 + 36))
    {
      goto LABEL_25;
    }

    v25 = v24 & (-2 << (v11 & 0x3F));
    if (v25)
    {
      v14 = __clz(__rbit64(v25)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = v15 << 6;
      v27 = v15 + 1;
      v28 = (v32 + 8 * v15);
      while (v27 < (v14 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          result = sub_24A6CA498(v11, v40, 0);
          v14 = __clz(__rbit64(v29)) + v26;
          goto LABEL_19;
        }
      }

      result = sub_24A6CA498(v11, v40, 0);
LABEL_19:
      v13 = v33;
    }

    v12 = v38 + 1;
    v11 = v14;
    v3 = v23;
    v8 = v39;
    if (v38 + 1 == v34)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

BOOL sub_24A705E3C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_24A82CAA4() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_24A67EFC0(&qword_27EF5DC48, MEMORY[0x277CC95F0]);
  }

  while ((sub_24A82CF84() & 1) == 0);
  return v4 != v5;
}

uint64_t FMIPItemGroup.identifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t FMIPItemGroup.name.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_24A70602C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 1701667182;
    v6 = 0x6574617473;
    if (a1 != 8)
    {
      v6 = 0x6174654D74736F6CLL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x736D657469;
    if (a1 != 5)
    {
      v7 = 0x49646570756F7267;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x696C696261706163;
    v2 = 0x6E6564496D657469;
    v3 = 0xD000000000000016;
    if (a1 != 3)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x696669746E656469;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24A70618C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_24A70602C(*a1);
  v5 = v4;
  if (v3 == sub_24A70602C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A82DC04();
  }

  return v8 & 1;
}

uint64_t sub_24A706214()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A70602C(v1);
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A706278()
{
  sub_24A70602C(*v0);
  sub_24A82D094();
}

uint64_t sub_24A7062CC()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A70602C(v1);
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A70632C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A715180();
  *a2 = result;
  return result;
}

uint64_t sub_24A70635C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24A70602C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24A7063A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A715180();
  *a1 = result;
  return result;
}

uint64_t sub_24A7063D8(uint64_t a1)
{
  v2 = sub_24A68C708();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A706414(uint64_t a1)
{
  v2 = sub_24A68C708();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static FMIPItemGroup.primaryPart(group:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24A6BBA94(&qword_27EF5D018, &qword_24A830E38);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v67 = &v63 - v10;
  MEMORY[0x28223BE20](v9);
  v72 = &v63 - v11;
  v12 = type metadata accessor for FMIPItem();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v63 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v64 = &v63 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v63 - v20;
  MEMORY[0x28223BE20](v19);
  v70 = &v63 - v22;
  v23 = *(v13 + 56);
  v77 = v24;
  v65 = v23;
  v66 = v13 + 56;
  (v23)(a2, 1, 1);
  v25 = a1 + 56;
  v26 = 1 << *(a1 + 32);
  v27 = a2;
  v28 = -1;
  if (v26 < 64)
  {
    v28 = ~(-1 << v26);
  }

  v29 = v28 & *(a1 + 56);
  v73 = a1;
  v74 = (v26 + 63) >> 6;
  v71 = v13;
  v76 = v13 + 48;

  v31 = 0;
  v75 = a2;
  v68 = v21;
  v69 = a1 + 56;
  v32 = v74;
  if (v29)
  {
    goto LABEL_10;
  }

LABEL_6:
  while (1)
  {
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v33 >= v32)
    {
    }

    v29 = *(v25 + 8 * v33);
    ++v31;
    if (v29)
    {
      v34 = v77;
      v31 = v33;
      while (1)
      {
        v35 = __clz(__rbit64(v29));
        v29 &= v29 - 1;
        v36 = v70;
        v37 = v71;
        sub_24A69F064(*(v73 + 48) + *(v71 + 72) * (v35 | (v31 << 6)), v70, type metadata accessor for FMIPItem);
        sub_24A6A2328(v36, v21, type metadata accessor for FMIPItem);
        v38 = v72;
        sub_24A67E964(v27, v72, &qword_27EF5D018, &qword_24A830E38);
        v39 = *(v37 + 48);
        if (v39(v38, 1, v34) == 1)
        {
          sub_24A67F378(v38, &qword_27EF5D018, &qword_24A830E38);
          v25 = v69;
          goto LABEL_39;
        }

        v40 = v64;
        sub_24A6A2328(v38, v64, type metadata accessor for FMIPItem);
        v41 = *(v77 + 64);
        v25 = v69;
        if (*&v21[v41 + 8])
        {
          v42 = v21[v41 + 32];
        }

        else
        {
          v43 = &v21[*(v77 + 56)];
          if (*v43 == 1702060355 && *(v43 + 1) == 0xE400000000000000)
          {
            v42 = 1;
          }

          else
          {
            v42 = sub_24A82DC04() & 1;
            v41 = *(v77 + 64);
          }
        }

        v45 = v40 + v41;
        if (*(v45 + 8))
        {
          v46 = flt_24A83616C[*(v45 + 32)];
        }

        else
        {
          v47 = (v40 + *(v77 + 56));
          v48 = *v47 == 1702060355 && v47[1] == 0xE400000000000000;
          if (v48 || (v46 = 0.0, (sub_24A82DC04() & 1) != 0))
          {
            v46 = 2.0;
          }
        }

        if (v42 <= 1)
        {
          if (!v42)
          {
            sub_24A69F204(v40, type metadata accessor for FMIPItem);
            v27 = v75;
            goto LABEL_39;
          }

          sub_24A69F204(v40, type metadata accessor for FMIPItem);
          v49 = v46 < 2.0;
        }

        else
        {
          sub_24A69F204(v40, type metadata accessor for FMIPItem);
          if ((v42 - 2) >= 2)
          {
            v49 = v46 < 3.0;
          }

          else
          {
            v49 = v46 < 1.0;
          }
        }

        v27 = v75;
        if (v49)
        {
          sub_24A67F378(v75, &qword_27EF5D018, &qword_24A830E38);
          goto LABEL_76;
        }

LABEL_39:
        v50 = v27;
        v51 = v67;
        sub_24A67E964(v50, v67, &qword_27EF5D018, &qword_24A830E38);
        if (v39(v51, 1, v77) == 1)
        {
          sub_24A67F378(v51, &qword_27EF5D018, &qword_24A830E38);
LABEL_73:
          v27 = v75;
          sub_24A67E964(v75, v8, &qword_27EF5D018, &qword_24A830E38);
          if (v39(v8, 1, v77) != 1)
          {
            sub_24A67F378(v8, &qword_27EF5D018, &qword_24A830E38);
            v21 = v68;
            result = sub_24A69F204(v68, type metadata accessor for FMIPItem);
            v32 = v74;
            if (!v29)
            {
              goto LABEL_6;
            }

            goto LABEL_10;
          }

          sub_24A67F378(v27, &qword_27EF5D018, &qword_24A830E38);
          v62 = v8;
          goto LABEL_75;
        }

        v52 = v63;
        sub_24A6A2328(v51, v63, type metadata accessor for FMIPItem);
        v53 = *(v77 + 64);
        v54 = &v21[v53];
        if (*&v21[v53 + 8])
        {
          v55 = v54[32];
        }

        else
        {
          v56 = &v21[*(v77 + 56)];
          if (*v56 == 1702060355 && *(v56 + 1) == 0xE400000000000000)
          {
            v55 = 1;
          }

          else
          {
            v55 = sub_24A82DC04() & 1;
            v53 = *(v77 + 64);
          }
        }

        v57 = v52 + v53;
        if (!*(v57 + 8))
        {
          v59 = (v52 + *(v77 + 56));
          if (*v59 == 1702060355 && v59[1] == 0xE400000000000000)
          {
            v58 = 1;
          }

          else
          {
            v58 = sub_24A82DC04() & 1;
          }

LABEL_53:
          if (v58)
          {
            if (v55 != 1)
            {
              goto LABEL_55;
            }
          }

          else if (v55)
          {
            goto LABEL_55;
          }

          goto LABEL_61;
        }

        v58 = *(v57 + 32);
        if (v58 <= 1)
        {
          goto LABEL_53;
        }

        if ((v58 - 2) >= 2)
        {
          if (v55 != 4)
          {
LABEL_55:
            sub_24A69F204(v52, type metadata accessor for FMIPItem);
            goto LABEL_73;
          }
        }

        else if ((v55 & 0xFE) != 2)
        {
          goto LABEL_55;
        }

LABEL_61:
        if (*(v54 + 1))
        {
          if (v54[32] == 2)
          {

            sub_24A69F204(v52, type metadata accessor for FMIPItem);
            goto LABEL_72;
          }
        }

        else
        {
          v60 = &v68[*(v77 + 56)];
          if (*v60 != 1702060355 || *(v60 + 1) != 0xE400000000000000)
          {
            sub_24A82DC04();
          }
        }

        v61 = sub_24A82DC04();

        sub_24A69F204(v52, type metadata accessor for FMIPItem);
        if ((v61 & 1) == 0)
        {
          goto LABEL_73;
        }

LABEL_72:
        v27 = v75;
        v62 = v75;
LABEL_75:
        sub_24A67F378(v62, &qword_27EF5D018, &qword_24A830E38);
        v21 = v68;
LABEL_76:
        sub_24A6A2328(v21, v27, type metadata accessor for FMIPItem);
        result = v65(v27, 0, 1, v77);
        v32 = v74;
        if (!v29)
        {
          goto LABEL_6;
        }

LABEL_10:
        v34 = v77;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t FMIPItemGroup.shouldDisplaySeparatedLocation.getter()
{
  v1 = type metadata accessor for FMIPItemGroup();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(v0 + 40) + 16) >= 2uLL && *(*(v0 + 48) + 16) > 1uLL;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v6 = sub_24A82CDC4();
  sub_24A6797D0(v6, qword_281518F88);
  sub_24A69F064(v0, v4, type metadata accessor for FMIPItemGroup);
  v7 = sub_24A82CD94();
  v8 = sub_24A82D4C4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = v10;
    *v9 = 141558531;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    v11 = *(v4 + 1);
    v12 = *(v4 + 2);

    sub_24A69F204(v4, type metadata accessor for FMIPItemGroup);
    v13 = sub_24A68761C(v11, v12, &v27);

    *(v9 + 14) = v13;
    *(v9 + 22) = 1024;
    *(v9 + 24) = v5;
    _os_log_impl(&dword_24A675000, v7, v8, "SeparatedLocations: id: %{private,mask.hash}s, result: %{BOOL}d.", v9, 0x1Cu);
    sub_24A6876E8(v10);
    MEMORY[0x24C21E1D0](v10, -1, -1);
    MEMORY[0x24C21E1D0](v9, -1, -1);
  }

  else
  {

    sub_24A69F204(v4, type metadata accessor for FMIPItemGroup);
  }

  v14 = objc_opt_self();
  v15 = [v14 sharedInstance];
  v16 = [v15 isInternalBuild];

  if (v16)
  {
    v17 = [objc_opt_self() standardUserDefaults];
    v18 = sub_24A82CF94();
    v19 = [v17 BOOLForKey_];

    if (v19)
    {
      return 1;
    }
  }

  v20 = [v14 sharedInstance];
  v21 = [v20 isInternalBuild];

  if (v21)
  {
    v22 = [objc_opt_self() standardUserDefaults];
    v23 = sub_24A82CF94();
    v24 = [v22 BOOLForKey_];

    return (v24 ^ 1) & v5;
  }

  return v5;
}

void FMIPItemGroup.partsAtMultipleLocations.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v23 = *(v1 + 16);
    v24 = v2 - 1;
    v4 = v23;
    while (1)
    {
      v5 = v3 + 1;
      if (v3 < v24)
      {
        break;
      }

LABEL_3:
      ++v3;
      if (v5 == v23)
      {
        return;
      }
    }

    v6 = *(type metadata accessor for FMIPItem() - 8);
    v7 = *(v6 + 72);
    v8 = v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v9 = v8 + v7 * v3;
    v10 = v8 + 392;
    v11 = v7 * v5;
    v12 = v3;
    while (v3 < v4)
    {
      v13 = *(v9 + 392);
      if (v13)
      {
        if (v5 >= v4)
        {
          goto LABEL_15;
        }

        v14 = *(v10 + v11);
        if (v14)
        {
          v15 = v13;
          v16 = v14;
          [v15 distanceFromLocation_];
          v18 = v17;
          [v15 horizontalAccuracy];
          v20 = v19;
          [v16 horizontalAccuracy];
          v22 = v21;

          if (v18 / sqrt(v20 * v20 + v22 * v22 + 400.0) >= 1.5)
          {
            return;
          }
        }
      }

      ++v12;
      v4 = *(v1 + 16);
      if (v12 >= (v4 - 1))
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }
}

void sub_24A707330(void *a1@<X0>, void *a2@<X8>)
{
  v434 = a1;
  v425 = a2;
  v2 = sub_24A6BBA94(&unk_27EF5E100, &unk_24A839DB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v418 = (&v408 - v4);
  v5 = type metadata accessor for FMIPItemPairingState();
  v423 = *(v5 - 8);
  v6 = *(v423 + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v428 = &v408 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v422 = &v408 - v10;
  MEMORY[0x28223BE20](v9);
  v417 = &v408 - v11;
  v438 = sub_24A82CAA4();
  v424 = *(v438 - 8);
  v12 = *(v424 + 64);
  v13 = MEMORY[0x28223BE20](v438);
  v419 = &v408 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v433 = &v408 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v410 = &v408 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v411 = &v408 - v20;
  MEMORY[0x28223BE20](v19);
  v432 = &v408 - v21;
  sub_24A6BBA94(&qword_27EF5DD00, &unk_24A839DD0);
  inited = swift_initStackObject();
  v436 = xmmword_24A835E80;
  v23 = MEMORY[0x277D497D0];
  *(inited + 16) = xmmword_24A835E80;
  v24 = *v23;
  *(inited + 32) = v24;
  *(inited + 40) = xmmword_24A835E90;
  v25 = *MEMORY[0x277D497B0];
  *(inited + 56) = *MEMORY[0x277D497B0];
  *(inited + 64) = xmmword_24A835EA0;
  v26 = *MEMORY[0x277D49798];
  *(inited + 80) = *MEMORY[0x277D49798];
  *(inited + 88) = xmmword_24A835EB0;
  v27 = *MEMORY[0x277D497B8];
  *(inited + 104) = *MEMORY[0x277D497B8];
  v28 = MEMORY[0x277D497C8];
  *(inited + 112) = xmmword_24A835EC0;
  v29 = *v28;
  *(inited + 128) = *v28;
  *(inited + 136) = xmmword_24A835ED0;
  v30 = v24;
  v31 = v25;
  v32 = v26;
  v33 = v27;
  v34 = v30;
  v35 = v31;
  v36 = v32;
  v37 = v33;
  v38 = v29;
  v437 = sub_24A78A0C0(inited);
  swift_setDeallocating();
  sub_24A6BBA94(&qword_27EF5DD08, &unk_24A8384E0);
  swift_arrayDestroy();
  sub_24A6BBA94(&qword_27EF5DD10, &unk_24A839DC0);
  v39 = swift_initStackObject();
  *(v39 + 32) = v36;
  *(v39 + 16) = v436;
  *(v39 + 40) = 16;
  *(v39 + 48) = v34;
  v412 = v34;
  *(v39 + 56) = 4;
  *(v39 + 64) = v35;
  *(v39 + 72) = 2;
  *(v39 + 80) = v37;
  v408 = v37;
  v40 = *MEMORY[0x277D497E0];
  *(v39 + 88) = 8;
  *(v39 + 96) = v40;
  *(v39 + 104) = 128;
  v41 = v40;
  v42 = sub_24A78A1B8(v39);
  swift_setDeallocating();
  sub_24A6BBA94(&qword_27EF5DD18, &unk_24A8384D0);
  swift_arrayDestroy();
  v43 = *MEMORY[0x277D497C0];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v441 = v42;
  sub_24A784AB0(0x2000, v43, isUniquelyReferenced_nonNull_native);
  v45 = v441 + 64;
  v46 = 1 << v441[32];
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & *(v441 + 8);
  v49 = (v46 + 63) >> 6;
  v427 = v441;

  v50 = 0;
  for (i = MEMORY[0x277D84F90]; v48; *&v61[8 * v60 + 32] = v54)
  {
LABEL_8:
    while (1)
    {
      v52 = __clz(__rbit64(v48));
      v48 &= v48 - 1;
      v53 = (v50 << 9) | (8 * v52);
      v54 = *(*(v427 + 56) + v53);
      v55 = *(*(v427 + 48) + v53);
      v56 = [v434 taskInformation];
      type metadata accessor for SPBeaconTaskName(0);
      sub_24A679170(0, &qword_27EF5DD20, 0x277D49648);
      sub_24A67EFC0(&qword_27EF5CEF8, type metadata accessor for SPBeaconTaskName);
      v57 = sub_24A82CEF4();

      if (*(v57 + 16))
      {
        sub_24A77EE90(v55);
        if (v58)
        {
          break;
        }
      }

      if (!v48)
      {
        goto LABEL_4;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_24A78018C(0, *(i + 2) + 1, 1, i);
    }

    v60 = *(i + 2);
    v59 = *(i + 3);
    if (v60 >= v59 >> 1)
    {
      i = sub_24A78018C((v59 > 1), v60 + 1, 1, i);
    }

    v61 = i;
    *(i + 2) = v60 + 1;
  }

LABEL_4:
  while (1)
  {
    v51 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v51 >= v49)
    {

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_19;
      }

      goto LABEL_257;
    }

    v48 = *&v45[8 * v51];
    ++v50;
    if (v48)
    {
      v50 = v51;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_247:
  __break(1u);
LABEL_248:
  __break(1u);
  while (2)
  {
    __break(1u);
LABEL_250:
    __break(1u);
LABEL_251:
    __break(1u);
LABEL_252:
    __break(1u);
LABEL_253:
    __break(1u);
LABEL_254:
    __break(1u);
LABEL_255:
    __break(1u);
LABEL_256:
    __break(1u);
LABEL_257:
    i = sub_24A78018C(0, *(i + 2) + 1, 1, i);
LABEL_19:
    v63 = *(i + 2);
    v62 = *(i + 3);
    v64 = v62 >> 1;
    v65 = v63 + 1;
    if (v62 >> 1 <= v63)
    {
      i = sub_24A78018C((v62 > 1), v63 + 1, 1, i);
      v62 = *(i + 3);
      v64 = v62 >> 1;
    }

    v66 = i;
    *(i + 2) = v65;
    *&v66[8 * v63 + 32] = 256;
    v67 = v63 + 2;
    if (v64 < v67)
    {
      i = sub_24A78018C((v62 > 1), v67, 1, i);
    }

    v68 = i;
    *(i + 2) = v67;
    v409 = v68 + 32;
    *&v68[8 * v65 + 32] = 512;
    v69 = v437 + 8;
    v70 = 1 << *(v437 + 32);
    v71 = -1;
    if (v70 < 64)
    {
      v71 = ~(-1 << v70);
    }

    v72 = v71 & v437[8];
    v73 = (v70 + 63) >> 6;

    v74 = 0;
    v413 = 0;
    v435 = MEMORY[0x277D84F90];
    while (v72)
    {
LABEL_32:
      v76 = __clz(__rbit64(v72));
      v72 &= v72 - 1;
      v77 = v76 | (v74 << 6);
      v78 = *(v437[6] + 8 * v77);
      v79 = (v437[7] + 16 * v77);
      v80 = *v79;
      *&v436 = v79[1];
      v81 = v78;
      v82 = [v434 taskInformation];
      type metadata accessor for SPBeaconTaskName(0);
      sub_24A679170(0, &qword_27EF5DD20, 0x277D49648);
      sub_24A67EFC0(&qword_27EF5CEF8, type metadata accessor for SPBeaconTaskName);
      v83 = sub_24A82CEF4();

      if (*(v83 + 16) && (v84 = sub_24A77EE90(v81), (v85 & 1) != 0))
      {
        v86 = *(*(v83 + 56) + 8 * v84);

        v87 = [v86 state];

        if (v87 == v80)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v435 = sub_24A780178(0, *(v435 + 2) + 1, 1, v435);
          }

          v88 = v436;
          v90 = *(v435 + 2);
          v89 = *(v435 + 3);
          if (v90 >= v89 >> 1)
          {
            v435 = sub_24A780178((v89 > 1), v90 + 1, 1, v435);
          }

          v91 = v435;
          *(v435 + 2) = v90 + 1;
          *&v91[8 * v90 + 32] = v88;
        }
      }

      else
      {
      }
    }

    while (1)
    {
      v75 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        goto LABEL_247;
      }

      if (v75 >= v73)
      {
        break;
      }

      v72 = v69[v75];
      ++v74;
      if (v72)
      {
        v74 = v75;
        goto LABEL_32;
      }
    }

    v441 = &unk_285DBE200;
    sub_24A77E918(v435);
    v92 = v441;
    if ([v434 isConnected])
    {
      v93 = swift_isUniquelyReferenced_nonNull_native();
      v94 = v432;
      if ((v93 & 1) == 0)
      {
        v92 = sub_24A780178(0, *(v92 + 2) + 1, 1, v92);
      }

      v96 = *(v92 + 2);
      v95 = *(v92 + 3);
      v420 = v92;
      v97 = v434;
      if (v96 >= v95 >> 1)
      {
        v420 = sub_24A780178((v95 > 1), v96 + 1, 1, v420);
        v97 = v434;
      }

      v98 = v420;
      *(v420 + 2) = v96 + 1;
      *&v98[8 * v96 + 32] = 64;
    }

    else
    {
      v420 = v92;
      v94 = v432;
      v97 = v434;
    }

    v99 = [v97 taskInformation];
    type metadata accessor for SPBeaconTaskName(0);
    v101 = v100;
    v102 = sub_24A679170(0, &qword_27EF5DD20, 0x277D49648);
    v103 = sub_24A67EFC0(&qword_27EF5CEF8, type metadata accessor for SPBeaconTaskName);
    v415 = v102;
    v416 = v101;
    v414 = v103;
    v104 = sub_24A82CEF4();

    if (!*(v104 + 16) || (v105 = sub_24A77EE90(v412), (v106 & 1) == 0))
    {

      goto LABEL_58;
    }

    v107 = *(*(v104 + 56) + 8 * v105);

    v108 = [v107 state];

    if (!v108)
    {
      v120 = v420;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v120 = sub_24A780178(0, *(v120 + 2) + 1, 1, v120);
      }

      v112 = v434;
      v122 = *(v120 + 2);
      v121 = *(v120 + 3);
      v420 = v120;
      if (v122 >= v121 >> 1)
      {
        v420 = sub_24A780178((v121 > 1), v122 + 1, 1, v420);
        v112 = v434;
      }

      v123 = v420;
      *(v420 + 2) = v122 + 1;
      v114 = &v123[8 * v122];
      v115 = 2;
      goto LABEL_69;
    }

    if (v108 == 1)
    {
      v116 = v420;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v116 = sub_24A780178(0, *(v116 + 2) + 1, 1, v116);
      }

      v118 = *(v116 + 2);
      v117 = *(v116 + 3);
      v420 = v116;
      v112 = v434;
      if (v118 >= v117 >> 1)
      {
        v420 = sub_24A780178((v117 > 1), v118 + 1, 1, v420);
        v112 = v434;
      }

      v119 = v420;
      *(v420 + 2) = v118 + 1;
      v114 = &v119[8 * v118];
      v115 = 4;
      goto LABEL_69;
    }

    if (v108 != 4)
    {
LABEL_58:
      v112 = v434;
      goto LABEL_70;
    }

    v109 = v420;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v109 = sub_24A780178(0, *(v109 + 2) + 1, 1, v109);
    }

    v111 = *(v109 + 2);
    v110 = *(v109 + 3);
    v420 = v109;
    v112 = v434;
    if (v111 >= v110 >> 1)
    {
      v420 = sub_24A780178((v110 > 1), v111 + 1, 1, v420);
      v112 = v434;
    }

    v113 = v420;
    *(v420 + 2) = v111 + 1;
    v114 = &v113[8 * v111];
    v115 = 2048;
LABEL_69:
    *(v114 + 4) = v115;
LABEL_70:
    v124 = [v112 identifier];
    sub_24A82CA84();

    v125 = sub_24A82CA54();
    v127 = v126;
    v128 = v424 + 8;
    v430 = *(v424 + 8);
    v431 = v424 + 8;
    v430(v94, v438);
    v129 = v425;
    v425[1] = v125;
    v129[2] = v127;
    v130 = [v112 name];
    v131 = sub_24A82CFC4();
    v133 = v132;

    v129[3] = v131;
    v129[4] = v133;
    v134 = MEMORY[0x277D84FA0];
    v129[5] = MEMORY[0x277D84F90];
    v129[6] = v134;
    v135 = [v112 beaconMap];
    sub_24A679170(0, &qword_27EF5DD28, 0x277D496A8);
    v136 = sub_24A82CEF4();

    sub_24A6BBA94(&qword_27EF5DD30, &qword_24A836118);
    v137 = sub_24A82D954();
    v138 = 0;
    v140 = v136 + 64;
    v139 = *(v136 + 64);
    v429 = v136;
    v141 = 1 << *(v136 + 32);
    v142 = -1;
    if (v141 < 64)
    {
      v142 = ~(-1 << v141);
    }

    v143 = v142 & v139;
    v144 = (v141 + 63) >> 6;
    v437 = (v128 + 24);
    *&v436 = v137;
    v421 = v137 + 64;
    if ((v142 & v139) != 0)
    {
      do
      {
        v145 = __clz(__rbit64(v143));
        v143 &= v143 - 1;
LABEL_79:
        v148 = v145 | (v138 << 6);
        v149 = *(v429 + 48) + 16 * v148;
        v150 = *v149;
        v151 = *(v149 + 8);
        v152 = *(*(v429 + 56) + 8 * v148);

        v153 = v152;
        v154 = [v153 status];
        v435 = v150;
        if (v154 == 2)
        {

          v155 = 3;
          goto LABEL_87;
        }

        if (v154 == 1)
        {
          v156 = [v153 beaconIdentifier];
          if (!v156)
          {
LABEL_85:

            v155 = 1;
            goto LABEL_87;
          }

          v157 = v156;
          v158 = v411;
          sub_24A82CA84();

          (*v437)(v428, v158, v438);
          v155 = 0;
        }

        else
        {
          if (v154)
          {
            goto LABEL_85;
          }

          v155 = 2;
        }

LABEL_87:
        v159 = sub_24A6BBA94(&qword_27EF5DB98, &qword_24A835D80);
        v160 = v428;
        (*(*(v159 - 8) + 56))(v428, v155, 3, v159);
        v161 = v422;
        sub_24A6A2328(v160, v422, type metadata accessor for FMIPItemPairingState);
        *(v421 + ((v148 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v148;
        v162 = v436;
        v163 = (*(v436 + 48) + 16 * v148);
        *v163 = v435;
        v163[1] = v151;
        sub_24A6A2328(v161, *(v162 + 56) + *(v423 + 72) * v148, type metadata accessor for FMIPItemPairingState);
        v164 = *(v162 + 16);
        v165 = __OFADD__(v164, 1);
        v166 = v164 + 1;
        if (v165)
        {
          goto LABEL_254;
        }

        *(v436 + 16) = v166;
      }

      while (v143);
    }

    v146 = v138;
    while (1)
    {
      v138 = v146 + 1;
      if (__OFADD__(v146, 1))
      {
        goto LABEL_248;
      }

      if (v138 >= v144)
      {
        break;
      }

      v147 = *(v140 + 8 * v138);
      ++v146;
      if (v147)
      {
        v145 = __clz(__rbit64(v147));
        v143 = (v147 - 1) & v147;
        goto LABEL_79;
      }
    }

    v441 = MEMORY[0x277D84F90];
    v167 = v436;

    v169 = v413;
    sub_24A709A74(v168, &v441);

    v170 = sub_24A6BBA94(&qword_27EF5DB98, &qword_24A835D80);
    v171 = v417;
    v172 = (*(*(v170 - 8) + 56))(v417, 3, 3, v170);
    MEMORY[0x28223BE20](v172);
    *(&v408 - 2) = v171;

    v173 = sub_24A7FD6DC(sub_24A7151CC, (&v408 - 4), v167);
    v413 = v169;

    sub_24A69F204(v171, type metadata accessor for FMIPItemPairingState);
    if (v173)
    {
      v174 = v420;
      v175 = swift_isUniquelyReferenced_nonNull_native();
      v176 = v418;
      v177 = v433;
      if ((v175 & 1) == 0)
      {
        v174 = sub_24A780178(0, *(v174 + 2) + 1, 1, v174);
      }

      v178 = v174;
      v179 = *(v174 + 2);
      v180 = v178;
      v181 = *(v178 + 3);
      v182 = v434;
      if (v179 >= v181 >> 1)
      {
        v180 = sub_24A780178((v181 > 1), v179 + 1, 1, v180);
        v182 = v434;
      }

      *(v180 + 2) = v179 + 1;
      v183 = &v180[8 * v179];
      v184 = v180;
      *(v183 + 4) = 0x2000;
    }

    else
    {
      v177 = v433;
      v182 = v434;
      v176 = v418;
      v184 = v420;
    }

    v185 = [v182 isPairingComplete];
    if (v185)
    {
      v186 = v434;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v184 = sub_24A780178(0, *(v184 + 2) + 1, 1, v184);
      }

      v187 = v184;
      v188 = *(v184 + 2);
      v189 = v187;
      v190 = *(v187 + 3);
      v186 = v434;
      if (v188 >= v190 >> 1)
      {
        v189 = sub_24A780178((v190 > 1), v188 + 1, 1, v189);
        v186 = v434;
      }

      *(v189 + 2) = v188 + 1;
      v191 = &v189[8 * v188];
      v184 = v189;
      *(v191 + 4) = 0x8000;
    }

    v420 = v184;
    v425[9] = v436;
    v192 = v441;
    v193 = *(v441 + 2);
    v417 = v441;
    if (!v193)
    {
      *&v436 = MEMORY[0x277D84F90];
      p_info = &OBJC_METACLASS____TtC8FMIPCore20FMIPGarbageCollector.info;
      if (v185)
      {
        goto LABEL_110;
      }

LABEL_116:
      sub_24A6BBA94(&qword_27EF5DA20, &unk_24A8352B0);
      v222 = swift_initStackObject();
      *(v222 + 16) = xmmword_24A8327A0;

      v224 = sub_24A713EE8(v223);

      *(v222 + 32) = v224;
      v419 = sub_24A7151EC(v222);
      swift_setDeallocating();
      sub_24A67F378(v222 + 32, &qword_27EF5DA28, &qword_24A8415A0);
      if (p_info[441] != -1)
      {
        swift_once();
      }

      v225 = sub_24A82CDC4();
      sub_24A6797D0(v225, qword_281518F88);
      v213 = sub_24A82CD94();
      v226 = sub_24A82D504();
      if (os_log_type_enabled(v213, v226))
      {
        v216 = swift_slowAlloc();
        v227 = swift_slowAlloc();
        v440[0] = v227;
        *v216 = 136315138;

        sub_24A6BBA94(&qword_27EF5DA28, &qword_24A8415A0);
        sub_24A678A64(&qword_27EF5DCA8, &qword_27EF5DA28, &qword_24A8415A0);
        v228 = sub_24A82D3B4();
        v230 = v229;

        v231 = sub_24A68761C(v228, v230, v440);

        *(v216 + 4) = v231;
        _os_log_impl(&dword_24A675000, v213, v226, "FMIPItemGroup: BA pairing is incomplete. Showing parts all together: %s", v216, 0xCu);
        sub_24A6876E8(v227);
        v232 = v227;
LABEL_129:
        MEMORY[0x24C21E1D0](v232, -1, -1);
        MEMORY[0x24C21E1D0](v216, -1, -1);
        goto LABEL_130;
      }

      goto LABEL_130;
    }

    LODWORD(v429) = v185;
    v440[0] = MEMORY[0x277D84F90];
    sub_24A6FCAAC(0, v193, 0);
    v194 = *(v424 + 16);
    v195 = v440[0];
    v435 = ((*(v424 + 80) + 32) & ~*(v424 + 80));
    *&v436 = v194;
    v196 = &v435[v192];
    v197 = *(v424 + 72);
    v198 = v438;
    v199 = v410;
    do
    {
      (v436)(v199, v196, v198);
      v440[0] = v195;
      v201 = *(v195 + 16);
      v200 = *(v195 + 24);
      if (v201 >= v200 >> 1)
      {
        sub_24A6FCAAC(v200 > 1, v201 + 1, 1);
        v198 = v438;
        v195 = v440[0];
      }

      *(v195 + 16) = v201 + 1;
      (*v437)(&v435[v195 + v201 * v197], v199, v198);
      v196 += v197;
      --v193;
    }

    while (v193);
    *&v436 = v195;
    v177 = v433;
    v186 = v434;
    v176 = v418;
    p_info = (&OBJC_METACLASS____TtC8FMIPCore20FMIPGarbageCollector + 32);
    if ((v429 & 1) == 0)
    {
      goto LABEL_116;
    }

LABEL_110:
    v203 = [v186 multipartStatus];
    v204 = sub_24A6BBA94(&qword_27EF5DA28, &qword_24A8415A0);
    v205 = sub_24A678A64(&qword_27EF5DCA8, &qword_27EF5DA28, &qword_24A8415A0);
    v206 = sub_24A82D3A4();

    v207 = *(v206 + 16);

    if (v207)
    {
      v208 = [v186 multipartStatus];
      v209 = sub_24A82D3A4();

      v210 = v413;
      v211 = sub_24A70573C(v209);
      v413 = v210;

      v419 = sub_24A714084(v211);

      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v212 = sub_24A82CDC4();
      sub_24A6797D0(v212, qword_281518F88);
      v213 = sub_24A82CD94();
      v214 = sub_24A82D504();
      v215 = os_log_type_enabled(v213, v214);
      v176 = v418;
      if (!v215)
      {
        goto LABEL_130;
      }

      v216 = swift_slowAlloc();
      v437 = swift_slowAlloc();
      v440[0] = v437;
      *v216 = 136315138;

      v217 = sub_24A82D3B4();
      v219 = v218;

      v220 = sub_24A68761C(v217, v219, v440);

      *(v216 + 4) = v220;
      v221 = "FMIPItemGroup: multipart status: %s";
      goto LABEL_128;
    }

    v233 = v417;
    v234 = *(v417 + 2);
    v235 = MEMORY[0x277D84F90];
    if (v234)
    {
      v421 = v205;
      v422 = v204;
      v440[0] = MEMORY[0x277D84F90];
      sub_24A6FCA2C(0, v234, 0);
      v435 = *(v424 + 16);
      v235 = v440[0];
      v236 = *(v424 + 80);
      v428 = ((v236 + 32) & ~v236);
      v429 = v236;
      v237 = &v428[v233];
      v437 = (v424 + 16);
      v238 = v438;
      v423 = *(v424 + 72);
      do
      {
        v239 = v432;
        v240 = v435;
        (v435)(v432, v237, v238);
        sub_24A6BBA94(&qword_27EF5E110, &unk_24A835280);
        v241 = v428;
        v242 = swift_allocObject();
        (v240)(&v241[v242], v239, v438);
        v243 = sub_24A67EFC0(&qword_281514670, MEMORY[0x277CC95F0]);
        v439 = MEMORY[0x24C21CCD0](1, v438, v243);
        (v240)(v177, &v241[v242], v438);
        swift_setDeallocating();
        v244 = v430;
        v430(&v241[v242], v438);
        swift_deallocClassInstance();
        v245 = v419;
        sub_24A70BFA8(v419, v177);
        v238 = v438;
        v244(v245, v438);
        v244(v239, v238);
        v246 = v439;
        v440[0] = v235;
        v248 = *(v235 + 16);
        v247 = *(v235 + 24);
        if (v248 >= v247 >> 1)
        {
          sub_24A6FCA2C((v247 > 1), v248 + 1, 1);
          v238 = v438;
          v235 = v440[0];
        }

        *(v235 + 16) = v248 + 1;
        *(v235 + 8 * v248 + 32) = v246;
        v237 += v423;
        --v234;
        v177 = v433;
      }

      while (v234);
    }

    v419 = sub_24A714084(v235);

    v176 = v418;
    if (qword_281515DC8 != -1)
    {
      goto LABEL_259;
    }

    while (1)
    {
      v249 = sub_24A82CDC4();
      sub_24A6797D0(v249, qword_281518F88);
      v213 = sub_24A82CD94();
      v214 = sub_24A82D504();
      if (os_log_type_enabled(v213, v214))
      {
        v216 = swift_slowAlloc();
        v437 = swift_slowAlloc();
        v440[0] = v437;
        *v216 = 136315138;

        v250 = sub_24A82D3B4();
        v252 = v251;

        v253 = sub_24A68761C(v250, v252, v440);

        *(v216 + 4) = v253;
        v221 = "FMIPItemGroup: multipart status from SPD was empty. Showing all separated: %s";
LABEL_128:
        _os_log_impl(&dword_24A675000, v213, v214, v221, v216, 0xCu);
        v254 = v437;
        sub_24A6876E8(v437);
        v232 = v254;
        goto LABEL_129;
      }

LABEL_130:

      v255 = [objc_opt_self() sharedInstance];
      v256 = [v255 isInternalBuild];

      if (!v256)
      {
        goto LABEL_204;
      }

      v257 = [objc_opt_self() standardUserDefaults];
      v258 = sub_24A82CF94();
      v259 = [v257 BOOLForKey_];

      if (!v259)
      {
        goto LABEL_204;
      }

      v260 = *(v436 + 16);
      if (v260)
      {
        v261 = 0;
        v262 = 0;
        v263 = MEMORY[0x277D84F90];
        while (1)
        {
          v264 = v261 + 1;
          if (__OFADD__(v261, 1))
          {
            goto LABEL_250;
          }

          v165 = __OFADD__(v262, 2);
          v262 += 2;
          if (v165)
          {
            v262 = 0x7FFFFFFFFFFFFFFFLL;
          }

          ++v261;
          if (v262 >= v260)
          {
            goto LABEL_140;
          }
        }
      }

      v264 = 0;
      v263 = MEMORY[0x277D84F90];
LABEL_140:
      v440[0] = v263;
      sub_24A6FCA6C(0, v264 & ~(v264 >> 63), 0);
      if ((v264 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_259:
      swift_once();
    }

    v265 = v440[0];
    v266 = v436;
    v435 = v260;
    if (v264)
    {
      v267 = 0;
      v268 = 0;
      v269 = *(v436 + 16);
      v423 = *(v424 + 80);
      v429 = (v423 + 32) & ~v423;
      v428 = (v436 + v429);
      v437 = ((v260 + 1) & 0xFFFFFFFFFFFFFFFELL);
      v270 = 2;
      while (1)
      {
        v271 = v269 >= v270 ? v270 : v269;
        if (v437 == v268)
        {
          goto LABEL_251;
        }

        if (v268 == 0x7FFFFFFFFFFFFFFELL)
        {
          goto LABEL_252;
        }

        v272 = v268 + 2;
        if (v269 >= v268 + 2)
        {
          v273 = (v268 + 2);
        }

        else
        {
          v273 = v269;
        }

        if (v273 < v268)
        {
          goto LABEL_253;
        }

        v274 = v271 + v267;
        if (v271 + v267 == *(v266 + 16))
        {
          v275 = v265;

          v265 = v275;
          v266 = v436;
          v276 = v436;
        }

        else
        {
          v276 = MEMORY[0x277D84F90];
          if (v268 != v273)
          {
            v422 = v265;
            if (v274 >= 1)
            {
              sub_24A6BBA94(&qword_27EF5E110, &unk_24A835280);
              v279 = *(v424 + 72);
              v276 = swift_allocObject();
              v280 = j__malloc_size(v276);
              if (!v279)
              {
                __break(1u);
LABEL_261:
                __break(1u);
LABEL_262:
                __break(1u);
LABEL_263:
                __break(1u);
                return;
              }

              v281 = v429;
              if (v280 - v429 == 0x8000000000000000 && v279 == -1)
              {
                goto LABEL_262;
              }

              v276[2] = v274;
              v276[3] = 2 * ((v280 - v281) / v279);
            }

            v283 = *(v424 + 72);
            swift_arrayInitWithCopy();
            v266 = v436;
            v265 = v422;
          }
        }

        v440[0] = v265;
        v278 = *(v265 + 16);
        v277 = *(v265 + 24);
        if (v278 >= v277 >> 1)
        {
          sub_24A6FCA6C((v277 > 1), v278 + 1, 1);
          v266 = v436;
          v265 = v440[0];
        }

        *(v265 + 16) = v278 + 1;
        *(v265 + 8 * v278 + 32) = v276;
        v270 += 2;
        v267 -= 2;
        v268 = (v268 + 2);
        if (!--v264)
        {
          goto LABEL_168;
        }
      }
    }

    v272 = 0;
LABEL_168:
    v284 = v435;
    if (v272 < v435)
    {
      v285 = -v272;
      v286 = v272 + 2;
      v287 = v272;
      while (1)
      {
        v288 = *(v266 + 16);
        if (v288 < v287)
        {
          goto LABEL_255;
        }

        if (v272 < 0)
        {
          goto LABEL_256;
        }

        if (v288 >= v286)
        {
          v289 = v286;
        }

        else
        {
          v289 = *(v266 + 16);
        }

        v290 = v289 + v285;
        if (v289 + v285 == v288)
        {
          v291 = v265;

          v265 = v291;
          v266 = v436;
          v292 = v436;
        }

        else
        {
          v292 = MEMORY[0x277D84F90];
          if (v287 != v288)
          {
            v422 = v265;
            if (v290 >= 1)
            {
              sub_24A6BBA94(&qword_27EF5E110, &unk_24A835280);
              v437 = *(v424 + 72);
              v296 = (*(v424 + 80) + 32) & ~*(v424 + 80);
              v292 = swift_allocObject();
              v297 = j__malloc_size(v292);
              v298 = v437;
              if (!v437)
              {
                goto LABEL_261;
              }

              if (v297 - v296 == 0x8000000000000000 && (v437 + 1) == 0)
              {
                goto LABEL_263;
              }

              v292[2] = v290;
              v292[3] = 2 * ((v297 - v296) / v298);
              v266 = v436;
            }

            v300 = v266 + ((*(v424 + 80) + 32) & ~*(v424 + 80)) + *(v424 + 72) * v287;
            swift_arrayInitWithCopy();
            v266 = v436;
            v265 = v422;
          }
        }

        v440[0] = v265;
        v294 = *(v265 + 16);
        v293 = *(v265 + 24);
        v295 = v294 + 1;
        if (v294 >= v293 >> 1)
        {
          v423 = v294 + 1;
          sub_24A6FCA6C((v293 > 1), v294 + 1, 1);
          v295 = v423;
          v266 = v436;
          v265 = v440[0];
        }

        v287 += 2;
        *(v265 + 16) = v295;
        *(v265 + 8 * v294 + 32) = v292;
        v285 -= 2;
        v286 += 2;
        if (v287 >= v284)
        {
          v422 = v265;
          v301 = MEMORY[0x277D84F90];
          goto LABEL_192;
        }
      }
    }

    v295 = *(v265 + 16);
    v301 = MEMORY[0x277D84F90];
    if (v295)
    {
      v422 = v265;
LABEL_192:
      v423 = v295;
      v440[0] = v301;
      sub_24A6FCA2C(0, v295, 0);
      v302 = 0;
      v303 = v440[0];
      v304 = v422;
      v421 = v422 + 32;
      v437 = (v424 + 16);
      v305 = v430;
      while (v302 < *(v304 + 16))
      {
        v306 = *(v421 + 8 * v302);
        v307 = *(v306 + 2);
        v308 = sub_24A67EFC0(&qword_281514670, MEMORY[0x277CC95F0]);

        v309 = v307;
        v310 = v438;
        v311 = MEMORY[0x24C21CCD0](v309, v438, v308);
        v439 = v311;
        v312 = *(v306 + 2);
        if (v312)
        {
          v428 = v306;
          v429 = v302;
          v435 = v303;
          v313 = &v306[(*(v424 + 80) + 32) & ~*(v424 + 80)];
          v314 = *(v424 + 72);
          v315 = *(v424 + 16);
          v317 = v432;
          v316 = v433;
          do
          {
            v315(v316, v313, v310);
            sub_24A70BFA8(v317, v316);
            v310 = v438;
            v305(v317, v438);
            v313 += v314;
            --v312;
          }

          while (v312);

          v318 = v439;
          v303 = v435;
          v302 = v429;
        }

        else
        {
          v318 = v311;
        }

        v440[0] = v303;
        v320 = *(v303 + 2);
        v319 = *(v303 + 3);
        v304 = v422;
        v321 = v423;
        if (v320 >= v319 >> 1)
        {
          sub_24A6FCA2C((v319 > 1), v320 + 1, 1);
          v304 = v422;
          v321 = v423;
          v303 = v440[0];
        }

        ++v302;
        *(v303 + 2) = v320 + 1;
        *&v303[8 * v320 + 32] = v318;
        if (v302 == v321)
        {

          goto LABEL_203;
        }
      }

      continue;
    }

    break;
  }

  v303 = MEMORY[0x277D84F90];
LABEL_203:
  v322 = sub_24A714084(v303);

  v419 = v322;
  v176 = v418;
LABEL_204:
  v323 = type metadata accessor for FMIPItemGroup();
  v324 = v425;
  *(v425 + *(v323 + 52)) = v436;
  v324[7] = v419;
  v325 = *(i + 2);
  if (v325)
  {
    v326 = 0;
    v327 = v409;
    do
    {
      v329 = *v327;
      v327 += 8;
      v328 = v329;
      if ((v329 & ~v326) == 0)
      {
        v328 = 0;
      }

      v326 |= v328;
      --v325;
    }

    while (v325);
  }

  else
  {
    v326 = 0;
  }

  *v425 = v326;

  v330 = [v434 lostModeInfo];
  if (v330)
  {
    FMIPItemLostModeMetadata.init(lostModeInfo:)(v330, v176);
    v331 = 0;
  }

  else
  {
    v331 = 1;
  }

  v332 = type metadata accessor for FMIPItemLostModeMetadata();
  (*(*(v332 - 8) + 56))(v176, v331, 1, v332);

  sub_24A70B7FC(v176, v425 + *(v323 + 48));
  v333 = *(v420 + 2);
  if (v333)
  {
    v334 = 0;
    v335 = v420 + 32;
    do
    {
      v337 = *v335;
      v335 += 8;
      v336 = v337;
      if ((v337 & ~v334) == 0)
      {
        v336 = 0;
      }

      v334 |= v336;
      --v333;
    }

    while (v333);
  }

  else
  {
    v334 = 0;
  }

  v425[8] = v334;
  v338 = FMIPItemGroup.shouldDisplaySeparatedLocation.getter();
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v339 = sub_24A82CDC4();
  sub_24A6797D0(v339, qword_281518F88);
  v340 = v434;
  v341 = sub_24A82CD94();
  v342 = sub_24A82D504();

  if (os_log_type_enabled(v341, v342))
  {
    LODWORD(v435) = v338;
    v343 = swift_slowAlloc();
    v344 = swift_slowAlloc();
    v440[0] = v344;
    *v343 = 136317442;
    v345 = [v340 name];
    v346 = sub_24A82CFC4();
    v348 = v347;

    v349 = sub_24A68761C(v346, v348, v440);

    *(v343 + 4) = v349;
    *(v343 + 12) = 2080;
    v350 = [v340 taskInformation];
    v351 = sub_24A82CEF4();

    v352 = *(v351 + 16);
    *&v436 = v344;
    if (v352 && (v353 = sub_24A77EE90(v412), (v354 & 1) != 0))
    {
      v355 = *(*(v351 + 56) + 8 * v353);
      v356 = v355;
    }

    else
    {
      v355 = 0;
    }

    v439 = v355;
    sub_24A6BBA94(&qword_27EF5DD38, &qword_24A839DE0);
    v357 = sub_24A82D024();
    v359 = sub_24A68761C(v357, v358, v440);

    *(v343 + 14) = v359;
    *(v343 + 22) = 2080;
    v360 = [v340 name];
    v361 = sub_24A82CFC4();
    v363 = v362;

    v364 = sub_24A68761C(v361, v363, v440);

    *(v343 + 24) = v364;
    *(v343 + 32) = 2080;
    v365 = [v340 taskInformation];
    v366 = sub_24A82CEF4();

    v367 = *(v366 + 16);
    LODWORD(v437) = v342;
    if (v367 && (v368 = sub_24A77EE90(*MEMORY[0x277D497F8]), (v369 & 1) != 0))
    {
      v370 = *(*(v366 + 56) + 8 * v368);
      v371 = v370;
    }

    else
    {
      v370 = 0;
    }

    v439 = v370;
    v372 = sub_24A82D024();
    v374 = sub_24A68761C(v372, v373, v440);

    *(v343 + 34) = v374;
    *(v343 + 42) = 2080;
    v375 = [v340 name];
    v376 = sub_24A82CFC4();
    v378 = v377;

    v379 = sub_24A68761C(v376, v378, v440);

    *(v343 + 44) = v379;
    *(v343 + 52) = 2080;
    v380 = [v340 taskInformation];
    v381 = sub_24A82CEF4();

    if (*(v381 + 16))
    {
      v382 = sub_24A77EE90(v408);
      v383 = &off_278FE8000;
      v384 = v430;
      if (v385)
      {
        v386 = *(*(v381 + 56) + 8 * v382);
        v387 = v386;
      }

      else
      {
        v386 = 0;
      }
    }

    else
    {
      v386 = 0;
      v383 = &off_278FE8000;
      v384 = v430;
    }

    v439 = v386;
    v388 = sub_24A82D024();
    v390 = sub_24A68761C(v388, v389, v440);

    *(v343 + 54) = v390;
    *(v343 + 62) = 1024;
    *(v343 + 64) = v435 & 1;
    *(v343 + 68) = 2080;
    v391 = [v340 v383[227]];
    v392 = v391 == 0;
    if (v391)
    {
      v393 = 0;
    }

    else
    {
      v393 = 7630702;
    }

    if (v392)
    {
      v394 = 0xE300000000000000;
    }

    else
    {
      v394 = 0xE000000000000000;
    }

    v395 = sub_24A68761C(v393, v394, v440);

    *(v343 + 70) = v395;
    *(v343 + 78) = 2080;
    v396 = [v340 name];
    v397 = sub_24A82CFC4();
    v399 = v398;

    v400 = sub_24A68761C(v397, v399, v440);

    *(v343 + 80) = v400;
    *(v343 + 88) = 2080;
    v401 = [v340 identifier];
    v402 = v432;
    sub_24A82CA84();

    v403 = sub_24A82CA54();
    v405 = v404;
    v384(v402, v438);
    v406 = sub_24A68761C(v403, v405, v440);

    *(v343 + 90) = v406;
    _os_log_impl(&dword_24A675000, v341, v437, "FMIPItemGroup: %s taskInfo -> play sound %s\nFMIPItemGroup: %s taskInfo -> stop sound %s\nFMIPItemGroup: %s taskInfo -> notify when found active %s\nshowSeparated: %{BOOL}d,\n☎︎ FMIPItemGroup: beacon is %s connected, '%s': %s", v343, 0x62u);
    v407 = v436;
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v407, -1, -1);
    MEMORY[0x24C21E1D0](v343, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_24A709A74(uint64_t a1, size_t *a2)
{
  v47 = a2;
  v46 = sub_24A82CAA4();
  v3 = *(v46 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v46);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v45 = v37 - v8;
  v9 = type metadata accessor for FMIPItemPairingState();
  v48 = *(v9 - 8);
  v10 = *(v48 + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v37 - v14;
  v16 = a1 + 64;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 64);
  v20 = (v17 + 63) >> 6;
  v44 = (v3 + 32);
  v41 = v3;
  v37[1] = v3 + 8;
  v38 = (v3 + 16);

  v22 = 0;
  v42 = a1;
  v39 = v13;
  v40 = v7;
  while (v19)
  {
LABEL_11:
    sub_24A69F064(*(a1 + 56) + *(v48 + 72) * (__clz(__rbit64(v19)) | (v22 << 6)), v15, type metadata accessor for FMIPItemPairingState);
    sub_24A69F064(v15, v13, type metadata accessor for FMIPItemPairingState);
    v24 = sub_24A6BBA94(&qword_27EF5DB98, &qword_24A835D80);
    if ((*(*(v24 - 8) + 48))(v13, 3, v24))
    {
      sub_24A69F204(v13, type metadata accessor for FMIPItemPairingState);
    }

    else
    {
      v25 = v45;
      v26 = v46;
      v43 = *v44;
      v43(v45, v13, v46);
      (*v38)(v7, v25, v26);
      v27 = v47;
      v28 = *v47;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v27 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = sub_24A78029C(0, v28[2] + 1, 1, v28);
        *v47 = v28;
      }

      v31 = v28[2];
      v30 = v28[3];
      if (v31 >= v30 >> 1)
      {
        v36 = sub_24A78029C(v30 > 1, v31 + 1, 1, v28);
        *v47 = v36;
      }

      v32 = v41;
      v33 = v46;
      (*(v41 + 8))(v45, v46);
      v34 = *v47;
      *(v34 + 16) = v31 + 1;
      v35 = v34 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v31;
      v7 = v40;
      v43(v35, v40, v33);
      a1 = v42;
      v13 = v39;
    }

    v19 &= v19 - 1;
    result = sub_24A69F204(v15, type metadata accessor for FMIPItemPairingState);
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v20)
    {
    }

    v19 = *(v16 + 8 * v23);
    ++v22;
    if (v19)
    {
      v22 = v23;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t FMIPItemGroup.init(itemGroup:items:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v53 = a3;
  v5 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v50 - v7;
  v9 = sub_24A82CAA4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FMIPItem();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8);
  v60 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v50 - v19;
  v52 = type metadata accessor for FMIPItemGroup();
  v21 = *(a1 + *(v52 + 52));
  v54 = a1;
  v22 = a1[7];
  v23 = *(a2 + 16);

  v51 = v22;

  v63 = v23;
  if (v23)
  {
    v25 = 0;
    v62 = (v10 + 48);
    v55 = (v10 + 8);
    v56 = (v10 + 32);
    v61 = MEMORY[0x277D84F90];
    v58 = v8;
    v59 = a2;
    v57 = v15;
    while (v25 < *(a2 + 16))
    {
      v26 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v64 = *(v15 + 72);
      v65 = v26;
      sub_24A69F064(a2 + v26 + v64 * v25, v20, type metadata accessor for FMIPItem);
      v27 = *(v20 + 44);
      v28 = *(v20 + 45);
      sub_24A82CA44();
      if ((*v62)(v8, 1, v9) == 1)
      {
        sub_24A67F378(v8, &qword_27EF5D020, &qword_24A830E40);
LABEL_4:
        result = sub_24A69F204(v20, type metadata accessor for FMIPItem);
      }

      else
      {
        (*v56)(v13, v8, v9);
        v29 = 0;
        v30 = *(v21 + 16);
        do
        {
          if (v30 == v29)
          {
            (*v55)(v13, v9);
            v8 = v58;
            a2 = v59;
            v15 = v57;
            goto LABEL_4;
          }

          v31 = v29 + 1;
          v32 = v21 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v29;
          sub_24A67EFC0(&qword_27EF5DC48, MEMORY[0x277CC95F0]);
          v33 = sub_24A82CF84();
          v29 = v31;
        }

        while ((v33 & 1) == 0);
        (*v55)(v13, v9);
        sub_24A6A2328(v20, v60, type metadata accessor for FMIPItem);
        v34 = v61;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24A6FCB30(0, *(v34 + 16) + 1, 1);
          v34 = v66;
        }

        v37 = *(v34 + 16);
        v36 = *(v34 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_24A6FCB30(v36 > 1, v37 + 1, 1);
          v34 = v66;
        }

        *(v34 + 16) = v37 + 1;
        v61 = v34;
        result = sub_24A6A2328(v60, v34 + v65 + v37 * v64, type metadata accessor for FMIPItem);
        v8 = v58;
        a2 = v59;
        v15 = v57;
      }

      if (++v25 == v63)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v61 = MEMORY[0x277D84F90];
LABEL_18:

    v38 = v61;

    v39 = v51;
    v40 = sub_24A714870(v51, v38);

    v41 = sub_24A71417C(v40);

    v42 = v53;
    v43 = v54;
    v45 = v54[2];
    v44 = v54[3];
    v46 = *v54;
    v53[1] = v54[1];
    v42[2] = v45;
    v47 = v52;
    *(v42 + *(v52 + 52)) = v21;
    v48 = v43[4];
    v42[3] = v44;
    v42[4] = v48;
    v42[5] = v38;
    v42[6] = v41;
    v49 = v43[9];
    v42[8] = v43[8];
    v42[9] = v49;
    v42[7] = v39;
    *v42 = v46;
    sub_24A67E964(v43 + *(v47 + 48), v42 + *(v47 + 48), &unk_27EF5E100, &unk_24A839DB0);

    return sub_24A69F204(v43, type metadata accessor for FMIPItemGroup);
  }

  return result;
}

uint64_t sub_24A70A3DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v47 = a3;
  v5 = sub_24A6BBA94(&qword_27EF5D018, &qword_24A830E38);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v45 - v7;
  v59 = type metadata accessor for FMIPItem();
  v9 = *(v59 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v59);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v46 = &v45 - v14;
  v15 = sub_24A82CAA4();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v21 = v13;
  v22 = v20 + 56;
  v23 = 1 << *(v20 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v20 + 56);
  v26 = (v23 + 63) >> 6;
  v55 = (v9 + 56);
  v56 = v17 + 16;
  v58 = v17;
  v52 = v9;
  v53 = (v9 + 48);
  v54 = (v17 + 8);
  v61 = v20;

  v28 = 0;
  v48 = MEMORY[0x277D84F90];
  v49 = v15;
  v57 = v22;
  v60 = v26;
  v50 = v8;
  v51 = a2;
LABEL_4:
  v29 = v28;
  if (!v25)
  {
    goto LABEL_6;
  }

  do
  {
    v28 = v29;
LABEL_9:
    (*(v58 + 16))(v19, *(v61 + 48) + *(v58 + 72) * (__clz(__rbit64(v25)) | (v28 << 6)), v15);
    v30 = *(a2 + 16);
    if (v30)
    {
      v31 = a2 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
      v62 = *(v52 + 72);
      while (1)
      {
        sub_24A69F064(v31, v21, type metadata accessor for FMIPItem);
        v32 = v21;
        v34 = *(v21 + 352);
        v33 = *(v21 + 360);
        if (v34 == sub_24A82CA54() && v33 == v35)
        {
          break;
        }

        v37 = sub_24A82DC04();

        if (v37)
        {
          goto LABEL_20;
        }

        v21 = v32;
        sub_24A69F204(v32, type metadata accessor for FMIPItem);
        v31 += v62;
        if (!--v30)
        {
          v38 = 1;
          v8 = v50;
          a2 = v51;
          goto LABEL_21;
        }
      }

LABEL_20:
      v21 = v32;
      v8 = v50;
      sub_24A6A2328(v32, v50, type metadata accessor for FMIPItem);
      v38 = 0;
      a2 = v51;
LABEL_21:
      v15 = v49;
    }

    else
    {
      v38 = 1;
    }

    v25 &= v25 - 1;
    v39 = v59;
    (*v55)(v8, v38, 1, v59);
    (*v54)(v19, v15);
    v40 = (*v53)(v8, 1, v39);
    v26 = v60;
    if (v40 != 1)
    {
      sub_24A6A2328(v8, v46, type metadata accessor for FMIPItem);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_24A7802C4(0, v48[2] + 1, 1, v48);
      }

      v42 = v48[2];
      v41 = v48[3];
      if (v42 >= v41 >> 1)
      {
        v48 = sub_24A7802C4(v41 > 1, v42 + 1, 1, v48);
      }

      v43 = v48;
      v48[2] = v42 + 1;
      result = sub_24A6A2328(v46, v43 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v42, type metadata accessor for FMIPItem);
      v22 = v57;
      v26 = v60;
      goto LABEL_4;
    }

    result = sub_24A67F378(v8, &qword_27EF5D018, &qword_24A830E38);
    v29 = v28;
    v22 = v57;
  }

  while (v25);
LABEL_6:
  while (1)
  {
    v28 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v28 >= v26)
    {

      v44 = sub_24A714274(v48);

      *v47 = v44;
      return result;
    }

    v25 = *(v22 + 8 * v28);
    ++v29;
    if (v25)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t FMIPItemGroup.init(itemGroup:connected:)@<X0>(void *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v5 = a1[2];
  if (a2)
  {
    v6 = a1[8];
  }

  else
  {
    v6 = a1[8] & 0xFFFFFFFFFFFFFFBFLL;
  }

  a3[1] = a1[1];
  a3[2] = v5;
  v7 = type metadata accessor for FMIPItemGroup();
  *(a3 + *(v7 + 52)) = *(a1 + *(v7 + 52));
  v9 = a1[6];
  v8 = a1[7];
  v10 = a1[4];
  a3[3] = a1[3];
  a3[4] = v10;
  a3[5] = a1[5];
  a3[6] = v9;
  v11 = a1[9];
  a3[8] = v6;
  a3[9] = v11;
  a3[7] = v8;
  *a3 = *a1;
  sub_24A67E964(a1 + *(v7 + 48), a3 + *(v7 + 48), &unk_27EF5E100, &unk_24A839DB0);

  return sub_24A69F204(a1, type metadata accessor for FMIPItemGroup);
}

uint64_t FMIPItemGroup.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_24A6BBA94(&qword_27EF5DC50, &qword_24A835F00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A68C708();
  sub_24A82DD84();
  v20 = *v3;
  HIBYTE(v19) = 0;
  sub_24A714ADC();
  sub_24A82DB44();
  if (!v2)
  {
    v11 = v3[1];
    v12 = v3[2];
    LOBYTE(v20) = 1;
    sub_24A82DB04();
    v13 = v3[3];
    v14 = v3[4];
    LOBYTE(v20) = 7;
    sub_24A82DB04();
    v20 = v3[5];
    HIBYTE(v19) = 5;
    sub_24A6BBA94(&qword_27EF5DC18, &qword_24A836D50);
    sub_24A714B30();
    sub_24A82DB44();
    v20 = v3[6];
    HIBYTE(v19) = 6;
    sub_24A6BBA94(&qword_27EF5DC28, &qword_24A835EF8);
    sub_24A70B6D0(&qword_27EF5DC68, sub_24A714BE4);
    sub_24A82DB44();
    v15 = type metadata accessor for FMIPItemGroup();
    v20 = *(v3 + *(v15 + 52));
    HIBYTE(v19) = 2;
    sub_24A6BBA94(&qword_27EF5DA38, &qword_24A8352C8);
    sub_24A714C98();
    sub_24A82DB44();
    v20 = v3[7];
    HIBYTE(v19) = 3;
    sub_24A6BBA94(&qword_27EF5DBE8, &qword_24A835EE8);
    sub_24A714D4C(&qword_27EF5DC78, sub_24A714DC4);
    sub_24A82DB44();
    v20 = v3[9];
    HIBYTE(v19) = 4;
    sub_24A6BBA94(&qword_27EF5DC00, &qword_24A835EF0);
    sub_24A714E78();
    sub_24A82DB44();
    v16 = v3[8];
    LOBYTE(v20) = 8;
    sub_24A82DB34();
    v17 = *(v15 + 48);
    LOBYTE(v20) = 9;
    sub_24A6BBA94(&unk_27EF5E100, &unk_24A839DB0);
    sub_24A714F34();
    sub_24A82DB44();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t FMIPItemGroup.debugDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPItem();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[5];
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v28[0] = v0;
    v29 = MEMORY[0x277D84F90];
    sub_24A6FC900(0, v8, 0);
    v9 = v29;
    v10 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    do
    {
      sub_24A69F064(v10, v6, type metadata accessor for FMIPItem);
      v13 = *(v6 + 44);
      v12 = *(v6 + 45);

      sub_24A69F204(v6, type metadata accessor for FMIPItem);
      v29 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_24A6FC900((v14 > 1), v15 + 1, 1);
        v9 = v29;
      }

      *(v9 + 16) = v15 + 1;
      v16 = v9 + 16 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v12;
      v10 += v11;
      --v8;
    }

    while (v8);
    v1 = v28[0];
  }

  v29 = 0;
  v30 = 0xE000000000000000;
  sub_24A82D854();
  MEMORY[0x24C21C9E0](60, 0xE100000000000000);
  MEMORY[0x24C21C9E0](0x6D65744950494D46, 0xED000070756F7247);
  MEMORY[0x24C21C9E0](0xD000000000000012, 0x800000024A8463D0);
  v17 = v1[1];
  v18 = v1[2];
  MEMORY[0x24C21C9E0](v17, v18);
  MEMORY[0x24C21C9E0](0xD000000000000012, 0x800000024A8463F0);
  MEMORY[0x24C21C9E0](v17, v18);
  MEMORY[0x24C21C9E0](0x6D616E202020200ALL, 0xEB00000000203A65);
  MEMORY[0x24C21C9E0](v1[3], v1[4]);
  MEMORY[0x24C21C9E0](0x657469202020200ALL, 0xEC000000203A736DLL);
  v19 = MEMORY[0x24C21CB60](v9, MEMORY[0x277D837D0]);
  v21 = v20;

  MEMORY[0x24C21C9E0](v19, v21);

  MEMORY[0x24C21C9E0](0xD000000000000013, 0x800000024A846410);
  v22 = v1[7];
  sub_24A6BBA94(&qword_27EF5DA28, &qword_24A8415A0);
  sub_24A678A64(&qword_27EF5DCA8, &qword_27EF5DA28, &qword_24A8415A0);
  v23 = sub_24A82D3B4();
  MEMORY[0x24C21C9E0](v23);

  MEMORY[0x24C21C9E0](0xD00000000000001ALL, 0x800000024A846430);
  v24 = v1[9];
  type metadata accessor for FMIPItemPairingState();
  v25 = sub_24A82CF04();
  MEMORY[0x24C21C9E0](v25);

  MEMORY[0x24C21C9E0](0x617473202020200ALL, 0xEC000000203A6574);
  v28[1] = v1[8];
  sub_24A82D914();
  MEMORY[0x24C21C9E0](0xD00000000000001DLL, 0x800000024A846450);
  v26 = sub_24A82D3B4();
  MEMORY[0x24C21C9E0](v26);

  MEMORY[0x24C21C9E0](15882, 0xE200000000000000);
  return v29;
}

void *sub_24A70B2D8(void **a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr))
{
  result = a4(&v7);
  v6 = *a1;
  *v6 = v7;
  *a1 = v6 + 1;
  return result;
}

uint64_t sub_24A70B374@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_24A70B3A4()
{
  result = qword_27EF5DBE0;
  if (!qword_27EF5DBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DBE0);
  }

  return result;
}

unint64_t sub_24A70B3F8()
{
  result = qword_27EF5E020;
  if (!qword_27EF5E020)
  {
    sub_24A6CCDC0(&qword_27EF5DA38, &qword_24A8352C8);
    sub_24A67EFC0(&qword_27EF5DBA0, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E020);
  }

  return result;
}

unint64_t sub_24A70B4AC()
{
  result = qword_27EF5DBF8;
  if (!qword_27EF5DBF8)
  {
    sub_24A6CCDC0(&qword_27EF5DA28, &qword_24A8415A0);
    sub_24A67EFC0(&qword_27EF5DBA0, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DBF8);
  }

  return result;
}

unint64_t sub_24A70B560()
{
  result = qword_27EF5DC08;
  if (!qword_27EF5DC08)
  {
    sub_24A6CCDC0(&qword_27EF5DC00, &qword_24A835EF0);
    sub_24A67EFC0(&qword_27EF5DC10, type metadata accessor for FMIPItemPairingState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DC08);
  }

  return result;
}

unint64_t sub_24A70B61C()
{
  result = qword_27EF5DC20;
  if (!qword_27EF5DC20)
  {
    sub_24A6CCDC0(&qword_27EF5DC18, &qword_24A836D50);
    sub_24A67EFC0(&qword_27EF5E290, type metadata accessor for FMIPItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DC20);
  }

  return result;
}

uint64_t sub_24A70B6D0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_24A6CCDC0(&qword_27EF5DC28, &qword_24A835EF8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A70B748()
{
  result = qword_27EF5DC38;
  if (!qword_27EF5DC38)
  {
    sub_24A6CCDC0(&qword_27EF5DAA8, &qword_24A835338);
    sub_24A67EFC0(&qword_27EF5E290, type metadata accessor for FMIPItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DC38);
  }

  return result;
}

uint64_t sub_24A70B7FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&unk_27EF5E100, &unk_24A839DB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A70B86C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v5 = type metadata accessor for FMIPBeaconShare(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v23[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_24A82DCC4();
  FMIPBeaconShare.hash(into:)(v23);
  v12 = sub_24A82DD24();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v6 + 72);
    while (1)
    {
      sub_24A69F064(*(v10 + 48) + v16 * v14, v9, type metadata accessor for FMIPBeaconShare);
      v17 = _s8FMIPCore15FMIPBeaconShareV2eeoiySbAC_ACtFZ_0(v9, a2);
      sub_24A69F204(v9, type metadata accessor for FMIPBeaconShare);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_24A69F204(a2, type metadata accessor for FMIPBeaconShare);
    sub_24A69F064(*(v10 + 48) + v16 * v14, v22, type metadata accessor for FMIPBeaconShare);
    return 0;
  }

  else
  {
LABEL_5:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24A69F064(a2, v9, type metadata accessor for FMIPBeaconShare);
    v23[0] = *v3;
    sub_24A70EE40(v9, v14, isUniquelyReferenced_nonNull_native);
    v20 = v22;
    *v3 = v23[0];
    sub_24A6A2328(a2, v20, type metadata accessor for FMIPBeaconShare);
    return 1;
  }
}

uint64_t sub_24A70BAAC(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_24A82D754();

    if (v9)
    {

      sub_24A679170(0, &qword_27EF5D028, 0x277D49670);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_24A82D744();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_24A70CED4(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_24A70E8B8(v22 + 1, &qword_27EF5DD98, &qword_24A836150);
    }

    v20 = v8;
    sub_24A70EDBC(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_24A679170(0, &qword_27EF5D028, 0x277D49670);
  v11 = *(v6 + 40);
  v12 = sub_24A82D5D4();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_24A70F084(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_24A82D5E4();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_24A70BCF4(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_24A82DCC4();
  sub_24A82D094();

  v6 = sub_24A82DD24();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v26 = ~v7;
    v9 = 0xEA0000000000656ELL;
    v10 = 0x7468676972;
    v11 = 1702131053;
    v12 = 0xE500000000000000;
    while (1)
    {
      v13 = *(*(v4 + 48) + v8);
      if (v13 <= 1)
      {
        if (*(*(v4 + 48) + v8))
        {
          v14 = v10;
        }

        else
        {
          v14 = 1952867692;
        }

        if (*(*(v4 + 48) + v8))
        {
          v15 = 0xE500000000000000;
        }

        else
        {
          v15 = 0xE400000000000000;
        }
      }

      else if (v13 == 2)
      {
        v15 = 0xE400000000000000;
        v14 = 1702060387;
      }

      else
      {
        if (v13 == 3)
        {
          v14 = 0x6F6C61646E617473;
        }

        else
        {
          v14 = 1702131053;
        }

        if (v13 == 3)
        {
          v15 = 0xEA0000000000656ELL;
        }

        else
        {
          v15 = 0xE400000000000000;
        }
      }

      if (a2 == 3)
      {
        v11 = 0x6F6C61646E617473;
      }

      else
      {
        v9 = 0xE400000000000000;
      }

      if (a2 == 2)
      {
        v11 = 1702060387;
        v9 = 0xE400000000000000;
      }

      if (a2)
      {
        v16 = v10;
      }

      else
      {
        v16 = 1952867692;
      }

      if (!a2)
      {
        v12 = 0xE400000000000000;
      }

      v17 = a2 <= 1u ? v16 : v11;
      v18 = a2 <= 1u ? v12 : v9;
      if (v14 == v17 && v15 == v18)
      {
        break;
      }

      v19 = v10;
      v20 = sub_24A82DC04();

      if (v20)
      {
        goto LABEL_40;
      }

      v8 = (v8 + 1) & v26;
      v9 = 0xEA0000000000656ELL;
      v10 = v19;
      v11 = 1702131053;
      v12 = 0xE500000000000000;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

LABEL_40:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v8);
  }

  else
  {
LABEL_38:
    v21 = *v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    sub_24A70F204(a2, v8, isUniquelyReferenced_nonNull_native);
    *v24 = v27;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_24A70BFA8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24A82CAA4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_24A67EFC0(&qword_281514670, MEMORY[0x277CC95F0]);
  v36 = a2;
  v13 = sub_24A82CF54();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_24A67EFC0(&qword_27EF5DC48, MEMORY[0x277CC95F0]);
      v23 = sub_24A82CF84();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_24A70F704(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_24A70C288(void *a1, uint64_t a2, void (*a3)(void *, uint64_t), void (*a4)(uint64_t, unint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  v8 = v5;
  v11 = *v5;
  v12 = *(*v5 + 40);
  sub_24A82DCC4();
  a3(v25, a2);
  v13 = sub_24A82DD24();
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    while (1)
    {
      v17 = *(*(v11 + 48) + 8 * v15);

      v19 = a5(v18, a2);

      if (v19)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v11 + 48) + 8 * v15);

    return 0;
  }

  else
  {
LABEL_5:
    v20 = *v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25[0] = *v8;

    a4(v22, v15, isUniquelyReferenced_nonNull_native);
    *v8 = v25[0];
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_24A70C3E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v24 = a1;
  v5 = type metadata accessor for FMIPItem();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_24A82DCC4();
  v12 = *(a2 + 352);
  v13 = *(a2 + 360);
  sub_24A82D094();
  v14 = sub_24A82DD24();
  v15 = -1 << *(v10 + 32);
  v16 = v14 & ~v15;
  if ((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = *(v6 + 72);
    while (1)
    {
      sub_24A69F064(*(v10 + 48) + v18 * v16, v9, type metadata accessor for FMIPItem);
      v19 = _s8FMIPCore8FMIPItemV2eeoiySbAC_ACtFZ_0(v9, a2);
      sub_24A69F204(v9, type metadata accessor for FMIPItem);
      if (v19)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_24A69F204(a2, type metadata accessor for FMIPItem);
    sub_24A69F064(*(v10 + 48) + v18 * v16, v24, type metadata accessor for FMIPItem);
    return 0;
  }

  else
  {
LABEL_5:
    v20 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24A69F064(a2, v9, type metadata accessor for FMIPItem);
    v25 = *v3;
    sub_24A70FB8C(v9, v16, isUniquelyReferenced_nonNull_native);
    v22 = v24;
    *v3 = v25;
    sub_24A6A2328(a2, v22, type metadata accessor for FMIPItem);
    return 1;
  }
}

uint64_t sub_24A70C624(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_24A82DCC4();
  sub_24A82D094();
  v9 = sub_24A82DD24();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_24A82DC04() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_24A70FDD0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24A70C774(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v22 = a1;
  v5 = type metadata accessor for FMIPDiscoveredAccessory();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_24A82DCC4();
  FMIPDiscoveredAccessory.hash(into:)();
  v12 = sub_24A82DD24();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v6 + 72);
    while (1)
    {
      sub_24A69F064(*(v10 + 48) + v16 * v14, v9, type metadata accessor for FMIPDiscoveredAccessory);
      v17 = _s8FMIPCore23FMIPDiscoveredAccessoryV2eeoiySbAC_ACtFZ_0(v9, a2);
      sub_24A69F204(v9, type metadata accessor for FMIPDiscoveredAccessory);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_24A69F204(a2, type metadata accessor for FMIPDiscoveredAccessory);
    sub_24A69F064(*(v10 + 48) + v16 * v14, v22, type metadata accessor for FMIPDiscoveredAccessory);
    return 0;
  }

  else
  {
LABEL_5:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24A69F064(a2, v9, type metadata accessor for FMIPDiscoveredAccessory);
    v23 = *v3;
    sub_24A70FF50(v9, v14, isUniquelyReferenced_nonNull_native);
    v20 = v22;
    *v3 = v23;
    sub_24A6A2328(a2, v20, type metadata accessor for FMIPDiscoveredAccessory);
    return 1;
  }
}

uint64_t sub_24A70C9B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v5 = type metadata accessor for FMIPUnknownItem();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v23[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_24A82DCC4();
  FMIPUnknownItem.hash(into:)(v23);
  v12 = sub_24A82DD24();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v6 + 72);
    while (1)
    {
      sub_24A69F064(*(v10 + 48) + v16 * v14, v9, type metadata accessor for FMIPUnknownItem);
      v17 = _s8FMIPCore15FMIPUnknownItemV2eeoiySbAC_ACtFZ_0(v9, a2);
      sub_24A69F204(v9, type metadata accessor for FMIPUnknownItem);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_24A69F204(a2, type metadata accessor for FMIPUnknownItem);
    sub_24A69F064(*(v10 + 48) + v16 * v14, v22, type metadata accessor for FMIPUnknownItem);
    return 0;
  }

  else
  {
LABEL_5:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24A69F064(a2, v9, type metadata accessor for FMIPUnknownItem);
    v23[0] = *v3;
    sub_24A710194(v9, v14, isUniquelyReferenced_nonNull_native);
    v20 = v22;
    *v3 = v23[0];
    sub_24A6A2328(a2, v20, type metadata accessor for FMIPUnknownItem);
    return 1;
  }
}

uint64_t sub_24A70CBF4(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_24A82DCC4();
  sub_24A82D094();

  v6 = sub_24A82DD24();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v27 = ~v7;
    v9 = 0x6475427468676972;
    v10 = 0xE800000000000000;
    while (1)
    {
      v11 = *(*(v4 + 48) + v8);
      if (v11 <= 1)
      {
        if (*(*(v4 + 48) + v8))
        {
          v12 = 1702060387;
        }

        else
        {
          v12 = 0x6F6C61646E617473;
        }

        if (*(*(v4 + 48) + v8))
        {
          v13 = 0xE400000000000000;
        }

        else
        {
          v13 = 0xEA0000000000656ELL;
        }
      }

      else if (v11 == 2)
      {
        v13 = 0xE700000000000000;
        v12 = 0x6475427466656CLL;
      }

      else
      {
        if (v11 == 3)
        {
          v12 = v9;
        }

        else
        {
          v12 = 0x636972656E6567;
        }

        if (v11 == 3)
        {
          v13 = 0xE800000000000000;
        }

        else
        {
          v13 = 0xE700000000000000;
        }
      }

      if (a2 == 3)
      {
        v14 = v9;
      }

      else
      {
        v14 = 0x636972656E6567;
      }

      if (a2 != 3)
      {
        v10 = 0xE700000000000000;
      }

      if (a2 == 2)
      {
        v14 = 0x6475427466656CLL;
        v10 = 0xE700000000000000;
      }

      v15 = a2 ? 1702060387 : 0x6F6C61646E617473;
      v16 = a2 ? 0xE400000000000000 : 0xEA0000000000656ELL;
      v17 = a2 <= 1u ? v15 : v14;
      v18 = a2 <= 1u ? v16 : v10;
      if (v12 == v17 && v13 == v18)
      {
        break;
      }

      v19 = a2;
      v20 = v9;
      v21 = sub_24A82DC04();

      if (v21)
      {
        goto LABEL_43;
      }

      v8 = (v8 + 1) & v27;
      v9 = v20;
      a2 = v19;
      v10 = 0xE800000000000000;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_41;
      }
    }

LABEL_43:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v8);
  }

  else
  {
LABEL_41:
    v22 = *v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v25;
    sub_24A7103D8(a2, v8, isUniquelyReferenced_nonNull_native);
    *v25 = v28;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_24A70CED4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_24A6BBA94(&qword_27EF5DD98, &qword_24A836150);
    v2 = sub_24A82D804();
    v16 = v2;
    sub_24A82D704();
    if (sub_24A82D784())
    {
      sub_24A679170(0, &qword_27EF5D028, 0x277D49670);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_24A70E8B8(v10 + 1, &qword_27EF5DD98, &qword_24A836150);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_24A82D5D4();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_24A82D784());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_24A70D0E4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMIPBeaconShare(0);
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v30 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_24A6BBA94(&qword_27EF5DD60, &qword_24A836138);
  result = sub_24A82D7F4();
  v10 = result;
  if (*(v7 + 16))
  {
    v28 = v2;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v29 = result + 56;
    for (i = v30; v15; ++*(v10 + 16))
    {
      v18 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v21 = *(v31 + 72);
      sub_24A6A2328(*(v7 + 48) + v21 * (v18 | (v11 << 6)), i, type metadata accessor for FMIPBeaconShare);
      v22 = *(v10 + 40);
      sub_24A82DCC4();
      FMIPBeaconShare.hash(into:)(v32);
      sub_24A82DD24();
      v23 = -1 << *(v10 + 32);
      v24 = v29;
      v25 = sub_24A82D6E4();
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      result = sub_24A6A2328(i, *(v10 + 48) + v25 * v21, type metadata accessor for FMIPBeaconShare);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        return result;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v26 = 1 << *(v7 + 32);
    if (v26 >= 64)
    {
      bzero((v7 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v26;
    }

    v2 = v28;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_24A70D380(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_24A6BBA94(&qword_27EF5DD58, &qword_24A836130);
  result = sub_24A82D7F4();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v21 = *(*(v3 + 48) + (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      sub_24A82DCC4();
      sub_24A82D094();

      result = sub_24A82DD24();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + v17) = v21;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_18;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_24A70D650(uint64_t a1)
{
  v2 = v1;
  v41 = sub_24A82CAA4();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_24A6BBA94(&qword_27EF5DCF8, &qword_24A836110);
  result = sub_24A82D7F4();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_24A67EFC0(&qword_281514670, MEMORY[0x277CC95F0]);
      result = sub_24A82CF54();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

unint64_t sub_24A70D9AC(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(char *, uint64_t))
{
  v6 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_24A6BBA94(a2, a3);
  result = sub_24A82D7F4();
  v10 = result;
  if (*(v7 + 16))
  {
    v25 = v6;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    for (i = result + 56; v15; ++*(v10 + 16))
    {
      v18 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v21 = *(*(v7 + 48) + 8 * (v18 | (v11 << 6)));
      v22 = *(v10 + 40);
      sub_24A82DCC4();
      a4(v26, v21);
      sub_24A82DD24();
      v23 = -1 << *(v10 + 32);
      result = sub_24A82D6E4();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v10 + 48) + 8 * result) = v21;
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        return result;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v24 = 1 << *(v7 + 32);
    if (v24 >= 64)
    {
      bzero((v7 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v24;
    }

    v6 = v25;
    *(v7 + 16) = 0;
  }

  *v6 = v10;
  return result;
}

uint64_t sub_24A70DB90(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMIPItem();
  v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_24A6BBA94(&qword_27EF5DDB8, &qword_24A836160);
  result = sub_24A82D7F4();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v37 + 72);
      sub_24A6A2328(*(v8 + 48) + v23 * (v20 | (v12 << 6)), v7, type metadata accessor for FMIPItem);
      v24 = *(v11 + 40);
      sub_24A82DCC4();
      v25 = *(v7 + 44);
      v26 = *(v7 + 45);
      sub_24A82D094();
      result = sub_24A82DD24();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_24A6A2328(v7, *(v11 + 48) + v19 * v23, type metadata accessor for FMIPItem);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
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
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero((v8 + 56), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_24A70DE98(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_24A6BBA94(&qword_27EF5DD48, &qword_24A836128);
  result = sub_24A82D7F4();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_24A82DCC4();
      sub_24A82D094();
      result = sub_24A82DD24();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_24A70E0F8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMIPHawkeyeProductInformation();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v52 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v48 - v10;
  v12 = type metadata accessor for FMIPDiscoveredAccessory();
  v57 = *(v12 - 8);
  v13 = *(v57 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v17 = *(*v2 + 24);
  }

  sub_24A6BBA94(&qword_27EF5DD88, &qword_24A836148);
  v18 = sub_24A82D7F4();
  v19 = v18;
  if (*(v16 + 16))
  {
    v48 = v2;
    v20 = 0;
    v21 = *(v16 + 56);
    v50 = (v16 + 56);
    v51 = v12;
    v22 = 1 << *(v16 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & v21;
    v49 = (v22 + 63) >> 6;
    v53 = (v5 + 48);
    v54 = v18;
    v25 = v18 + 56;
    v55 = v16;
    while (v24)
    {
      v27 = __clz(__rbit64(v24));
      v59 = (v24 - 1) & v24;
LABEL_17:
      v31 = *(v16 + 48);
      v58 = *(v57 + 72);
      sub_24A6A2328(v31 + v58 * (v27 | (v20 << 6)), v15, type metadata accessor for FMIPDiscoveredAccessory);
      v32 = *(v19 + 40);
      sub_24A82DCC4();
      v33 = *v15;
      sub_24A82D5F4();
      if (v15[3])
      {
        v56 = v15[5];
        v34 = v11;
        v35 = v15[4];
        v36 = v4;
        v38 = v15[1];
        v37 = v15[2];
        sub_24A82DCE4();
        MEMORY[0x24C21D5E0](v38);
        v4 = v36;
        sub_24A82D094();
        v11 = v34;
        v12 = v51;
        sub_24A82D094();
      }

      else
      {
        sub_24A82DCE4();
      }

      sub_24A67E964(v15 + *(v12 + 24), v11, &qword_27EF5D360, &unk_24A836200);
      if ((*v53)(v11, 1, v4) == 1)
      {
        sub_24A82DCE4();
      }

      else
      {
        v39 = v52;
        sub_24A6A2328(v11, v52, type metadata accessor for FMIPHawkeyeProductInformation);
        sub_24A82DCE4();
        FMIPHawkeyeProductInformation.hash(into:)();
        sub_24A69F204(v39, type metadata accessor for FMIPHawkeyeProductInformation);
      }

      v19 = v54;
      v16 = v55;
      result = sub_24A82DD24();
      v40 = -1 << *(v19 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v25 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v25 + 8 * v42);
          if (v46 != -1)
          {
            v26 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v41) & ~*(v25 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      sub_24A6A2328(v15, *(v19 + 48) + v26 * v58, type metadata accessor for FMIPDiscoveredAccessory);
      ++*(v19 + 16);
      v24 = v59;
    }

    v28 = v20;
    result = v50;
    while (1)
    {
      v20 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v20 >= v49)
      {
        break;
      }

      v30 = v50[v20];
      ++v28;
      if (v30)
      {
        v27 = __clz(__rbit64(v30));
        v59 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    v47 = 1 << *(v16 + 32);
    if (v47 >= 64)
    {
      bzero(v50, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v50 = -1 << v47;
    }

    v2 = v48;
    *(v16 + 16) = 0;
  }

  *v2 = v19;
  return result;
}

uint64_t sub_24A70E608(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMIPUnknownItem();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v30 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_24A6BBA94(&qword_27EF5DD78, &unk_24A83F530);
  result = sub_24A82D7F4();
  v10 = result;
  if (*(v7 + 16))
  {
    v28 = v2;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v29 = result + 56;
    for (i = v30; v15; ++*(v10 + 16))
    {
      v18 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v21 = *(v31 + 72);
      sub_24A6A2328(*(v7 + 48) + v21 * (v18 | (v11 << 6)), i, type metadata accessor for FMIPUnknownItem);
      v22 = *(v10 + 40);
      sub_24A82DCC4();
      FMIPUnknownItem.hash(into:)(v32);
      sub_24A82DD24();
      v23 = -1 << *(v10 + 32);
      v24 = v29;
      v25 = sub_24A82D6E4();
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      result = sub_24A6A2328(i, *(v10 + 48) + v25 * v21, type metadata accessor for FMIPUnknownItem);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        return result;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v26 = 1 << *(v7 + 32);
    if (v26 >= 64)
    {
      bzero((v7 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v26;
    }

    v2 = v28;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_24A70E8B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_24A6BBA94(a2, a3);
  result = sub_24A82D7F4();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_24A82D5D4();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_24A70EAD8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_24A6BBA94(&qword_27EF5DD70, &qword_24A836140);
  result = sub_24A82D7F4();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v21 = *(*(v3 + 48) + (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      sub_24A82DCC4();
      sub_24A82D094();

      result = sub_24A82DD24();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + v17) = v21;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_18;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_24A70EDBC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_24A82D5D4();
  v5 = -1 << *(a2 + 32);
  result = sub_24A82D6E4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_24A70EE40(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for FMIPBeaconShare(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v29[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v14 = *(*v4 + 16);
  v15 = *(*v4 + 24);
  if (v15 > v14 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v28 = v11;
    sub_24A70D0E4(v14 + 1);
  }

  else
  {
    if (v15 > v14)
    {
      sub_24A710724();
      goto LABEL_12;
    }

    v28 = v11;
    sub_24A7116A8(v14 + 1);
  }

  v16 = *v4;
  v17 = *(*v4 + 40);
  sub_24A82DCC4();
  FMIPBeaconShare.hash(into:)(v29);
  v18 = sub_24A82DD24();
  v19 = -1 << *(v16 + 32);
  a2 = v18 & ~v19;
  if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v9 + 72);
    do
    {
      sub_24A69F064(*(v16 + 48) + v21 * a2, v13, type metadata accessor for FMIPBeaconShare);
      v22 = _s8FMIPCore15FMIPBeaconShareV2eeoiySbAC_ACtFZ_0(v13, a1);
      sub_24A69F204(v13, type metadata accessor for FMIPBeaconShare);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_24A6A2328(a1, *(v23 + 48) + *(v9 + 72) * a2, type metadata accessor for FMIPBeaconShare);
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
  result = sub_24A82DC34();
  __break(1u);
  return result;
}

void sub_24A70F084(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24A70E8B8(v6 + 1, &qword_27EF5DD98, &qword_24A836150);
  }

  else
  {
    if (v7 > v6)
    {
      sub_24A710930();
      goto LABEL_12;
    }

    sub_24A711910(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_24A82D5D4();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_24A679170(0, &qword_27EF5D028, 0x277D49670);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_24A82D5E4();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_24A82DC34();
  __break(1u);
}

uint64_t sub_24A70F204(uint64_t result, unint64_t a2, char a3)
{
  v29 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_45;
  }

  if (a3)
  {
    sub_24A70D380(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_24A711578(&qword_27EF5DD58, &qword_24A836130);
      goto LABEL_45;
    }

    sub_24A711B24(v5 + 1);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_24A82DCC4();
  sub_24A82D094();

  result = sub_24A82DD24();
  v9 = -1 << *(v7 + 32);
  a2 = result & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    v11 = 0x6F6C61646E617473;
    v12 = 0x7468676972;
    do
    {
      v13 = *(*(v7 + 48) + a2);
      if (v13 <= 1)
      {
        if (*(*(v7 + 48) + a2))
        {
          v14 = v12;
        }

        else
        {
          v14 = 1952867692;
        }

        if (*(*(v7 + 48) + a2))
        {
          v15 = 0xE500000000000000;
        }

        else
        {
          v15 = 0xE400000000000000;
        }
      }

      else if (v13 == 2)
      {
        v15 = 0xE400000000000000;
        v14 = 1702060387;
      }

      else
      {
        if (v13 == 3)
        {
          v14 = v11;
        }

        else
        {
          v14 = 1702131053;
        }

        if (v13 == 3)
        {
          v15 = 0xEA0000000000656ELL;
        }

        else
        {
          v15 = 0xE400000000000000;
        }
      }

      v16 = v11;
      if (v29 == 3)
      {
        v17 = v11;
      }

      else
      {
        v17 = 1702131053;
      }

      v18 = 0xEA0000000000656ELL;
      if (v29 != 3)
      {
        v18 = 0xE400000000000000;
      }

      if (v29 == 2)
      {
        v17 = 1702060387;
        v18 = 0xE400000000000000;
      }

      v19 = v12;
      if (v29)
      {
        v20 = 0xE500000000000000;
      }

      else
      {
        v12 = 1952867692;
        v20 = 0xE400000000000000;
      }

      v21 = v29 <= 1u ? v12 : v17;
      v22 = v29 <= 1u ? v20 : v18;
      if (v14 == v21 && v15 == v22)
      {
        goto LABEL_48;
      }

      v23 = sub_24A82DC04();

      if (v23)
      {
        goto LABEL_49;
      }

      a2 = (a2 + 1) & v10;
      v11 = v16;
      v12 = v19;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_45:
  v24 = *v28;
  *(*v28 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v24 + 48) + a2) = v29;
  v25 = *(v24 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v24 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_48:

LABEL_49:
  result = sub_24A82DC34();
  __break(1u);
  return result;
}

uint64_t sub_24A70F520(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24A70D9AC(v6 + 1, &qword_27EF5DD40, &qword_24A836120, sub_24A713504);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_24A710CB8(&qword_27EF5DD40, &qword_24A836120);
      goto LABEL_12;
    }

    sub_24A7120E0(v6 + 1, &qword_27EF5DD40, &qword_24A836120, sub_24A713504);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_24A82DCC4();
  sub_24A713504(v20, v5);
  result = sub_24A82DD24();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_24A6BBA94(&qword_27EF5DA28, &qword_24A8415A0);
      v12 = *(*(v8 + 48) + 8 * a2);

      v14 = sub_24A69F944(v13, v5);

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v19;
  *(*v19 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = v5;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24A82DC34();
  __break(1u);
  return result;
}

uint64_t sub_24A70F704(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_24A82CAA4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24A70D650(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_24A710A80();
      goto LABEL_12;
    }

    sub_24A711DC4(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_24A67EFC0(&qword_281514670, MEMORY[0x277CC95F0]);
  v15 = sub_24A82CF54();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_24A67EFC0(&qword_27EF5DC48, MEMORY[0x277CC95F0]);
      v23 = sub_24A82CF84();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24A82DC34();
  __break(1u);
  return result;
}

uint64_t sub_24A70F9A8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24A70D9AC(v6 + 1, &qword_27EF5DDA8, &qword_24A836158, sub_24A713730);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_24A710CB8(&qword_27EF5DDA8, &qword_24A836158);
      goto LABEL_12;
    }

    sub_24A7120E0(v6 + 1, &qword_27EF5DDA8, &qword_24A836158, sub_24A713730);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_24A82DCC4();
  sub_24A713730(v20, v5);
  result = sub_24A82DD24();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_24A6BBA94(&qword_27EF5DAA8, &qword_24A835338);
      v12 = *(*(v8 + 48) + 8 * a2);

      v14 = sub_24A7B4E78(v13, v5);

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v19;
  *(*v19 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = v5;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24A82DC34();
  __break(1u);
  return result;
}

uint64_t sub_24A70FB8C(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for FMIPItem();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*v4 + 16);
  v15 = *(*v4 + 24);
  if (v15 > v14 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v30 = v11;
    sub_24A70DB90(v14 + 1);
  }

  else
  {
    if (v15 > v14)
    {
      sub_24A710DF8();
      goto LABEL_12;
    }

    v30 = v11;
    sub_24A71228C(v14 + 1);
  }

  v16 = *v4;
  v17 = *(*v4 + 40);
  sub_24A82DCC4();
  v18 = *(a1 + 352);
  v19 = *(a1 + 360);
  sub_24A82D094();
  v20 = sub_24A82DD24();
  v21 = -1 << *(v16 + 32);
  a2 = v20 & ~v21;
  if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v22 = ~v21;
    v23 = *(v9 + 72);
    do
    {
      sub_24A69F064(*(v16 + 48) + v23 * a2, v13, type metadata accessor for FMIPItem);
      v24 = _s8FMIPCore8FMIPItemV2eeoiySbAC_ACtFZ_0(v13, a1);
      sub_24A69F204(v13, type metadata accessor for FMIPItem);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v22;
    }

    while (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_24A6A2328(a1, *(v25 + 48) + *(v9 + 72) * a2, type metadata accessor for FMIPItem);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24A82DC34();
  __break(1u);
  return result;
}

uint64_t sub_24A70FDD0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_24A70DE98(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_24A711004();
      goto LABEL_16;
    }

    sub_24A712564(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_24A82DCC4();
  sub_24A82D094();
  result = sub_24A82DD24();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_24A82DC04();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_24A82DC34();
  __break(1u);
  return result;
}

uint64_t sub_24A70FF50(uint64_t *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for FMIPDiscoveredAccessory();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(*v4 + 16);
  v15 = *(*v4 + 24);
  if (v15 > v14 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v28 = v11;
    sub_24A70E0F8(v14 + 1);
  }

  else
  {
    if (v15 > v14)
    {
      sub_24A711160();
      goto LABEL_12;
    }

    v28 = v11;
    sub_24A71279C(v14 + 1);
  }

  v16 = *v4;
  v17 = *(*v4 + 40);
  sub_24A82DCC4();
  FMIPDiscoveredAccessory.hash(into:)();
  v18 = sub_24A82DD24();
  v19 = -1 << *(v16 + 32);
  a2 = v18 & ~v19;
  if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v9 + 72);
    do
    {
      sub_24A69F064(*(v16 + 48) + v21 * a2, v13, type metadata accessor for FMIPDiscoveredAccessory);
      v22 = _s8FMIPCore23FMIPDiscoveredAccessoryV2eeoiySbAC_ACtFZ_0(v13, a1);
      sub_24A69F204(v13, type metadata accessor for FMIPDiscoveredAccessory);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_24A6A2328(a1, *(v23 + 48) + *(v9 + 72) * a2, type metadata accessor for FMIPDiscoveredAccessory);
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
  result = sub_24A82DC34();
  __break(1u);
  return result;
}

uint64_t sub_24A710194(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for FMIPUnknownItem();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v29[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v14 = *(*v4 + 16);
  v15 = *(*v4 + 24);
  if (v15 > v14 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v28 = v11;
    sub_24A70E608(v14 + 1);
  }

  else
  {
    if (v15 > v14)
    {
      sub_24A71136C();
      goto LABEL_12;
    }

    v28 = v11;
    sub_24A712C7C(v14 + 1);
  }

  v16 = *v4;
  v17 = *(*v4 + 40);
  sub_24A82DCC4();
  FMIPUnknownItem.hash(into:)(v29);
  v18 = sub_24A82DD24();
  v19 = -1 << *(v16 + 32);
  a2 = v18 & ~v19;
  if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v9 + 72);
    do
    {
      sub_24A69F064(*(v16 + 48) + v21 * a2, v13, type metadata accessor for FMIPUnknownItem);
      v22 = _s8FMIPCore15FMIPUnknownItemV2eeoiySbAC_ACtFZ_0(v13, a1);
      sub_24A69F204(v13, type metadata accessor for FMIPUnknownItem);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_24A6A2328(a1, *(v23 + 48) + *(v9 + 72) * a2, type metadata accessor for FMIPUnknownItem);
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
  result = sub_24A82DC34();
  __break(1u);
  return result;
}

uint64_t sub_24A7103D8(uint64_t result, unint64_t a2, char a3)
{
  v33 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_46;
  }

  if (a3)
  {
    sub_24A70EAD8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_24A711578(&qword_27EF5DD70, &qword_24A836140);
      goto LABEL_46;
    }

    sub_24A712EE4(v5 + 1);
  }

  v7 = 0x6F6C61646E617473;
  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_24A82DCC4();
  sub_24A82D094();

  result = sub_24A82DD24();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  v32 = v8 + 56;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = 0x6475427468676972;
    v13 = 0x636972656E6567;
    v14 = v8;
    do
    {
      v15 = *(*(v8 + 48) + a2);
      if (v15 <= 1)
      {
        v16 = *(*(v8 + 48) + a2) ? 1702060387 : v7;
        v17 = *(*(v8 + 48) + a2) ? 0xE400000000000000 : 0xEA0000000000656ELL;
      }

      else if (v15 == 2)
      {
        v17 = 0xE700000000000000;
        v16 = 0x6475427466656CLL;
      }

      else
      {
        v16 = v15 == 3 ? v12 : v13;
        v17 = v15 == 3 ? 0xE800000000000000 : 0xE700000000000000;
      }

      v18 = v12;
      v19 = v13;
      if (v33 == 3)
      {
        v20 = 0xE800000000000000;
      }

      else
      {
        v12 = v13;
        v20 = 0xE700000000000000;
      }

      if (v33 == 2)
      {
        v12 = 0x6475427466656CLL;
        v20 = 0xE700000000000000;
      }

      v21 = v33 ? 1702060387 : v7;
      v22 = v33 ? 0xE400000000000000 : 0xEA0000000000656ELL;
      v23 = v33 <= 1u ? v21 : v12;
      v24 = v33 <= 1u ? v22 : v20;
      v25 = v7;
      if (v16 == v23 && v17 == v24)
      {
        goto LABEL_49;
      }

      v26 = sub_24A82DC04();

      if (v26)
      {
        goto LABEL_50;
      }

      a2 = (a2 + 1) & v11;
      v7 = v25;
      v12 = v18;
      v13 = v19;
      v8 = v14;
    }

    while (((*(v32 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_46:
  v27 = *v31;
  *(*v31 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v27 + 48) + a2) = v33;
  v28 = *(v27 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v27 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_49:

LABEL_50:
  result = sub_24A82DC34();
  __break(1u);
  return result;
}

void *sub_24A710724()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPBeaconShare(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6BBA94(&qword_27EF5DD60, &qword_24A836138);
  v7 = *v0;
  v8 = sub_24A82D7E4();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_24A69F064(*(v7 + 48) + v22, v6, type metadata accessor for FMIPBeaconShare);
        result = sub_24A6A2328(v6, *(v9 + 48) + v22, type metadata accessor for FMIPBeaconShare);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

id sub_24A710930()
{
  v1 = v0;
  sub_24A6BBA94(&qword_27EF5DD98, &qword_24A836150);
  v2 = *v0;
  v3 = sub_24A82D7E4();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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