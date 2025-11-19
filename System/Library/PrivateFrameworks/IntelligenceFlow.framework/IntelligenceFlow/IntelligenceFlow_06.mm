uint64_t ResponseManifest.visual.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 200);
  v3 = *(v1 + 208);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v1 + 216);
  return sub_1DD76DFA0(v2);
}

uint64_t ResponseManifest.visual.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(v1 + 208);
  v6 = *(v1 + 216);
  result = sub_1DD76DEF0(*(v1 + 200));
  *(v1 + 200) = v2;
  *(v1 + 208) = v3;
  *(v1 + 216) = v4;
  return result;
}

uint64_t ResponseManifest.attribution.getter()
{
  v2 = sub_1DD6E0A5C();
  v3 = type metadata accessor for ResponseManifest(v2);
  return sub_1DD76DFE0(v1 + *(v3 + 32), v0, &qword_1ECD0F758, &qword_1DD87F2F0);
}

uint64_t ResponseManifest.attribution.setter()
{
  v2 = sub_1DD6DE290();
  v3 = v1 + *(type metadata accessor for ResponseManifest(v2) + 32);

  return sub_1DD76DF30(v0, v3);
}

uint64_t ResponseManifest.attribution.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseManifest(v0) + 32);
  return sub_1DD6DDF9C();
}

uint64_t ResponseManifest.templateId.getter()
{
  v1 = (v0 + *(type metadata accessor for ResponseManifest(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return sub_1DD6DDEFC();
}

uint64_t ResponseManifest.templateId.setter()
{
  sub_1DD6DE304();
  v3 = (v1 + *(type metadata accessor for ResponseManifest(0) + 36));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t ResponseManifest.templateId.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseManifest(v0) + 36);
  return sub_1DD6DDF9C();
}

uint64_t ResponseManifest.templateLocation.getter()
{
  v1 = (v0 + *(type metadata accessor for ResponseManifest(0) + 40));
  v2 = *v1;
  v3 = v1[1];

  return sub_1DD6DDEFC();
}

uint64_t ResponseManifest.templateLocation.setter()
{
  sub_1DD6DE304();
  v3 = (v1 + *(type metadata accessor for ResponseManifest(0) + 40));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t ResponseManifest.templateLocation.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseManifest(v0) + 40);
  return sub_1DD6DDF9C();
}

uint64_t ResponseManifest.useTemplateAsFallback.setter(char a1)
{
  result = type metadata accessor for ResponseManifest(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t ResponseManifest.useTemplateAsFallback.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseManifest(v0) + 44);
  return sub_1DD6DDF9C();
}

uint64_t ResponseManifest.dialogPresentationHint.getter()
{
  v2 = sub_1DD6E0A5C();
  result = type metadata accessor for ResponseManifest(v2);
  *v0 = *(v1 + *(result + 48));
  return result;
}

uint64_t ResponseManifest.dialogPresentationHint.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ResponseManifest(0);
  *(v1 + *(result + 48)) = v2;
  return result;
}

uint64_t ResponseManifest.dialogPresentationHint.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseManifest(v0) + 48);
  return sub_1DD6DDF9C();
}

void ResponseManifest.init()()
{
  v1 = sub_1DD6E0A5C();
  v2 = type metadata accessor for ResponseManifest(v1);
  bzero(v0, 0xD9uLL);
  v3 = v2[8];
  sub_1DD6ED7CC();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v4, v5, v6, v7);
  sub_1DD770D40(v2[9]);
  sub_1DD770D40(v2[10]);
  *(v0 + v2[11]) = 2;
  *(v0 + v2[12]) = 2;
}

void ResponseManifest.encode(to:configuration:)()
{
  sub_1DD6DED2C();
  v3 = v1;
  v4 = v0;
  v6 = v5;
  v8 = v7;
  v62 = sub_1DD710A9C(&qword_1ECD0F760, &qword_1DD87F2F8);
  sub_1DD6DDEAC(v62);
  v60 = v9;
  v11 = *(v10 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6DE340();
  v13 = *v6;
  v14 = v8[3];
  v15 = v8[4];
  sub_1DD6E6C94(v8);
  sub_1DD76E03C();
  v61 = v2;
  sub_1DD6DFF18();
  sub_1DD875BB0();
  if (!*(v13 + 16))
  {
    goto LABEL_98;
  }

  v59 = v4;
  sub_1DD6F4404();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  v16 = sub_1DD875B60();
  v17 = -1 << *(v13 + 32);
  v67 = v13 + 56;
  if ((*(v13 + 56 + (((v16 & ~v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & ~v17)))
  {
    v18 = ~v17;
    while (2)
    {
      sub_1DD6E5CAC();
      switch(v19)
      {
        case 1:
        case 2:
        case 4:
          goto LABEL_8;
        case 3:
          sub_1DD6E5FB4();
          goto LABEL_8;
        case 5:
          sub_1DD6E88B8();
          goto LABEL_8;
        case 6:
          sub_1DD770C18();
LABEL_8:
          sub_1DD875A30();
          sub_1DD770CCC();
          if (v15)
          {
            goto LABEL_12;
          }

          sub_1DD6E0584();
          if ((v20 & 1) == 0)
          {
            goto LABEL_15;
          }

          continue;
        default:

LABEL_12:
          if (*v4)
          {
            v65[0] = *v4;
            v64[0] = 0;
            sub_1DD710A9C(&qword_1ECD0F7D0, &qword_1DD87F310);
            sub_1DD76E380();
            sub_1DD6E21A4();
            sub_1DD8759D0();
            v3 = v1;
            if (v1)
            {
              goto LABEL_86;
            }
          }

          else
          {
LABEL_15:
            v3 = v1;
          }

          break;
      }

      break;
    }
  }

  if (!*(v13 + 16))
  {
    goto LABEL_98;
  }

  sub_1DD6F4404();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  v21 = sub_1DD875B60();
  sub_1DD6ED614(v21);
  if ((v22 & 1) == 0)
  {
    goto LABEL_31;
  }

  while (2)
  {
    sub_1DD6E5CAC();
    switch(v23)
    {
      case 1:

        goto LABEL_28;
      case 2:
        sub_1DD6E4954();
        goto LABEL_24;
      case 3:
        sub_1DD6E5FB4();
        goto LABEL_24;
      case 4:
        sub_1DD70326C();
        goto LABEL_24;
      case 5:
        sub_1DD6E88B8();
        goto LABEL_24;
      case 6:
        sub_1DD770C18();
        goto LABEL_24;
      default:
LABEL_24:
        sub_1DD875A30();
        sub_1DD770CCC();
        if ((v15 & 1) == 0)
        {
          sub_1DD6E0584();
          if ((v24 & 1) == 0)
          {
            goto LABEL_31;
          }

          continue;
        }

LABEL_28:
        sub_1DD6E72B4();
        memcpy(v25, v26, v27);
        sub_1DD6E72B4();
        memcpy(v28, v29, v30);
        v63[103] = 1;
        v15 = &qword_1DD87F2E8;
        sub_1DD76DFE0(v65, v63, &qword_1ECD0F750, &qword_1DD87F2E8);
        sub_1DD710A9C(&qword_1ECD0F750, &qword_1DD87F2E8);
        sub_1DD76E2A8();
        v18 = v62;
        sub_1DD8759D0();
        if (v3)
        {
          memcpy(v63, v64, 0x60uLL);
          sub_1DD6FC560(v63, &qword_1ECD0F750, &qword_1DD87F2E8);
          goto LABEL_86;
        }

        memcpy(v63, v64, 0x60uLL);
        sub_1DD6FC560(v63, &qword_1ECD0F750, &qword_1DD87F2E8);
LABEL_31:
        if (!*(v13 + 16))
        {
LABEL_98:
          v52 = v61;
          v53 = *(v60 + 8);
          v54 = v62;
          goto LABEL_99;
        }

        sub_1DD6F4404();
        _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
        v31 = sub_1DD875B60();
        sub_1DD6ED614(v31);
        if ((v33 & 1) == 0)
        {
          goto LABEL_46;
        }

        v18 = ~v32;
        sub_1DD770CA0("dialogPresentationHint");
        while (2)
        {
          sub_1DD6E5CAC();
          switch(v34)
          {
            case 2:

              goto LABEL_43;
            case 3:
              sub_1DD6E5FB4();
              goto LABEL_39;
            case 4:
              sub_1DD70326C();
              goto LABEL_39;
            case 5:
              sub_1DD6E88B8();
              goto LABEL_39;
            case 6:
              sub_1DD770C18();
              goto LABEL_39;
            default:
LABEL_39:
              sub_1DD875A30();
              sub_1DD770CCC();
              if ((v15 & 1) == 0)
              {
                sub_1DD6E0584();
                if ((v35 & 1) == 0)
                {
                  goto LABEL_46;
                }

                continue;
              }

LABEL_43:
              v36 = *(v4 + 208);
              v37 = *(v4 + 216);
              v65[0] = *(v4 + 200);
              v65[1] = v36;
              v66 = v37;
              v64[0] = 2;
              sub_1DD76DFA0(v65[0]);
              sub_1DD710A9C(&qword_1ECD0F7A8, &qword_1DD87F308);
              sub_1DD76E1D0();
              sub_1DD6E21A4();
              sub_1DD8759D0();
              if (v3)
              {
                sub_1DD76DEF0(v65[0]);
                goto LABEL_86;
              }

              sub_1DD76DEF0(v65[0]);
LABEL_46:
              if (!*(v13 + 16))
              {
                goto LABEL_98;
              }

              sub_1DD6F4404();
              sub_1DD705570();
              _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
              v38 = sub_1DD875B60();
              sub_1DD6ED614(v38);
              if ((v39 & 1) == 0)
              {
                goto LABEL_59;
              }

              sub_1DD770CA0("dialogPresentationHint");
              while (2)
              {
                sub_1DD6E5CAC();
                switch(v40)
                {
                  case 1:
                    sub_1DD6E9AC8();
                    goto LABEL_54;
                  case 2:
                    sub_1DD6E4954();
                    goto LABEL_54;
                  case 3:

                    goto LABEL_58;
                  case 5:
                    sub_1DD6E88B8();
                    goto LABEL_54;
                  case 6:
                    sub_1DD770C18();
                    goto LABEL_54;
                  default:
LABEL_54:
                    sub_1DD875A30();
                    sub_1DD770CCC();
                    if ((v15 & 1) == 0)
                    {
                      sub_1DD6E0584();
                      if ((v41 & 1) == 0)
                      {
                        goto LABEL_59;
                      }

                      continue;
                    }

LABEL_58:
                    v42 = type metadata accessor for ResponseManifest(0);
                    sub_1DD770D84(*(v42 + 36));
                    v64[0] = 3;
                    v18 = &qword_1ECD0E848;
                    v15 = &qword_1DD87A870;
                    sub_1DD710A9C(&qword_1ECD0E848, &qword_1DD87A870);
                    sub_1DD76E168(&qword_1ECD0F7A0, &qword_1ECD0E848, &qword_1DD87A870);
                    sub_1DD6E21A4();
                    sub_1DD8759D0();
                    if (v3)
                    {
                      goto LABEL_86;
                    }

LABEL_59:
                    if (!*(v13 + 16))
                    {
                      goto LABEL_98;
                    }

                    sub_1DD6F4404();
                    _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
                    v43 = sub_1DD875B60();
                    sub_1DD6ED614(v43);
                    if ((v44 & 1) == 0)
                    {
                      goto LABEL_73;
                    }

                    sub_1DD770CA0("dialogPresentationHint");
                    while (2)
                    {
                      sub_1DD6E5CAC();
                      switch(v45)
                      {
                        case 1:
                          sub_1DD6E9AC8();
                          goto LABEL_68;
                        case 2:
                          sub_1DD6E4954();
                          goto LABEL_68;
                        case 3:
                          sub_1DD6E5FB4();
                          goto LABEL_68;
                        case 4:

                          goto LABEL_72;
                        case 5:
                          sub_1DD6E88B8();
                          goto LABEL_68;
                        case 6:
                          sub_1DD770C18();
                          goto LABEL_68;
                        default:
LABEL_68:
                          sub_1DD875A30();
                          sub_1DD770CCC();
                          if ((v15 & 1) == 0)
                          {
                            sub_1DD6E0584();
                            if ((v46 & 1) == 0)
                            {
                              goto LABEL_73;
                            }

                            continue;
                          }

LABEL_72:
                          v47 = type metadata accessor for ResponseManifest(0);
                          sub_1DD770D84(*(v47 + 40));
                          v64[0] = 4;
                          v18 = &qword_1ECD0E848;
                          v15 = &qword_1DD87A870;
                          sub_1DD710A9C(&qword_1ECD0E848, &qword_1DD87A870);
                          sub_1DD76E168(&qword_1ECD0F7A0, &qword_1ECD0E848, &qword_1DD87A870);
                          sub_1DD6E21A4();
                          sub_1DD8759D0();
                          if (v3)
                          {
                            goto LABEL_86;
                          }

LABEL_73:
                          if (!*(v13 + 16))
                          {
                            goto LABEL_98;
                          }

                          sub_1DD6F4404();
                          sub_1DD6E58F8();
                          _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
                          v48 = sub_1DD875B60();
                          sub_1DD6ED614(v48);
                          if ((v49 & 1) == 0)
                          {
                            goto LABEL_87;
                          }

                          break;
                      }

                      break;
                    }

                    break;
                }

                break;
              }

              break;
          }

          break;
        }

        while (2)
        {
          sub_1DD6E5CAC();
          switch(v50)
          {
            case 1:
              sub_1DD6E9AC8();
              goto LABEL_81;
            case 2:
              sub_1DD6E4954();
              goto LABEL_81;
            case 3:
              sub_1DD6E5FB4();
              goto LABEL_81;
            case 4:
              sub_1DD70326C();
              goto LABEL_81;
            case 5:

              goto LABEL_85;
            case 6:
              sub_1DD770C18();
              goto LABEL_81;
            default:
LABEL_81:
              sub_1DD6E58F8();
              sub_1DD875A30();
              sub_1DD770CCC();
              if ((v15 & 1) == 0)
              {
                sub_1DD6E0584();
                if ((v51 & 1) == 0)
                {
                  goto LABEL_87;
                }

                continue;
              }

LABEL_85:
              LOBYTE(v65[0]) = *(v4 + *(type metadata accessor for ResponseManifest(0) + 44));
              v64[0] = 5;
              v18 = qword_1ECD0E860;
              v15 = &unk_1DD87A860;
              sub_1DD710A9C(qword_1ECD0E860, &unk_1DD87A860);
              sub_1DD76E168(&unk_1ECD0F790, qword_1ECD0E860, &unk_1DD87A860);
              sub_1DD6E21A4();
              sub_1DD8759D0();
              if (!v3)
              {
LABEL_87:
                if (*(v13 + 16))
                {
                  sub_1DD6F4404();
                  sub_1DD6E58F8();
                  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
                  v55 = sub_1DD875B60();
                  v56 = -1 << *(v13 + 32);
                  v57 = v55 & ~v56;
                  if ((*(v67 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
                  {
                    v58 = ~v56;
                    while (1)
                    {
                      switch(*(*(v13 + 48) + v57))
                      {
                        case 1:
                          sub_1DD6E9AC8();
                          goto LABEL_96;
                        case 2:
                          sub_1DD6E4954();
                          goto LABEL_96;
                        case 3:
                          sub_1DD6E5FB4();
                          goto LABEL_96;
                        case 4:
                          sub_1DD70326C();
                          goto LABEL_96;
                        case 5:
                          sub_1DD6E88B8();
                          goto LABEL_96;
                        case 6:

                          goto LABEL_101;
                        default:
LABEL_96:
                          sub_1DD6E58F8();
                          sub_1DD875A30();
                          sub_1DD770CCC();
                          if (v15)
                          {
LABEL_101:
                            LOBYTE(v65[0]) = *(v59 + *(type metadata accessor for ResponseManifest(0) + 48));
                            v64[0] = 6;
                            sub_1DD710A9C(&qword_1ECD0F770, &qword_1DD87F300);
                            sub_1DD76E090();
                            sub_1DD770CC0();
                            sub_1DD8759D0();
                            v52 = sub_1DD6DEBBC();
                            v54 = v62;
                            goto LABEL_99;
                          }

                          v57 = (v57 + 1) & v58;
                          if (((*(v67 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
                          {
                            goto LABEL_98;
                          }

                          break;
                      }
                    }
                  }
                }

                goto LABEL_98;
              }

LABEL_86:
              v52 = sub_1DD6DEBBC();
              v54 = v18;
LABEL_99:
              v53(v52, v54);
              sub_1DD6E0C78();
              return;
          }
        }
    }
  }
}

void static ResponseManifest.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for ResponseVisual.UIType(0);
  v7 = sub_1DD6DE1C4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DE4A8();
  v12 = v11 - v10;
  v13 = sub_1DD710A9C(&qword_1ECD0F758, &qword_1DD87F2F0);
  sub_1DD6DEA10(v13);
  v15 = *(v14 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6DEBA0();
  v17 = sub_1DD710A9C(&qword_1ECD0F7F8, &qword_1DD87F320);
  sub_1DD6DE1C4(v17);
  v19 = *(v18 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD6DE340();
  v21 = *v3;
  if (*v5)
  {
    if (!v21)
    {
      goto LABEL_25;
    }

    v22 = *v3;

    v23 = sub_1DD6E6378();
    v25 = sub_1DD7161EC(v23, v24);

    if ((v25 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v21)
  {
    goto LABEL_25;
  }

  v92 = v12;
  v93 = v1;
  memcpy(v108, (v5 + 8), sizeof(v108));
  sub_1DD6E72B4();
  memcpy(v26, v27, v28);
  v29 = v108[0];
  v30 = v108[1];
  memcpy(v95, (v5 + 24), 0x50uLL);
  v32 = v109;
  v31 = v110;
  memcpy(v94, v3 + 3, 0x50uLL);
  if (!v108[1])
  {
    if (!v110)
    {
      v102 = v108[0];
      v103 = 0;
      v35 = sub_1DD770D58();
      memcpy(v35, (v5 + 24), 0x50uLL);
      sub_1DD6EDF90(v108, v101);
      sub_1DD6EDF90(&v109, v101);
      sub_1DD6FC560(&v102, &qword_1ECD0F750, &qword_1DD87F2E8);
      goto LABEL_15;
    }

    sub_1DD770C5C(v108);
    sub_1DD770C5C(&v109);
LABEL_13:
    sub_1DD770D64();
    memcpy(v104, v95, sizeof(v104));
    v105 = v32;
    v106 = v31;
    v34 = v94;
LABEL_23:
    memcpy(v107, v34, sizeof(v107));
    v41 = &unk_1ECD0F800;
    v42 = &unk_1DD87F328;
    v43 = &v102;
LABEL_24:
    sub_1DD6FC560(v43, v41, v42);
    goto LABEL_25;
  }

  sub_1DD770D64();
  v33 = sub_1DD770D58();
  memcpy(v33, (v5 + 24), 0x50uLL);
  sub_1DD770DDC(v101);
  if (!v31)
  {
    sub_1DD770DDC(v100);
    sub_1DD770C78(v108, v97);
    sub_1DD770C78(&v109, v97);
    sub_1DD770C78(&v102, v97);
    sub_1DD76D1B0(v100);
    goto LABEL_13;
  }

  memcpy(&v100[2], v3 + 3, 0x50uLL);
  v100[0] = v32;
  v100[1] = v31;
  v88 = static ResponseDialog.== infix(_:_:)(v101, v100);
  memcpy(v96, v100, sizeof(v96));
  sub_1DD770D00(v108);
  sub_1DD770D00(&v109);
  sub_1DD770D00(&v102);
  sub_1DD76D1B0(v96);
  memcpy(v97, v101, sizeof(v97));
  sub_1DD76D1B0(v97);
  v100[0] = v29;
  v100[1] = v30;
  memcpy(&v100[2], v95, 0x50uLL);
  sub_1DD6FC560(v100, &qword_1ECD0F750, &qword_1DD87F2E8);
  if ((v88 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_15:
  memcpy(v100, (v5 + 104), sizeof(v100));
  memcpy(v101, v3 + 13, sizeof(v101));
  v36 = v100[0];
  v37 = v100[1];
  memcpy(v99, (v5 + 120), sizeof(v99));
  v38 = v101[0];
  v39 = v101[1];
  memcpy(v98, v3 + 15, sizeof(v98));
  if (!v100[1])
  {
    if (!v101[1])
    {
      v102 = v100[0];
      v103 = 0;
      v44 = sub_1DD770D58();
      memcpy(v44, (v5 + 120), 0x50uLL);
      sub_1DD6EDF90(v100, v97);
      sub_1DD6EDF90(v101, v97);
      sub_1DD6FC560(&v102, &qword_1ECD0F750, &qword_1DD87F2E8);
      goto LABEL_27;
    }

    sub_1DD770C5C(v100);
    sub_1DD770C5C(v101);
    goto LABEL_22;
  }

  sub_1DD770D64();
  v40 = sub_1DD770D58();
  memcpy(v40, (v5 + 120), 0x50uLL);
  sub_1DD770DDC(v97);
  if (!v39)
  {
    sub_1DD770DDC(v96);
    sub_1DD770C78(v100, v95);
    sub_1DD770C78(v101, v95);
    sub_1DD770C78(&v102, v95);
    sub_1DD76D1B0(v96);
LABEL_22:
    sub_1DD770D64();
    memcpy(v104, v99, sizeof(v104));
    v105 = v38;
    v106 = v39;
    v34 = v98;
    goto LABEL_23;
  }

  memcpy(&v96[2], v3 + 15, 0x50uLL);
  v96[0] = v38;
  v96[1] = v39;
  v89 = static ResponseDialog.== infix(_:_:)(v97, v96);
  memcpy(v94, v96, sizeof(v94));
  sub_1DD770CE4(v100);
  sub_1DD770CE4(v101);
  sub_1DD770CE4(&v102);
  sub_1DD76D1B0(v94);
  memcpy(v95, v97, sizeof(v95));
  sub_1DD76D1B0(v95);
  v96[0] = v36;
  v96[1] = v37;
  memcpy(&v96[2], v99, 0x50uLL);
  sub_1DD6FC560(v96, &qword_1ECD0F750, &qword_1DD87F2E8);
  if ((v89 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_27:
  v45 = *(v5 + 200);
  v90 = *(v5 + 208);
  v46 = *(v5 + 216);
  v48 = v3[25];
  v47 = v3[26];
  HIDWORD(v86) = *(v3 + 216);
  if (!v45)
  {
    sub_1DD76DFA0(0);
    if (!v48)
    {
      sub_1DD76DFA0(0);
      sub_1DD76DEF0(0);
      goto LABEL_41;
    }

    sub_1DD770DA4(v48);
    goto LABEL_36;
  }

  if (!v48)
  {
    sub_1DD76DFA0(v45);
    sub_1DD770DA4(0);
    sub_1DD76DFA0(v45);

LABEL_36:
    sub_1DD76DEF0(v45);
    v59 = v48;
LABEL_39:
    sub_1DD76DEF0(v59);
    goto LABEL_25;
  }

  sub_1DD76DFA0(v45);
  sub_1DD76DFA0(v48);
  v49 = sub_1DD6F9BF8();
  HIDWORD(v84) = v46;
  sub_1DD76DFA0(v49);
  sub_1DD7160D8(v45, v48, v50, v51, v52, v53, v54, v55, v47, v84, v48, v86, v90, v92, v93, v94[0], v94[1], v94[2], v94[3], v94[4]);
  if ((v56 & 1) == 0)
  {
    sub_1DD76DEF0(v48);
    goto LABEL_38;
  }

  v57 = sub_1DD71612C(v91, v83);
  v58 = sub_1DD6E60FC();
  sub_1DD76DEF0(v58);
  if ((v57 & 1) == 0)
  {
LABEL_38:

    v59 = v45;
    goto LABEL_39;
  }

  sub_1DD76DEF0(v45);
  if ((v85 ^ v87))
  {
    goto LABEL_25;
  }

LABEL_41:
  v60 = type metadata accessor for ResponseManifest(0);
  v61 = v60[8];
  v62 = *(v17 + 48);
  sub_1DD76DFE0(v5 + v61, v0, &qword_1ECD0F758, &qword_1DD87F2F0);
  sub_1DD76DFE0(v3 + v61, v0 + v62, &qword_1ECD0F758, &qword_1DD87F2F0);
  sub_1DD6E656C(v0);
  if (v63)
  {
    sub_1DD6E656C(v0 + v62);
    if (v63)
    {
      sub_1DD6FC560(v0, &qword_1ECD0F758, &qword_1DD87F2F0);
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  sub_1DD76DFE0(v0, v93, &qword_1ECD0F758, &qword_1DD87F2F0);
  sub_1DD6E656C(v0 + v62);
  if (v63)
  {
    sub_1DD6E0AA4();
    sub_1DD76D3F0();
LABEL_49:
    v41 = &qword_1ECD0F7F8;
    v42 = &qword_1DD87F320;
    v43 = v0;
    goto LABEL_24;
  }

  sub_1DD6E52D4();
  sub_1DD76D794(v0 + v62, v92);
  sub_1DD6E60FC();
  static ResponseVisual.UIType.== infix(_:_:)();
  v65 = v64;
  sub_1DD76D3F0();
  sub_1DD76D3F0();
  sub_1DD6FC560(v0, &qword_1ECD0F758, &qword_1DD87F2F0);
  if ((v65 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_51:
  v66 = v60[9];
  sub_1DD6FA3EC();
  if (v67)
  {
    if (!v68)
    {
      goto LABEL_25;
    }

    v71 = *v69 == *v70 && v67 == v68;
    if (!v71 && (sub_1DD875A30() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v68)
  {
    goto LABEL_25;
  }

  v72 = v60[10];
  sub_1DD6FA3EC();
  if (!v73)
  {
    if (v74)
    {
      goto LABEL_25;
    }

LABEL_69:
    v78 = v60[11];
    v79 = *(v5 + v78);
    v80 = *(v3 + v78);
    if (v79 == 2)
    {
      if (v80 != 2)
      {
        goto LABEL_25;
      }
    }

    else if (v80 == 2 || ((v80 ^ v79) & 1) != 0)
    {
      goto LABEL_25;
    }

    v81 = v60[12];
    v82 = *(v5 + v81);
    LODWORD(v81) = *(v3 + v81);
    goto LABEL_25;
  }

  if (v74)
  {
    v77 = *v75 == *v76 && v73 == v74;
    if (v77 || (sub_1DD875A30() & 1) != 0)
    {
      goto LABEL_69;
    }
  }

LABEL_25:
  sub_1DD6DFED0();
}

void ResponseManifest.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v0;
  v5 = v4;
  v6 = sub_1DD710A9C(&qword_1ECD0F760, &qword_1DD87F2F8);
  sub_1DD6DDEAC(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DE340();
  v12 = v5[3];
  v13 = v5[4];
  sub_1DD6E6C94(v5);
  sub_1DD76E03C();
  sub_1DD6DFF18();
  sub_1DD875BB0();
  v34 = *v3;
  v33[103] = 0;
  sub_1DD710A9C(&qword_1ECD0F7E8, &qword_1DD87F318);
  sub_1DD76E404();
  sub_1DD770CC0();
  sub_1DD875960();
  if (!v1)
  {
    sub_1DD6E9678();
    memcpy(v14, v15, v16);
    sub_1DD6E9678();
    memcpy(v17, v18, v19);
    v31[103] = 1;
    sub_1DD76DFE0(v33, v31, &qword_1ECD0F750, &qword_1DD87F2E8);
    sub_1DD76E32C();
    sub_1DD6E1C14();
    sub_1DD875960();
    memcpy(v31, v32, 0x60uLL);
    sub_1DD6FC560(v31, &qword_1ECD0F750, &qword_1DD87F2E8);
    v28 = v3[25];
    v29 = v3[26];
    v30 = *(v3 + 216);
    sub_1DD76DFA0(v28);
    sub_1DD76E254();
    sub_1DD6E1C14();
    sub_1DD875960();
    sub_1DD76DEF0(v28);
    v20 = type metadata accessor for ResponseManifest(0);
    v21 = (v3 + v20[9]);
    v22 = *v21;
    v23 = v21[1];
    sub_1DD770D1C(3);
    v24 = (v3 + v20[10]);
    v25 = *v24;
    v26 = v24[1];
    sub_1DD770D1C(4);
    v27 = *(v3 + v20[11]);
    sub_1DD6E1C14();
    sub_1DD875930();
    LOBYTE(v28) = *(v3 + v20[12]);
    sub_1DD76E114();
    sub_1DD6E1C14();
    sub_1DD875960();
  }

  (*(v8 + 8))(v2, v6);
  sub_1DD6E0C78();
}

void ResponseManifest.init(from:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v30 = v3;
  v4 = sub_1DD710A9C(&qword_1ECD0F808, &qword_1DD87F330);
  v5 = sub_1DD6DDEAC(v4);
  v31 = v6;
  v32 = v5;
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6E0C6C();
  v10 = type metadata accessor for ResponseManifest(0);
  v11 = (v10 - 8);
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DE4A8();
  v15 = v14 - v13;
  bzero((v14 - v13), 0xD9uLL);
  v16 = v11[10];
  type metadata accessor for ResponseVisual.UIType(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v17, v18, v19, v20);
  v21 = (v15 + v11[11]);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v15 + v11[12]);
  *v22 = 0;
  v22[1] = 0;
  v23 = v11[13];
  *(v15 + v23) = 2;
  v24 = v11[14];
  v33 = v15;
  *(v15 + v24) = 2;
  v25 = v2[4];
  sub_1DD6DEA7C(v2, v2[3]);
  sub_1DD76E03C();
  sub_1DD875B90();
  if (!v0)
  {
    sub_1DD710A9C(&qword_1ECD0F7E8, &qword_1DD87F318);
    v38[0] = 0;
    sub_1DD76E4DC();
    sub_1DD770CC0();
    sub_1DD770C50();
    sub_1DD875860();
    *v33 = v39[0];
    sub_1DD6FF8F4();
    sub_1DD76E5B4();
    sub_1DD770C50();
    sub_1DD875860();
    memcpy(v37, v39, sizeof(v37));
    memcpy(v38, (v33 + 8), sizeof(v38));
    sub_1DD6FC560(v38, &qword_1ECD0F750, &qword_1DD87F2E8);
    memcpy((v33 + 8), v37, 0x60uLL);
    sub_1DD76E608();
    sub_1DD770C50();
    sub_1DD875860();
    v26 = *(v33 + 208);
    v27 = *(v33 + 216);
    sub_1DD76DEF0(*(v33 + 200));
    *(v33 + 200) = v34;
    *(v33 + 208) = v35;
    *(v33 + 216) = v36;
    sub_1DD6FBDF8(3);
    *v21 = sub_1DD875820();
    v21[1] = v28;
    sub_1DD6FBDF8(4);
    *v22 = sub_1DD875820();
    v22[1] = v29;
    sub_1DD6FBDF8(5);
    *(v33 + v23) = sub_1DD875830();
    sub_1DD76E65C();
    sub_1DD770C50();
    sub_1DD875860();
    (*(v31 + 8))(v34, v32);
    *(v33 + v24) = v34;
    sub_1DD76E6B0(v33, v30);
  }

  sub_1DD6E1EC8(v2);
  sub_1DD6E3868();
  sub_1DD76D3F0();
  sub_1DD6E0C78();
}

{
  sub_1DD6DEB38();
  v1 = v0;
  v3 = v2;
  v4 = sub_1DD875170();
  v5 = sub_1DD6DDEAC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DE4A8();
  v12 = v11 - v10;
  v13 = type metadata accessor for ResponseManifest(0);
  bzero(v3, 0xD9uLL);
  v14 = v13[8];
  sub_1DD6ED7CC();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v15, v16, v17, v18);
  v19 = (v3 + v13[9]);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v3 + v13[10]);
  *v20 = 0;
  v20[1] = 0;
  *(v3 + v13[11]) = 2;
  *(v3 + v13[12]) = 2;
  if (!v1)
  {
    goto LABEL_34;
  }

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (!v21)
  {
    objc_opt_self();
    v30 = swift_dynamicCastObjCClass();
    if (!v30)
    {
      sub_1DD76AA54(v1, v61);
      v52 = v61[1];
      if (!v61[1])
      {
        goto LABEL_34;
      }

      v53 = v61[0];
      sub_1DD6E9678();
      memcpy(v54, v55, v56);
      sub_1DD6FC560(v60, &qword_1ECD0F750, &qword_1DD87F2E8);
      v3[1] = v53;
      v3[2] = v52;
      v34 = v3 + 3;
      v50 = &v61[2];
      v51 = 80;
      goto LABEL_32;
    }

    sub_1DD76AC38(v30, v60);
    sub_1DD6E9678();
    memcpy(v31, v32, v33);
    sub_1DD6FC560(v61, &qword_1ECD0F750, &qword_1DD87F2E8);
    v34 = v3 + 1;
LABEL_31:
    v50 = v60;
    v51 = 96;
LABEL_32:
    memcpy(v34, v50, v51);
LABEL_34:
    sub_1DD6DFED0();
    return;
  }

  v22 = v21;
  v58 = v3;
  v23 = v1;
  sub_1DD76D6E4(v22, &selRef_options);
  v24 = 0xF000000000000000;
  if (v25)
  {
    sub_1DD875160();
    sub_1DD7051CC();
    v26 = sub_1DD875150();
    v28 = v27;

    (*(v7 + 8))(v12, v4);
    if (v28 >> 60 == 15)
    {
      v29 = 0;
    }

    else
    {
      v29 = v26;
    }

    if (v28 >> 60 != 15)
    {
      v24 = v28;
    }
  }

  else
  {
    v29 = 0;
  }

  v35 = [v22 nlgParams];
  sub_1DD6E0D28();
  sub_1DD76E708();
  v36 = sub_1DD8752D0();

  v37 = sub_1DD76C440(v36);
  v59 = v24;
  if (!v37)
  {

    v40 = MEMORY[0x1E69E7CC0];
LABEL_29:
    *v58 = v40;
    v49 = [v22 fallbackDialog];
    if (!v49)
    {
      sub_1DD70104C(v29, v59);

      goto LABEL_34;
    }

    sub_1DD76AA54(v49, v60);
    sub_1DD70104C(v29, v59);

    memcpy(v61, v58 + 13, 0x60uLL);
    sub_1DD6FC560(v61, &qword_1ECD0F750, &qword_1DD87F2E8);
    v34 = v58 + 13;
    goto LABEL_31;
  }

  v38 = v37;
  v57 = v29;
  v60[0] = MEMORY[0x1E69E7CC0];
  sub_1DD76C484(0, v37 & ~(v37 >> 63), 0);
  if ((v38 & 0x8000000000000000) == 0)
  {
    v39 = 0;
    v40 = v60[0];
    v41 = v38 - 1;
    if ((v36 & 0xC000000000000001) == 0)
    {
      goto LABEL_17;
    }

LABEL_16:
    v42 = sub_1DD6E6384();
    for (i = MEMORY[0x1E12B5160](v42); ; i = *(v36 + 8 * v39 + 32))
    {
      v44 = [i title];
      if (v44)
      {
        v45 = [v22 localeIdentifier];
        if (!v45)
        {
          sub_1DD875140();
          v45 = sub_1DD875110();
        }

        v46 = [v44 localizedStringForLocaleIdentifier_];

        sub_1DD875140();
      }

      sub_1DD6F9BF8();
      ResponseParameter.init(title:nlgParam:)();
      v60[0] = v40;
      v48 = *(v40 + 16);
      v47 = *(v40 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_1DD76C484(v47 > 1, v48 + 1, 1);
        v40 = v60[0];
      }

      *(v40 + 16) = v48 + 1;
      memcpy((v40 + 80 * v48 + 32), v61, 0x49uLL);
      if (v41 == v39)
      {
        break;
      }

      ++v39;
      if ((v36 & 0xC000000000000001) != 0)
      {
        goto LABEL_16;
      }

LABEL_17:
      ;
    }

    v29 = v57;
    goto LABEL_29;
  }

  __break(1u);
}

{
  sub_1DD6DEB38();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1DD874ED0();
  v46 = sub_1DD6DDEAC(v6);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v46);
  sub_1DD6DE21C();
  MEMORY[0x1EEE9AC00](v9);
  v10 = type metadata accessor for ResponseManifest(0);
  v11 = sub_1DD6DE1C4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DE4A8();
  sub_1DD700B88();
  v14 = sub_1DD875170();
  v15 = sub_1DD6DDEAC(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DE4A8();
  v22 = v21 - v20;
  bzero(v5, 0xD9uLL);
  v23 = v10[8];
  sub_1DD6ED7CC();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v24, v25, v26, v27);
  v28 = &v5[v10[9]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v5[v10[10]];
  *v29 = 0;
  *(v29 + 1) = 0;
  v5[v10[11]] = 2;
  v5[v10[12]] = 2;
  sub_1DD875160();
  v45 = v3;
  v30 = sub_1DD875150();
  v32 = v31;
  (*(v17 + 8))(v22, v14);
  if (v32 >> 60 == 15)
  {
    sub_1DD874C00();

    v33 = sub_1DD874EC0();
    v34 = sub_1DD8754E0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v47 = v36;
      *v35 = 136315138;
      v37 = sub_1DD6FD650(v45, v1, &v47);

      *(v35 + 4) = v37;
      _os_log_impl(&dword_1DD6DC000, v33, v34, "Unable to create response generation manifest from JSON: %s", v35, 0xCu);
      sub_1DD6E1EC8(v36);
      sub_1DD6DE474();
      sub_1DD6DE474();
    }

    else
    {
    }

    v41 = sub_1DD6DEBBC();
    v44(v41, v46);
  }

  else
  {
    v38 = sub_1DD8745E0();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    sub_1DD8745D0();
    sub_1DD76D388(&qword_1ECD0F840, type metadata accessor for ResponseManifest);
    sub_1DD6FF97C();
    sub_1DD8745C0();
    sub_1DD6E3868();
    sub_1DD76D3F0();

    sub_1DD70104C(v30, v32);

    v42 = sub_1DD6E6378();
    sub_1DD76D794(v42, v43);
  }

  sub_1DD6DFED0();
}

void sub_1DD76AA54(void *a1@<X0>, uint64_t a2@<X8>)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    v7 = [v5 localeIdentifier];
    v8 = v7;
    v9 = v7;
    if (!v7)
    {
      sub_1DD875140();
      v9 = sub_1DD875110();

      sub_1DD875140();
      v8 = sub_1DD875110();
    }

    v10 = v7;
    v11 = [v5 fullString];
    v12 = [v11 localizedStringForLocaleIdentifier_];

    v13 = sub_1DD875140();
    v15 = v14;

    v16 = [v5 supportingString];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 localizedStringForLocaleIdentifier_];

      v19 = sub_1DD875140();
      v17 = v20;
    }

    else
    {

      v19 = 0;
    }

    *a2 = v13;
    *(a2 + 8) = v15;
    *(a2 + 16) = v13;
    *(a2 + 24) = v15;
    *(a2 + 32) = v19;
    *(a2 + 40) = v17;
    *(a2 + 48) = v19;
    *(a2 + 56) = v17;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
  }

  else
  {

    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

double sub_1DD76AC38@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 localeIdentifier];
  v5 = v4;
  v6 = v4;
  v7 = v4;
  v8 = v4;
  if (!v4)
  {
    sub_1DD875140();
    v8 = sub_1DD875110();

    sub_1DD875140();
    v7 = sub_1DD875110();

    sub_1DD875140();
    v6 = sub_1DD875110();

    sub_1DD875140();
    v5 = sub_1DD875110();
  }

  v9 = v4;
  v10 = [a1 fullSpeakableString];
  v11 = [v10 printed];

  v12 = [v11 localizedStringForLocaleIdentifier_];
  v13 = sub_1DD875140();
  v34 = v14;
  v35 = v13;

  v15 = [a1 fullSpeakableString];
  v16 = [v15 spoken];

  v17 = [v16 localizedStringForLocaleIdentifier_];
  v18 = sub_1DD875140();
  v20 = v19;

  v21 = [a1 supportingSpeakableString];
  v22 = v21;
  if (v21)
  {
    v23 = [v21 printed];

    v24 = [v23 0x1E8658FE6];
    v25 = sub_1DD875140();
    v22 = v26;
  }

  else
  {

    v25 = 0;
  }

  v27 = [a1 supportingSpeakableString];
  v28 = v27;
  if (v27)
  {
    v29 = [v27 spoken];

    v30 = [v29 0x1E8658FE6];
    v31 = sub_1DD875140();
    v28 = v32;
  }

  else
  {

    v31 = 0;
  }

  *a2 = v35;
  *(a2 + 8) = v34;
  *(a2 + 16) = v18;
  *(a2 + 24) = v20;
  *(a2 + 32) = v25;
  *(a2 + 40) = v22;
  *(a2 + 48) = v31;
  *(a2 + 56) = v28;
  result = 0.0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  return result;
}

uint64_t ResponseManifest.init(from:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 304) = a1;
  *(v2 + 312) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD76AF64, 0, 0);
}

uint64_t sub_1DD76AF64()
{
  v1 = v0[38];
  v2 = v0[39];
  v3 = type metadata accessor for ResponseManifest(0);
  bzero(v1, 0xD9uLL);
  v4 = v3[8];
  sub_1DD6ED7CC();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v5, v6, v7, v8);
  v9 = &v1[v3[9]];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v1[v3[10]];
  *v10 = 0;
  *(v10 + 1) = 0;
  v1[v3[11]] = 2;
  v1[v3[12]] = 2;
  v11 = v2;
  v12 = swift_task_alloc();
  v0[40] = v12;
  *v12 = v0;
  v12[1] = sub_1DD76B068;
  v13 = v0[39];

  return sub_1DD76B268((v0 + 26), v13);
}

uint64_t sub_1DD76B068()
{
  v1 = *(*v0 + 320);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DD76B164, 0, 0);
}

uint64_t sub_1DD76B164()
{
  v1 = *(v0 + 304);
  memcpy((v0 + 112), (v0 + 208), 0x60uLL);
  sub_1DD6E72B4();
  memcpy(v2, v3, v4);
  sub_1DD6FC560(v0 + 16, &qword_1ECD0F750, &qword_1DD87F2E8);
  memcpy((v1 + 8), (v0 + 112), 0x60uLL);
  v5 = *(v1 + 16);
  v6 = *(v0 + 312);
  if (v5)
  {
    v7 = *(v0 + 304);
    v8 = [*(v0 + 312) identifier];
    v9 = sub_1DD875140();
    v11 = v10;

    v12 = *(v7 + 80);

    *(v7 + 72) = v9;
    *(v7 + 80) = v11;
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1DD76B268(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = sub_1DD874740();
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();
  v6 = sub_1DD874ED0();
  v2[24] = v6;
  v7 = *(v6 - 8);
  v2[25] = v7;
  v8 = *(v7 + 64) + 15;
  v2[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD76B384, 0, 0);
}

uint64_t sub_1DD76B384()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DD76B4A0;
  v2 = swift_continuation_init();
  v0[17] = sub_1DD710A9C(&qword_1ECD0FAA8, &unk_1DD8814B0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DD76C048;
  v0[13] = &unk_1F58D1358;
  v0[14] = v2;
  [v1 getResultWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DD76B4A0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_1DD76B7CC;
  }

  else
  {
    v3 = sub_1DD76B5B0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD76B5B0()
{
  v1 = *(v0 + 144);
  v2 = [v1 print];
  v3 = sub_1DD8752D0();

  if (v3[2])
  {
    v21 = v3[5];
    v22 = v3[4];
  }

  else
  {
    v21 = 0xE000000000000000;
    v22 = 0;
  }

  v4 = [v1 speak];
  v5 = sub_1DD8752D0();

  if (v5[2])
  {
    v7 = v5[4];
    v6 = v5[5];
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = [v1 captionPrint];
  v9 = sub_1DD8752D0();

  if (v9[2])
  {
    v11 = v9[4];
    v10 = v9[5];
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v12 = [v1 captionSpeak];
  v13 = sub_1DD8752D0();

  if (v13[2])
  {
    v15 = v13[4];
    v14 = v13[5];
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  v16 = *(v0 + 152);

  swift_unknownObjectRelease();
  *v16 = v22;
  *(v16 + 8) = v21;
  *(v16 + 16) = v7;
  *(v16 + 24) = v6;
  *(v16 + 32) = v11;
  *(v16 + 40) = v10;
  *(v16 + 48) = v15;
  *(v16 + 56) = v14;
  *(v16 + 64) = 0u;
  *(v16 + 80) = 0u;
  v17 = *(v0 + 208);
  v18 = *(v0 + 184);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1DD76B7CC()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 160);
  swift_willThrow();
  sub_1DD874BE0();
  v4 = v3;
  v5 = sub_1DD874EC0();
  v6 = sub_1DD8754E0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 208);
  v9 = *(v0 + 192);
  v10 = *(v0 + 200);
  if (v7)
  {
    v36 = v6;
    v12 = *(v0 + 176);
    v11 = *(v0 + 184);
    v13 = *(v0 + 160);
    v35 = *(v0 + 168);
    v38 = *(v0 + 216);
    v14 = swift_slowAlloc();
    swift_slowAlloc();
    *v14 = 136315394;
    v37 = v8;
    v15 = [v13 identifier];
    sub_1DD875140();

    v16 = sub_1DD6EFF74();
    v19 = sub_1DD6FD650(v16, v17, v18);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    v20 = [v13 templateDirectoryURL];
    sub_1DD874700();

    sub_1DD8746C0();
    (*(v12 + 8))(v11, v35);
    v21 = sub_1DD6FF97C();
    v24 = sub_1DD6FD650(v21, v22, v23);

    *(v14 + 14) = v24;
    _os_log_impl(&dword_1DD6DC000, v5, v36, "Execution of LNCATDialog failed for CAT %s at template dir %s", v14, 0x16u);
    swift_arrayDestroy();
    sub_1DD6DE474();
    sub_1DD6DE474();

    (*(v10 + 8))(v37, v9);
  }

  else
  {
    v25 = *(v0 + 160);

    v26 = *(v10 + 8);
    v27 = sub_1DD6FF97C();
    v29(v27, v28);
  }

  v30 = *(v0 + 152);
  v30[4] = 0u;
  v30[5] = 0u;
  v30[2] = 0u;
  v30[3] = 0u;
  *v30 = 0u;
  v30[1] = 0u;
  v31 = *(v0 + 208);
  v32 = *(v0 + 184);

  v33 = *(v0 + 8);

  return v33();
}

double ResponseManifest.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1DD6E0A5C();
  v6 = type metadata accessor for ResponseManifest(v5);
  bzero(v2, 0xD9uLL);
  v7 = v6[8];
  sub_1DD6ED7CC();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v8, v9, v10, v11);
  sub_1DD770D40(v6[9]);
  sub_1DD770D40(v6[10]);
  *(v2 + v6[11]) = 2;
  *(v2 + v6[12]) = 2;
  memcpy(v13, (v2 + 8), sizeof(v13));

  sub_1DD6FC560(v13, &qword_1ECD0F750, &qword_1DD87F2E8);
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  result = 0.0;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  return result;
}

uint64_t *sub_1DD76C048(uint64_t a1, uint64_t a2, void *a3)
{
  result = sub_1DD6DF224((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_1DD76C0DC(v6, v7);
  }

  else if (a2)
  {
    swift_unknownObjectRetain();

    return sub_1DD76C148(v6, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD76C0DC(uint64_t a1, uint64_t a2)
{
  sub_1DD710A9C(&qword_1ECD0FAB0, &qword_1DD8AF8D0);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

void ConfirmationView.ControlMetadata.init(from:)()
{
  sub_1DD6DEB38();
  v2 = v1;
  v3 = sub_1DD874ED0();
  v4 = sub_1DD6DDEAC(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DE4A8();
  v7 = sub_1DD875020();
  v8 = sub_1DD6DDEAC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DE4A8();
  sub_1DD700B88();
  v13 = sub_1DD8745E0();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_1DD8745D0();
  sub_1DD6E08AC();
  sub_1DD76D388(v16, v17);
  sub_1DD8745C0();

  v18 = sub_1DD6E5DB0();
  sub_1DD6E6658(v18, v19);
  (*(v10 + 32))(v2, v0, v7);
  sub_1DD6E5E68(v2, 0, 1, v7);
  sub_1DD6DFED0();
}

uint64_t sub_1DD76C440(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1DD875630();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_1DD76C464(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1DD76C684(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD76C484(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1DD76C77C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD76C4A4(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1DD76C884(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1DD76C4C4()
{
  v1 = *v0;
  sub_1DD76CD70();
  *v0 = v2;
}

void sub_1DD76C51C()
{
  v1 = *v0;
  sub_1DD76CD70();
  *v0 = v2;
}

void sub_1DD76C574()
{
  v1 = *v0;
  sub_1DD76CD70();
  *v0 = v2;
}

uint64_t sub_1DD76C5CC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1DD76CB50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD76C5EC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1DD76CC58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1DD76C60C()
{
  v1 = *v0;
  sub_1DD76CD70();
  *v0 = v2;
}

size_t sub_1DD76C664(size_t a1, int64_t a2, char a3)
{
  result = sub_1DD76CF28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD76C684(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1DD710A9C(&qword_1ECD0FA30, &qword_1DD881430);
      v10 = swift_allocObject();
      v11 = j__malloc_size_0(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1DD785054((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 8 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD76C77C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1DD710A9C(&qword_1ECD0FAB8, &unk_1DD8814C0);
      v10 = swift_allocObject();
      v11 = j__malloc_size_0(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 80);
      if (v5)
      {
LABEL_13:
        sub_1DD785074((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD76C884(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1DD710A9C(&qword_1ECD0FAA0, &unk_1DD8814A0);
      v10 = swift_allocObject();
      v11 = j__malloc_size_0(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1DD785098((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_1DD76C984(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1DD710A9C(&qword_1ECD0FA78, &qword_1DD881478);
  v10 = *(sub_1DD710A9C(&qword_1ECD0FA80, &qword_1DD881480) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size_0(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1DD710A9C(&qword_1ECD0FA80, &qword_1DD881480) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DD7850D0(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1DD76CB50(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1DD710A9C(&qword_1ECD0FA70, &qword_1DD881470);
      v10 = swift_allocObject();
      v11 = j__malloc_size_0(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 88);
      if (v5)
      {
LABEL_13:
        sub_1DD785114((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD76CC58(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1DD710A9C(&qword_1ECD0FA60, &qword_1DD881460);
      v10 = swift_allocObject();
      v11 = j__malloc_size_0(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 120);
      if (v5)
      {
LABEL_13:
        sub_1DD785144((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1DD710A9C(&qword_1ECD0FA68, &qword_1DD881468);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1DD76CD70()
{
  sub_1DD6DEB38();
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  if (v11)
  {
    v12 = *(v1 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < v0)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= v0)
      {
        v13 = v0;
      }
    }
  }

  else
  {
    v13 = v0;
  }

  v14 = *(v1 + 16);
  if (v13 <= v14)
  {
    v15 = *(v1 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1DD710A9C(v2, v3);
  v16 = *(v7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  v20 = j__malloc_size_0(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v20 - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((v20 - v18) / v17);
LABEL_19:
  v22 = *(v7(0) - 8);
  if (v10)
  {
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v5(v8 + v23, v14, v19 + v23);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  sub_1DD6DFED0();
}

size_t sub_1DD76CF28(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1DD710A9C(&qword_1ECD0FA48, &qword_1DD881448);
  v10 = *(sub_1DD710A9C(&qword_1ECD0FA50, &qword_1DD881450) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size_0(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1DD710A9C(&qword_1ECD0FA50, &qword_1DD881450) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DD785240(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1DD76D0F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DD710E74(a1, a2);
  }

  return a1;
}

unint64_t sub_1DD76D108()
{
  result = qword_1ECD0F4A8;
  if (!qword_1ECD0F4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F4A8);
  }

  return result;
}

unint64_t sub_1DD76D15C()
{
  result = qword_1ECD0F4D0;
  if (!qword_1ECD0F4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F4D0);
  }

  return result;
}

unint64_t sub_1DD76D218()
{
  result = qword_1ECD0F4E8;
  if (!qword_1ECD0F4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F4E8);
  }

  return result;
}

unint64_t sub_1DD76D26C()
{
  result = qword_1ECD0F500;
  if (!qword_1ECD0F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F500);
  }

  return result;
}

unint64_t sub_1DD76D2C0()
{
  result = qword_1ECD0F518;
  if (!qword_1ECD0F518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F518);
  }

  return result;
}

unint64_t sub_1DD76D314()
{
  result = qword_1ECD0F540;
  if (!qword_1ECD0F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F540);
  }

  return result;
}

uint64_t sub_1DD76D388(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DD76D3F0()
{
  v1 = sub_1DD6DE290();
  v3 = v2(v1);
  sub_1DD6DE1C4(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_1DD76D444()
{
  result = qword_1ECD0F588;
  if (!qword_1ECD0F588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F588);
  }

  return result;
}

unint64_t sub_1DD76D498()
{
  result = qword_1ECD0F590;
  if (!qword_1ECD0F590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F590);
  }

  return result;
}

unint64_t sub_1DD76D4EC()
{
  result = qword_1ECD0F598;
  if (!qword_1ECD0F598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F598);
  }

  return result;
}

unint64_t sub_1DD76D540()
{
  result = qword_1ECD0F5A0;
  if (!qword_1ECD0F5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F5A0);
  }

  return result;
}

unint64_t sub_1DD76D594()
{
  result = qword_1ECD0F5B0;
  if (!qword_1ECD0F5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F5B0);
  }

  return result;
}

unint64_t sub_1DD76D5E8()
{
  result = qword_1ECD0F5B8;
  if (!qword_1ECD0F5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F5B8);
  }

  return result;
}

unint64_t sub_1DD76D63C()
{
  result = qword_1ECD0F5C0;
  if (!qword_1ECD0F5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F5C0);
  }

  return result;
}

unint64_t sub_1DD76D690()
{
  result = qword_1ECD0F5C8;
  if (!qword_1ECD0F5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F5C8);
  }

  return result;
}

uint64_t sub_1DD76D6E4(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_1DD875140();
  }

  return sub_1DD6DDEFC();
}

unint64_t sub_1DD76D740()
{
  result = qword_1ECD0F600;
  if (!qword_1ECD0F600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F600);
  }

  return result;
}

uint64_t sub_1DD76D794(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DD6E0D28();
  v5 = v4(v3);
  sub_1DD6DE1C4(v5);
  v7 = *(v6 + 32);
  v8 = sub_1DD6DDEFC();
  v9(v8);
  return a2;
}

unint64_t sub_1DD76D7EC()
{
  result = qword_1ECD0F610;
  if (!qword_1ECD0F610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F610);
  }

  return result;
}

unint64_t sub_1DD76D840()
{
  result = qword_1ECD0F618;
  if (!qword_1ECD0F618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F618);
  }

  return result;
}

unint64_t sub_1DD76D894()
{
  result = qword_1ECD0F628;
  if (!qword_1ECD0F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F628);
  }

  return result;
}

unint64_t sub_1DD76D8E8()
{
  result = qword_1ECD0F648;
  if (!qword_1ECD0F648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F648);
  }

  return result;
}

unint64_t sub_1DD76D93C()
{
  result = qword_1ECD0F650;
  if (!qword_1ECD0F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F650);
  }

  return result;
}

unint64_t sub_1DD76D990()
{
  result = qword_1ECD0F658;
  if (!qword_1ECD0F658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F658);
  }

  return result;
}

unint64_t sub_1DD76D9E4()
{
  result = qword_1ECD0F670;
  if (!qword_1ECD0F670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F670);
  }

  return result;
}

unint64_t sub_1DD76DA38()
{
  result = qword_1ECD0F680;
  if (!qword_1ECD0F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F680);
  }

  return result;
}

unint64_t sub_1DD76DA8C()
{
  result = qword_1ECD0F698;
  if (!qword_1ECD0F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F698);
  }

  return result;
}

unint64_t sub_1DD76DAE0()
{
  result = qword_1ECD0F6C0;
  if (!qword_1ECD0F6C0)
  {
    sub_1DD717E88(&qword_1ECD0F6B8, &qword_1DD87F2A8);
    sub_1DD76DB64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F6C0);
  }

  return result;
}

unint64_t sub_1DD76DB64()
{
  result = qword_1ECD0F6C8;
  if (!qword_1ECD0F6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F6C8);
  }

  return result;
}

unint64_t sub_1DD76DBB8()
{
  result = qword_1ECD0F6D0;
  if (!qword_1ECD0F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F6D0);
  }

  return result;
}

uint64_t sub_1DD76DC0C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DD717E88(&qword_1ECD0F6A0, &qword_1DD87F2A0);
    sub_1DD76D388(a2, type metadata accessor for ResponseVisual.UIType);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD76DCA8()
{
  result = qword_1ECD0F6F0;
  if (!qword_1ECD0F6F0)
  {
    sub_1DD717E88(&qword_1ECD0F6B8, &qword_1DD87F2A8);
    sub_1DD76DD2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F6F0);
  }

  return result;
}

unint64_t sub_1DD76DD2C()
{
  result = qword_1ECD0F6F8;
  if (!qword_1ECD0F6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F6F8);
  }

  return result;
}

unint64_t sub_1DD76DD80()
{
  result = qword_1ECD0F700;
  if (!qword_1ECD0F700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F700);
  }

  return result;
}

unint64_t sub_1DD76DDD4()
{
  result = qword_1ECD0F720;
  if (!qword_1ECD0F720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F720);
  }

  return result;
}

unint64_t sub_1DD76DE28()
{
  result = qword_1ECD0F728;
  if (!qword_1ECD0F728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F728);
  }

  return result;
}

unint64_t sub_1DD76DE7C()
{
  result = qword_1ECD0F730;
  if (!qword_1ECD0F730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F730);
  }

  return result;
}

uint64_t sub_1DD76DEF0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DD76DF30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD710A9C(&qword_1ECD0F758, &qword_1DD87F2F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD76DFA0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DD76DFE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1DD710A9C(a3, a4);
  sub_1DD6DE1C4(v5);
  v7 = *(v6 + 16);
  v8 = sub_1DD6DDEFC();
  v9(v8);
  return a2;
}

unint64_t sub_1DD76E03C()
{
  result = qword_1ECD0F768;
  if (!qword_1ECD0F768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F768);
  }

  return result;
}

unint64_t sub_1DD76E090()
{
  result = qword_1ECD0F778;
  if (!qword_1ECD0F778)
  {
    sub_1DD717E88(&qword_1ECD0F770, &qword_1DD87F300);
    sub_1DD76E114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F778);
  }

  return result;
}

unint64_t sub_1DD76E114()
{
  result = qword_1ECD0F780;
  if (!qword_1ECD0F780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F780);
  }

  return result;
}

uint64_t sub_1DD76E168(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DD717E88(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD76E1D0()
{
  result = qword_1ECD0F7B0;
  if (!qword_1ECD0F7B0)
  {
    sub_1DD717E88(&qword_1ECD0F7A8, &qword_1DD87F308);
    sub_1DD76E254();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F7B0);
  }

  return result;
}

unint64_t sub_1DD76E254()
{
  result = qword_1ECD0F7B8;
  if (!qword_1ECD0F7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F7B8);
  }

  return result;
}

unint64_t sub_1DD76E2A8()
{
  result = qword_1ECD0F7C0;
  if (!qword_1ECD0F7C0)
  {
    sub_1DD717E88(&qword_1ECD0F750, &qword_1DD87F2E8);
    sub_1DD76E32C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F7C0);
  }

  return result;
}

unint64_t sub_1DD76E32C()
{
  result = qword_1ECD0F7C8;
  if (!qword_1ECD0F7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F7C8);
  }

  return result;
}

unint64_t sub_1DD76E380()
{
  result = qword_1ECD0F7D8;
  if (!qword_1ECD0F7D8)
  {
    sub_1DD717E88(&qword_1ECD0F7D0, &qword_1DD87F310);
    sub_1DD76E404();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F7D8);
  }

  return result;
}

unint64_t sub_1DD76E404()
{
  result = qword_1ECD0F7E0;
  if (!qword_1ECD0F7E0)
  {
    sub_1DD717E88(&qword_1ECD0F7E8, &qword_1DD87F318);
    sub_1DD76E488();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F7E0);
  }

  return result;
}

unint64_t sub_1DD76E488()
{
  result = qword_1ECD0F7F0;
  if (!qword_1ECD0F7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F7F0);
  }

  return result;
}

unint64_t sub_1DD76E4DC()
{
  result = qword_1ECD0F810;
  if (!qword_1ECD0F810)
  {
    sub_1DD717E88(&qword_1ECD0F7E8, &qword_1DD87F318);
    sub_1DD76E560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F810);
  }

  return result;
}

unint64_t sub_1DD76E560()
{
  result = qword_1ECD0F818;
  if (!qword_1ECD0F818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F818);
  }

  return result;
}

unint64_t sub_1DD76E5B4()
{
  result = qword_1ECD0F820;
  if (!qword_1ECD0F820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F820);
  }

  return result;
}

unint64_t sub_1DD76E608()
{
  result = qword_1ECD0F828;
  if (!qword_1ECD0F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F828);
  }

  return result;
}

unint64_t sub_1DD76E65C()
{
  result = qword_1ECD0F830;
  if (!qword_1ECD0F830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F830);
  }

  return result;
}

uint64_t sub_1DD76E6B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DD6E0D28();
  v5 = v4(v3);
  sub_1DD6DE1C4(v5);
  v7 = *(v6 + 16);
  v8 = sub_1DD6DDEFC();
  v9(v8);
  return a2;
}

unint64_t sub_1DD76E708()
{
  result = qword_1ECD0F838;
  if (!qword_1ECD0F838)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECD0F838);
  }

  return result;
}

unint64_t sub_1DD76E750()
{
  result = qword_1ECD0F848;
  if (!qword_1ECD0F848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F848);
  }

  return result;
}

unint64_t sub_1DD76E7A8()
{
  result = qword_1ECD0F850;
  if (!qword_1ECD0F850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F850);
  }

  return result;
}

unint64_t sub_1DD76E800()
{
  result = qword_1ECD0F858;
  if (!qword_1ECD0F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F858);
  }

  return result;
}

unint64_t sub_1DD76E858()
{
  result = qword_1ECD0F860;
  if (!qword_1ECD0F860)
  {
    sub_1DD717E88(&qword_1ECD0F868, &qword_1DD87F960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F860);
  }

  return result;
}

unint64_t sub_1DD76E8C0()
{
  result = qword_1ECD0F870;
  if (!qword_1ECD0F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F870);
  }

  return result;
}

uint64_t sub_1DD76E914(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD76E944(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD76E984(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD76E9F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD76EA30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD76EA98(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD76EAD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD76EB28()
{
  result = type metadata accessor for ResponseVisual.UIType.ControlPayload(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DD76EBA4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_1DD76EBF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1DD76EC78(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD76ECB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD76ED30()
{
  result = sub_1DD875020();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SystemPromptResolution.RequirementResolution(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ResponseVisual.ResponseVisualOptions(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1DD76EF58()
{
  sub_1DD76F0A4();
  if (v0 <= 0x3F)
  {
    sub_1DD76F160(319, qword_1EE017860);
    if (v1 <= 0x3F)
    {
      sub_1DD76F160(319, &unk_1EE0176F8);
      if (v2 <= 0x3F)
      {
        sub_1DD76F108();
        if (v3 <= 0x3F)
        {
          sub_1DD76F160(319, &qword_1EE018D28);
          if (v4 <= 0x3F)
          {
            sub_1DD76F160(319, &qword_1EE015DB0);
            if (v5 <= 0x3F)
            {
              sub_1DD76F160(319, &qword_1EE017628);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1DD76F0A4()
{
  if (!qword_1EE015DD8)
  {
    sub_1DD717E88(&qword_1ECD0F7E8, &qword_1DD87F318);
    v0 = sub_1DD8755C0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE015DD8);
    }
  }
}

void sub_1DD76F108()
{
  if (!qword_1EE017780)
  {
    type metadata accessor for ResponseVisual.UIType(255);
    v0 = sub_1DD8755C0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE017780);
    }
  }
}

void sub_1DD76F160(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1DD8755C0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ResponseManifest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ResponseManifest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResponseVisual.UIType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1DD76F4DC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1DD6EE784(result, v6);
        break;
      case 2:
        result = sub_1DD6E3744(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1DD6E991C(result, v6);
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
          result = sub_1DD6E5904(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t _s16IntelligenceFlow14MessagePayloadO8UserTurnO6SpeechVwet_0_0(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return sub_1DD6E9558(a1);
}

_BYTE *sub_1DD76F5F4(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1DD76F6A0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1DD6EE784(result, v6);
        break;
      case 2:
        result = sub_1DD6E3744(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1DD6E991C(result, v6);
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
          result = sub_1DD6E5904(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD76F77C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1DD6DEAA4(-1);
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
      return sub_1DD6DEAA4((*a1 | (v4 << 8)) - 6);
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

      return sub_1DD6DEAA4((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1DD6DEAA4((*a1 | (v4 << 8)) - 6);
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

  return sub_1DD6DEAA4(v8);
}

_BYTE *sub_1DD76F800(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1DD6EE784(result, v6);
        break;
      case 2:
        result = sub_1DD6E3744(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1DD6E991C(result, v6);
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
          result = sub_1DD6E5904(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD76F8D0()
{
  result = qword_1ECD0F878;
  if (!qword_1ECD0F878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F878);
  }

  return result;
}

unint64_t sub_1DD76F928()
{
  result = qword_1ECD0F880;
  if (!qword_1ECD0F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F880);
  }

  return result;
}

unint64_t sub_1DD76F980()
{
  result = qword_1ECD0F888;
  if (!qword_1ECD0F888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F888);
  }

  return result;
}

unint64_t sub_1DD76F9D8()
{
  result = qword_1ECD0F890;
  if (!qword_1ECD0F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F890);
  }

  return result;
}

unint64_t sub_1DD76FA30()
{
  result = qword_1ECD0F898;
  if (!qword_1ECD0F898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F898);
  }

  return result;
}

unint64_t sub_1DD76FA88()
{
  result = qword_1ECD0F8A0;
  if (!qword_1ECD0F8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F8A0);
  }

  return result;
}

unint64_t sub_1DD76FAE0()
{
  result = qword_1ECD0F8A8;
  if (!qword_1ECD0F8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F8A8);
  }

  return result;
}

unint64_t sub_1DD76FB38()
{
  result = qword_1ECD0F8B0;
  if (!qword_1ECD0F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F8B0);
  }

  return result;
}

unint64_t sub_1DD76FB90()
{
  result = qword_1ECD0F8B8;
  if (!qword_1ECD0F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F8B8);
  }

  return result;
}

unint64_t sub_1DD76FBE8()
{
  result = qword_1ECD0F8C0;
  if (!qword_1ECD0F8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F8C0);
  }

  return result;
}

unint64_t sub_1DD76FC40()
{
  result = qword_1ECD0F8C8;
  if (!qword_1ECD0F8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F8C8);
  }

  return result;
}

unint64_t sub_1DD76FC98()
{
  result = qword_1ECD0F8D0;
  if (!qword_1ECD0F8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F8D0);
  }

  return result;
}

unint64_t sub_1DD76FCF0()
{
  result = qword_1ECD0F8D8;
  if (!qword_1ECD0F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F8D8);
  }

  return result;
}

unint64_t sub_1DD76FD48()
{
  result = qword_1ECD0F8E0;
  if (!qword_1ECD0F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F8E0);
  }

  return result;
}

unint64_t sub_1DD76FDA0()
{
  result = qword_1ECD0F8E8;
  if (!qword_1ECD0F8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F8E8);
  }

  return result;
}

unint64_t sub_1DD76FDF8()
{
  result = qword_1ECD0F8F0;
  if (!qword_1ECD0F8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F8F0);
  }

  return result;
}

unint64_t sub_1DD76FE50()
{
  result = qword_1ECD0F8F8;
  if (!qword_1ECD0F8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F8F8);
  }

  return result;
}

unint64_t sub_1DD76FEA8()
{
  result = qword_1ECD0F900;
  if (!qword_1ECD0F900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F900);
  }

  return result;
}

unint64_t sub_1DD76FF00()
{
  result = qword_1ECD0F908;
  if (!qword_1ECD0F908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F908);
  }

  return result;
}

unint64_t sub_1DD76FF58()
{
  result = qword_1ECD0F910;
  if (!qword_1ECD0F910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F910);
  }

  return result;
}

unint64_t sub_1DD76FFB0()
{
  result = qword_1ECD0F918;
  if (!qword_1ECD0F918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F918);
  }

  return result;
}

unint64_t sub_1DD770008()
{
  result = qword_1ECD0F920;
  if (!qword_1ECD0F920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F920);
  }

  return result;
}

unint64_t sub_1DD770060()
{
  result = qword_1ECD0F928;
  if (!qword_1ECD0F928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F928);
  }

  return result;
}

unint64_t sub_1DD7700B8()
{
  result = qword_1ECD0F930;
  if (!qword_1ECD0F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F930);
  }

  return result;
}

unint64_t sub_1DD770110()
{
  result = qword_1ECD0F938;
  if (!qword_1ECD0F938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F938);
  }

  return result;
}

unint64_t sub_1DD770168()
{
  result = qword_1ECD0F940;
  if (!qword_1ECD0F940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F940);
  }

  return result;
}

unint64_t sub_1DD7701C0()
{
  result = qword_1ECD0F948;
  if (!qword_1ECD0F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F948);
  }

  return result;
}

unint64_t sub_1DD770218()
{
  result = qword_1ECD0F950;
  if (!qword_1ECD0F950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F950);
  }

  return result;
}

unint64_t sub_1DD770270()
{
  result = qword_1ECD0F958;
  if (!qword_1ECD0F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F958);
  }

  return result;
}

unint64_t sub_1DD7702C8()
{
  result = qword_1ECD0F960;
  if (!qword_1ECD0F960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F960);
  }

  return result;
}

unint64_t sub_1DD770320()
{
  result = qword_1ECD0F968;
  if (!qword_1ECD0F968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F968);
  }

  return result;
}

unint64_t sub_1DD770378()
{
  result = qword_1ECD0F970;
  if (!qword_1ECD0F970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F970);
  }

  return result;
}

unint64_t sub_1DD7703D0()
{
  result = qword_1ECD0F978;
  if (!qword_1ECD0F978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F978);
  }

  return result;
}

unint64_t sub_1DD770428()
{
  result = qword_1ECD0F980;
  if (!qword_1ECD0F980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F980);
  }

  return result;
}

unint64_t sub_1DD770480()
{
  result = qword_1ECD0F988;
  if (!qword_1ECD0F988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F988);
  }

  return result;
}

unint64_t sub_1DD7704D8()
{
  result = qword_1ECD0F990;
  if (!qword_1ECD0F990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F990);
  }

  return result;
}

unint64_t sub_1DD770530()
{
  result = qword_1ECD0F998;
  if (!qword_1ECD0F998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F998);
  }

  return result;
}

unint64_t sub_1DD770588()
{
  result = qword_1ECD0F9A0;
  if (!qword_1ECD0F9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F9A0);
  }

  return result;
}

unint64_t sub_1DD7705E0()
{
  result = qword_1ECD0F9A8;
  if (!qword_1ECD0F9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F9A8);
  }

  return result;
}

unint64_t sub_1DD770638()
{
  result = qword_1ECD0F9B0;
  if (!qword_1ECD0F9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F9B0);
  }

  return result;
}

unint64_t sub_1DD770690()
{
  result = qword_1ECD0F9B8;
  if (!qword_1ECD0F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F9B8);
  }

  return result;
}

unint64_t sub_1DD7706E8()
{
  result = qword_1ECD0F9C0;
  if (!qword_1ECD0F9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F9C0);
  }

  return result;
}

unint64_t sub_1DD770740()
{
  result = qword_1ECD0F9C8;
  if (!qword_1ECD0F9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F9C8);
  }

  return result;
}

unint64_t sub_1DD770798()
{
  result = qword_1ECD0F9D0;
  if (!qword_1ECD0F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F9D0);
  }

  return result;
}

unint64_t sub_1DD7707F0()
{
  result = qword_1ECD0F9D8;
  if (!qword_1ECD0F9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F9D8);
  }

  return result;
}

unint64_t sub_1DD770848()
{
  result = qword_1ECD0F9E0;
  if (!qword_1ECD0F9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F9E0);
  }

  return result;
}

unint64_t sub_1DD7708A0()
{
  result = qword_1ECD0F9E8;
  if (!qword_1ECD0F9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F9E8);
  }

  return result;
}

unint64_t sub_1DD7708F8()
{
  result = qword_1ECD0F9F0;
  if (!qword_1ECD0F9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F9F0);
  }

  return result;
}

unint64_t sub_1DD770950()
{
  result = qword_1ECD0F9F8;
  if (!qword_1ECD0F9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F9F8);
  }

  return result;
}

unint64_t sub_1DD7709A8()
{
  result = qword_1ECD0FA00;
  if (!qword_1ECD0FA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FA00);
  }

  return result;
}

unint64_t sub_1DD770A00()
{
  result = qword_1ECD0FA08;
  if (!qword_1ECD0FA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FA08);
  }

  return result;
}

unint64_t sub_1DD770A58()
{
  result = qword_1ECD0FA10;
  if (!qword_1ECD0FA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FA10);
  }

  return result;
}

unint64_t sub_1DD770AB0()
{
  result = qword_1ECD0FA18;
  if (!qword_1ECD0FA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FA18);
  }

  return result;
}

unint64_t sub_1DD770B08()
{
  result = qword_1ECD0FA20;
  if (!qword_1ECD0FA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FA20);
  }

  return result;
}

unint64_t sub_1DD770B60()
{
  result = qword_1ECD0FA28;
  if (!qword_1ECD0FA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FA28);
  }

  return result;
}

uint64_t sub_1DD770C5C(uint64_t a1)
{

  return sub_1DD76DFE0(a1, v1 + 792, v2, v3);
}

uint64_t sub_1DD770C78(uint64_t a1, uint64_t a2)
{

  return sub_1DD76DFE0(a1, a2, v2, v3);
}

uint64_t sub_1DD770CCC()
{
}

uint64_t sub_1DD770CE4(uint64_t a1)
{

  return sub_1DD76DFE0(a1, v1 + 152, v3, v2);
}

uint64_t sub_1DD770D00(uint64_t a1)
{

  return sub_1DD76DFE0(a1, v1 + 344, v3, v2);
}

uint64_t sub_1DD770D1C@<X0>(char a1@<W8>)
{
  *(v1 + 16) = a1;

  return sub_1DD875920();
}

void sub_1DD770D40(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_1DD770D70()
{
  *(v0 - 66) = 1;
  v2 = *(v0 - 104);
  return *(v0 - 96);
}

__n128 sub_1DD770D84@<Q0>(uint64_t a1@<X8>)
{
  result = *(*(v1 + 8) + a1);
  *(v2 - 192) = result;
  return result;
}

uint64_t sub_1DD770DA4(uint64_t result)
{
  v3 = *(v1 + 28);

  return sub_1DD76DFA0(result);
}

uint64_t sub_1DD770DC4()
{

  return sub_1DD875B20();
}

void *sub_1DD770DDC(void *a1)
{

  return memcpy(a1, (v1 + 792), 0x60uLL);
}

uint64_t sub_1DD770DF4()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t ResponseOutput.VisualOutput.LiveActivityOutputPayload.sessionId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1DD6DDEFC();
}

uint64_t sub_1DD770E44(uint64_t a1)
{
  v2 = sub_1DD770EF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD770E80(uint64_t a1)
{
  v2 = sub_1DD770EF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DD770EF0()
{
  result = qword_1ECD0FB28;
  if (!qword_1ECD0FB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FB28);
  }

  return result;
}

uint64_t _s16IntelligenceFlow14ResponseOutputV06VisualD0O012LiveActivityD7PayloadV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DD875A30();
  }
}

uint64_t sub_1DD770FD8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD77106C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD770FD8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD771098(uint64_t a1)
{
  v2 = sub_1DD77125C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7710D4(uint64_t a1)
{
  v2 = sub_1DD77125C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DD771144()
{
  sub_1DD6DED2C();
  v20 = v2;
  v4 = v3;
  v7 = sub_1DD710A9C(v5, v6);
  sub_1DD6DDEAC(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6E7258();
  v13 = v0[1];
  v19 = *v0;
  v15 = *(v4 + 24);
  v14 = *(v4 + 32);
  v16 = sub_1DD6DDEDC();
  v18 = sub_1DD6DEA7C(v16, v17);
  v20(v18);
  sub_1DD875BB0();
  sub_1DD875970();
  (*(v9 + 8))(v1, v7);
  sub_1DD6E0C78();
}

unint64_t sub_1DD77125C()
{
  result = qword_1ECD0FB40;
  if (!qword_1ECD0FB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FB40);
  }

  return result;
}

void sub_1DD7712E4()
{
  sub_1DD6DED2C();
  v2 = v1;
  v4 = v3;
  v22 = v5;
  v8 = sub_1DD710A9C(v6, v7);
  sub_1DD6DDEAC(v8);
  v21 = v9;
  v11 = *(v10 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6DEBA0();
  v13 = v4[4];
  v14 = sub_1DD6DEA7C(v4, v4[3]);
  v2(v14);
  sub_1DD875B90();
  if (!v0)
  {
    v15 = sub_1DD875870();
    v17 = v16;
    v18 = *(v21 + 8);
    v19 = sub_1DD6DDEDC();
    v20(v19);
    *v22 = v15;
    v22[1] = v17;
  }

  sub_1DD6E1EC8(v4);
  sub_1DD6E0C78();
}

uint64_t static RGPluginModel.== infix(_:_:)()
{
  v0 = sub_1DD6E0D28();
  type metadata accessor for RGPluginModel(v0);
  sub_1DD6E0ABC();
  sub_1DD7718BC(v1);
  sub_1DD8748B0();
  v3 = v2;
  sub_1DD8748B0();
  if (v3 >> 60 == 15)
  {
    if (v4 >> 60 == 15)
    {
      v5 = sub_1DD6ED118();
      sub_1DD70104C(v5, v6);
      return 1;
    }

    goto LABEL_5;
  }

  if (v4 >> 60 == 15)
  {
LABEL_5:
    v8 = sub_1DD6ED118();
    sub_1DD70104C(v8, v9);
    v10 = sub_1DD770D4C();
    sub_1DD70104C(v10, v11);
    return 0;
  }

  v12 = sub_1DD6ED118();
  sub_1DD76D0F4(v12, v13);
  v14 = sub_1DD770D4C();
  sub_1DD76D0F4(v14, v15);
  v16 = sub_1DD6ED118();
  v17 = MEMORY[0x1E12B41A0](v16);
  v18 = sub_1DD770D4C();
  sub_1DD70104C(v18, v19);
  v20 = sub_1DD770D4C();
  sub_1DD70104C(v20, v21);
  v22 = sub_1DD6ED118();
  sub_1DD70104C(v22, v23);
  v24 = sub_1DD6ED118();
  sub_1DD70104C(v24, v25);
  return v17 & 1;
}

uint64_t sub_1DD7715DC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F4D6E6967756C70 && a2 == 0xEB000000006C6564)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD77167C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7715DC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7716A8(uint64_t a1)
{
  v2 = sub_1DD771868();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7716E4(uint64_t a1)
{
  v2 = sub_1DD771868();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ResponseOutput.VisualOutput.SystemSnippetOutputPayload.encode(to:)(uint64_t a1)
{
  v3 = sub_1DD710A9C(&qword_1ECD0FB58, &qword_1DD8814F0);
  sub_1DD6DDEAC(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DEBA0();
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = sub_1DD6ED180();
  sub_1DD6DEA7C(v11, v12);
  sub_1DD771868();
  sub_1DD875BB0();
  type metadata accessor for RGPluginModel(0);
  sub_1DD6E0ABC();
  sub_1DD7718BC(v13);
  sub_1DD8759D0();
  return (*(v5 + 8))(v1, v3);
}

unint64_t sub_1DD771868()
{
  result = qword_1ECD0FB60;
  if (!qword_1ECD0FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FB60);
  }

  return result;
}

unint64_t sub_1DD7718BC(uint64_t a1)
{
  result = sub_1DD6E0CF4(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void ResponseOutput.VisualOutput.SystemSnippetOutputPayload.init(from:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v25 = v3;
  v4 = type metadata accessor for RGPluginModel(0);
  v5 = sub_1DD6DE1C4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DE4A8();
  v26 = v9 - v8;
  v10 = sub_1DD710A9C(&qword_1ECD0FB70, &qword_1DD8814F8);
  sub_1DD6DDEAC(v10);
  v12 = *(v11 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6E9560();
  v14 = type metadata accessor for ResponseOutput.VisualOutput.SystemSnippetOutputPayload(0);
  v15 = sub_1DD6DEA10(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DE4A8();
  v20 = v19 - v18;
  v21 = v2[4];
  sub_1DD6DEA7C(v2, v2[3]);
  sub_1DD771868();
  sub_1DD875B90();
  if (!v0)
  {
    sub_1DD6E0ABC();
    sub_1DD7718BC(v22);
    sub_1DD8758D0();
    v23 = sub_1DD6ED80C();
    v24(v23, v10);
    sub_1DD6E95EC();
    sub_1DD771B18(v26, v20);
    sub_1DD6DEDBC();
    sub_1DD771B18(v20, v25);
  }

  sub_1DD6E1EC8(v2);
  sub_1DD6E0C78();
}

uint64_t sub_1DD771B18(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DD6E0D28();
  v5 = v4(v3);
  sub_1DD6DE1C4(v5);
  v7 = *(v6 + 32);
  v8 = sub_1DD6DDEFC();
  v9(v8);
  return a2;
}

uint64_t ResponseOutput.VisualOutput.PluginSnippetOutputPayload.pluginModelData.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_1DD6DDEFC();
  sub_1DD710E74(v3, v4);
  return sub_1DD6DDEFC();
}

uint64_t ResponseOutput.VisualOutput.PluginSnippetOutputPayload.bundleId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_1DD6DDEFC();
}

uint64_t ResponseOutput.VisualOutput.PluginSnippetOutputPayload.init(pluginModelData:bundleId:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t static ResponseOutput.VisualOutput.PluginSnippetOutputPayload.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if ((MEMORY[0x1E12B41A0](*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  sub_1DD6DDEFC();

  return sub_1DD875A30();
}

uint64_t sub_1DD771C94(uint64_t a1)
{
  v2 = sub_1DD771E70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD771CD0(uint64_t a1)
{
  v2 = sub_1DD771E70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ResponseOutput.VisualOutput.PluginSnippetOutputPayload.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD0FB80, &qword_1DD881500);
  sub_1DD6DDEAC(v4);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DEA6C();
  v8 = *v0;
  v9 = v0[1];
  v13 = v0[3];
  v14 = v0[2];
  v10 = v3[4];
  sub_1DD6DEA7C(v3, v3[3]);
  sub_1DD710E74(v8, v9);
  sub_1DD771E70();
  sub_1DD875BB0();
  sub_1DD712070();
  sub_1DD6DE334();
  sub_1DD8759D0();
  sub_1DD6E6658(v8, v9);
  if (!v1)
  {
    sub_1DD6DE334();
    sub_1DD875970();
  }

  v11 = sub_1DD6DE58C();
  v12(v11);
  sub_1DD6E0C78();
}

unint64_t sub_1DD771E70()
{
  result = qword_1ECD0FB88;
  if (!qword_1ECD0FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FB88);
  }

  return result;
}

void ResponseOutput.VisualOutput.PluginSnippetOutputPayload.init(from:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v4 = v3;
  v5 = sub_1DD710A9C(&qword_1ECD0FB90, &qword_1DD881508);
  sub_1DD6DDEAC(v5);
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DDFE4();
  v9 = v2[4];
  sub_1DD6DEA7C(v2, v2[3]);
  sub_1DD771E70();
  sub_1DD77E6F4();
  sub_1DD6DFF18();
  sub_1DD875B90();
  if (v0)
  {
    sub_1DD6E1EC8(v2);
  }

  else
  {
    sub_1DD717D38();
    sub_1DD6FF994();
    sub_1DD8758D0();
    v10 = sub_1DD875870();
    v12 = v11;
    v13 = sub_1DD6DFF30();
    v14(v13);
    *v4 = v15;
    v4[1] = v16;
    v4[2] = v10;
    v4[3] = v12;
    sub_1DD710E74(v15, v16);

    sub_1DD6E1EC8(v2);
    sub_1DD6E6658(v15, v16);
  }

  sub_1DD6E0C78();
}

uint64_t static ResponseOutput.VisualOutput.AceCommandOutputPayload.AceCommandOutputData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  if (v6)
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  if (*(a2 + 16))
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  v12 = (v7 >> 60) & 3 | v11;
  switch((v4 >> 60) & 3 | v10)
  {
    case 1uLL:
      if (v12 == 1)
      {
        goto LABEL_19;
      }

      goto LABEL_28;
    case 2uLL:
      if (v12 != 2)
      {
        goto LABEL_28;
      }

      goto LABEL_19;
    case 3uLL:
      if (v12 != 3)
      {
        goto LABEL_28;
      }

      goto LABEL_19;
    case 4uLL:
      if (v12 == 4)
      {
        goto LABEL_11;
      }

      goto LABEL_28;
    case 5uLL:
      if (v12 != 5)
      {
        goto LABEL_28;
      }

LABEL_19:
      sub_1DD6DF268();
      sub_1DD7722F0(v8, v7, v9, v21);
      v22 = sub_1DD6E1F14();
      sub_1DD7722F0(v22, v23, v24, v2);
      v18 = v4 & 0xCFFFFFFFFFFFFFFFLL;
      v20 = v7 & 0xCFFFFFFFFFFFFFFFLL;
      v17 = v5;
      v19 = v8;
      goto LABEL_20;
    case 6uLL:
      if (v12 != 6 || v8 != 0 || v7 != 0x2000000000000000)
      {
        goto LABEL_28;
      }

      sub_1DD7722F0(*a1, v4, v6, sub_1DD6E6658);
      sub_1DD7722F0(0, 0x2000000000000000uLL, v9, sub_1DD6E6658);
      return 1;
    default:
      if (v12)
      {
LABEL_28:
        sub_1DD6DF268();
        sub_1DD7722F0(v8, v7, v9, v32);
        v33 = sub_1DD6E1F14();
        sub_1DD7722F0(v33, v34, v35, v2);
        sub_1DD7722F0(v5, v4, v6, sub_1DD6E6658);
        v36 = sub_1DD6E87AC();
        sub_1DD7722F0(v36, v37, v9, sub_1DD6E6658);
        return 0;
      }

      else
      {
LABEL_11:
        sub_1DD6DF268();
        sub_1DD7722F0(v8, v7, v9, v13);
        v14 = sub_1DD6E1F14();
        sub_1DD7722F0(v14, v15, v16, v2);
        v17 = sub_1DD6DDEDC();
        v19 = v8;
        v20 = v7;
LABEL_20:
        v25 = MEMORY[0x1E12B41A0](v17, v18, v19, v20);
        sub_1DD6E6A8C();
        sub_1DD7722F0(v5, v4, v6, v26);
        v27 = sub_1DD6E87AC();
        sub_1DD7722F0(v27, v28, v9, v3);
        return v25 & 1;
      }
  }
}

uint64_t sub_1DD7722F0(uint64_t result, unint64_t a2, char a3, uint64_t (*a4)(uint64_t, unint64_t))
{
  if (a3)
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  switch((a2 >> 60) & 3 | v4)
  {
    case 0uLL:
    case 4uLL:
      goto LABEL_6;
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 5uLL:
      a2 &= 0xCFFFFFFFFFFFFFFFLL;
LABEL_6:
      result = a4(result, a2);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD77233C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7377656956646461 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F6C616944646461 && a2 == 0xEA00000000007367;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7449796173 && a2 == 0xE500000000000000;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7449746165706572 && a2 == 0xE800000000000000;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000001DD8B5CF0 == a2;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x46646E616D6D6F63 && a2 == 0xED000064656C6961;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 1701736302 && a2 == 0xE400000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_1DD875A30();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DD772588(char a1)
{
  result = 0x7377656956646461;
  switch(a1)
  {
    case 1:
      result = 0x6F6C616944646461;
      break;
    case 2:
      result = 0x7449796173;
      break;
    case 3:
      result = 0x7449746165706572;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x46646E616D6D6F63;
      break;
    case 6:
      result = 1701736302;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD772658(uint64_t a1)
{
  v2 = sub_1DD7733D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD772694(uint64_t a1)
{
  v2 = sub_1DD7733D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7726D0(uint64_t a1)
{
  v2 = sub_1DD773424();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD77270C(uint64_t a1)
{
  v2 = sub_1DD773424();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD772750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD77233C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD772778@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD772580();
  *a1 = result;
  return result;
}

uint64_t sub_1DD7727A0(uint64_t a1)
{
  v2 = sub_1DD7731D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7727DC(uint64_t a1)
{
  v2 = sub_1DD7731D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD772818(uint64_t a1)
{
  v2 = sub_1DD773280();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD772854(uint64_t a1)
{
  v2 = sub_1DD773280();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD772890(uint64_t a1)
{
  v2 = sub_1DD77322C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7728CC(uint64_t a1)
{
  v2 = sub_1DD77322C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD772908(uint64_t a1)
{
  v2 = sub_1DD773328();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD772944(uint64_t a1)
{
  v2 = sub_1DD773328();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD772980(uint64_t a1)
{
  v2 = sub_1DD7732D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7729BC(uint64_t a1)
{
  v2 = sub_1DD7732D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7729F8(uint64_t a1)
{
  v2 = sub_1DD77337C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD772A34(uint64_t a1)
{
  v2 = sub_1DD77337C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ResponseOutput.VisualOutput.AceCommandOutputPayload.AceCommandOutputData.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v60 = sub_1DD710A9C(&qword_1ECD0FB98, &qword_1DD881510);
  sub_1DD6DDEAC(v60);
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6E0C6C();
  v59 = v7;
  v61 = sub_1DD710A9C(&qword_1ECD0FBA0, &qword_1DD881518);
  sub_1DD6DDEAC(v61);
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6E0C6C();
  v11 = sub_1DD710A9C(&qword_1ECD0FBA8, &qword_1DD881520);
  v58 = sub_1DD6DDEAC(v11);
  v13 = *(v12 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6E0C6C();
  v15 = sub_1DD710A9C(&qword_1ECD0FBB0, &qword_1DD881528);
  v57 = sub_1DD6DDEAC(v15);
  v17 = *(v16 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6E0C6C();
  sub_1DD77E738(v19);
  v20 = sub_1DD710A9C(&qword_1ECD0FBB8, &qword_1DD881530);
  v56 = sub_1DD6DDEAC(v20);
  v22 = *(v21 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1DD6E0C6C();
  v55 = sub_1DD710A9C(&qword_1ECD0FBC0, &qword_1DD881538);
  sub_1DD6DDEAC(v55);
  v54 = v24;
  v26 = *(v25 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD6E17C8();
  v28 = sub_1DD710A9C(&qword_1ECD0FBC8, &qword_1DD881540);
  sub_1DD6DDEAC(v28);
  v30 = *(v29 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD6E9560();
  v32 = sub_1DD710A9C(&qword_1ECD0FBD0, &qword_1DD881548);
  v63 = sub_1DD6DDEAC(v32);
  v34 = *(v33 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1DD6E0C6C();
  v36 = v1[1];
  v62 = *v1;
  v37 = *(v1 + 16);
  v38 = v3[4];
  sub_1DD6DEA7C(v3, v3[3]);
  sub_1DD7731D8();
  sub_1DD77E6F4();
  sub_1DD875BB0();
  if (v37)
  {
    v39 = 4;
  }

  else
  {
    v39 = 0;
  }

  switch((v36 >> 60) & 3 | v39)
  {
    case 1uLL:
      sub_1DD7733D0();
      sub_1DD6FF994();
      sub_1DD875910();
      sub_1DD712070();
      sub_1DD8759D0();
      (*(v54 + 8))(v0, v55);
      v44 = sub_1DD700BFC();
      v46 = v63;
      goto LABEL_13;
    case 2uLL:
      sub_1DD77337C();
      v47 = v63;
      sub_1DD6F3128();
      sub_1DD875910();
      sub_1DD712070();
      v48 = v56;
      sub_1DD6E7268();
      goto LABEL_12;
    case 3uLL:
      sub_1DD773328();
      v47 = v63;
      sub_1DD6F3128();
      sub_1DD875910();
      sub_1DD712070();
      v48 = v57;
      sub_1DD6E7268();
      goto LABEL_12;
    case 4uLL:
      sub_1DD7732D4();
      v40 = v63;
      sub_1DD6FF994();
      sub_1DD875910();
      sub_1DD712070();
      sub_1DD8759D0();
      v41 = sub_1DD6E61C4();
      v43 = v58;
      goto LABEL_7;
    case 5uLL:
      sub_1DD773280();
      v47 = v63;
      sub_1DD6F3128();
      sub_1DD875910();
      sub_1DD712070();
      v48 = v61;
      sub_1DD6E7268();
LABEL_12:
      v49 = sub_1DD6E61C4();
      v50(v49, v48);
      v44 = sub_1DD700BFC();
      v46 = v47;
      goto LABEL_13;
    case 6uLL:
      sub_1DD77322C();
      sub_1DD6FF994();
      sub_1DD875910();
      sub_1DD6E5918();
      v51(v59, v60);
      v52 = sub_1DD700BFC();
      v53(v52, v63);
      goto LABEL_14;
    default:
      sub_1DD773424();
      v40 = v63;
      sub_1DD6FF994();
      sub_1DD875910();
      sub_1DD712070();
      sub_1DD8759D0();
      v41 = sub_1DD6ED80C();
      v43 = v28;
LABEL_7:
      v42(v41, v43);
      v44 = sub_1DD700BFC();
      v46 = v40;
LABEL_13:
      v45(v44, v46);
LABEL_14:
      sub_1DD6E0C78();
      return;
  }
}

unint64_t sub_1DD7731D8()
{
  result = qword_1ECD0FBD8;
  if (!qword_1ECD0FBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FBD8);
  }

  return result;
}

unint64_t sub_1DD77322C()
{
  result = qword_1ECD0FBE0;
  if (!qword_1ECD0FBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FBE0);
  }

  return result;
}

unint64_t sub_1DD773280()
{
  result = qword_1ECD0FBE8;
  if (!qword_1ECD0FBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FBE8);
  }

  return result;
}

unint64_t sub_1DD7732D4()
{
  result = qword_1ECD0FBF0;
  if (!qword_1ECD0FBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FBF0);
  }

  return result;
}

unint64_t sub_1DD773328()
{
  result = qword_1ECD0FBF8;
  if (!qword_1ECD0FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FBF8);
  }

  return result;
}

unint64_t sub_1DD77337C()
{
  result = qword_1ECD0FC00;
  if (!qword_1ECD0FC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FC00);
  }

  return result;
}

unint64_t sub_1DD7733D0()
{
  result = qword_1ECD0FC08;
  if (!qword_1ECD0FC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FC08);
  }

  return result;
}

unint64_t sub_1DD773424()
{
  result = qword_1ECD0FC10;
  if (!qword_1ECD0FC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FC10);
  }

  return result;
}

void ResponseOutput.VisualOutput.AceCommandOutputPayload.AceCommandOutputData.init(from:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v107 = v4;
  v5 = sub_1DD710A9C(&qword_1ECD0FC18, &qword_1DD881550);
  sub_1DD6DDEAC(v5);
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6E0C6C();
  v106 = sub_1DD710A9C(&qword_1ECD0FC20, &qword_1DD881558);
  sub_1DD6DDEAC(v106);
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6E0C6C();
  v12 = sub_1DD710A9C(&qword_1ECD0FC28, &qword_1DD881560);
  sub_1DD6DDEAC(v12);
  v14 = *(v13 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6E0C6C();
  v16 = sub_1DD710A9C(&qword_1ECD0FC30, &qword_1DD881568);
  sub_1DD6DDEAC(v16);
  v18 = *(v17 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6E0C6C();
  sub_1DD6FAD38(v20);
  v21 = sub_1DD710A9C(&qword_1ECD0FC38, &qword_1DD881570);
  sub_1DD6DDEAC(v21);
  v23 = *(v22 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD6E0C6C();
  v25 = sub_1DD710A9C(&qword_1ECD0FC40, &qword_1DD881578);
  sub_1DD6DDEAC(v25);
  v27 = *(v26 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD6DEBA0();
  v29 = sub_1DD710A9C(&qword_1ECD0FC48, &qword_1DD881580);
  sub_1DD6DDEAC(v29);
  v31 = *(v30 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD6DEA6C();
  v33 = sub_1DD710A9C(&qword_1ECD0FC50, &unk_1DD881588);
  sub_1DD6DDEAC(v33);
  v35 = v34;
  v37 = *(v36 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1DD6E7258();
  v39 = v3[3];
  v40 = v3[4];
  v108 = v3;
  v41 = sub_1DD6ED180();
  sub_1DD6DEA7C(v41, v42);
  sub_1DD7731D8();
  sub_1DD875B90();
  if (!v0)
  {
    v111 = v35;
    v43 = sub_1DD875900();
    sub_1DD6ED750(v43, 0);
    if (v45 == v44 >> 1)
    {
      v46 = v35;
    }

    else
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v53 == v54)
      {
        __break(1u);
        return;
      }

      v55 = v1;
      v56 = *(v52 + v51);
      v57 = sub_1DD77E6E4(v47, v48, v49, v50, v51);
      sub_1DD6ED830(v57);
      v59 = v58;
      v61 = v60;
      swift_unknownObjectRelease();
      if (v59 == v61 >> 1)
      {
        switch(v56)
        {
          case 1:
            sub_1DD7733D0();
            sub_1DD6E7150();
            sub_1DD717D38();
            sub_1DD6E4968();
            sub_1DD8758D0();
            sub_1DD6F9BAC();
            swift_unknownObjectRelease();
            v97 = sub_1DD6DE58C();
            v98(v97);
            v99 = sub_1DD6E08C4();
            v100(v99);
            sub_1DD700BD8();
            v96 = v101 | 0x1000000000000000;
            break;
          case 2:
            sub_1DD77337C();
            sub_1DD6E7150();
            sub_1DD717D38();
            sub_1DD6E4968();
            sub_1DD8758D0();
            sub_1DD6F9BAC();
            swift_unknownObjectRelease();
            v80 = sub_1DD6DE58C();
            v81(v80);
            v82 = sub_1DD6E08C4();
            v83(v82);
            sub_1DD700BD8();
            v96 = v84 | 0x2000000000000000;
            break;
          case 3:
            sub_1DD773328();
            sub_1DD6E7150();
            sub_1DD717D38();
            sub_1DD6E4968();
            sub_1DD8758D0();
            sub_1DD6F9BAC();
            swift_unknownObjectRelease();
            v85 = sub_1DD6DE58C();
            v86(v85);
            v87 = sub_1DD6E08C4();
            v88(v87);
            sub_1DD700BD8();
            v96 = v89 | 0x3000000000000000;
            break;
          case 4:
            LOBYTE(v109) = 4;
            sub_1DD7732D4();
            sub_1DD6E658C();
            sub_1DD717D38();
            sub_1DD6E4968();
            sub_1DD8758D0();
            sub_1DD6F9BAC();
            swift_unknownObjectRelease();
            v76 = sub_1DD6DE58C();
            v77(v76);
            v78 = sub_1DD6E08C4();
            v79(v78);
            v94 = v109;
            v96 = v110;
            goto LABEL_19;
          case 5:
            LOBYTE(v109) = 5;
            sub_1DD773280();
            sub_1DD6E7150();
            sub_1DD717D38();
            sub_1DD6E4968();
            sub_1DD8758D0();
            sub_1DD6F9BAC();
            swift_unknownObjectRelease();
            v102 = sub_1DD6DE58C();
            v103(v102);
            v104 = sub_1DD6E08C4();
            v105(v104);
            v94 = v109;
            v96 = v110 | 0x1000000000000000;
LABEL_19:
            v95 = 1;
            break;
          case 6:
            sub_1DD77322C();
            sub_1DD6E658C();
            swift_unknownObjectRelease();
            v72 = sub_1DD6FF900();
            v73(v72);
            v74 = sub_1DD6E08C4();
            v75(v74);
            v94 = 0;
            v95 = 1;
            v96 = 0x2000000000000000;
            break;
          default:
            sub_1DD773424();
            sub_1DD6E7150();
            sub_1DD717D38();
            sub_1DD6E4968();
            sub_1DD8758D0();
            sub_1DD6F9BAC();
            swift_unknownObjectRelease();
            v90 = sub_1DD6DE58C();
            v91(v90);
            v92 = sub_1DD6E08C4();
            v93(v92);
            sub_1DD700BD8();
            break;
        }

        v71 = v108;
        *v107 = v94;
        *(v107 + 8) = v96;
        *(v107 + 16) = v95;
        goto LABEL_12;
      }

      v46 = v111;
      v1 = v55;
    }

    v62 = sub_1DD875740();
    sub_1DD6E41BC();
    v64 = v63;
    v65 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v64 = &type metadata for ResponseOutput.VisualOutput.AceCommandOutputPayload.AceCommandOutputData;
    sub_1DD875810();
    sub_1DD6DF12C();
    v66 = *MEMORY[0x1E69E6AF8];
    sub_1DD6E0540(v62);
    v68 = *(v67 + 104);
    v69 = sub_1DD6FEB10();
    v70(v69);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v46 + 8))(v1, v33);
  }

  v71 = v108;
LABEL_12:
  sub_1DD6E1EC8(v71);
  sub_1DD6E0C78();
}

uint64_t ResponseOutput.VisualOutput.AceCommandOutputPayload.aceCommandOutputData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  sub_1DD6E5EF8();
  return sub_1DD7722F0(v4, v5, v6, v7);
}

__n128 ResponseOutput.VisualOutput.AceCommandOutputPayload.init(aceCommandOutputData:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

uint64_t static ResponseOutput.VisualOutput.AceCommandOutputPayload.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v17[0] = *a1;
  v17[1] = v4;
  v18 = v5;
  v15[0] = v6;
  v15[1] = v7;
  v16 = v8;
  sub_1DD6DF268();
  sub_1DD7722F0(v17[0], v4, v5, v9);
  sub_1DD7722F0(v6, v7, v8, v2);
  v10 = static ResponseOutput.VisualOutput.AceCommandOutputPayload.AceCommandOutputData.== infix(_:_:)(v17, v15);
  sub_1DD6E6A8C();
  sub_1DD7722F0(v6, v7, v8, v11);
  v12 = sub_1DD6DDEFC();
  sub_1DD7722F0(v12, v13, v5, v3);
  return v10 & 1;
}

uint64_t sub_1DD773F68(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001DD8B5D10 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD774008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD773F68(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD774034(uint64_t a1)
{
  v2 = sub_1DD77A7C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD774070(uint64_t a1)
{
  v2 = sub_1DD77A7C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ResponseOutput.VisualOutput.AceCommandOutputPayload.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v20 = sub_1DD710A9C(&qword_1ECD0FC58, &qword_1DD881598);
  sub_1DD6DDEAC(v20);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DE340();
  v8 = *v0;
  v9 = *(v0 + 8);
  v10 = *(v0 + 16);
  v11 = v2[4];
  sub_1DD6DEA7C(v2, v2[3]);
  sub_1DD6E5EF8();
  sub_1DD7722F0(v8, v9, v10, v12);
  sub_1DD77A7C0();
  sub_1DD875BB0();
  sub_1DD77A814();
  sub_1DD8759D0();
  sub_1DD6DE1D4();
  sub_1DD7722F0(v13, v14, v15, v16);
  v17 = *(v4 + 8);
  v18 = sub_1DD6E0F70();
  v19(v18);
  sub_1DD6E0C78();
}

void ResponseOutput.VisualOutput.AceCommandOutputPayload.init(from:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v4 = v3;
  v5 = sub_1DD710A9C(&qword_1ECD0FC70, &qword_1DD8815A0);
  sub_1DD6DDEAC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DDFE4();
  v11 = v2[4];
  sub_1DD6DEA7C(v2, v2[3]);
  sub_1DD77A7C0();
  sub_1DD77E6F4();
  sub_1DD6DFF18();
  sub_1DD875B90();
  if (!v0)
  {
    sub_1DD77A868();
    sub_1DD6FF994();
    sub_1DD8758D0();
    v12 = *(v7 + 8);
    v13 = sub_1DD6E0F98();
    v14(v13);
    *v4 = v15;
    *(v4 + 16) = v16;
  }

  sub_1DD6E1EC8(v2);
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t static ResponseOutput.VisualOutput.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ResponseOutput.VisualOutput.SystemSnippetOutputPayload(0);
  v6 = sub_1DD6DEA10(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DE4A8();
  v101 = v10 - v9;
  v11 = type metadata accessor for ResponseOutput.VisualOutput(0);
  v12 = sub_1DD6DE1C4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v100 - v18);
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD6E402C();
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v100 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v100 - v25);
  v27 = sub_1DD710A9C(&qword_1ECD0FC80, &qword_1DD8815A8);
  sub_1DD6DEA10(v27);
  v29 = *(v28 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v30);
  v33 = (&v100 + *(v32 + 56) - v31);
  v34 = a1;
  v35 = &v100 - v31;
  sub_1DD77A8DC(v34, &v100 - v31);
  sub_1DD77A8DC(a2, v33);
  sub_1DD6F441C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD6E52EC();
      sub_1DD77A8DC(v35, v23);
      v37 = *v23;
      v36 = v23[1];
      sub_1DD6E87AC();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_27;
      }

      goto LABEL_18;
    case 2u:
      sub_1DD6E52EC();
      v55 = sub_1DD6E0F98();
      sub_1DD77A8DC(v55, v56);
      sub_1DD6E87AC();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_1DD6DEDBC();
        v57 = v33;
        v58 = v101;
        sub_1DD771B18(v57, v101);
        sub_1DD6E9594();
        v45 = static RGPluginModel.== infix(_:_:)();
        sub_1DD77A934(v58, type metadata accessor for ResponseOutput.VisualOutput.SystemSnippetOutputPayload);
        v59 = sub_1DD6E40D8();
        sub_1DD77A934(v59, v60);
        sub_1DD6E1494();
        v54 = v35;
        goto LABEL_8;
      }

      sub_1DD6E1C24();
      sub_1DD77A934(v2, v86);
      goto LABEL_28;
    case 3u:
      sub_1DD6E52EC();
      sub_1DD77A8DC(v35, v19);
      v62 = *v19;
      v61 = v19[1];
      v64 = v19[2];
      v63 = v19[3];
      sub_1DD6E87AC();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v87 = sub_1DD6DDEDC();
        sub_1DD6E6658(v87, v88);
LABEL_27:

LABEL_28:
        sub_1DD6FC560(v35, &qword_1ECD0FC80, &qword_1DD8815A8);
        goto LABEL_29;
      }

      v65 = v35;
      v67 = *v33;
      v66 = v33[1];
      v69 = v33[2];
      v68 = v33[3];
      v70 = sub_1DD6DDEDC();
      if ((MEMORY[0x1E12B41A0](v70) & 1) == 0)
      {
        v91 = sub_1DD6F441C();
        sub_1DD6E6658(v91, v92);

        v93 = sub_1DD6DDEDC();
        sub_1DD6E6658(v93, v94);

        goto LABEL_33;
      }

      if (v64 == v69 && v63 == v68)
      {
        v95 = sub_1DD6F441C();
        sub_1DD6E6658(v95, v96);

        v97 = sub_1DD6DDEDC();
        sub_1DD6E6658(v97, v98);

        goto LABEL_36;
      }

      v72 = sub_1DD875A30();
      v73 = sub_1DD6F441C();
      sub_1DD6E6658(v73, v74);

      v75 = sub_1DD6DDEDC();
      sub_1DD6E6658(v75, v76);

      if ((v72 & 1) == 0)
      {
LABEL_33:
        sub_1DD6E1494();
        v81 = v65;
        goto LABEL_34;
      }

LABEL_36:
      sub_1DD6E1494();
      v90 = v65;
LABEL_37:
      sub_1DD77A934(v90, v89);
      v45 = 1;
      return v45 & 1;
    case 4u:
      sub_1DD6E52EC();
      sub_1DD77A8DC(v35, v16);
      v39 = *v16;
      v38 = *(v16 + 1);
      v40 = v16[16];
      sub_1DD6E87AC();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_1DD6DE1D4();
        v82 = sub_1DD6E1F14();
        sub_1DD7722F0(v82, v83, v84, v85);
        goto LABEL_28;
      }

      v41 = v35;
      v42 = *v33;
      v43 = v33[1];
      v44 = *(v33 + 16);
      v104[0] = v39;
      v104[1] = v38;
      v105 = v40;
      v102[0] = v42;
      v102[1] = v43;
      v103 = v44;
      sub_1DD7722F0(v39, v38, v40, sub_1DD710E74);
      sub_1DD7722F0(v42, v43, v44, sub_1DD710E74);
      v45 = static ResponseOutput.VisualOutput.AceCommandOutputPayload.AceCommandOutputData.== infix(_:_:)(v104, v102);
      sub_1DD6E6A8C();
      sub_1DD7722F0(v42, v43, v44, v46);
      v47 = sub_1DD6E1F14();
      sub_1DD7722F0(v47, v48, v49, v16);
      sub_1DD7722F0(v42, v43, v44, v16);
      v50 = sub_1DD6E1F14();
      sub_1DD7722F0(v50, v51, v52, v16);
      sub_1DD6E1494();
      v54 = v41;
LABEL_8:
      sub_1DD77A934(v54, v53);
      return v45 & 1;
    default:
      sub_1DD6E52EC();
      sub_1DD77A8DC(v35, v26);
      v37 = *v26;
      v36 = v26[1];
      sub_1DD6E87AC();
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_27;
      }

LABEL_18:
      if (v37 == *v33 && v36 == v33[1])
      {
      }

      else
      {
        v78 = v33[1];
        v79 = sub_1DD875A30();

        if ((v79 & 1) == 0)
        {
          sub_1DD6E1494();
          v81 = v35;
LABEL_34:
          sub_1DD77A934(v81, v80);
LABEL_29:
          v45 = 0;
          return v45 & 1;
        }
      }

      sub_1DD6E1494();
      v90 = v35;
      goto LABEL_37;
  }
}

uint64_t sub_1DD7748A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697463416576696CLL && a2 == 0xEC00000079746976;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7365527070416E69 && a2 == 0xED000065736E6F70;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E536D6574737973 && a2 == 0xED00007465707069;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E536E6967756C70 && a2 == 0xED00007465707069;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000010 && 0x80000001DD8B5D30 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1DD875A30();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1DD774A74(char a1)
{
  result = 0x697463416576696CLL;
  switch(a1)
  {
    case 1:
      result = 0x7365527070416E69;
      break;
    case 2:
      v3 = 0x6D6574737973;
      goto LABEL_6;
    case 3:
      v3 = 0x6E6967756C70;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E53000000000000;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD774B2C(uint64_t a1)
{
  v2 = sub_1DD77A9E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD774B68(uint64_t a1)
{
  v2 = sub_1DD77A9E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD774BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7748A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD774BD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD774A6C();
  *a1 = result;
  return result;
}

uint64_t sub_1DD774BFC(uint64_t a1)
{
  v2 = sub_1DD77A98C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD774C38(uint64_t a1)
{
  v2 = sub_1DD77A98C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD774C74(uint64_t a1)
{
  v2 = sub_1DD77AB84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD774CB0(uint64_t a1)
{
  v2 = sub_1DD77AB84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD774CEC(uint64_t a1)
{
  v2 = sub_1DD77AC2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD774D28(uint64_t a1)
{
  v2 = sub_1DD77AC2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD774D64(uint64_t a1)
{
  v2 = sub_1DD77AA88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD774DA0(uint64_t a1)
{
  v2 = sub_1DD77AA88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD774DDC(uint64_t a1)
{
  v2 = sub_1DD77AB30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD774E18(uint64_t a1)
{
  v2 = sub_1DD77AB30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ResponseOutput.VisualOutput.encode(to:)()
{
  sub_1DD6DED2C();
  v82 = v0;
  v2 = v1;
  v3 = sub_1DD710A9C(&qword_1ECD0FC88, &qword_1DD8815B0);
  sub_1DD6DDEAC(v3);
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6E0C6C();
  v7 = sub_1DD710A9C(&qword_1ECD0FC90, &qword_1DD8815B8);
  sub_1DD6DDEAC(v7);
  v81 = v8;
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6E0C6C();
  v12 = sub_1DD710A9C(&qword_1ECD0FC98, &qword_1DD8815C0);
  v80 = sub_1DD6DDEAC(v12);
  v14 = *(v13 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6E0C6C();
  v78 = type metadata accessor for ResponseOutput.VisualOutput.SystemSnippetOutputPayload(0);
  v16 = sub_1DD6DE1C4(v78);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6DE4A8();
  sub_1DD77E738(v20 - v19);
  v21 = sub_1DD710A9C(&qword_1ECD0FCA0, &qword_1DD8815C8);
  v77 = sub_1DD6DDEAC(v21);
  v23 = *(v22 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD6E9560();
  v25 = sub_1DD710A9C(&qword_1ECD0FCA8, &qword_1DD8815D0);
  sub_1DD6DDEAC(v25);
  v27 = *(v26 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD6E7258();
  v29 = type metadata accessor for ResponseOutput.VisualOutput(0);
  v30 = sub_1DD6DE1C4(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1DD6DE4A8();
  v35 = (v34 - v33);
  v36 = sub_1DD710A9C(&qword_1ECD0FCB0, &qword_1DD8815D8);
  v83 = sub_1DD6DDEAC(v36);
  v38 = *(v37 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1DD6DE340();
  v40 = *(v2 + 24);
  v41 = *(v2 + 32);
  v42 = sub_1DD6E21D0();
  sub_1DD6DEA7C(v42, v43);
  sub_1DD77A98C();
  sub_1DD875BB0();
  sub_1DD6E52EC();
  sub_1DD77A8DC(v82, v35);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v74 = *v35;
      v73 = v35[1];
      sub_1DD77AB84();
      v46 = v83;
      sub_1DD6F4360();
      sub_1DD875910();
      sub_1DD77ABD8();
      sub_1DD8759D0();
      v47 = sub_1DD6ED80C();
      v49 = v77;
      goto LABEL_7;
    case 2u:
      sub_1DD771B18(v35, v79);
      sub_1DD77AB30();
      sub_1DD6F4360();
      sub_1DD875910();
      sub_1DD6E17E4();
      sub_1DD7718BC(v58);
      sub_1DD8759D0();
      v59 = sub_1DD6FF900();
      v60(v59, v80);
      sub_1DD6E1C24();
      sub_1DD77A934(v79, v61);
      v62 = sub_1DD6E61C4();
      v63(v62, v83);
      goto LABEL_9;
    case 3u:
      v64 = *v35;
      v65 = v35[1];
      v67 = v35[2];
      v66 = v35[3];
      sub_1DD77AA88();
      sub_1DD6F4360();
      sub_1DD875910();
      sub_1DD77AADC();
      sub_1DD8759D0();
      v68 = *(v81 + 8);
      v69 = sub_1DD6DFF24();
      v70(v69);
      v71 = sub_1DD6E61C4();
      v72(v71, v83);
      sub_1DD6E6658(v64, v65);
      goto LABEL_8;
    case 4u:
      v50 = *v35;
      v51 = v35[1];
      v52 = *(v35 + 16);
      sub_1DD77A9E0();
      sub_1DD6F4360();
      sub_1DD875910();
      sub_1DD77AA34();
      sub_1DD8759D0();
      sub_1DD6E5918();
      v53 = sub_1DD6DFF24();
      v54(v53);
      v55 = sub_1DD6E61C4();
      v56(v55, v83);
      sub_1DD6DE1D4();
      sub_1DD7722F0(v50, v51, v52, v57);
      goto LABEL_9;
    default:
      v45 = *v35;
      v44 = v35[1];
      sub_1DD77AC2C();
      v46 = v83;
      sub_1DD6F4360();
      sub_1DD875910();
      sub_1DD77AC80();
      sub_1DD8759D0();
      v47 = sub_1DD705E24();
      v49 = v25;
LABEL_7:
      v48(v47, v49);
      v75 = sub_1DD6E61C4();
      v76(v75, v46);
LABEL_8:

LABEL_9:
      sub_1DD6E0C78();
      return;
  }
}

void ResponseOutput.VisualOutput.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v172 = v27;
  v168 = sub_1DD710A9C(&qword_1ECD0FD10, &qword_1DD8815E0);
  sub_1DD6DDEAC(v168);
  v175 = v28;
  v30 = *(v29 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD6E0C6C();
  sub_1DD6FAD38(v32);
  v167 = sub_1DD710A9C(&qword_1ECD0FD18, &qword_1DD8815E8);
  sub_1DD6DDEAC(v167);
  v174 = v33;
  v35 = *(v34 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1DD6E0C6C();
  v171 = v37;
  v166 = sub_1DD710A9C(&qword_1ECD0FD20, &qword_1DD8815F0);
  sub_1DD6DDEAC(v166);
  v173 = v38;
  v40 = *(v39 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1DD6E0C6C();
  v170 = v42;
  v165 = sub_1DD710A9C(&qword_1ECD0FD28, &qword_1DD8815F8);
  sub_1DD6DDEAC(v165);
  v164 = v43;
  v45 = *(v44 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v46);
  sub_1DD6E0C6C();
  sub_1DD77E738(v47);
  v163 = sub_1DD710A9C(&qword_1ECD0FD30, &qword_1DD881600);
  sub_1DD6DDEAC(v163);
  v162 = v48;
  v50 = *(v49 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v51);
  sub_1DD6E0C6C();
  v169 = v52;
  v178 = sub_1DD710A9C(&qword_1ECD0FD38, &qword_1DD881608);
  sub_1DD6DDEAC(v178);
  v177 = v53;
  v55 = *(v54 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v56);
  sub_1DD6DDFE4();
  v176 = type metadata accessor for ResponseOutput.VisualOutput(0);
  v57 = sub_1DD6DE1C4(v176);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v161 = (v157 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v61);
  v63 = v157 - v62;
  MEMORY[0x1EEE9AC00](v64);
  v66 = v157 - v65;
  MEMORY[0x1EEE9AC00](v67);
  v69 = v157 - v68;
  MEMORY[0x1EEE9AC00](v70);
  sub_1DD6E402C();
  MEMORY[0x1EEE9AC00](v71);
  v73 = v157 - v72;
  v75 = v26[3];
  v74 = v26[4];
  v179 = v26;
  sub_1DD6DEA7C(v26, v75);
  sub_1DD77A98C();
  sub_1DD77E6F4();
  sub_1DD875B90();
  if (!v20)
  {
    v157[2] = v21;
    v157[3] = v69;
    v158 = v63;
    v159 = v66;
    v160 = v73;
    v76 = v178;
    v77 = v22;
    v78 = sub_1DD875900();
    sub_1DD6ED750(v78, 0);
    if (v80 == v79 >> 1)
    {
      v82 = v176;
      v81 = v177;
    }

    else
    {
      sub_1DD6E6120();
      v183 = v22;
      v157[0] = 0;
      sub_1DD6E42A8();
      if (v89 == v90)
      {
        __break(1u);
        return;
      }

      v91 = *(v88 + v87);
      v92 = sub_1DD77E6E4(v83, v84, v85, v86, v87);
      v93 = sub_1DD6ED830(v92);
      v95 = v94;
      v97 = v96;
      swift_unknownObjectRelease();
      v157[1] = v93;
      v99 = v174;
      v98 = v175;
      v100 = v173;
      if (v95 == v97 >> 1)
      {
        v101 = v157[0];
        v102 = v172;
        switch(v91)
        {
          case 1:
            LOBYTE(v180) = 1;
            sub_1DD77AB84();
            sub_1DD6FAAE8();
            sub_1DD77AD7C();
            v103 = v165;
            sub_1DD6E4968();
            sub_1DD8758D0();
            sub_1DD700B98();
            v150 = *(v149 - 256);
            swift_unknownObjectRelease();
            v151 = sub_1DD6DE58C();
            v152(v151);
            v153 = sub_1DD6F3114();
            v154(v153);
            sub_1DD6FAC08(v180);
            goto LABEL_19;
          case 2:
            LOBYTE(v180) = 2;
            sub_1DD77AB30();
            sub_1DD6FAAE8();
            type metadata accessor for ResponseOutput.VisualOutput.SystemSnippetOutputPayload(0);
            sub_1DD6E17E4();
            sub_1DD7718BC(v114);
            v115 = v159;
            sub_1DD8758D0();
            sub_1DD700B98();
            v127 = *(v126 - 256);
            swift_unknownObjectRelease();
            v128 = *(v100 + 8);
            v129 = sub_1DD6E0F70();
            v130(v129);
            v131 = sub_1DD6F3114();
            v132(v131);
            swift_storeEnumTagMultiPayload();
            sub_1DD6E05A4();
            v133 = v115;
            goto LABEL_20;
          case 3:
            LOBYTE(v180) = 3;
            sub_1DD77AA88();
            v116 = v178;
            sub_1DD6F3128();
            sub_1DD875800();
            if (v101)
            {
              sub_1DD6E5918();
              v117(v183, v116);
              swift_unknownObjectRelease();
              goto LABEL_11;
            }

            sub_1DD77AD28();
            sub_1DD6F4360();
            sub_1DD8758D0();
            sub_1DD700B98();
            v135 = *(v134 - 256);
            swift_unknownObjectRelease();
            v136 = *(v99 + 8);
            v137 = sub_1DD6E40D8();
            v138(v137);
            v139 = sub_1DD6F3114();
            v140(v139);
            v141 = v181;
            v142 = v182;
            v103 = v158;
            *v158 = v180;
            *(v103 + 16) = v141;
            *(v103 + 24) = v142;
LABEL_19:
            swift_storeEnumTagMultiPayload();
            sub_1DD6E05A4();
            v133 = v103;
LABEL_20:
            v155 = v160;
            sub_1DD771B18(v133, v160);
            v156 = v179;
            sub_1DD6E05A4();
            sub_1DD771B18(v155, v102);
            v113 = v156;
            break;
          case 4:
            LOBYTE(v180) = 4;
            sub_1DD77A9E0();
            sub_1DD6FAAE8();
            sub_1DD77ACD4();
            sub_1DD6F4360();
            sub_1DD8758D0();
            sub_1DD700B98();
            v119 = *(v118 - 256);
            swift_unknownObjectRelease();
            v120 = *(v98 + 8);
            v121 = sub_1DD6E40D8();
            v122(v121);
            v123 = sub_1DD6F3114();
            v124(v123);
            v125 = v181;
            v103 = v161;
            *v161 = v180;
            *(v103 + 16) = v125;
            goto LABEL_19;
          default:
            LOBYTE(v180) = 0;
            sub_1DD77AC2C();
            sub_1DD6FAAE8();
            sub_1DD77ADD0();
            v103 = v163;
            sub_1DD6E4968();
            sub_1DD8758D0();
            sub_1DD700B98();
            v144 = *(v143 - 256);
            swift_unknownObjectRelease();
            v145 = sub_1DD6DE58C();
            v146(v145);
            v147 = sub_1DD6F3114();
            v148(v147);
            sub_1DD6FAC08(v180);
            goto LABEL_19;
        }

        goto LABEL_12;
      }

      v82 = v176;
      v81 = v177;
      v76 = v178;
      v77 = v183;
    }

    v104 = sub_1DD875740();
    sub_1DD6E41BC();
    v106 = v105;
    v107 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v106 = v82;
    sub_1DD875810();
    sub_1DD6DF12C();
    v108 = *MEMORY[0x1E69E6AF8];
    sub_1DD6E0540(v104);
    v110 = *(v109 + 104);
    v111 = sub_1DD6FEB10();
    v112(v111);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v81 + 8))(v77, v76);
  }

LABEL_11:
  v113 = v179;
LABEL_12:
  sub_1DD6E1EC8(v113);
  sub_1DD6E0C78();
}

uint64_t sub_1DD775FE0(uint64_t a1)
{
  v2 = sub_1DD77AE24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD77601C(uint64_t a1)
{
  v2 = sub_1DD77AE24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ResponseOutput.VisualOutputOptions.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v3 = sub_1DD710A9C(&qword_1ECD0FD68, &qword_1DD881610);
  sub_1DD6DDEAC(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DEBA0();
  v9 = *v0;
  v10 = v2[4];
  sub_1DD6DEA7C(v2, v2[3]);
  sub_1DD77AE24();
  sub_1DD6DFF18();
  sub_1DD875BB0();
  sub_1DD875980();
  v11 = *(v5 + 8);
  v12 = sub_1DD6DDEDC();
  v13(v12);
  sub_1DD6E0C78();
}

void ResponseOutput.VisualOutputOptions.init(from:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v4 = v3;
  v5 = sub_1DD710A9C(&qword_1ECD0FD78, &qword_1DD881618);
  sub_1DD6DDEAC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DDFE4();
  v11 = v2[4];
  sub_1DD6DEA7C(v2, v2[3]);
  sub_1DD77AE24();
  sub_1DD77E6F4();
  sub_1DD6DFF18();
  sub_1DD875B90();
  if (!v0)
  {
    sub_1DD6F178C();
    v12 = sub_1DD875880();
    v13 = *(v7 + 8);
    v14 = sub_1DD6E0F98();
    v15(v14);
    *v4 = v12 & 1;
  }

  sub_1DD6E1EC8(v2);
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t static ResponseOutput.DialogType.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1u:
      if (v7 != 1)
      {
        goto LABEL_41;
      }

      if (v3 != v6 || v2 != v5)
      {
        sub_1DD6E21D0();
        v10 = sub_1DD7013BC();
        v45 = sub_1DD6E0C60();
        v47 = sub_1DD6FC470(v45, v46, 1u);
        v49 = sub_1DD6FC470(v47, v48, 1u);
        sub_1DD77AE90(v49, v50, 1u);
        v17 = sub_1DD6E0C60();
        v19 = 1;
        goto LABEL_36;
      }

      v24 = 1;
      v72 = sub_1DD6E21D0();
      v74 = sub_1DD6FC470(v72, v73, 1u);
      v76 = sub_1DD6FC470(v74, v75, 1u);
      sub_1DD77AE90(v76, v77, 1u);
      v25 = sub_1DD6E21D0();
      v27 = 1;
      goto LABEL_45;
    case 2u:
      if (v7 != 2)
      {
        goto LABEL_41;
      }

      v28 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_1DD7013BC();
        v30 = sub_1DD6E0C60();
        v32 = sub_1DD6FC470(v30, v31, 2u);
        v34 = sub_1DD6FC470(v32, v33, 2u);
        sub_1DD77AE90(v34, v35, 2u);
        v17 = sub_1DD6E0C60();
        v19 = 2;
        goto LABEL_36;
      }

      v61 = sub_1DD6FC470(v28, v2, 2u);
      v63 = sub_1DD6FC470(v61, v62, 2u);
      sub_1DD77AE90(v63, v64, 2u);
      v65 = sub_1DD6E21D0();
      v67 = 2;
      goto LABEL_48;
    case 3u:
      if (v7 != 3)
      {
        goto LABEL_41;
      }

      v36 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_1DD7013BC();
        v38 = sub_1DD6E0C60();
        v40 = sub_1DD6FC470(v38, v39, 3u);
        v42 = sub_1DD6FC470(v40, v41, 3u);
        sub_1DD77AE90(v42, v43, 3u);
        v17 = sub_1DD6E0C60();
        v19 = 3;
        goto LABEL_36;
      }

      v68 = sub_1DD6FC470(v36, v2, 3u);
      v70 = sub_1DD6FC470(v68, v69, 3u);
      sub_1DD77AE90(v70, v71, 3u);
      v65 = sub_1DD6E21D0();
      v67 = 3;
      goto LABEL_48;
    case 4u:
      if (v3 | v2)
      {
        if (v7 != 4 || v6 != 1 || v5 != 0)
        {
LABEL_41:
          v53 = sub_1DD6E0C60();
          v55 = sub_1DD6FC470(v53, v54, v7);
          v57 = sub_1DD6FC470(v55, v56, v4);
          sub_1DD77AE90(v57, v58, v4);
          v59 = sub_1DD6E0C60();
          sub_1DD77AE90(v59, v60, v7);
          return 0;
        }

        v22 = sub_1DD6E21D0();
        sub_1DD77AE90(v22, v23, 4u);
        v24 = 1;
        v25 = 1;
        v26 = 0;
        v27 = 4;
LABEL_45:
        sub_1DD77AE90(v25, v26, v27);
      }

      else
      {
        if (v7 != 4 || (v5 | v6) != 0)
        {
          goto LABEL_41;
        }

        v78 = sub_1DD6E21D0();
        sub_1DD77AE90(v78, v79, 4u);
        v65 = 0;
        v66 = 0;
        v67 = 4;
LABEL_48:
        sub_1DD77AE90(v65, v66, v67);
        return 1;
      }

      return v24;
    default:
      if (*(a2 + 16))
      {
        goto LABEL_41;
      }

      v8 = *a1;
      if (v3 == v6 && v2 == v5)
      {
        v80 = sub_1DD6FC470(v8, v2, 0);
        v82 = sub_1DD6FC470(v80, v81, 0);
        sub_1DD77AE90(v82, v83, 0);
        v65 = sub_1DD6E21D0();
        v67 = 0;
        goto LABEL_48;
      }

      v10 = sub_1DD7013BC();
      v11 = sub_1DD6E0C60();
      v13 = sub_1DD6FC470(v11, v12, 0);
      v15 = sub_1DD6FC470(v13, v14, 0);
      sub_1DD77AE90(v15, v16, 0);
      v17 = sub_1DD6E0C60();
      v19 = 0;
LABEL_36:
      sub_1DD77AE90(v17, v18, v19);
      return v10 & 1;
  }
}

uint64_t sub_1DD7765D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6554636974617473 && a2 == 0xEA00000000007478;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F6C616944746163 && a2 == 0xE900000000000067;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x63696E6F73 && a2 == 0xE500000000000000;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65746172656E6567 && a2 == 0xE900000000000064;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000001DD8B5D50 == a2;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x7373657270707573 && a2 == 0xEA00000000006465)
          {

            return 5;
          }

          else
          {
            v11 = sub_1DD875A30();

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

unint64_t sub_1DD7767DC(char a1)
{
  result = 0x6554636974617473;
  switch(a1)
  {
    case 1:
      result = 0x6F6C616944746163;
      break;
    case 2:
      result = 0x63696E6F73;
      break;
    case 3:
      result = 0x65746172656E6567;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x7373657270707573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7768A4(uint64_t a1)
{
  v2 = sub_1DD77B04C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7768E0(uint64_t a1)
{
  v2 = sub_1DD77B04C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD776924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7765D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD77694C(uint64_t a1)
{
  v2 = sub_1DD77AEA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD776988(uint64_t a1)
{
  v2 = sub_1DD77AEA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7769C4(uint64_t a1)
{
  v2 = sub_1DD77AFA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD776A00(uint64_t a1)
{
  v2 = sub_1DD77AFA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD776A3C(uint64_t a1)
{
  v2 = sub_1DD77AFF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD776A78(uint64_t a1)
{
  v2 = sub_1DD77AFF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD776AB4(uint64_t a1)
{
  v2 = sub_1DD77B0A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD776AF0(uint64_t a1)
{
  v2 = sub_1DD77B0A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD776B2C(uint64_t a1)
{
  v2 = sub_1DD77AEFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD776B68(uint64_t a1)
{
  v2 = sub_1DD77AEFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD776BA4(uint64_t a1)
{
  v2 = sub_1DD77AF50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD776BE0(uint64_t a1)
{
  v2 = sub_1DD77AF50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ResponseOutput.DialogType.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v3 = sub_1DD710A9C(&qword_1ECD0FD80, &qword_1DD881620);
  sub_1DD6DDEAC(v3);
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6E0C6C();
  sub_1DD77E738(v7);
  v8 = sub_1DD710A9C(&qword_1ECD0FD88, &qword_1DD881628);
  sub_1DD6DDEAC(v8);
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6E0C6C();
  v12 = sub_1DD710A9C(&qword_1ECD0FD90, &qword_1DD881630);
  v13 = sub_1DD6DDEAC(v12);
  v63 = v14;
  v64 = v13;
  v16 = *(v15 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6E0C6C();
  sub_1DD6FAD38(v18);
  v19 = sub_1DD710A9C(&qword_1ECD0FD98, &qword_1DD881638);
  v20 = sub_1DD6DDEAC(v19);
  v60 = v21;
  v61 = v20;
  v23 = *(v22 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD6E0C6C();
  v59 = v25;
  v26 = sub_1DD710A9C(&qword_1ECD0FDA0, &qword_1DD881640);
  v58 = sub_1DD6DDEAC(v26);
  v28 = *(v27 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD6E7258();
  v30 = sub_1DD710A9C(&qword_1ECD0FDA8, &qword_1DD881648);
  sub_1DD6DDEAC(v30);
  v32 = *(v31 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1DD6DEBA0();
  v34 = sub_1DD710A9C(&qword_1ECD0FDB0, &qword_1DD881650);
  v35 = sub_1DD6DDEAC(v34);
  v66 = v36;
  v67 = v35;
  v38 = *(v37 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1DD6DE340();
  v65 = *v0;
  v40 = *(v0 + 16);
  v41 = v2[4];
  sub_1DD6DEA7C(v2, v2[3]);
  sub_1DD77AEA8();
  sub_1DD875BB0();
  switch(v40)
  {
    case 1:
      sub_1DD77B04C();
      v48 = v67;
      sub_1DD6F4360();
      sub_1DD875910();
      sub_1DD875970();
      v51 = sub_1DD705E24();
      v52(v51, v58);
      goto LABEL_9;
    case 2:
      sub_1DD77AFF8();
      v47 = v59;
      v48 = v67;
      sub_1DD6F4360();
      sub_1DD875910();
      v49 = v61;
      sub_1DD875970();
      v50 = v60;
      goto LABEL_7;
    case 3:
      sub_1DD77AFA4();
      v47 = v62;
      v48 = v67;
      sub_1DD6F4360();
      sub_1DD875910();
      v49 = v64;
      sub_1DD875970();
      v50 = v63;
LABEL_7:
      (*(v50 + 8))(v47, v49);
LABEL_9:
      v44 = sub_1DD6E61C4();
      v46 = v48;
      goto LABEL_10;
    case 4:
      if (v65 == 0)
      {
        sub_1DD77AF50();
      }

      else
      {
        sub_1DD6E41B0();
        sub_1DD77AEFC();
      }

      sub_1DD6F4360();
      sub_1DD875910();
      v53 = sub_1DD6FF900();
      v54(v53);
      v55 = *(v66 + 8);
      v56 = sub_1DD6E0F70();
      v57(v56);
      goto LABEL_13;
    default:
      sub_1DD77B0A0();
      sub_1DD6F4360();
      sub_1DD875910();
      sub_1DD875970();
      v42 = sub_1DD6FF900();
      v43(v42, v30);
      v44 = sub_1DD6E61C4();
      v46 = v67;
LABEL_10:
      v45(v44, v46);
LABEL_13:
      sub_1DD6E0C78();
      return;
  }
}

void ResponseOutput.DialogType.init(from:)()
{
  sub_1DD6DED2C();
  v4 = v3;
  v90 = v5;
  v92 = sub_1DD710A9C(&qword_1ECD0FDF0, &qword_1DD881658);
  sub_1DD6DDEAC(v92);
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6E0C6C();
  v9 = sub_1DD710A9C(&qword_1ECD0FDF8, &qword_1DD881660);
  v10 = sub_1DD6DDEAC(v9);
  v84 = v11;
  v85 = v10;
  v13 = *(v12 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6E0C6C();
  sub_1DD6FAD38(v15);
  v86 = sub_1DD710A9C(&qword_1ECD0FE00, &qword_1DD881668);
  sub_1DD6DDEAC(v86);
  v17 = *(v16 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6E0C6C();
  v91 = v19;
  v83 = sub_1DD710A9C(&qword_1ECD0FE08, &qword_1DD881670);
  sub_1DD6DDEAC(v83);
  v88 = v20;
  v22 = *(v21 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1DD6E0C6C();
  v93 = v24;
  v82 = sub_1DD710A9C(&qword_1ECD0FE10, &qword_1DD881678);
  sub_1DD6DDEAC(v82);
  v87 = v25;
  v27 = *(v26 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD6E7258();
  v29 = sub_1DD710A9C(&qword_1ECD0FE18, &qword_1DD881680);
  sub_1DD6DDEAC(v29);
  v31 = *(v30 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD6E17C8();
  v33 = sub_1DD710A9C(&qword_1ECD0FE20, &qword_1DD881688);
  sub_1DD6DDEAC(v33);
  v35 = *(v34 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1DD6E9560();
  v37 = v4[4];
  v94 = v4;
  sub_1DD6DEA7C(v4, v4[3]);
  sub_1DD77AEA8();
  sub_1DD875B90();
  if (!v1)
  {
    v80 = v29;
    v81 = v0;
    v38 = v93;
    v39 = sub_1DD875900();
    sub_1DD6ED750(v39, 0);
    if (v41 != v40 >> 1)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v44 == v45)
      {
        __break(1u);
        return;
      }

      v46 = *(v43 + v42);
      sub_1DD6ED830(v42 + 1);
      v48 = v47;
      v50 = v49;
      swift_unknownObjectRelease();
      if (v48 == v50 >> 1)
      {
        switch(v46)
        {
          case 1:
            sub_1DD77B04C();
            v50 = v2;
            sub_1DD6FBE10();
            sub_1DD6E5D24();
            sub_1DD6F178C();
            sub_1DD875870();
            sub_1DD77E718();
            sub_1DD6E72C0();
            (*(v87 + 8))(v2, v82);
            v73 = sub_1DD6E9ADC();
            v74(v73);
            v79 = 1;
            break;
          case 2:
            sub_1DD77AFF8();
            v50 = v93;
            sub_1DD6FBE10();
            sub_1DD6E5D24();
            sub_1DD6F178C();
            sub_1DD875870();
            sub_1DD77E718();
            sub_1DD6E72C0();
            (*(v88 + 8))(v93, v83);
            v68 = sub_1DD6E9ADC();
            v69(v68);
            v79 = 2;
            break;
          case 3:
            sub_1DD77AFA4();
            v50 = v91;
            sub_1DD6FBE10();
            sub_1DD6E5D24();
            sub_1DD6F178C();
            sub_1DD875870();
            sub_1DD77E718();
            sub_1DD6E72C0();
            sub_1DD6E5918();
            v70(v91, v86);
            v71 = sub_1DD6E9ADC();
            v72(v71);
            v79 = 3;
            break;
          case 4:
            sub_1DD77AF50();
            sub_1DD6FBE10();
            sub_1DD6E5D24();
            swift_unknownObjectRelease();
            (*(v84 + 8))(v89, v85);
            v62 = sub_1DD6E2754();
            v63(v62);
            v50 = 0;
            v46 = 0;
            v79 = 4;
            break;
          case 5:
            sub_1DD6E41B0();
            sub_1DD77AEFC();
            sub_1DD6FBE10();
            sub_1DD6E5D24();
            swift_unknownObjectRelease();
            v64 = sub_1DD705E24();
            v65(v64, v92);
            v66 = sub_1DD6E2754();
            v67(v66);
            v46 = 0;
            v79 = 4;
            v50 = 1;
            break;
          default:
            sub_1DD77B0A0();
            sub_1DD6FBE10();
            v46 = v81;
            sub_1DD875870();
            sub_1DD77E718();
            sub_1DD6E72C0();
            v75 = sub_1DD705E24();
            v76(v75, v80);
            v77 = sub_1DD6E9ADC();
            v78(v77);
            v79 = 0;
            v38 = v94;
            break;
        }

        *v90 = v50;
        *(v90 + 8) = v46;
        *(v90 + 16) = v79;
        goto LABEL_10;
      }
    }

    v51 = sub_1DD875740();
    sub_1DD6E41BC();
    v53 = v52;
    v54 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v53 = &type metadata for ResponseOutput.DialogType;
    sub_1DD875810();
    sub_1DD6DF12C();
    v55 = *MEMORY[0x1E69E6AF8];
    sub_1DD6E0540(v51);
    v57 = *(v56 + 104);
    v58 = sub_1DD6FEB10();
    v59(v58);
    swift_willThrow();
    swift_unknownObjectRelease();
    v60 = sub_1DD6E2754();
    v61(v60);
  }

  v38 = v94;
LABEL_10:
  sub_1DD6E1EC8(v38);
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t sub_1DD777AC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974656C706D6F63 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6769626D61736964 && a2 == 0xEE006E6F69746175;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x616D7269666E6F63 && a2 == 0xEC0000006E6F6974;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D726F666E69 && a2 == 0xE600000000000000;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 7041889 && a2 == 0xE300000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1DD875A30();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1DD777C74(char a1)
{
  result = 0x6974656C706D6F63;
  switch(a1)
  {
    case 1:
      result = 0x6769626D61736964;
      break;
    case 2:
      result = 0x616D7269666E6F63;
      break;
    case 3:
      result = 0x6D726F666E69;
      break;
    case 4:
      result = 7041889;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD777D1C(uint64_t a1)
{
  v2 = sub_1DD77B148();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD777D58(uint64_t a1)
{
  v2 = sub_1DD77B148();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD777D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD777AC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD777DC4(uint64_t a1)
{
  v2 = sub_1DD77B0F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD777E00(uint64_t a1)
{
  v2 = sub_1DD77B0F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD777E3C(uint64_t a1)
{
  v2 = sub_1DD77B298();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD777E78(uint64_t a1)
{
  v2 = sub_1DD77B298();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD777EB4(uint64_t a1)
{
  v2 = sub_1DD77B1F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD777EF0(uint64_t a1)
{
  v2 = sub_1DD77B1F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD777F2C(uint64_t a1)
{
  v2 = sub_1DD77B244();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD777F68(uint64_t a1)
{
  v2 = sub_1DD77B244();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD777FA4(uint64_t a1)
{
  v2 = sub_1DD77B19C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD777FE0(uint64_t a1)
{
  v2 = sub_1DD77B19C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ResponseOutput.ResponseType.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD0FE28, &qword_1DD881690);
  sub_1DD6DDEAC(v4);
  v52 = v5;
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6E0C6C();
  v51 = v9;
  v10 = sub_1DD710A9C(&qword_1ECD0FE30, &qword_1DD881698);
  sub_1DD6DDEAC(v10);
  v50 = v11;
  v13 = *(v12 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6E0C6C();
  v49 = v15;
  v16 = sub_1DD710A9C(&qword_1ECD0FE38, &qword_1DD8816A0);
  sub_1DD6DDEAC(v16);
  v48 = v17;
  v19 = *(v18 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD6E0C6C();
  v47 = v21;
  v22 = sub_1DD710A9C(&qword_1ECD0FE40, &qword_1DD8816A8);
  sub_1DD6DDEAC(v22);
  v46 = v23;
  v25 = *(v24 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD6E0C6C();
  v45 = v27;
  v28 = sub_1DD710A9C(&qword_1ECD0FE48, &qword_1DD8816B0);
  sub_1DD6DDEAC(v28);
  v30 = *(v29 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD6E9560();
  v32 = sub_1DD710A9C(&qword_1ECD0FE50, &qword_1DD8816B8);
  sub_1DD6DDEAC(v32);
  v34 = v33;
  v36 = *(v35 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1DD6E7258();
  v38 = *v0;
  v39 = v3[4];
  sub_1DD6DEA7C(v3, v3[3]);
  sub_1DD77B0F4();
  sub_1DD875BB0();
  v40 = (v34 + 8);
  switch(v38)
  {
    case 1:
      sub_1DD77B244();
      v43 = v45;
      sub_1DD6FADD0();
      v44 = v46;
      goto LABEL_7;
    case 2:
      sub_1DD77B1F0();
      v43 = v47;
      sub_1DD6FADD0();
      v44 = v48;
      goto LABEL_7;
    case 3:
      sub_1DD77B19C();
      v43 = v49;
      sub_1DD6FADD0();
      v44 = v50;
      goto LABEL_7;
    case 4:
      sub_1DD6E70D8();
      sub_1DD77B148();
      v43 = v51;
      sub_1DD6FADD0();
      v44 = v52;
LABEL_7:
      v42 = *(v44 + 8);
      v41 = v43;
      break;
    default:
      sub_1DD77B298();
      sub_1DD875910();
      v41 = sub_1DD6ED80C();
      break;
  }

  v42(v41);
  (*v40)(v1, v32);
  sub_1DD6E0C78();
}

uint64_t ResponseOutput.ResponseType.hashValue.getter()
{
  v1 = *v0;
  sub_1DD875B20();
  MEMORY[0x1E12B5570](v1);
  return sub_1DD875B60();
}

void ResponseOutput.ResponseType.init(from:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v64 = v3;
  v4 = sub_1DD710A9C(&qword_1ECD0FE88, &qword_1DD8816C0);
  sub_1DD6DDEAC(v4);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6E0C6C();
  v8 = sub_1DD710A9C(&qword_1ECD0FE90, &qword_1DD8816C8);
  sub_1DD6DDEAC(v8);
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6E0C6C();
  v12 = sub_1DD710A9C(&qword_1ECD0FE98, &qword_1DD8816D0);
  sub_1DD6DDEAC(v12);
  v14 = *(v13 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6E0C6C();
  v16 = sub_1DD710A9C(&qword_1ECD0FEA0, &qword_1DD8816D8);
  sub_1DD6DDEAC(v16);
  v18 = *(v17 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6E7258();
  v20 = sub_1DD710A9C(&qword_1ECD0FEA8, &qword_1DD8816E0);
  sub_1DD6DDEAC(v20);
  v22 = *(v21 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1DD6DEA6C();
  v24 = sub_1DD710A9C(&qword_1ECD0FEB0, &qword_1DD8816E8);
  sub_1DD6DDEAC(v24);
  v65 = v25;
  v27 = *(v26 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD6E17C8();
  v29 = v2[4];
  sub_1DD6DEA7C(v2, v2[3]);
  sub_1DD77B0F4();
  sub_1DD875B90();
  if (!v0)
  {
    v30 = sub_1DD875900();
    sub_1DD6ED750(v30, 0);
    if (v32 != v31 >> 1)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v39 == v40)
      {
        __break(1u);
        return;
      }

      v63 = *(v38 + v37);
      v41 = sub_1DD77E6E4(v33, v34, v35, v36, v37);
      sub_1DD6ED830(v41);
      v43 = v42;
      v45 = v44;
      swift_unknownObjectRelease();
      if (v43 == v45 >> 1)
      {
        switch(v63)
        {
          case 1:
            sub_1DD77B244();
            sub_1DD6DEBC8();
            swift_unknownObjectRelease();
            goto LABEL_15;
          case 2:
            sub_1DD77B1F0();
            sub_1DD6DEBC8();
            swift_unknownObjectRelease();
            goto LABEL_15;
          case 3:
            sub_1DD77B19C();
            sub_1DD6DEBC8();
            swift_unknownObjectRelease();
LABEL_15:
            v46 = sub_1DD6E61C4();
            break;
          case 4:
            sub_1DD6E70D8();
            sub_1DD77B148();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v46 = sub_1DD705E24();
            break;
          default:
            sub_1DD77B298();
            sub_1DD6DEBC8();
            swift_unknownObjectRelease();
            v46 = sub_1DD6E61C4();
            v48 = v20;
            break;
        }

        v47(v46, v48);
        v60 = *(v65 + 8);
        v61 = sub_1DD6ED180();
        v62(v61);
        *v64 = v63;
        sub_1DD6E1EC8(v2);
        goto LABEL_10;
      }
    }

    v49 = sub_1DD875740();
    sub_1DD6E41BC();
    v51 = v50;
    v52 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v51 = &type metadata for ResponseOutput.ResponseType;
    sub_1DD875810();
    sub_1DD875730();
    v53 = *MEMORY[0x1E69E6AF8];
    sub_1DD6E0540(v49);
    v55 = *(v54 + 104);
    v56 = sub_1DD6FEB10();
    v57(v56);
    swift_willThrow();
    swift_unknownObjectRelease();
    v58 = sub_1DD6DEAAC();
    v59(v58);
  }

  sub_1DD6E1EC8(v2);
LABEL_10:
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t ResponseOutput.printedDialogOutput.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_1DD6EFF80(v2, v3, *(v1 + 24), a1);
}

uint64_t ResponseOutput.spokenDialogOutput.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  a1[1] = v3;
  return sub_1DD6EFF80(v2, v3, *(v1 + 48), a1);
}

uint64_t ResponseOutput.attribution.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ResponseOutput(0) + 28);

  return sub_1DD77B320(v3, a1);
}

uint64_t ResponseOutput.options.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ResponseOutput(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t ResponseOutput.options.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ResponseOutput(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t ResponseOutput.responseType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ResponseOutput(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t ResponseOutput.resultStatementIds.getter()
{
  v1 = *(v0 + *(type metadata accessor for ResponseOutput(0) + 40));
}

uint64_t ResponseOutput.dialogIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ResponseOutput(0) + 44));
  v2 = *v1;
  v3 = v1[1];

  return sub_1DD6DDEFC();
}

uint64_t ResponseOutput.entities.getter()
{
  v1 = *(v0 + *(type metadata accessor for ResponseOutput(0) + 48));
}

uint64_t ResponseOutput.init(visualOutput:printedDialogOutput:spokenDialogOutput:responseType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1DD77E6D8(a1, a2, a3);
  v6 = *v5;
  v11 = sub_1DD6EE86C(v7, v8, v9, v10);
  *(a4 + v12) = v6;
  return sub_1DD6FA6D0(v11, v11[10]);
}

uint64_t ResponseOutput.init(visualOutput:printedDialogOutput:spokenDialogOutput:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1DD77E6D8(a1, a2, a3);
  v9 = sub_1DD6EE86C(v5, v6, v7, v8);
  *(a4 + v10) = 2;
  return sub_1DD6FA6D0(v9, v9[10]);
}

uint64_t ResponseOutput.init(visualOutput:printedDialogOutput:spokenDialogOutput:resultStatementIds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1DD77E6D8(a1, a2, a3);
  *a4 = v6;
  *(a4 + 8) = *v7;
  *(a4 + 24) = v8;
  *(a4 + 32) = *v9;
  *(a4 + 48) = v10;
  v11 = type metadata accessor for ResponseOutput(0);
  v12 = sub_1DD702A10(v11);
  *(a4 + v13) = 0;
  v14 = v12[7];
  type metadata accessor for ResponseOutput.VisualOutput(0);
  sub_1DD6E0C90();
  result = sub_1DD6E5E68(v15, v16, v17, v18);
  *(a4 + *(v4 + 48)) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t ResponseOutput.init(visualOutput:printedDialogOutput:spokenDialogOutput:resultStatementIds:visualOutputOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1DD77E6D8(a1, a2, a3);
  v7 = *v6;
  *a4 = v8;
  *(a4 + 8) = *v9;
  *(a4 + 24) = v10;
  *(a4 + 32) = *v11;
  *(a4 + 48) = v12;
  v13 = type metadata accessor for ResponseOutput(0);
  v14 = sub_1DD702A10(v13);
  *(a4 + v15) = v7;
  v16 = v14[7];
  type metadata accessor for ResponseOutput.VisualOutput(0);
  sub_1DD6E0C90();
  result = sub_1DD6E5E68(v17, v18, v19, v20);
  *(a4 + *(v4 + 48)) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t ResponseOutput.init(visualOutput:printedDialogOutput:spokenDialogOutput:attribution:resultStatementIds:visualOutputOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1DD77E6D8(a1, a2, a3);
  v10 = *v9;
  *a6 = v11;
  *(a6 + 8) = *v12;
  *(a6 + 24) = v13;
  *(a6 + 32) = *v14;
  *(a6 + 48) = v15;
  v16 = type metadata accessor for ResponseOutput(0);
  sub_1DD77B320(a4, a6 + v16[7]);
  *(a6 + v16[9]) = 2;
  *(a6 + v16[10]) = a5;
  v17 = (a6 + v16[11]);
  *v17 = 0;
  v17[1] = 0;
  *(a6 + v16[8]) = v10;
  result = sub_1DD6FC560(a4, &qword_1ECD0FEB8, &qword_1DD8816F0);
  *(a6 + v16[12]) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t ResponseOutput.init(visualOutput:printedDialogOutput:spokenDialogOutput:attribution:resultStatementIds:visualOutputOptions:dialogIdentifier:)()
{
  sub_1DD77E700();
  sub_1DD77E6D8(v6, v7, v8);
  v10 = *v9;
  *v4 = v11;
  *(v4 + 8) = *v12;
  *(v4 + 24) = v13;
  *(v4 + 32) = *v14;
  *(v4 + 48) = v15;
  v16 = type metadata accessor for ResponseOutput(0);
  v17 = sub_1DD77E724(v16);
  sub_1DD77B320(v17, v18);
  *(v4 + v5[9]) = 2;
  *(v4 + v5[10]) = v2;
  v19 = (v4 + v5[11]);
  *v19 = v1;
  v19[1] = v0;
  *(v4 + v5[8]) = v10;
  result = sub_1DD6FC560(v3, &qword_1ECD0FEB8, &qword_1DD8816F0);
  *(v4 + v5[12]) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t ResponseOutput.init(visualOutput:printedDialogOutput:spokenDialogOutput:attribution:resultStatementIds:visualOutputOptions:dialogIdentifier:responseType:entities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, uint64_t a10)
{
  sub_1DD77E700();
  v16 = *(v15 + 16);
  v18 = *(v17 + 16);
  v20 = *v19;
  v21 = *a9;
  *v13 = v22;
  *(v13 + 8) = *v15;
  *(v13 + 24) = v16;
  *(v13 + 32) = *v17;
  *(v13 + 48) = v18;
  v23 = type metadata accessor for ResponseOutput(0);
  v24 = sub_1DD77E724(v23);
  result = sub_1DD77B390(v24, v25);
  *(v13 + v14[10]) = v12;
  *(v13 + v14[8]) = v20;
  v27 = (v13 + v14[11]);
  *v27 = v11;
  v27[1] = v10;
  *(v13 + v14[9]) = v21;
  *(v13 + v14[12]) = a10;
  return result;
}

uint64_t ResponseOutput.responseType(withOutcome:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for StatementOutcome(0);
  v5 = sub_1DD6DE1C4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DE4A8();
  v10 = v9 - v8;
  sub_1DD77A8DC(a1, v9 - v8);
  sub_1DD6E0C60();
  LOBYTE(a1) = byte_1DD8848DA[swift_getEnumCaseMultiPayload()];
  result = sub_1DD77A934(v10, type metadata accessor for StatementOutcome);
  *a2 = a1;
  return result;
}

uint64_t static ResponseOutput.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1DD6E0D28();
  v6 = type metadata accessor for ResponseOutput.VisualOutput(v5);
  v7 = sub_1DD6DE1C4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DE4A8();
  v12 = v11 - v10;
  v13 = sub_1DD710A9C(&qword_1ECD0FEB8, &qword_1DD8816F0);
  sub_1DD6DEA10(v13);
  v15 = *(v14 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6DE340();
  v17 = sub_1DD710A9C(&qword_1ECD0FEC0, &qword_1DD8816F8);
  sub_1DD6DE1C4(v17);
  v19 = *(v18 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v132 - v21;
  sub_1DD7159C8(*v2, *a2, v23, v24, v25, v26, v27, v28, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143);
  if ((v29 & 1) == 0)
  {
    goto LABEL_16;
  }

  v133 = v3;
  v134 = v6;
  v135 = v22;
  v30 = *(v2 + 16);
  v31 = *(v2 + 24);
  v33 = *(a2 + 8);
  v32 = *(a2 + 16);
  v34 = *(a2 + 24);
  if (v31 == 255)
  {
    v54 = sub_1DD6DFF24();
    sub_1DD77B2EC(v54, v55, 0xFFu);
    if (v34 != 255)
    {
LABEL_14:
      v97 = sub_1DD6EE24C();
      sub_1DD77B2EC(v97, v98, v99);
      goto LABEL_15;
    }

    v132 = v12;
    v56 = sub_1DD6E9594();
    sub_1DD77B2EC(v56, v57, 0xFFu);
    v58 = sub_1DD6DFF24();
    sub_1DD77B400(v58, v59, 0xFFu);
  }

  else
  {
    v139 = *(v2 + 8);
    v140 = v30;
    LOBYTE(v141) = v31;
    if (v34 == 255)
    {
LABEL_12:
      v84 = sub_1DD6E5FCC();
      sub_1DD77B2EC(v84, v85, v86);
      v87 = sub_1DD6E9594();
      sub_1DD77B2EC(v87, v88, 0xFFu);
      v89 = sub_1DD6E5FCC();
      sub_1DD77B2EC(v89, v90, v91);
      v92 = sub_1DD6E5FCC();
      sub_1DD77AE90(v92, v93, v94);
LABEL_15:
      v100 = sub_1DD6E5FCC();
      sub_1DD77B400(v100, v101, v102);
      v103 = sub_1DD6EE24C();
      sub_1DD77B400(v103, v104, v105);
      goto LABEL_16;
    }

    v132 = v12;
    v136 = v33;
    v137 = v32;
    LOBYTE(v138) = v34;
    v35 = sub_1DD6E5FCC();
    sub_1DD77B2EC(v35, v36, v37);
    v38 = sub_1DD6EE24C();
    sub_1DD77B2EC(v38, v39, v40);
    v41 = sub_1DD6E5FCC();
    sub_1DD77B2EC(v41, v42, v43);
    v44 = static ResponseOutput.DialogType.== infix(_:_:)(&v139, &v136);
    v45 = sub_1DD6EE24C();
    sub_1DD77AE90(v45, v46, v47);
    v48 = sub_1DD6E5FCC();
    sub_1DD77AE90(v48, v49, v50);
    v51 = sub_1DD6E5FCC();
    sub_1DD77B400(v51, v52, v53);
    if ((v44 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v60 = *(v2 + 40);
  v61 = *(v2 + 48);
  v63 = *(a2 + 32);
  v62 = *(a2 + 40);
  v64 = *(a2 + 48);
  if (v61 == 255)
  {
    v95 = sub_1DD6DFF24();
    sub_1DD77B2EC(v95, v96, 0xFFu);
    if (v64 == 255)
    {
      v108 = sub_1DD6E9594();
      sub_1DD77B2EC(v108, v109, 0xFFu);
      v110 = sub_1DD6DFF24();
      sub_1DD77B400(v110, v111, 0xFFu);
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v139 = *(v2 + 32);
  v140 = v60;
  LOBYTE(v141) = v61;
  if (v64 == 255)
  {
    goto LABEL_12;
  }

  v136 = v63;
  v137 = v62;
  LOBYTE(v138) = v64;
  v65 = sub_1DD6E5FCC();
  sub_1DD77B2EC(v65, v66, v67);
  v68 = sub_1DD6EE24C();
  sub_1DD77B2EC(v68, v69, v70);
  v71 = sub_1DD6E5FCC();
  sub_1DD77B2EC(v71, v72, v73);
  v74 = static ResponseOutput.DialogType.== infix(_:_:)(&v139, &v136);
  v75 = sub_1DD6EE24C();
  sub_1DD77AE90(v75, v76, v77);
  v78 = sub_1DD6E5FCC();
  sub_1DD77AE90(v78, v79, v80);
  v81 = sub_1DD6E5FCC();
  sub_1DD77B400(v81, v82, v83);
  if ((v74 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_19:
  v112 = type metadata accessor for ResponseOutput(0);
  v113 = v112[7];
  v114 = *(v17 + 48);
  v115 = v135;
  sub_1DD77B320(v2 + v113, v135);
  sub_1DD77B320(a2 + v113, v115 + v114);
  v116 = v134;
  if (sub_1DD6E5ED0(v115, 1, v134) != 1)
  {
    v117 = v133;
    sub_1DD77B320(v115, v133);
    if (sub_1DD6E5ED0(v115 + v114, 1, v116) != 1)
    {
      sub_1DD6E05A4();
      v119 = v132;
      sub_1DD771B18(v115 + v114, v132);
      v120 = sub_1DD6E0F98();
      v122 = static ResponseOutput.VisualOutput.== infix(_:_:)(v120, v121);
      sub_1DD77A934(v119, type metadata accessor for ResponseOutput.VisualOutput);
      sub_1DD77A934(v117, type metadata accessor for ResponseOutput.VisualOutput);
      sub_1DD6FC560(v115, &qword_1ECD0FEB8, &qword_1DD8816F0);
      if ((v122 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_26;
    }

    sub_1DD6E1494();
    sub_1DD77A934(v117, v118);
LABEL_24:
    sub_1DD6FC560(v115, &qword_1ECD0FEC0, &qword_1DD8816F8);
    goto LABEL_16;
  }

  if (sub_1DD6E5ED0(v115 + v114, 1, v116) != 1)
  {
    goto LABEL_24;
  }

  sub_1DD6FC560(v115, &qword_1ECD0FEB8, &qword_1DD8816F0);
LABEL_26:
  if (*(v2 + v112[8]) != *(a2 + v112[8]) || *(v2 + v112[9]) != *(a2 + v112[9]) || (sub_1DD715B8C(*(v2 + v112[10]), *(a2 + v112[10])) & 1) == 0)
  {
    goto LABEL_16;
  }

  v123 = v112[11];
  v124 = (v2 + v123);
  v125 = *(v2 + v123 + 8);
  v126 = (a2 + v123);
  v127 = v126[1];
  if (v125)
  {
    if (!v127)
    {
      goto LABEL_16;
    }

    v128 = *v124 == *v126 && v125 == v127;
    if (!v128 && (sub_1DD875A30() & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_38:
    v129 = v112[12];
    v130 = *(v2 + v129);
    v131 = *(a2 + v129);
    sub_1DD715C38();
    return v106 & 1;
  }

  if (!v127)
  {
    goto LABEL_38;
  }

LABEL_16:
  v106 = 0;
  return v106 & 1;
}

uint64_t sub_1DD77960C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x754F6C6175736976 && a2 == 0xEC00000074757074;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000001DD8B5D70 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000001DD8B5D90 == a2;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7475626972747461 && a2 == 0xEB000000006E6F69;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x65736E6F70736572 && a2 == 0xEC00000065707954;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000012 && 0x80000001DD8B5DB0 == a2;
              if (v11 || (sub_1DD875A30() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000010 && 0x80000001DD8B5DD0 == a2;
                if (v12 || (sub_1DD875A30() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x7365697469746E65 && a2 == 0xE800000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1DD875A30();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_1DD7798EC(char a1)
{
  result = 0x754F6C6175736976;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x7475626972747461;
      break;
    case 4:
      result = 0x736E6F6974706FLL;
      break;
    case 5:
      result = 0x65736E6F70736572;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x7365697469746E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD779A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD77960C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD779A40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD7798E4();
  *a1 = result;
  return result;
}

uint64_t sub_1DD779A68(uint64_t a1)
{
  v2 = sub_1DD77B414();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD779AA4(uint64_t a1)
{
  v2 = sub_1DD77B414();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ResponseOutput.encode(to:)(uint64_t a1)
{
  v4 = v1;
  v6 = sub_1DD710A9C(&qword_1ECD0FEC8, &qword_1DD881700);
  sub_1DD6DDEAC(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DEA6C();
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = sub_1DD6ED180();
  sub_1DD6DEA7C(v14, v15);
  sub_1DD77B414();
  sub_1DD875BB0();
  v23 = *v4;
  sub_1DD710A9C(&qword_1ECD0FED8, &qword_1DD881708);
  sub_1DD77B5F4(&unk_1ECD0FEE0);
  sub_1DD6E0AD4();
  sub_1DD6DE334();
  sub_1DD8759D0();
  if (!v2)
  {
    v24 = v4[1];
    v28 = v4[2];
    v30 = *(v4 + 24);
    sub_1DD77B2EC(v24, v28, v30);
    sub_1DD77B468();
    sub_1DD6E0AD4();
    sub_1DD6DE334();
    sub_1DD875960();
    sub_1DD77B400(v24, v28, v30);
    v25 = v4[4];
    v29 = v4[5];
    v31 = *(v4 + 48);
    sub_1DD77B2EC(v25, v29, v31);
    sub_1DD6E0AD4();
    sub_1DD6DE334();
    sub_1DD875960();
    sub_1DD77B400(v25, v29, v31);
    v17 = type metadata accessor for ResponseOutput(0);
    v18 = v17[7];
    type metadata accessor for ResponseOutput.VisualOutput(0);
    sub_1DD6DDFF4();
    sub_1DD7718BC(v19);
    sub_1DD6DE334();
    sub_1DD875960();
    LOBYTE(v25) = *(v4 + v17[8]);
    sub_1DD6E70D8();
    sub_1DD77B4BC();
    sub_1DD6E0AD4();
    sub_1DD6DE334();
    sub_1DD8759D0();
    LOBYTE(v25) = *(v4 + v17[9]);
    sub_1DD6E41B0();
    sub_1DD77B510();
    sub_1DD6E0AD4();
    sub_1DD6DE334();
    sub_1DD8759D0();
    v26 = *(v4 + v17[10]);
    sub_1DD710A9C(&qword_1ECD0FF08, &qword_1DD881710);
    sub_1DD77B770(&unk_1ECD0FF10);
    sub_1DD6E0AD4();
    sub_1DD6DE334();
    sub_1DD8759D0();
    v20 = (v4 + v17[11]);
    v21 = *v20;
    v22 = v20[1];
    sub_1DD6DE334();
    sub_1DD875920();
    v27 = *(v4 + v17[12]);
    sub_1DD710A9C(&qword_1ECD0FF18, &qword_1DD881718);
    sub_1DD77B564(&unk_1ECD0FF20);
    sub_1DD6E0AD4();
    sub_1DD6DE334();
    sub_1DD8759D0();
  }

  return (*(v8 + 8))(v3, v6);
}