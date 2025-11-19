void sub_22BE9983C()
{
  sub_22BE19460();
  sub_22BE1BC30();
  v2 = sub_22C2725B4();
  v3 = sub_22BE179D8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  v10 = v9 - v8;
  v11 = sub_22BE5CE4C(&qword_27D909270, &unk_22C2CB810);
  sub_22BE19448(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BEBFF98(v15, v64);
  v75 = sub_22BE5CE4C(&qword_27D909278, &unk_22C27FE60);
  sub_22BE18000(v75);
  v17 = *(v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE20310(v19, v65);
  v80 = sub_22C2725C4();
  v20 = sub_22BE179D8(v80);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE179EC();
  v27 = v26 - v25;
  v28 = sub_22BE5CE4C(&qword_27D909280, &unk_22C294B50);
  sub_22BE19448(v28);
  v30 = *(v29 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE2BA30(v32, v66);
  v77 = sub_22BE5CE4C(&qword_27D909288, &unk_22C27FE70);
  sub_22BE18000(v77);
  v34 = *(v33 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v35);
  sub_22BE23AA4(v36);
  v79 = type metadata accessor for ContextProtoToolRetrievalType(0);
  v37 = sub_22BE1A1D0(v79);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  sub_22BE3D12C();
  MEMORY[0x28223BE20](v40);
  sub_22BEC036C();
  v42 = *(v1 + 16);
  if (v42 != *(v0 + 16) || !v42 || v1 == v0)
  {
    goto LABEL_29;
  }

  v69 = v27;
  sub_22BEBFEA0(v41);
  v44 = v1 + v43;
  v45 = v0 + v43;
  v70 = (v22 + 8);
  v67 = v10;
  v68 = (v5 + 8);
  v72 = *(v46 + 72);
  v73 = v2;
  while (1)
  {
    sub_22BE236C8();
    sub_22BEBFD70();
    sub_22BE3E79C();
    sub_22BEBFD70();
    v47 = *(v77 + 48);
    sub_22BE22868();
    sub_22BE22868();
    sub_22BE1AB5C(v78, 1, v80);
    if (v48)
    {
      sub_22BE1AB5C(v78 + v47, 1, v80);
      if (!v48)
      {
        goto LABEL_24;
      }

      sub_22BE33928(v78, &qword_27D909280, &unk_22C294B50);
    }

    else
    {
      sub_22BE22868();
      sub_22BE1AB5C(v78 + v47, 1, v80);
      if (v48)
      {
        (*v70)(v74, v80);
LABEL_24:
        v61 = &qword_27D909288;
        v62 = &unk_22C27FE70;
        v63 = v78;
        goto LABEL_27;
      }

      (*(v22 + 32))(v69, v78 + v47, v80);
      sub_22BEBFCD4(&unk_27D909298);
      v71 = sub_22BE37DB4();
      v49 = *v70;
      (*v70)(v69, v80);
      v49(v74, v80);
      sub_22BE33928(v78, &qword_27D909280, &unk_22C294B50);
      if ((v71 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v50 = *(v79 + 20);
    v51 = *(v75 + 48);
    sub_22BE22868();
    sub_22BE22868();
    v52 = sub_22BE26188();
    sub_22BE1AB5C(v52, v53, v73);
    if (!v48)
    {
      break;
    }

    sub_22BE1AB5C(v81 + v51, 1, v73);
    if (!v48)
    {
      goto LABEL_26;
    }

    sub_22BE33928(v81, &qword_27D909270, &unk_22C2CB810);
LABEL_19:
    v59 = *(v79 + 24);
    sub_22C2704B4();
    sub_22BE18CE0();
    sub_22BEBFCD4(&qword_27D9090E0);
    v60 = sub_22C272FD4();
    sub_22BEBFDC4();
    sub_22BE1B5E0();
    sub_22BEBFDC4();
    if (v60)
    {
      v45 += v72;
      v44 += v72;
      if (--v42)
      {
        continue;
      }
    }

    goto LABEL_29;
  }

  sub_22BE22868();
  v54 = sub_22BE41DA8();
  sub_22BE1AB5C(v54, v55, v73);
  if (!v56)
  {
    (*(v5 + 32))(v67, v81 + v51, v73);
    sub_22BEBFCD4(&unk_27D909290);
    v57 = sub_22C272FD4();
    v58 = *v68;
    (*v68)(v67, v73);
    v58(v76, v73);
    sub_22BE33928(v81, &qword_27D909270, &unk_22C2CB810);
    if ((v57 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  (*v68)(v76, v73);
LABEL_26:
  v61 = &qword_27D909278;
  v62 = &unk_22C27FE60;
  v63 = v81;
LABEL_27:
  sub_22BE33928(v63, v61, v62);
LABEL_28:
  sub_22BEBFDC4();
  sub_22BE39EAC();
  sub_22BEBFDC4();
LABEL_29:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

void sub_22BE99FA4()
{
  sub_22BE19460();
  v5 = sub_22BE3FDB4();
  v6 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(v5);
  v7 = sub_22BE1A1D0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE3D12C();
  sub_22BE232D4();
  MEMORY[0x28223BE20](v10);
  sub_22BE339C0();
  if (v15 && v4 && v3 != v0)
  {
    sub_22BEBFEA0(v11);
    sub_22BE32350(v12);
    while (1)
    {
      sub_22BE1B328();
      sub_22BEBFD70();
      sub_22BE38970();
      sub_22BEBFD70();
      sub_22BEC04E8();
      v15 = v15 && v13 == v14;
      if (!v15 && (sub_22C274014() & 1) == 0)
      {
        break;
      }

      v16 = *(v2 + 32);
      v17 = *(v1 + 32);
      if (v16)
      {
        if (!v17)
        {
          break;
        }

        v18 = *(v2 + 24) == *(v1 + 24) && v16 == v17;
        if (!v18 && (sub_22C274014() & 1) == 0)
        {
          break;
        }
      }

      else if (v17)
      {
        break;
      }

      if (*(v2 + 16) != *(v1 + 16))
      {
        break;
      }

      v19 = *(v6 + 28);
      sub_22C2704B4();
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      v20 = sub_22BEBFFDC();
      sub_22BEBFDC4();
      sub_22BE354DC();
      sub_22BEBFDC4();
      if (v20)
      {
        sub_22BEBFEE8();
        if (!v15)
        {
          continue;
        }
      }

      goto LABEL_27;
    }

    sub_22BEBFDC4();
    sub_22BE1AB74();
    sub_22BEBFDC4();
  }

LABEL_27:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

void sub_22BE9A1A8()
{
  sub_22BE19460();
  v3 = v2;
  v4 = sub_22BE17BC4();
  v5 = type metadata accessor for ContextProtoDynamicEnumerationEntity(v4);
  v6 = sub_22BE18000(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  sub_22BE1AB80();
  v9 = sub_22BE5CE4C(&qword_27D9090E8, &qword_22C2B5A90);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE181D0(v13, v59);
  v65 = sub_22BE5CE4C(&qword_27D9090F0, &unk_22C27FCF0);
  sub_22BE18000(v65);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  v17 = sub_22BE22BFC();
  v68 = type metadata accessor for TranscriptProtoStatementID(v17);
  v18 = sub_22BE18000(v68);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE17A44();
  sub_22BE3BF90(v21);
  v22 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v22);
  v24 = *(v23 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE2BA30(v26, v60);
  v66 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE18000(v66);
  v28 = *(v27 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE29250(v30, v61);
  v31 = type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0);
  v32 = sub_22BE1A1D0(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BE3D12C();
  sub_22BE467D8();
  MEMORY[0x28223BE20](v35);
  sub_22BE239A8();
  v37 = *(v0 + 16);
  if (v37 != *(v3 + 16) || !v37 || v0 == v3)
  {
    goto LABEL_43;
  }

  sub_22BEBFEA0(v36);
  sub_22BE44724(v38);
  v63 = v5;
  while (1)
  {
    sub_22BEBFD70();
    sub_22BE1AB74();
    sub_22BEBFD70();
    sub_22BEC040C();
    sub_22BEC0694();
    sub_22BEC0694();
    sub_22BEBFF60(v69);
    if (v39)
    {
      sub_22BEBFF60(v69 + v3);
      if (!v39)
      {
        goto LABEL_37;
      }

      sub_22BE33928(v69, &qword_27D9090F8, &unk_22C2AE4A0);
    }

    else
    {
      sub_22BEC0694();
      sub_22BEBFF60(v69 + v3);
      if (v39)
      {
        sub_22BE184EC();
        sub_22BEBFDC4();
LABEL_37:
        v56 = &qword_27D909100;
        v57 = &unk_22C27FD00;
LABEL_38:
        v58 = v69;
        goto LABEL_41;
      }

      sub_22BE1BE4C();
      sub_22BE2BB28();
      sub_22BEBFC80();
      v40 = *v64;
      sub_22BEC0750();
      if (!v39)
      {
        goto LABEL_35;
      }

      v41 = *(v67 + 16);
      if (*(v64 + 2))
      {
        if (!v41 || ((sub_22BEC073C(), v39) ? (v44 = v42 == v43) : (v44 = 0), !v44 && (sub_22C274014() & 1) == 0))
        {
LABEL_35:
          sub_22BE191A8();
          sub_22BEBFDC4();
          sub_22BE291B0();
          sub_22BEBFDC4();
          v56 = &qword_27D9090F8;
          v57 = &unk_22C2AE4A0;
          goto LABEL_38;
        }
      }

      else if (v41)
      {
        goto LABEL_35;
      }

      sub_22BEC0994();
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      sub_22BEC06C8();
      sub_22BE1A5A0();
      sub_22BEBFDC4();
      sub_22BE1B18C();
      sub_22BEBFDC4();
      v45 = v31;
      v31 = v62;
      sub_22BE33928(v45, &qword_27D9090F8, &unk_22C2AE4A0);
      if ((v3 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    sub_22BE487A0();
    sub_22BE22868();
    sub_22BE35E38();
    v46 = sub_22BE26188();
    sub_22BE1AB5C(v46, v47, v63);
    if (!v39)
    {
      break;
    }

    sub_22BEBFF2C();
    if (!v39)
    {
      goto LABEL_40;
    }

    v48 = sub_22BE232C8();
    sub_22BE33928(v48, v49, &qword_22C2B5A90);
LABEL_30:
    v55 = *(v31 + 24);
    sub_22C2704B4();
    sub_22BE18CE0();
    sub_22BEBFCD4(&qword_27D9090E0);
    v3 = sub_22BE3FE80();
    sub_22BEBFDC4();
    sub_22BE1B18C();
    sub_22BEBFDC4();
    if (v3)
    {
      sub_22BEC0378();
      if (!v39)
      {
        continue;
      }
    }

    goto LABEL_43;
  }

  sub_22BEC09F4();
  sub_22BEBFF2C();
  if (!v50)
  {
    sub_22BE3CB48();
    static ContextProtoDynamicEnumerationEntity.== infix(_:_:)();
    v52 = v51;
    v31 = v62;
    sub_22BEBFDC4();
    sub_22BE1B18C();
    sub_22BEBFDC4();
    v53 = sub_22BE232C8();
    sub_22BE33928(v53, v54, &qword_22C2B5A90);
    if ((v52 & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_30;
  }

  sub_22BEBFDC4();
LABEL_40:
  v56 = &qword_27D9090F0;
  v57 = &unk_22C27FCF0;
  v58 = v1;
LABEL_41:
  sub_22BE33928(v58, v56, v57);
LABEL_42:
  sub_22BEBFDC4();
  sub_22BEBFDC4();
LABEL_43:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

void sub_22BE9A770()
{
  sub_22BE19460();
  v3 = v2;
  v4 = sub_22BE17BC4();
  v5 = type metadata accessor for ContextProtoRetrievedContext(v4);
  v6 = sub_22BE18000(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  sub_22BE1AB80();
  v9 = sub_22BE5CE4C(&qword_27D9091A8, &qword_22C27FDA0);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE181D0(v13, v59);
  v65 = sub_22BE5CE4C(&qword_27D9091B0, &qword_22C27FDA8);
  sub_22BE18000(v65);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  v17 = sub_22BE22BFC();
  v68 = type metadata accessor for TranscriptProtoStatementID(v17);
  v18 = sub_22BE18000(v68);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE17A44();
  sub_22BE3BF90(v21);
  v22 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v22);
  v24 = *(v23 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE2BA30(v26, v60);
  v66 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE18000(v66);
  v28 = *(v27 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE29250(v30, v61);
  v31 = type metadata accessor for TranscriptProtoRetrievedContextStatement(0);
  v32 = sub_22BE1A1D0(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BE3D12C();
  sub_22BE467D8();
  MEMORY[0x28223BE20](v35);
  sub_22BE239A8();
  v37 = *(v0 + 16);
  if (v37 != *(v3 + 16) || !v37 || v0 == v3)
  {
    goto LABEL_43;
  }

  sub_22BEBFEA0(v36);
  sub_22BE44724(v38);
  v63 = v5;
  while (1)
  {
    sub_22BEBFD70();
    sub_22BE1AB74();
    sub_22BEBFD70();
    sub_22BEC040C();
    sub_22BEC0694();
    sub_22BEC0694();
    sub_22BEBFF60(v69);
    if (v39)
    {
      sub_22BEBFF60(v69 + v3);
      if (!v39)
      {
        goto LABEL_37;
      }

      sub_22BE33928(v69, &qword_27D9090F8, &unk_22C2AE4A0);
    }

    else
    {
      sub_22BEC0694();
      sub_22BEBFF60(v69 + v3);
      if (v39)
      {
        sub_22BE184EC();
        sub_22BEBFDC4();
LABEL_37:
        v56 = &qword_27D909100;
        v57 = &unk_22C27FD00;
LABEL_38:
        v58 = v69;
        goto LABEL_41;
      }

      sub_22BE1BE4C();
      sub_22BE2BB28();
      sub_22BEBFC80();
      v40 = *v64;
      sub_22BEC0750();
      if (!v39)
      {
        goto LABEL_35;
      }

      v41 = *(v67 + 16);
      if (*(v64 + 2))
      {
        if (!v41 || ((sub_22BEC073C(), v39) ? (v44 = v42 == v43) : (v44 = 0), !v44 && (sub_22C274014() & 1) == 0))
        {
LABEL_35:
          sub_22BE191A8();
          sub_22BEBFDC4();
          sub_22BE291B0();
          sub_22BEBFDC4();
          v56 = &qword_27D9090F8;
          v57 = &unk_22C2AE4A0;
          goto LABEL_38;
        }
      }

      else if (v41)
      {
        goto LABEL_35;
      }

      sub_22BEC0994();
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      sub_22BEC06C8();
      sub_22BE1A5A0();
      sub_22BEBFDC4();
      sub_22BE1B18C();
      sub_22BEBFDC4();
      v45 = v31;
      v31 = v62;
      sub_22BE33928(v45, &qword_27D9090F8, &unk_22C2AE4A0);
      if ((v3 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    sub_22BE487A0();
    sub_22BE22868();
    sub_22BE35E38();
    v46 = sub_22BE26188();
    sub_22BE1AB5C(v46, v47, v63);
    if (!v39)
    {
      break;
    }

    sub_22BEBFF2C();
    if (!v39)
    {
      goto LABEL_40;
    }

    v48 = sub_22BE232C8();
    sub_22BE33928(v48, v49, &qword_22C27FDA0);
LABEL_30:
    v55 = *(v31 + 24);
    sub_22C2704B4();
    sub_22BE18CE0();
    sub_22BEBFCD4(&qword_27D9090E0);
    v3 = sub_22BE3FE80();
    sub_22BEBFDC4();
    sub_22BE1B18C();
    sub_22BEBFDC4();
    if (v3)
    {
      sub_22BEC0378();
      if (!v39)
      {
        continue;
      }
    }

    goto LABEL_43;
  }

  sub_22BEC09F4();
  sub_22BEBFF2C();
  if (!v50)
  {
    sub_22BE3CB48();
    static ContextProtoRetrievedContext.== infix(_:_:)();
    v52 = v51;
    v31 = v62;
    sub_22BEBFDC4();
    sub_22BE1B18C();
    sub_22BEBFDC4();
    v53 = sub_22BE232C8();
    sub_22BE33928(v53, v54, &qword_22C27FDA0);
    if ((v52 & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_30;
  }

  sub_22BEBFDC4();
LABEL_40:
  v56 = &qword_27D9091B0;
  v57 = &qword_22C27FDA8;
  v58 = v1;
LABEL_41:
  sub_22BE33928(v58, v56, v57);
LABEL_42:
  sub_22BEBFDC4();
  sub_22BEBFDC4();
LABEL_43:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

void sub_22BE9AD38()
{
  sub_22BE19460();
  v3 = sub_22BE1BC30();
  v4 = type metadata accessor for ContextProtoAliasTypes(v3);
  v5 = sub_22BE18000(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  sub_22BE190A8(v8);
  v9 = sub_22BE5CE4C(&qword_27D909108, &unk_22C2B5E20);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1A174();
  sub_22BE190A8(v13);
  v188 = sub_22BE5CE4C(&unk_27D909110, &unk_22C27FD10);
  sub_22BE18000(v188);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE1A174();
  sub_22BE190A8(v17);
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  v18 = sub_22BE18000(matched);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE17A44();
  sub_22BE190A8(v21);
  v22 = sub_22BE5CE4C(&qword_27D909118, &unk_22C294B60);
  sub_22BE19448(v22);
  v24 = *(v23 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE2C638(v26, v177);
  v193 = sub_22BE5CE4C(&byte_27D909120, &unk_22C27FD20);
  sub_22BE18000(v193);
  v28 = *(v27 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE1A174();
  v200 = v30;
  v31 = sub_22BE183BC();
  v205 = type metadata accessor for ContextProtoEntityMatch(v31);
  v32 = sub_22BE179D8(v205);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BE17B98();
  v214 = v35;
  sub_22BE1B99C();
  v37 = MEMORY[0x28223BE20](v36);
  sub_22BE2BB70(v37, v38, v39, v40, v41, v42, v43, v44, v178);
  v197 = sub_22C272594();
  v45 = sub_22BE179D8(v197);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22BE17A44();
  sub_22BE190A8(v50);
  v51 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v51);
  v53 = *(v52 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v54);
  sub_22BE1A174();
  v195 = v55;
  v196 = sub_22BE5CE4C(&qword_27D909130, &unk_22C27FD30);
  sub_22BE18000(v196);
  v57 = *(v56 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v58);
  sub_22BE4104C(v59, v179);
  v207 = type metadata accessor for ContextProtoSpanMatchedEntity(0);
  v60 = sub_22BE18000(v207);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  sub_22BE17A44();
  sub_22BEC03A4(v63);
  v64 = sub_22BE5CE4C(&qword_27D909138, &qword_22C2B5A80);
  sub_22BE19448(v64);
  v66 = *(v65 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v67);
  sub_22BEBFF98(v68, v180);
  v203 = sub_22BE5CE4C(&qword_27D909140, &unk_22C27FD40);
  sub_22BE18000(v203);
  v70 = *(v69 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v71);
  sub_22BE29250(v72, v181);
  v204 = type metadata accessor for TranscriptProtoStatementID(0);
  v73 = sub_22BE18000(v204);
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v73);
  sub_22BE17A44();
  sub_22BEC097C(v76);
  v77 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v77);
  v79 = *(v78 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v80);
  sub_22BE1A174();
  sub_22BEC07BC(v81);
  v82 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE18000(v82);
  v84 = *(v83 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v85);
  sub_22BE1B72C();
  v210 = type metadata accessor for TranscriptProtoSpanMatchedEntityStatement(0);
  v86 = sub_22BE1A1D0(v210);
  v88 = *(v87 + 64);
  MEMORY[0x28223BE20](v86);
  sub_22BE3D12C();
  v211 = v89 - v90;
  sub_22BE467D8();
  MEMORY[0x28223BE20](v91);
  sub_22BEC036C();
  v213 = v92;
  v93 = *(v2 + 16);
  sub_22BEC0478();
  if (v105 && v95 && v2 != v1)
  {
    sub_22BEBFEA0(v94);
    v183 = (v47 + 8);
    v96 = 0;
    v185 = *(v97 + 72);
    v98 = v202;
    v184 = v82;
    v192 = v99;
    while (1)
    {
      sub_22BE46D80();
      sub_22BEC0444(&v216);
      sub_22BEBFD70();
      if (v96 == v192)
      {
        break;
      }

      v186 = v96;
      sub_22BE46D80();
      sub_22BEC0444(&v214);
      sub_22BEBFD70();
      v100 = *(v82 + 48);
      sub_22BEC0964();
      sub_22BE22868();
      sub_22BE22868();
      v101 = sub_22BE391E8();
      sub_22BEBFF10(v101, v102);
      if (v105)
      {
        sub_22BE1C14C(v0 + v100);
        if (!v105)
        {
          goto LABEL_117;
        }

        v103 = sub_22BE260B8();
        sub_22BE33928(v103, v104, &unk_22C2AE4A0);
      }

      else
      {
        sub_22BE22868();
        sub_22BE1C14C(v0 + v100);
        if (v105)
        {
          sub_22BE184EC();
          sub_22BEBFDC4();
LABEL_117:
          v170 = &qword_27D909100;
          v171 = &unk_22C27FD00;
LABEL_118:
          v172 = v0;
LABEL_132:
          sub_22BE33928(v172, v170, v171);
LABEL_133:
          sub_22BEBFDC4();
          sub_22BEC0964();
          sub_22BEBFDC4();
          goto LABEL_134;
        }

        sub_22BE1BE4C();
        sub_22BEBFC80();
        v106 = *v201;
        sub_22BEC0750();
        if (!v105)
        {
          goto LABEL_114;
        }

        v107 = *(v201 + 2);
        v108 = *(v198 + 16);
        if (v107)
        {
          if (!v108 || (*(v201 + 1) == *(v198 + 8) ? (v109 = v107 == v108) : (v109 = 0), !v109 && (sub_22C274014() & 1) == 0))
          {
LABEL_114:
            sub_22BE33BF4();
            sub_22BEBFDC4();
            sub_22BEBFDC4();
            v170 = &qword_27D9090F8;
            v171 = &unk_22C2AE4A0;
            goto LABEL_118;
          }
        }

        else if (v108)
        {
          goto LABEL_114;
        }

        v110 = *(v204 + 24);
        sub_22C2704B4();
        sub_22BE18CE0();
        sub_22BEBFCD4(&qword_27D9090E0);
        sub_22C272FD4();
        sub_22BE1A5A0();
        sub_22BEBFDC4();
        v82 = v184;
        sub_22BEBFDC4();
        sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
        if ((v198 & 1) == 0)
        {
          goto LABEL_133;
        }
      }

      v111 = *(v210 + 20);
      v112 = *(v203 + 48);
      sub_22BE22868();
      sub_22BE22868();
      v113 = sub_22BE26188();
      sub_22BE1AB5C(v113, v114, v207);
      if (v105)
      {
        sub_22BE1AB5C(v212 + v112, 1, v207);
        if (!v105)
        {
          goto LABEL_120;
        }

        sub_22BE33928(v212, &qword_27D909138, &qword_22C2B5A80);
      }

      else
      {
        sub_22BE22868();
        v115 = sub_22BE41DA8();
        sub_22BE1AB5C(v115, v116, v207);
        if (v117)
        {
          sub_22BEBFDC4();
LABEL_120:
          v170 = &qword_27D909140;
          v171 = &unk_22C27FD40;
LABEL_131:
          v172 = v212;
          goto LABEL_132;
        }

        sub_22BEBFC80();
        v118 = *(v207 + 20);
        v119 = *(v196 + 48);
        sub_22BE22868();
        sub_22BEC067C();
        sub_22BEBFF10(v98, 1);
        if (v105)
        {
          sub_22BE1C14C(v98 + v119);
          if (!v105)
          {
            goto LABEL_122;
          }

          v120 = sub_22BE392D4();
          sub_22BE33928(v120, v121, &qword_22C294AA0);
          v122 = v209;
        }

        else
        {
          sub_22BEC067C();
          sub_22BE1C14C(v98 + v119);
          if (v123)
          {
            sub_22BE33554(&v209);
            v173 = sub_22BE200E0();
            v174(v173);
LABEL_122:
            sub_22BE33928(v98, &qword_27D909130, &unk_22C27FD30);
LABEL_130:
            sub_22BEBFDC4();
            sub_22BE33FCC();
            sub_22BEBFDC4();
            v170 = &qword_27D909138;
            v171 = &qword_22C2B5A80;
            goto LABEL_131;
          }

          sub_22BE33554(&v208);
          v124(v189, v98 + v119, v197);
          sub_22BEBFE88();
          sub_22BEBFCD4(&unk_27D909148);
          sub_22BE33560();
          LOBYTE(v119) = sub_22C272FD4();
          v125 = *v183;
          v126 = sub_22BE232C8();
          v125(v126);
          (v125)(v195, v197);
          v82 = v184;
          sub_22BE33928(v202, &qword_27D909128, &qword_22C294AA0);
          v122 = v209;
          if ((v119 & 1) == 0)
          {
            goto LABEL_130;
          }
        }

        v127 = *(*v122 + 16);
        if (v127 != *(*v208 + 16))
        {
          goto LABEL_130;
        }

        if (v127 && *v122 != *v208)
        {
          sub_22BE3CF48();
          v130 = *(v129 + 72);
          v182 = v130;
          do
          {
            v131 = v128;
            v132 = v130 * v128;
            sub_22BE37314();
            sub_22BEBFD70();
            if (v131 == v127)
            {
              goto LABEL_137;
            }

            sub_22BE37314();
            sub_22BEC0444(&v211);
            sub_22BE2BB28();
            sub_22BEBFD70();
            v133 = *v215 == *v132 && *(v215 + 8) == *(v132 + 8);
            if (!v133 && (sub_22C274014() & 1) == 0)
            {
              goto LABEL_129;
            }

            sub_22BEC08DC();
            v136 = v105 && v134 == v135;
            if (!v136 && (sub_22C274014() & 1) == 0 || *(v215 + 32) != *(v214 + 32) || *(v215 + 40) != *(v214 + 40) || *(v215 + 48) != *(v214 + 48))
            {
              goto LABEL_129;
            }

            v137 = v205[12];
            v119 = *(v193 + 48);
            v138 = v200;
            sub_22BE22868();
            sub_22BEC0A6C();
            v139 = sub_22BE36214();
            sub_22BE1AB5C(v139, v140, matched);
            if (v105)
            {
              sub_22BE1AB5C(v200 + v119, 1, matched);
              if (!v105)
              {
                goto LABEL_124;
              }

              sub_22BE33928(v200, &qword_27D909118, &unk_22C294B60);
            }

            else
            {
              sub_22BEC0A6C();
              sub_22BE1AB5C(v200 + v119, 1, matched);
              if (v141)
              {
                sub_22BEC025C();
                sub_22BEBFDC4();
LABEL_124:
                v175 = &byte_27D909120;
                v176 = &unk_22C27FD20;
                goto LABEL_128;
              }

              sub_22BEBFC80();
              if (v206[1])
              {
                if (!*(v194 + 8))
                {
                  goto LABEL_127;
                }
              }

              else
              {
                v142 = *v194;
                v143 = *v206;
                sub_22BEC02E4();
                if (v144)
                {
                  goto LABEL_127;
                }
              }

              if (v206[3])
              {
                if (!*(v194 + 24))
                {
                  goto LABEL_127;
                }
              }

              else
              {
                v145 = v194[2];
                v146 = v206[2];
                sub_22BEC02E4();
                if (v147)
                {
                  goto LABEL_127;
                }
              }

              v148 = *(matched + 24);
              v119 = *(v188 + 48);
              sub_22BE22868();
              sub_22BEC067C();
              sub_22BEBFF10(v191, 1);
              if (v105)
              {
                sub_22BE1C14C(v191 + v119);
                v138 = v200;
                if (!v105)
                {
                  goto LABEL_126;
                }

                v149 = sub_22BE392D4();
                sub_22BE33928(v149, v150, &unk_22C2B5E20);
                v151 = matched;
                v82 = v184;
              }

              else
              {
                sub_22BEC067C();
                sub_22BE1C14C(v191 + v119);
                if (v152)
                {
                  sub_22BEC028C();
                  sub_22BEBFDC4();
                  v138 = v200;
LABEL_126:
                  sub_22BE33928(v191, &unk_27D909110, &unk_22C27FD10);
                  goto LABEL_127;
                }

                sub_22BEC004C();
                LOBYTE(v119) = v187;
                sub_22BEBFC80();
                v153 = *v190;
                v154 = *v187;
                sub_22BEC04C8();
                v138 = v200;
                v82 = v184;
                if (!v105)
                {
LABEL_115:
                  sub_22BEBFDC4();
                  sub_22BEBFDC4();
                  sub_22BE33928(v191, &qword_27D909108, &unk_22C2B5E20);
LABEL_127:
                  sub_22BEBFDC4();
                  sub_22BEBFDC4();
                  v175 = &qword_27D909118;
                  v176 = &unk_22C294B60;
LABEL_128:
                  sub_22BE33928(v138, v175, v176);
LABEL_129:
                  sub_22BEBFDC4();
                  sub_22BEC0610();
                  sub_22BEBFDC4();
                  goto LABEL_130;
                }

                if (v155 && v156 != v157)
                {
                  while (v155)
                  {
                    sub_22BEC04B8();
                    if (!v105)
                    {
                      goto LABEL_115;
                    }

                    sub_22BEC04A8();
                    if (v105)
                    {
                      goto LABEL_85;
                    }
                  }

                  goto LABEL_136;
                }

LABEL_85:
                sub_22BEC0A84(v4);
                sub_22BE18CE0();
                sub_22BEBFCD4(&qword_27D9090E0);
                sub_22C272FD4();
                sub_22BE35F5C();
                sub_22BEBFDC4();
                v138 = v200;
                sub_22BEBFDC4();
                sub_22BE33928(v191, &qword_27D909108, &unk_22C2B5E20);
                v151 = matched;
                if ((v187 & 1) == 0)
                {
                  goto LABEL_127;
                }
              }

              v158 = v138;
              v159 = *(v151 + 28);
              sub_22C2704B4();
              sub_22BE18CE0();
              sub_22BEBFCD4(&qword_27D9090E0);
              sub_22BEC0724();
              sub_22BE3C460();
              sub_22BEBFDC4();
              sub_22BEBFDC4();
              sub_22BE33928(v158, &qword_27D909118, &unk_22C294B60);
              if ((v119 & 1) == 0)
              {
                goto LABEL_129;
              }
            }

            if (*(v215 + 52) != *(v214 + 52))
            {
              goto LABEL_129;
            }

            v160 = *(v215 + 56) == *(v214 + 56) && *(v215 + 64) == *(v214 + 64);
            if (!v160 && (sub_22C274014() & 1) == 0)
            {
              goto LABEL_129;
            }

            v161 = *(v215 + 72) == *(v214 + 72) && *(v215 + 80) == *(v214 + 80);
            if (!v161 && (sub_22C274014() & 1) == 0)
            {
              goto LABEL_129;
            }

            v162 = v205[13];
            v163 = (v215 + v162);
            v164 = *(v215 + v162 + 8);
            v165 = (v214 + v162);
            v166 = v165[1];
            if (v164)
            {
              if (!v166)
              {
                goto LABEL_129;
              }

              v167 = *v163 == *v165 && v164 == v166;
              if (!v167 && (sub_22C274014() & 1) == 0)
              {
                goto LABEL_129;
              }
            }

            else if (v166)
            {
              goto LABEL_129;
            }

            v168 = v205[14];
            sub_22C2704B4();
            sub_22BE18CE0();
            sub_22BEBFCD4(&qword_27D9090E0);
            sub_22C272FD4();
            sub_22BE3C9F4();
            sub_22BEBFDC4();
            sub_22BE232C8();
            sub_22BEBFDC4();
            if ((v119 & 1) == 0)
            {
              goto LABEL_130;
            }

            v128 = v131 + 1;
            v130 = v182;
          }

          while (v131 + 1 != v127);
        }

        sub_22BEC0A54(v207);
        sub_22BE18CE0();
        sub_22BEBFCD4(&qword_27D9090E0);
        sub_22BEC0724();
        sub_22BEC00C4();
        sub_22BEBFDC4();
        v98 = v202;
        sub_22BEBFDC4();
        sub_22BE33928(v212, &qword_27D909138, &qword_22C2B5A80);
        if ((v119 & 1) == 0)
        {
          goto LABEL_133;
        }
      }

      sub_22BEC0A54(v210);
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      v169 = sub_22BEC0724();
      sub_22BEBFDC4();
      sub_22BE200E0();
      sub_22BEBFDC4();
      if (v169)
      {
        v96 = v186 + 1;
        if (v186 + 1 != v192)
        {
          continue;
        }
      }

      goto LABEL_134;
    }

    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
  }

  else
  {
LABEL_134:
    sub_22BE1B1B8();
    sub_22BE1AABC();
  }
}

void sub_22BE9C024()
{
  sub_22BE19460();
  v6 = sub_22BE39048();
  v75 = type metadata accessor for TranscriptProtoCandidate(v6);
  v7 = sub_22BE18000(v75);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  sub_22BE336DC();
  v10 = sub_22BE5CE4C(&qword_27D9091B8, &qword_22C27FDB0);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE29250(v14, v62[0]);
  v74 = sub_22BE5CE4C(&qword_27D9091C0, &qword_22C27FDB8);
  sub_22BE18000(v74);
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  v18 = sub_22BE22BFC();
  v72 = type metadata accessor for TranscriptProtoParameter(v18);
  v19 = sub_22BE179D8(v72);
  v77 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE18928();
  MEMORY[0x28223BE20](v23);
  sub_22BE1C17C();
  v24 = type metadata accessor for TranscriptProtoParameterSet(0);
  v25 = sub_22BE1A1D0(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE3D12C();
  v30 = (v28 - v29);
  MEMORY[0x28223BE20](v31);
  v33 = (v62 - v32);
  v34 = *(v2 + 16);
  sub_22BEC0478();
  if (v51 && v36 && v2 != v1)
  {
    sub_22BEBFEA0(v35);
    v66 = v1 + v38;
    v67 = v0;
    v40 = *(v39 + 72);
    v64 = v33;
    v65 = v30;
    v62[1] = v2 + v38;
    v63 = v24;
    v69 = v41;
    v62[0] = v40;
    while (1)
    {
      v42 = v37;
      sub_22BEBFD70();
      v68 = v42;
      if (v42 == v69)
      {
        break;
      }

      sub_22BEBFD70();
      v43 = *v33;
      v44 = *v30;
      v76 = v43;
      v45 = *(v43 + 16);
      v46 = *(v44 + 16);
      v73 = v45;
      v47 = v72;
      if (v45 != v46)
      {
LABEL_38:
        sub_22BEBFDC4();
        sub_22BEBFDC4();
        goto LABEL_39;
      }

      if (v73 && v76 != v44)
      {
        v48 = 0;
        sub_22BE3519C(v77);
        v70 = v44 + v49;
        v71 = v76 + v49;
        while (v48 < *(v76 + 16))
        {
          v50 = *(v77 + 72) * v48;
          sub_22BE32E2C();
          sub_22BEBFD70();
          if (v48 >= *(v44 + 16))
          {
            goto LABEL_41;
          }

          sub_22BE32E2C();
          sub_22BEBFD70();
          v51 = *v5 == *v4 && *(v5 + 8) == *(v4 + 8);
          if (!v51 && (sub_22C274014() & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v5 + 24))
          {
            if (!*(v4 + 24))
            {
              goto LABEL_37;
            }
          }

          else
          {
            v52 = *(v4 + 16);
            v53 = *(v5 + 16);
            sub_22BEC02E4();
            if (v54)
            {
              goto LABEL_37;
            }
          }

          v55 = *(v47 + 24);
          sub_22BEC075C(v74);
          sub_22BE22868();
          sub_22BE22868();
          v56 = sub_22BE26188();
          sub_22BEBFF10(v56, v57);
          if (v51)
          {
            sub_22BE1C14C(v3 + v50);
            if (!v51)
            {
              goto LABEL_36;
            }

            sub_22BE33928(v3, &qword_27D9091B8, &qword_22C27FDB0);
          }

          else
          {
            sub_22BE22868();
            sub_22BE1C14C(v3 + v50);
            if (v58)
            {
              sub_22BE324C8();
              sub_22BEBFDC4();
LABEL_36:
              sub_22BE33928(v3, &qword_27D9091C0, &qword_22C27FDB8);
LABEL_37:
              sub_22BEC016C();
              sub_22BEBFDC4();
              sub_22BE33FCC();
              sub_22BEBFDC4();
              goto LABEL_38;
            }

            sub_22BEBFC80();
            sub_22BE29264();
            static TranscriptProtoCandidate.== infix(_:_:)();
            sub_22BE3E29C();
            v47 = v72;
            sub_22BEBFDC4();
            sub_22BEBFDC4();
            sub_22BE33928(v3, &qword_27D9091B8, &qword_22C27FDB0);
            if ((v50 & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          v59 = *(v47 + 28);
          sub_22C2704B4();
          sub_22BE18CE0();
          sub_22BEBFCD4(&qword_27D9090E0);
          sub_22BE391F4();
          sub_22BE464C0();
          sub_22BEBFDC4();
          sub_22BE2C254();
          sub_22BEBFDC4();
          if ((v50 & 1) == 0)
          {
            goto LABEL_38;
          }

          if (v73 == ++v48)
          {
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
        break;
      }

LABEL_31:
      v60 = *(v63 + 20);
      sub_22C2704B4();
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      v33 = v64;
      v30 = v65;
      v61 = sub_22C272FD4();
      sub_22BEBFDC4();
      sub_22BE38970();
      sub_22BEBFDC4();
      if (v61)
      {
        v37 = v68 + 1;
        if (v68 + 1 != v69)
        {
          continue;
        }
      }

      goto LABEL_39;
    }

    __break(1u);
  }

  else
  {
LABEL_39:
    sub_22BE1B1B8();
    sub_22BE1AABC();
  }
}

void sub_22BE9C600()
{
  sub_22BE19460();
  v4 = v3;
  v6 = v5;
  v54 = type metadata accessor for TranscriptProtoCandidate(0);
  v7 = sub_22BE18000(v54);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  sub_22BE336DC();
  v10 = sub_22BE5CE4C(&qword_27D9091B8, &qword_22C27FDB0);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - v14;
  v16 = sub_22BE5CE4C(&qword_27D9091C0, &qword_22C27FDB8);
  sub_22BE18000(v16);
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  v20 = sub_22BE22BFC();
  v56 = type metadata accessor for TranscriptProtoParameter(v20);
  v21 = sub_22BE1A1D0(v56);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BE23C48();
  MEMORY[0x28223BE20](v24);
  v27 = &v49 - v26;
  v28 = *(v6 + 16);
  if (v28 == *(v4 + 16) && v28 && v6 != v4)
  {
    v51 = v0;
    v52 = v15;
    sub_22BEBFEA0(v25);
    v30 = v6 + v29;
    v53 = *(v31 + 72);
    v50 = v16;
    while (1)
    {
      sub_22BEC0664();
      sub_22BE1B18C();
      sub_22BEBFD70();
      v32 = *v27 == *v2 && *(v27 + 1) == *(v2 + 8);
      if (!v32 && (sub_22C274014() & 1) == 0)
      {
        break;
      }

      if (v27[24])
      {
        if (!*(v2 + 24))
        {
          break;
        }
      }

      else
      {
        v33 = *(v2 + 16);
        v34 = *(v27 + 2);
        sub_22BEC02E4();
        if (v35)
        {
          break;
        }
      }

      v55 = v30;
      v36 = *(v56 + 24);
      v37 = *(v16 + 48);
      sub_22BE22868();
      sub_22BE22868();
      v38 = sub_22BE26188();
      v39 = v54;
      sub_22BE1AB5C(v38, v40, v54);
      if (v32)
      {
        v41 = sub_22BE41DA8();
        sub_22BE1AB5C(v41, v42, v39);
        if (!v32)
        {
          goto LABEL_27;
        }

        v43 = sub_22BE232C8();
        sub_22BE33928(v43, v44, &qword_22C27FDB0);
        v30 = v55;
      }

      else
      {
        sub_22BE22868();
        v45 = sub_22BE41DA8();
        sub_22BE1AB5C(v45, v46, v39);
        if (v47)
        {
          sub_22BE324C8();
          sub_22BEBFDC4();
LABEL_27:
          sub_22BE33928(v1, &qword_27D9091C0, &qword_22C27FDB8);
          break;
        }

        sub_22BE29350();
        sub_22BE3C968();
        static TranscriptProtoCandidate.== infix(_:_:)();
        sub_22BE3E29C();
        sub_22BEBFDC4();
        sub_22BEBFDC4();
        sub_22BE33928(v1, &qword_27D9091B8, &qword_22C27FDB0);
        v16 = v50;
        v30 = v55;
        if ((v37 & 1) == 0)
        {
          break;
        }
      }

      v48 = *(v56 + 28);
      sub_22C2704B4();
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      sub_22BE391F4();
      sub_22BE464C0();
      sub_22BEBFDC4();
      sub_22BE2C254();
      sub_22BEBFDC4();
      if (v37)
      {
        sub_22BEC0808();
        if (!v32)
        {
          continue;
        }
      }

      goto LABEL_29;
    }

    sub_22BEC016C();
    sub_22BEBFDC4();
    sub_22BE33FCC();
    sub_22BEBFDC4();
  }

LABEL_29:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

void sub_22BE9C9E8()
{
  sub_22BE19460();
  v5 = sub_22BE3FDB4();
  v6 = type metadata accessor for TranscriptProtoSpeechPackage.Token(v5);
  v7 = sub_22BE1A1D0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE3D12C();
  sub_22BE232D4();
  MEMORY[0x28223BE20](v10);
  sub_22BE339C0();
  if (v15 && v4 && v3 != v0)
  {
    sub_22BEBFEA0(v11);
    sub_22BE32350(v12);
    while (1)
    {
      sub_22BE1B328();
      sub_22BEBFD70();
      sub_22BE38970();
      sub_22BEBFD70();
      sub_22BEC04E8();
      v15 = v15 && v13 == v14;
      if (!v15 && (sub_22C274014() & 1) == 0)
      {
        break;
      }

      v16 = *(v2 + 16);
      sub_22BEC0484();
      if (!v15 || *(v2 + 24) != v1[3] || *(v2 + 32) != v1[4] || *(v2 + 40) != v1[5])
      {
        break;
      }

      v17 = *(v6 + 36);
      sub_22C2704B4();
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      v18 = sub_22BEBFFDC();
      sub_22BEBFDC4();
      sub_22BE354DC();
      sub_22BEBFDC4();
      if (v18)
      {
        sub_22BEBFEE8();
        if (!v15)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    sub_22BE37528();
    sub_22BEBFDC4();
    sub_22BE1AB74();
    sub_22BEBFDC4();
  }

LABEL_22:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

void sub_22BE9CC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19460();
  a19 = v24;
  a20 = v25;
  v26 = sub_22BE39048();
  v167 = type metadata accessor for TranscriptProtoStatementID(v26);
  v27 = sub_22BE18000(v167);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE17A44();
  sub_22BEC097C(v30);
  v31 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v31);
  v33 = *(v32 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  sub_22BE23AA4(v35);
  v166 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE18000(v166);
  v37 = *(v36 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v38);
  sub_22BE20168(v39, v149[0]);
  v177 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  v40 = sub_22BE18000(v177);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22BE17A44();
  v172 = v43;
  v44 = sub_22BE5CE4C(&qword_27D909208, &unk_22C2AE560);
  sub_22BE19448(v44);
  v46 = *(v45 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v47);
  sub_22BE181D0(v48, v149[0]);
  v168 = sub_22BE5CE4C(&qword_27D909210, &unk_22C27FE00);
  sub_22BE18000(v168);
  v50 = *(v49 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v51);
  sub_22BE1A174();
  v179 = v52;
  sub_22BE183BC();
  v170 = sub_22C272594();
  v53 = sub_22BE179D8(v170);
  v55 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v53);
  sub_22BE17A44();
  sub_22BE39F68(v58);
  v59 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v59);
  v61 = *(v60 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v62);
  sub_22BE1A174();
  v165 = v63;
  v64 = sub_22BE5CE4C(&qword_27D909130, &unk_22C27FD30);
  sub_22BE18000(v64);
  v66 = *(v65 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v67);
  sub_22BE2C64C();
  v68 = type metadata accessor for TranscriptProtoCandidate(0);
  v69 = sub_22BE179D8(v68);
  v173 = v70;
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v69);
  sub_22BE17B98();
  v180 = v73;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v74);
  sub_22BE1C17C();
  Results = type metadata accessor for TranscriptProtoQueryResults(0);
  v76 = sub_22BE1A1D0(Results);
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v76);
  sub_22BE3D12C();
  v174 = (v79 - v80);
  sub_22BE467D8();
  MEMORY[0x28223BE20](v81);
  v83 = v149 - v82;
  v84 = *(v21 + 16);
  sub_22BEC0478();
  if (v110 && v87 && v21 != v20)
  {
    v150 = v85;
    sub_22BEBFEA0(v86);
    v89 = v21 + v88;
    v153 = v20 + v88;
    v151 = v55 + 32;
    v152 = (v55 + 8);
    v90 = 0;
    v92 = *(v91 + 72);
    v156 = v64;
    v158 = v68;
    v161 = v93;
    v149[1] = v89;
    v149[0] = v92;
    while (1)
    {
      sub_22BEC013C();
      sub_22BEBFD70();
      if (v90 == v161)
      {
        break;
      }

      v157 = v90;
      sub_22BEC013C();
      sub_22BEC0444(&a12);
      v94 = v174;
      sub_22BEBFD70();
      v95 = *v83;
      v96 = *(*v83 + 16);
      v169 = *v94;
      if (v96 != *(v169 + 16))
      {
LABEL_78:
        sub_22BEBFDC4();
        sub_22BE3C968();
        sub_22BEBFDC4();
        goto LABEL_79;
      }

      if (v96 && v95 != v169)
      {
        v97 = 0;
        sub_22BE3519C(v173);
        v160 = v95 + v98;
        v159 = v169 + v98;
        v171 = v22;
        v162 = v83;
        v155 = v95;
        v154 = v99;
        while (v97 < *(v95 + 16))
        {
          v100 = *(v173 + 72) * v97;
          sub_22BE35D1C();
          sub_22BEBFD70();
          if (v97 >= *(v169 + 16))
          {
            goto LABEL_81;
          }

          sub_22BE35D1C();
          sub_22BEC0444(&a18);
          sub_22BEBFD70();
          v101 = v68[5];
          v102 = *(v64 + 48);
          sub_22BE22868();
          sub_22BE22868();
          v103 = v170;
          sub_22BE1AB5C(v23, 1, v170);
          if (v110)
          {
            v104 = sub_22BEC07C8();
            sub_22BE1AB5C(v104, v105, v103);
            v106 = v171;
            v83 = v162;
            if (!v110)
            {
              goto LABEL_69;
            }

            sub_22BE33928(v23, &qword_27D909128, &qword_22C294AA0);
          }

          else
          {
            v107 = v165;
            sub_22BE22868();
            v108 = sub_22BEC07C8();
            sub_22BE1AB5C(v108, v109, v103);
            v83 = v162;
            if (v110)
            {
              sub_22BE33554(&a11);
              v147(v107, v103);
LABEL_69:
              v145 = &qword_27D909130;
              v146 = &unk_22C27FD30;
              v148 = v23;
              goto LABEL_76;
            }

            sub_22BE33554(&a10);
            v111 = v164;
            v112(v164, v23 + v102, v103);
            sub_22BEBFE88();
            sub_22BEBFCD4(&unk_27D909148);
            sub_22BEC081C();
            v102 = sub_22C272FD4();
            v113 = v23;
            v114 = v107;
            v115 = *v152;
            v116 = v111;
            v68 = v158;
            (*v152)(v116, v103);
            v117 = v114;
            v23 = v113;
            v115(v117, v103);
            sub_22BE33928(v113, &qword_27D909128, &qword_22C294AA0);
            v106 = v171;
            if ((v102 & 1) == 0)
            {
              goto LABEL_77;
            }
          }

          if (*v106 != *v180)
          {
            goto LABEL_77;
          }

          v118 = v68[6];
          sub_22BEC075C(v168);
          sub_22BE22868();
          sub_22BE22868();
          v119 = sub_22BE391E8();
          sub_22BE1AB5C(v119, v120, v177);
          if (v110)
          {
            sub_22BE1AB5C(v179 + v102, 1, v177);
            if (!v110)
            {
              goto LABEL_71;
            }

            sub_22BE33928(v179, &qword_27D909208, &unk_22C2AE560);
          }

          else
          {
            v121 = v179;
            sub_22BE22868();
            sub_22BE1AB5C(v121 + v102, 1, v177);
            if (v122)
            {
              sub_22BEBFDC4();
LABEL_71:
              v145 = &qword_27D909210;
              v146 = &unk_22C27FE00;
LABEL_72:
              v148 = v179;
LABEL_76:
              sub_22BE33928(v148, v145, v146);
LABEL_77:
              sub_22BEBFDC4();
              sub_22BE2565C();
              sub_22BEBFDC4();
              goto LABEL_78;
            }

            v123 = v172;
            sub_22BEBFC80();
            v124 = *(v123 + 9);
            if (*(v175 + 9))
            {
              if ((*(v123 + 9) & 1) == 0)
              {
                goto LABEL_67;
              }
            }

            else
            {
              if (*(v123 + 9))
              {
                goto LABEL_67;
              }

              v125 = *v175;
              v126 = *v172;
              v127 = *(v172 + 8);
              if (v175[1])
              {
                if (v125)
                {
                  if ((v172[1] & 1) == 0 || !v126)
                  {
                    goto LABEL_67;
                  }
                }

                else if ((v172[1] & 1) == 0 || v126)
                {
                  goto LABEL_67;
                }
              }

              else if ((v172[1] & 1) != 0 || v125 != v126)
              {
LABEL_67:
                sub_22BEBFDC4();
                sub_22BEBFDC4();
                v145 = &qword_27D909208;
                v146 = &unk_22C2AE560;
                goto LABEL_72;
              }
            }

            sub_22BEC0A84(v177);
            sub_22BE18CE0();
            sub_22BEBFCD4(&qword_27D9090E0);
            v102 = sub_22C272FD4();
            v68 = v158;
            sub_22BEBFDC4();
            sub_22BE33FD8();
            sub_22BEBFDC4();
            sub_22BE33928(v179, &qword_27D909208, &unk_22C2AE560);
            if ((v102 & 1) == 0)
            {
              goto LABEL_77;
            }
          }

          v128 = v68[7];
          sub_22BEC075C(v166);
          sub_22BE22868();
          sub_22BE22868();
          v129 = sub_22BE26188();
          v130 = v167;
          sub_22BEBFF10(v129, v131);
          if (v110)
          {
            sub_22BE1C14C(v178 + v102);
            if (!v110)
            {
              goto LABEL_74;
            }

            v132 = sub_22BEC0964();
            sub_22BE33928(v132, v133, &unk_22C2AE4A0);
          }

          else
          {
            v134 = v178;
            sub_22BE22868();
            sub_22BE1C14C(v134 + v102);
            if (v135)
            {
              sub_22BE184EC();
              sub_22BEBFDC4();
LABEL_74:
              v145 = &qword_27D909100;
              v146 = &unk_22C27FD00;
LABEL_75:
              v148 = v178;
              goto LABEL_76;
            }

            sub_22BE1BE4C();
            v102 = v163;
            sub_22BEBFC80();
            v136 = *v176;
            sub_22BEC0750();
            if (!v110)
            {
              goto LABEL_66;
            }

            v137 = *(v176 + 2);
            v138 = *(v102 + 16);
            if (v137)
            {
              if (!v138 || (*(v176 + 1) == *(v102 + 8) ? (v139 = v137 == v138) : (v139 = 0), !v139 && (sub_22C274014() & 1) == 0))
              {
LABEL_66:
                sub_22BE33BF4();
                sub_22BEBFDC4();
                sub_22BEBFDC4();
                v145 = &qword_27D9090F8;
                v146 = &unk_22C2AE4A0;
                goto LABEL_75;
              }
            }

            else if (v138)
            {
              goto LABEL_66;
            }

            v140 = *(v130 + 24);
            sub_22C2704B4();
            sub_22BE18CE0();
            sub_22BEBFCD4(&qword_27D9090E0);
            sub_22C272FD4();
            sub_22BE1A5A0();
            sub_22BEBFDC4();
            v83 = v162;
            sub_22BEBFDC4();
            v141 = sub_22BE200D4();
            sub_22BE33928(v141, v142, &unk_22C2AE4A0);
            if ((v102 & 1) == 0)
            {
              goto LABEL_77;
            }
          }

          v143 = v68[8];
          sub_22C2704B4();
          sub_22BE18CE0();
          sub_22BEBFCD4(&qword_27D9090E0);
          sub_22C272FD4();
          sub_22BE3E29C();
          v22 = v171;
          sub_22BEBFDC4();
          sub_22BE2C254();
          sub_22BEBFDC4();
          v64 = v156;
          v95 = v155;
          if ((v102 & 1) == 0)
          {
            goto LABEL_78;
          }

          if (v154 == ++v97)
          {
            goto LABEL_62;
          }
        }

        __break(1u);
LABEL_81:
        __break(1u);
        break;
      }

LABEL_62:
      sub_22BEC0A84(v150);
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      v144 = sub_22C272FD4();
      sub_22BEBFDC4();
      sub_22BEBFDC4();
      if (v144)
      {
        v90 = v157 + 1;
        if (v157 + 1 != v161)
        {
          continue;
        }
      }

      goto LABEL_79;
    }

    __break(1u);
  }

  else
  {
LABEL_79:
    sub_22BE1B1B8();
    sub_22BE1AABC();
  }
}

void sub_22BE9D9B4()
{
  sub_22BE19460();
  v4 = sub_22BE39048();
  v32 = type metadata accessor for TranscriptProtoShimParameterEnum(v4);
  v5 = sub_22BE18000(v32);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  sub_22BE38A28(v8);
  v9 = sub_22BE5CE4C(&qword_27D909218, &unk_22C2CC930);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE20310(v13, v29);
  v31 = sub_22BE5CE4C(&qword_27D909220, &qword_22C27FE10);
  sub_22BE18000(v31);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  v17 = sub_22BE22BFC();
  v30 = type metadata accessor for TranscriptProtoShimParameter(v17);
  v18 = sub_22BE1A1D0(v30);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE23C48();
  MEMORY[0x28223BE20](v21);
  sub_22BE18024();
  if (!v26 || !v3 || v1 == v0)
  {
    goto LABEL_21;
  }

  sub_22BEBFEA0(v22);
  sub_22BE25BF4(v23);
  while (1)
  {
    sub_22BEC0664();
    sub_22BE1B18C();
    sub_22BEBFD70();
    sub_22BE3A1F0();
    sub_22BE22868();
    sub_22BEC02A4();
    sub_22BE19678(v2);
    if (!v26)
    {
      break;
    }

    sub_22BE19678(v2 + v0);
    if (!v26)
    {
      goto LABEL_19;
    }

    v24 = sub_22BE1B328();
    sub_22BE33928(v24, v25, &unk_22C2CC930);
LABEL_13:
    sub_22BE3CED8();
    sub_22BE18CE0();
    sub_22BEBFCD4(&qword_27D9090E0);
    v0 = sub_22BEC02C4();
    sub_22BEBFDC4();
    sub_22BE392D4();
    sub_22BEBFDC4();
    if (v0)
    {
      sub_22BE27220();
      if (!v26)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  sub_22BE200D4();
  sub_22BE431D8();
  sub_22BE19678(v2 + v0);
  if (!v26)
  {
    sub_22BE29350();
    sub_22BEC0610();
    static TranscriptProtoShimParameterEnum.== infix(_:_:)();
    v28 = v27;
    sub_22BEBFDC4();
    sub_22BE260B8();
    sub_22BEBFDC4();
    sub_22BE33928(v2, &qword_27D909218, &unk_22C2CC930);
    if ((v28 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  sub_22BEBFDC4();
LABEL_19:
  sub_22BE33928(v2, &qword_27D909220, &qword_22C27FE10);
LABEL_20:
  sub_22BEBFDC4();
  sub_22BE33FCC();
  sub_22BEBFDC4();
LABEL_21:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

void sub_22BE9DD00()
{
  sub_22BE19460();
  v4 = sub_22BE39048();
  v32 = type metadata accessor for TranscriptProtoUitype(v4);
  v5 = sub_22BE18000(v32);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  sub_22BE38A28(v8);
  v9 = sub_22BE5CE4C(&qword_27D9091E0, &qword_22C27FDD8);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE20310(v13, v29);
  v31 = sub_22BE5CE4C(&qword_27D9091E8, &unk_22C27FDE0);
  sub_22BE18000(v31);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  v17 = sub_22BE22BFC();
  v30 = type metadata accessor for TranscriptProtoUIType(v17);
  v18 = sub_22BE1A1D0(v30);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE23C48();
  MEMORY[0x28223BE20](v21);
  sub_22BE18024();
  if (!v26 || !v3 || v1 == v0)
  {
    goto LABEL_21;
  }

  sub_22BEBFEA0(v22);
  sub_22BE25BF4(v23);
  while (1)
  {
    sub_22BEC0664();
    sub_22BE1B18C();
    sub_22BEBFD70();
    sub_22BE3A1F0();
    sub_22BE22868();
    sub_22BEC02A4();
    sub_22BE19678(v2);
    if (!v26)
    {
      break;
    }

    sub_22BE19678(v2 + v0);
    if (!v26)
    {
      goto LABEL_19;
    }

    v24 = sub_22BE1B328();
    sub_22BE33928(v24, v25, &qword_22C27FDD8);
LABEL_13:
    sub_22BE3CED8();
    sub_22BE18CE0();
    sub_22BEBFCD4(&qword_27D9090E0);
    v0 = sub_22BEC02C4();
    sub_22BEBFDC4();
    sub_22BE392D4();
    sub_22BEBFDC4();
    if (v0)
    {
      sub_22BE27220();
      if (!v26)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  sub_22BE200D4();
  sub_22BE431D8();
  sub_22BE19678(v2 + v0);
  if (!v26)
  {
    sub_22BE29350();
    sub_22BEC0610();
    static TranscriptProtoUitype.== infix(_:_:)();
    v28 = v27;
    sub_22BEBFDC4();
    sub_22BE260B8();
    sub_22BEBFDC4();
    sub_22BE33928(v2, &qword_27D9091E0, &qword_22C27FDD8);
    if ((v28 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  sub_22BEBFDC4();
LABEL_19:
  sub_22BE33928(v2, &qword_27D9091E8, &unk_22C27FDE0);
LABEL_20:
  sub_22BEBFDC4();
  sub_22BE33FCC();
  sub_22BEBFDC4();
LABEL_21:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

void sub_22BE9E04C()
{
  sub_22BE19460();
  v3 = v2;
  v5 = v4;
  v67 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
  v6 = sub_22BE18000(v67);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE17B98();
  v73 = v9;
  sub_22BE1B99C();
  v11 = MEMORY[0x28223BE20](v10);
  sub_22BE2BB70(v11, v12, v13, v14, v15, v16, v17, v18, v63);
  v68 = sub_22BE5CE4C(&qword_27D9091C8, &qword_22C27FDC0);
  sub_22BE18000(v68);
  v20 = *(v19 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE2C638(v22, v64);
  v23 = type metadata accessor for TranscriptProtoLabel(0);
  v24 = sub_22BE18000(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22BE17A44();
  sub_22BE38A28(v27);
  v28 = sub_22BE5CE4C(&qword_27D9091D0, &qword_22C27FDC8);
  sub_22BE19448(v28);
  v30 = *(v29 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE25CD0();
  v72 = sub_22BE5CE4C(&qword_27D9091D8, &qword_22C27FDD0);
  sub_22BE18000(v72);
  v33 = *(v32 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  sub_22BE2C64C();
  v71 = type metadata accessor for TranscriptProtoUILabel(0);
  v35 = sub_22BE1A1D0(v71);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22BE3D12C();
  sub_22BE239A8();
  MEMORY[0x28223BE20](v38);
  sub_22BE36504();
  v40 = *(v5 + 16);
  if (v40 == *(v3 + 16) && v40 && v5 != v3)
  {
    sub_22BEBFEA0(v39);
    v42 = v5 + v41;
    v43 = v3 + v41;
    v69 = v1;
    v70 = *(v44 + 72);
    v65 = v23;
    v66 = v0;
    while (1)
    {
      sub_22BE1B5E0();
      sub_22BEBFD70();
      if (!v40)
      {
        break;
      }

      sub_22BEBFD70();
      v45 = *(v72 + 48);
      sub_22BE22868();
      sub_22BE22868();
      sub_22BE1AB5C(v1, 1, v23);
      if (v52)
      {
        v46 = sub_22BEC07C8();
        sub_22BE1AB5C(v46, v47, v23);
        if (!v52)
        {
          goto LABEL_29;
        }

        v48 = v1;
        v49 = v0;
        sub_22BE33928(v48, &qword_27D9091D0, &qword_22C27FDC8);
      }

      else
      {
        sub_22BE22868();
        v50 = sub_22BEC07C8();
        sub_22BE1AB5C(v50, v51, v23);
        if (v52)
        {
          sub_22BEBFDC4();
LABEL_29:
          sub_22BE33928(v1, &qword_27D9091D8, &qword_22C27FDD0);
LABEL_31:
          sub_22BEBFDC4();
          sub_22BEBFDC4();
          goto LABEL_32;
        }

        sub_22BEBFC80();
        v53 = *(v68 + 48);
        sub_22BEBFD70();
        sub_22BEBFD70();
        sub_22BEBFC80();
        sub_22BEBFC80();
        v54 = *v74 == *v73 && v74[1] == v73[1];
        if (!v54 && (sub_22C274014() & 1) == 0 || ((sub_22BEC08DC(), v52) ? (v57 = v55 == v56) : (v57 = 0), !v57 && (sub_22C274014() & 1) == 0))
        {
          sub_22BEBFDC4();
          sub_22BEBFDC4();
          sub_22BEBFDC4();
          sub_22BEBFDC4();
          sub_22BE33928(v1, &qword_27D9091D0, &qword_22C27FDC8);
          goto LABEL_31;
        }

        v58 = *(v67 + 24);
        sub_22C2704B4();
        sub_22BE18CE0();
        sub_22BEBFCD4(&qword_27D9090E0);
        v59 = sub_22C272FD4();
        sub_22BEBFDC4();
        sub_22BE37490();
        sub_22BEBFDC4();
        sub_22BEBFDC4();
        v60 = v1;
        v49 = v66;
        sub_22BEBFDC4();
        sub_22BE33928(v60, &qword_27D9091D0, &qword_22C27FDC8);
        v23 = v65;
        if ((v59 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      v61 = *(v71 + 20);
      sub_22C2704B4();
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      v62 = sub_22C272FD4();
      sub_22BEBFDC4();
      sub_22BEBFDC4();
      if (v62)
      {
        v43 += v70;
        v42 += v70;
        v52 = v40-- == 1;
        v0 = v49;
        v1 = v69;
        if (!v52)
        {
          continue;
        }
      }

      goto LABEL_32;
    }

    __break(1u);
  }

  else
  {
LABEL_32:
    sub_22BE1B1B8();
    sub_22BE1AABC();
  }
}

void sub_22BE9E6B4()
{
  sub_22BE19460();
  v4 = sub_22BE39048();
  v32 = type metadata accessor for TranscriptProtoVisualOutputType(v4);
  v5 = sub_22BE18000(v32);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  sub_22BE38A28(v8);
  v9 = sub_22BE5CE4C(&qword_27D9091F8, &qword_22C2AE6C0);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE20310(v13, v29);
  v31 = sub_22BE5CE4C(&qword_27D909200, &unk_22C27FDF0);
  sub_22BE18000(v31);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  v17 = sub_22BE22BFC();
  v30 = type metadata accessor for TranscriptProtoVisualOutput(v17);
  v18 = sub_22BE1A1D0(v30);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE23C48();
  MEMORY[0x28223BE20](v21);
  sub_22BE18024();
  if (!v26 || !v3 || v1 == v0)
  {
    goto LABEL_21;
  }

  sub_22BEBFEA0(v22);
  sub_22BE25BF4(v23);
  while (1)
  {
    sub_22BEC0664();
    sub_22BE1B18C();
    sub_22BEBFD70();
    sub_22BE3A1F0();
    sub_22BE22868();
    sub_22BEC02A4();
    sub_22BE19678(v2);
    if (!v26)
    {
      break;
    }

    sub_22BE19678(v2 + v0);
    if (!v26)
    {
      goto LABEL_19;
    }

    v24 = sub_22BE1B328();
    sub_22BE33928(v24, v25, &qword_22C2AE6C0);
LABEL_13:
    sub_22BE3CED8();
    sub_22BE18CE0();
    sub_22BEBFCD4(&qword_27D9090E0);
    v0 = sub_22BEC02C4();
    sub_22BEBFDC4();
    sub_22BE392D4();
    sub_22BEBFDC4();
    if (v0)
    {
      sub_22BE27220();
      if (!v26)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  sub_22BE200D4();
  sub_22BE431D8();
  sub_22BE19678(v2 + v0);
  if (!v26)
  {
    sub_22BE29350();
    sub_22BEC0610();
    static TranscriptProtoVisualOutputType.== infix(_:_:)();
    v28 = v27;
    sub_22BEBFDC4();
    sub_22BE260B8();
    sub_22BEBFDC4();
    sub_22BE33928(v2, &qword_27D9091F8, &qword_22C2AE6C0);
    if ((v28 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  sub_22BEBFDC4();
LABEL_19:
  sub_22BE33928(v2, &qword_27D909200, &unk_22C27FDF0);
LABEL_20:
  sub_22BEBFDC4();
  sub_22BE33FCC();
  sub_22BEBFDC4();
LABEL_21:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

void sub_22BE9EA48()
{
  sub_22BE19460();
  v5 = sub_22BE3FDB4();
  v6 = type metadata accessor for TranscriptProtoSpeechPackage.Interpretation(v5);
  v7 = sub_22BE1A1D0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE3D12C();
  sub_22BE232D4();
  MEMORY[0x28223BE20](v10);
  sub_22BE339C0();
  if (v12 && v4 && v3 != v0)
  {
    sub_22BEBFEA0(v11);
    sub_22BE32350(v13);
    while (1)
    {
      sub_22BE1B328();
      sub_22BEBFD70();
      sub_22BE38970();
      sub_22BEBFD70();
      v14 = *v2;
      v15 = *v1;
      sub_22BE9C9E8();
      if ((v16 & 1) == 0)
      {
        break;
      }

      v17 = *(v6 + 20);
      sub_22C2704B4();
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      v18 = sub_22BEBFFDC();
      sub_22BEBFDC4();
      sub_22BE354DC();
      sub_22BEBFDC4();
      if (v18)
      {
        sub_22BEBFEE8();
        if (!v12)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    sub_22BEC00AC();
    sub_22BEBFDC4();
    sub_22BE1AB74();
    sub_22BEBFDC4();
  }

LABEL_13:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

void sub_22BE9EBEC()
{
  sub_22BE19460();
  sub_22BE39048();
  v47 = sub_22C272594();
  v4 = sub_22BE179D8(v47);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  sub_22BE38A28(v9);
  v10 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE20168(v14, v38);
  v45 = sub_22BE5CE4C(&qword_27D909130, &unk_22C27FD30);
  sub_22BE18000(v45);
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  v18 = sub_22BE22BFC();
  v46 = type metadata accessor for TranscriptProtoVariableSetter(v18);
  v19 = sub_22BE1A1D0(v46);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE23C48();
  MEMORY[0x28223BE20](v22);
  v25 = (&v38 - v24);
  v26 = *(v1 + 16);
  if (v26 != *(v0 + 16) || !v26 || v1 == v0)
  {
    goto LABEL_21;
  }

  sub_22BEBFEA0(v23);
  v38 = v6 + 32;
  v39 = (v6 + 8);
  v41 = *(v27 + 72);
  v43 = v2;
  while (1)
  {
    sub_22BEC0664();
    sub_22BE1B18C();
    sub_22BEBFD70();
    v28 = *(v46 + 20);
    sub_22BEC075C(v45);
    sub_22BE22868();
    sub_22BE22868();
    sub_22BE19678(v2);
    if (!v29)
    {
      break;
    }

    sub_22BE19678(v2 + v0);
    if (!v29)
    {
      goto LABEL_19;
    }

    sub_22BE33928(v2, &qword_27D909128, &qword_22C294AA0);
LABEL_12:
    v34 = *v25;
    v35 = *v3;
    sub_22BEA4E60();
    if ((v36 & 1) == 0)
    {
      goto LABEL_20;
    }

    sub_22BEC0A54(v46);
    sub_22BE18CE0();
    sub_22BEBFCD4(&qword_27D9090E0);
    v0 = sub_22BE391F4();
    sub_22BEBFDC4();
    sub_22BE2C254();
    sub_22BEBFDC4();
    if (v0)
    {
      sub_22BEC0808();
      v2 = v43;
      if (!v29)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  sub_22BE22868();
  sub_22BE19678(v2 + v0);
  if (!v29)
  {
    sub_22BEC03BC();
    v30(v42, v2 + v0, v47);
    sub_22BEBFE88();
    sub_22BEBFCD4(&unk_27D909148);
    sub_22BE29264();
    v40 = sub_22C272FD4();
    v31 = *v39;
    v32 = sub_22BE25EFC();
    v31(v32);
    v33 = sub_22BE19454();
    v31(v33);
    sub_22BE33928(v43, &qword_27D909128, &qword_22C294AA0);
    if ((v40 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  sub_22BEC061C();
  v37(v44, v47);
LABEL_19:
  sub_22BE33928(v2, &qword_27D909130, &unk_22C27FD30);
LABEL_20:
  sub_22BEBFDC4();
  sub_22BE33FCC();
  sub_22BEBFDC4();
LABEL_21:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

void sub_22BE9F068()
{
  sub_22BE19460();
  sub_22BE3635C();
  v5 = sub_22C26E684();
  v6 = sub_22BE179D8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  sub_22BE252B8(v11);
  v12 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE20310(v16, v49);
  v55 = sub_22BE5CE4C(&qword_27D9092B8, &qword_22C27FEA0);
  sub_22BE18000(v55);
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE19E64();
  v54 = type metadata accessor for StructuredSearchExpression.StructuredSearchProperty(0);
  v20 = sub_22BE1A1D0(v54);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE3D12C();
  sub_22BEC0338();
  MEMORY[0x28223BE20](v23);
  sub_22BEC0024();
  v25 = *(v3 + 16);
  if (v25 == *(v4 + 16) && v25 && v3 != v4)
  {
    sub_22BEBFEA0(v24);
    v27 = v3 + v26;
    v28 = v4 + v26;
    v51 = *(v29 + 72);
    v52 = v5;
    v30 = &qword_27D907240;
    while (1)
    {
      sub_22BEBFD70();
      if (!v25)
      {
        break;
      }

      sub_22BEBFD70();
      sub_22BE3CC40();
      v33 = v33 && v31 == v32;
      if (!v33 && (sub_22C274014() & 1) == 0)
      {
        goto LABEL_31;
      }

      v34 = *(v2 + 24);
      v35 = *(v1 + 24);
      if (v34)
      {
        if (!v35)
        {
          goto LABEL_31;
        }

        v36 = *(v2 + 16) == *(v1 + 16) && v34 == v35;
        if (!v36 && (sub_22C274014() & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else if (v35)
      {
        goto LABEL_31;
      }

      v57 = v25;
      v37 = v30;
      v38 = *(v54 + 24);
      v39 = *(v55 + 48);
      sub_22BE22868();
      v30 = v37;
      sub_22BE22868();
      sub_22BE181B0(v0);
      if (v33)
      {
        sub_22BE181B0(v0 + v39);
        if (!v33)
        {
          goto LABEL_30;
        }

        v40 = sub_22BE354DC();
        sub_22BE33928(v40, v41, &unk_22C2B5B80);
        sub_22BEBFDC4();
        sub_22BE33560();
        sub_22BEBFDC4();
      }

      else
      {
        sub_22BE22868();
        sub_22BE181B0(v0 + v39);
        if (v42)
        {
          sub_22BEC03BC();
          v48(v56, v5);
LABEL_30:
          sub_22BE33928(v0, &qword_27D9092B8, &qword_22C27FEA0);
LABEL_31:
          sub_22BEBFDC4();
          sub_22BE39EAC();
          sub_22BEBFDC4();
          goto LABEL_32;
        }

        (*(v8 + 32))(v53, v0 + v39, v5);
        sub_22BE17BAC();
        sub_22BEBFCD4(&qword_27D9071B0);
        sub_22BE232C8();
        v50 = sub_22C272FD4();
        v43 = *(v8 + 8);
        v44 = sub_22BE1804C();
        v43(v44);
        v45 = sub_22BE431C0();
        v43(v45);
        v46 = sub_22BE1AB74();
        sub_22BE33928(v46, v47, &unk_22C2B5B80);
        sub_22BEBFDC4();
        sub_22BE1AEE4();
        v30 = v37;
        sub_22BEBFDC4();
        if ((v50 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      v5 = v52;
      v28 += v51;
      v27 += v51;
      v25 = v57 - 1;
      if (v57 == 1)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_32:
    sub_22BE1AABC();
  }
}

void sub_22BE9F4F8()
{
  sub_22BE19460();
  v5 = sub_22BE3FDB4();
  v6 = type metadata accessor for ContextProtoSampleInvocation(v5);
  v7 = sub_22BE1A1D0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE3D12C();
  sub_22BE232D4();
  MEMORY[0x28223BE20](v10);
  sub_22BE339C0();
  if (v15 && v4 && v3 != v0)
  {
    sub_22BEBFEA0(v11);
    sub_22BE32350(v12);
    while (1)
    {
      sub_22BE1B328();
      sub_22BEBFD70();
      sub_22BE38970();
      sub_22BEBFD70();
      sub_22BEC04E8();
      v15 = v15 && v13 == v14;
      if (!v15 && (sub_22C274014() & 1) == 0 || *(v2 + 16) != *(v1 + 16))
      {
        break;
      }

      v16 = *(v6 + 24);
      sub_22C2704B4();
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      sub_22BEBFFDC();
      sub_22BE3F358();
      sub_22BEBFDC4();
      sub_22BE354DC();
      sub_22BEBFDC4();
      if (v0)
      {
        sub_22BEBFEE8();
        if (!v15)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    sub_22BEC00F4();
    sub_22BEBFDC4();
    sub_22BE1AB74();
    sub_22BEBFDC4();
  }

LABEL_18:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

uint64_t sub_22BE9F6A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v6 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3 ^ *v4;
        if (v5)
        {
          break;
        }

        ++v3;
        ++v4;
        --v2;
      }

      while (v2);
      v6 = v5 ^ 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_22BE9F710()
{
  sub_22BE19460();
  v2 = v1;
  v4 = v3;
  v50 = sub_22C26E684();
  v5 = sub_22BE179D8(v50);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  v48 = v10;
  v52 = sub_22BE5CE4C(&qword_27D9092D0, &off_22C27FEB8);
  sub_22BE18000(v52);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE234F4();
  v14 = type metadata accessor for AnswerSynthesisExpression.ExtractionCandidate(0);
  v15 = sub_22BE1A1D0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE3D12C();
  v49 = (v18 - v19);
  sub_22BE467D8();
  v21 = MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v21);
  sub_22BE239A8();
  MEMORY[0x28223BE20](v22);
  sub_22BEC0578();
  v24 = *(v4 + 16);
  if (v24 != *(v2 + 16) || !v24 || v4 == v2)
  {
    goto LABEL_24;
  }

  sub_22BEBFEA0(v23);
  v26 = v4 + v25;
  v27 = v2 + v25;
  v44 = (v7 + 32);
  v45 = v0;
  v46 = (v7 + 8);
  v47 = v28;
  v30 = *(v29 + 72);
  while (1)
  {
    sub_22BEBFD70();
    sub_22BEBFD70();
    v31 = (v0 + *(v52 + 48));
    sub_22BE3AF28();
    sub_22BEBFD70();
    sub_22BE376A8();
    sub_22BEBFD70();
    sub_22BE1AEE4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_22BEC0030();
    sub_22BEBFD70();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BEC061C();
      v43(v47, v50);
      goto LABEL_22;
    }

    v38 = *v44;
    v39 = sub_22BE39EAC();
    v40(v39);
    v51 = _s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0();
    v41 = *v46;
    v0 = v45;
    (*v46)(v48, v50);
    v42 = sub_22BE31038();
    v41(v42);
    sub_22BE27B5C();
    if ((v51 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_18:
    sub_22BEC0274();
    sub_22BEBFDC4();
    sub_22BE200D4();
    sub_22BEBFDC4();
    v27 += v30;
    v26 += v30;
    if (!--v24)
    {
      goto LABEL_24;
    }
  }

  sub_22BEC0030();
  sub_22BEBFD70();
  v33 = *v49;
  v32 = v49[1];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = *v31;
    v35 = v31[1];
    if (v33 == v34 && v32 == v35)
    {
    }

    else
    {
      sub_22BE2C254();
      v37 = sub_22BE2BC78();

      if ((v37 & 1) == 0)
      {
        sub_22BE27B5C();
        goto LABEL_23;
      }
    }

    sub_22BE27B5C();
    goto LABEL_18;
  }

LABEL_22:
  sub_22BE33928(v0, &qword_27D9092D0, &off_22C27FEB8);
LABEL_23:
  sub_22BEC0274();
  sub_22BEBFDC4();
  sub_22BE200D4();
  sub_22BEBFDC4();
LABEL_24:
  sub_22BE1AABC();
}

uint64_t sub_22BE9FB10(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return _s30IntelligenceFlowPlannerSupport20GlobalToolIdentifierV6toolId09deviceIdsI0017representsBuiltInF0ACSS_SSSgSbtcfcfA1__0();
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_22BE9FBB0()
{
  sub_22BE19460();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16) && v2 && v0 != v1)
  {
    v3 = (v1 + 64);
    v4 = (v0 + 64);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v9 = *(v3 - 2);
      v8 = *(v3 - 1);
      v10 = *v3;
      v11 = *(v4 - 4) == *(v3 - 4) && *(v4 - 3) == *(v3 - 3);
      if (!v11 && (sub_22C274014() & 1) == 0)
      {
        break;
      }

      if (v6)
      {
        if (!v8)
        {
          break;
        }

        if (v5 == v9 && v6 == v8)
        {
          if (v7 != v10)
          {
            break;
          }

          goto LABEL_22;
        }

        sub_22BE18040();
        if ((sub_22BE2BC78() & 1) == 0)
        {
          break;
        }
      }

      else if (v8)
      {
        break;
      }

      if ((v7 ^ v10))
      {
        break;
      }

LABEL_22:
      v4 += 40;
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  sub_22BE1AABC();
}

void sub_22BE9FD3C()
{
  sub_22BE19460();
  v25 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5(0);
  v7 = sub_22BE1A1D0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE3D12C();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - v15;
  v17 = *(v4 + 16);
  if (v17 == *(v2 + 16) && v17 && v4 != v2)
  {
    sub_22BEBFEA0(v14);
    v19 = v4 + v18;
    v20 = v2 + v18;
    v22 = *(v21 + 72);
    while (1)
    {
      sub_22BEBFD70();
      sub_22BE38FD8();
      sub_22BEBFD70();
      sub_22BE1AB1C();
      if ((_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0() & 1) == 0)
      {
        break;
      }

      v23 = v25(&v16[*(v6 + 20)], v12 + *(v6 + 20));
      sub_22BE200D4();
      sub_22BEBFDC4();
      sub_22BE291B0();
      sub_22BEBFDC4();
      if (v23)
      {
        v20 += v22;
        v19 += v22;
        if (--v17)
        {
          continue;
        }
      }

      goto LABEL_11;
    }

    sub_22BE200D4();
    sub_22BEBFDC4();
    sub_22BE291B0();
    sub_22BEBFDC4();
  }

LABEL_11:
  sub_22BE1AABC();
}

uint64_t sub_22BE9FFC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3++;
        v6 = *v4++;

        sub_22BE18040();
        sub_22BEA0078();
        v8 = v7;

        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_22BEA0078()
{
  sub_22BE19460();
  sub_22BE3635C();
  v70 = sub_22C26E614();
  v5 = sub_22BE179D8(v70);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  v64 = v10;
  v11 = sub_22BE5CE4C(&qword_27D908FF8, &qword_22C27FC50);
  sub_22BE19448(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1A174();
  sub_22BE3BF90(v15);
  v66 = sub_22BE5CE4C(&qword_27D909028, &qword_22C27FC68);
  sub_22BE18000(v66);
  v17 = *(v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE19E64();
  v69 = type metadata accessor for Candidate(0);
  v19 = sub_22BE1A1D0(v69);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE23C48();
  MEMORY[0x28223BE20](v22);
  sub_22BEC0578();
  v24 = *(v3 + 16);
  if (v24 != *(v4 + 16) || !v24 || v3 == v4)
  {
    goto LABEL_55;
  }

  sub_22BEBFEA0(v23);
  v26 = v3 + v25;
  v27 = v4 + v25;
  v60 = (v7 + 32);
  v61 = (v7 + 8);
  v63 = *(v28 + 72);
  v29 = v69;
  v65 = v2;
  while (1)
  {
    sub_22BE3CC34();
    sub_22BEBFD70();
    sub_22BEBFD70();
    sub_22BE3AF28();
    if ((sub_22C272844() & 1) == 0)
    {
LABEL_52:
      sub_22BE1C288();
      sub_22BEBFDC4();
      sub_22BE200D4();
      sub_22BEBFDC4();
      goto LABEL_55;
    }

    v30 = v29[5];
    v31 = *(v1 + v30);
    v32 = *(v2 + v30);
    v33 = 0xEB00000000797265;
    switch(v31)
    {
      case 1:
        sub_22BEC0950();
        v33 = 0xEE007972616C7562;
        break;
      case 2:
        v33 = 0x800000022C2D29F0;
        break;
      case 3:
        sub_22BEC0904();
        v34 = 5391173;
        goto LABEL_13;
      case 4:
        sub_22BEC093C();
        v33 = 0xEF79727473696765;
        break;
      case 5:
        sub_22BEC08C8();
        v34 = 6649196;
LABEL_13:
        v33 = v34 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        break;
      case 6:
        v33 = 0xEA00000000007470;
        sub_22BEC08B4();
        break;
      case 7:
        sub_22BEC08F0();
        v33 = 0xEA00000000006863;
        break;
      default:
        break;
    }

    v67 = v26;
    sub_22BEC08A0();
    v37 = 0xEB00000000797265;
    switch(v38)
    {
      case 1:
        sub_22BE3C778();
        v37 = 0xEE007972616C7562;
        break;
      case 2:
        v36 = 0xD000000000000014;
        v37 = 0x800000022C2D29F0;
        break;
      case 3:
        sub_22BEC0878();
        v39 = 5391173;
        goto LABEL_22;
      case 4:
        sub_22BEC088C();
        v37 = 0xEF79727473696765;
        break;
      case 5:
        sub_22BEC083C();
        v39 = 6649196;
LABEL_22:
        v37 = v39 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        break;
      case 6:
        v37 = 0xEA00000000007470;
        sub_22BEC0828();
        break;
      case 7:
        sub_22BE464AC();
        v37 = 0xEA00000000006863;
        break;
      default:
        break;
    }

    v40 = v35 == v36 && v33 == v37;
    if (v40)
    {
    }

    else
    {
      v41 = sub_22BE2BC78();

      if ((v41 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    v42 = v29[6];
    v43 = *(v1 + v42);
    v44 = *(v1 + v42 + 8);
    v45 = (v2 + v42);
    v46 = *v45;
    v47 = *(v45 + 8);
    if (v44 == 1)
    {
      v48 = v68;
      if (v43)
      {
        if (!v46)
        {
          v47 = 0;
        }

        if ((v47 & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v46)
        {
          v47 = 0;
        }

        if ((v47 & 1) == 0)
        {
          goto LABEL_52;
        }
      }
    }

    else
    {
      sub_22BEC02E4();
      v48 = v68;
      if (v49)
      {
        goto LABEL_52;
      }
    }

    v50 = v29[7];
    if ((_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0() & 1) == 0)
    {
      goto LABEL_52;
    }

    v51 = v29[8];
    v52 = *(v66 + 48);
    sub_22BEC0628();
    sub_22BE22868();
    sub_22BEC0628();
    sub_22BE22868();
    sub_22BE19678(v0);
    if (!v40)
    {
      break;
    }

    sub_22BE1C288();
    sub_22BEBFDC4();
    sub_22BE3C968();
    sub_22BEBFDC4();
    sub_22BE19678(v0 + v52);
    if (!v40)
    {
      goto LABEL_54;
    }

    sub_22BE33928(v0, &qword_27D908FF8, &qword_22C27FC50);
    v29 = v69;
LABEL_50:
    v27 += v63;
    v26 = v67 + v63;
    --v24;
    v2 = v65;
    if (!v24)
    {
      goto LABEL_55;
    }
  }

  sub_22BEC0628();
  sub_22BE22868();
  sub_22BE19678(v0 + v52);
  if (!v53)
  {
    (*v60)(v64, v0 + v52, v70);
    sub_22BE251C4();
    sub_22BEBFCD4(&unk_27D909030);
    sub_22BE38970();
    v62 = sub_22C272FD4();
    v54 = v0;
    v55 = v48;
    v56 = *v61;
    v57 = sub_22BE1804C();
    v56(v57);
    sub_22BEBFDC4();
    sub_22BE200E0();
    sub_22BEBFDC4();
    v58 = v55;
    v0 = v54;
    v29 = v69;
    (v56)(v58, v70);
    sub_22BE33928(v0, &qword_27D908FF8, &qword_22C27FC50);
    if ((v62 & 1) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_50;
  }

  sub_22BE1C288();
  sub_22BEBFDC4();
  sub_22BE39EAC();
  sub_22BEBFDC4();
  sub_22BEC03BC();
  v59(v48, v70);
LABEL_54:
  sub_22BE33928(v0, &qword_27D909028, &qword_22C27FC68);
LABEL_55:
  sub_22BE1AABC();
}

void sub_22BEA0714()
{
  sub_22BE19460();
  v4 = sub_22BE37CE8();
  Predicate = type metadata accessor for QueryPredicate(v4);
  v6 = sub_22BE1A1D0(Predicate);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE3D12C();
  sub_22BEC0538();
  MEMORY[0x28223BE20](v9);
  sub_22BEC0588();
  v11 = *(v2 + 16);
  if (v11 == *(v3 + 16) && v11 && v2 != v3)
  {
    sub_22BEBFEA0(v10);
    v13 = v2 + v12;
    v14 = v3 + v12;
    v16 = *(v15 + 72);
    while (1)
    {
      sub_22BE1C2A0();
      sub_22BEBFD70();
      sub_22BE431C0();
      sub_22BEBFD70();
      v17 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
      if (!v17 && (sub_22C274014() & 1) == 0)
      {
        break;
      }

      v18 = *(v0 + 16);
      v19 = 0xE100000000000000;
      v20 = 61;
      switch(*(v1 + 16))
      {
        case 1:
          v19 = 0xE200000000000000;
          v20 = 15649;
          break;
        case 2:
          v20 = 62;
          break;
        case 3:
          v19 = 0xE200000000000000;
          v20 = 15678;
          break;
        case 4:
          v20 = 60;
          break;
        case 5:
          v19 = 0xE200000000000000;
          v20 = 15676;
          break;
        case 6:
          v19 = 0xE800000000000000;
          v20 = 0x736E6961746E6F63;
          break;
        case 7:
          v20 = 0x666572705F736168;
          goto LABEL_20;
        case 8:
          v20 = 0x666675735F736168;
LABEL_20:
          v19 = 0xEA00000000007869;
          break;
        case 9:
          v19 = 0xEA00000000006E65;
          v20 = 0x65777465625F7369;
          break;
        default:
          break;
      }

      v21 = 0xE100000000000000;
      v22 = 61;
      switch(*(v0 + 16))
      {
        case 1:
          v21 = 0xE200000000000000;
          v22 = 15649;
          break;
        case 2:
          v22 = 62;
          break;
        case 3:
          v21 = 0xE200000000000000;
          v22 = 15678;
          break;
        case 4:
          v22 = 60;
          break;
        case 5:
          v21 = 0xE200000000000000;
          v22 = 15676;
          break;
        case 6:
          v21 = 0xE800000000000000;
          v22 = 0x736E6961746E6F63;
          break;
        case 7:
          v22 = 0x666572705F736168;
          goto LABEL_31;
        case 8:
          v22 = 0x666675735F736168;
LABEL_31:
          v21 = 0xEA00000000007869;
          break;
        case 9:
          v21 = 0xEA00000000006E65;
          v22 = 0x65777465625F7369;
          break;
        default:
          break;
      }

      if (v20 == v22 && v19 == v21)
      {
      }

      else
      {
        v24 = sub_22C274014();

        if ((v24 & 1) == 0)
        {
          break;
        }
      }

      v25 = *(Predicate + 24);
      v26 = sub_22C272844();
      sub_22BEBFDC4();
      sub_22BE236C8();
      sub_22BEBFDC4();
      if (v26)
      {
        v14 += v16;
        v13 += v16;
        sub_22BEC0018();
        if (!v17)
        {
          continue;
        }
      }

      goto LABEL_45;
    }

    sub_22BEBFDC4();
    sub_22BE1B5EC();
    sub_22BEBFDC4();
  }

LABEL_45:
  sub_22BE1AABC();
}

void sub_22BEA0AA8()
{
  sub_22BE19460();
  v4 = sub_22BE37CE8();
  updated = type metadata accessor for UpdateParametersExpression.UpdateParameter(v4);
  v6 = sub_22BE1A1D0(updated);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE3D12C();
  sub_22BEC0538();
  MEMORY[0x28223BE20](v9);
  sub_22BEC0588();
  v11 = *(v2 + 16);
  if (v11 == *(v3 + 16) && v11 && v2 != v3)
  {
    sub_22BEBFEA0(v10);
    v13 = v2 + v12;
    v14 = v3 + v12;
    v16 = *(v15 + 72);
    while (1)
    {
      sub_22BE1C2A0();
      sub_22BEBFD70();
      sub_22BE431C0();
      sub_22BEBFD70();
      v17 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
      if (!v17 && (sub_22C274014() & 1) == 0)
      {
        break;
      }

      if (*(v1 + 24))
      {
        if (!*(v0 + 24))
        {
          break;
        }
      }

      else
      {
        v18 = *(v0 + 16);
        v19 = *(v1 + 16);
        sub_22BEC02E4();
        if (v20)
        {
          break;
        }
      }

      if (*(v1 + 25) != *(v0 + 25))
      {
        break;
      }

      v21 = *(updated + 28);
      v22 = _s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0();
      sub_22BEBFDC4();
      sub_22BE236C8();
      sub_22BEBFDC4();
      if (v22)
      {
        v14 += v16;
        v13 += v16;
        if (--v11)
        {
          continue;
        }
      }

      goto LABEL_20;
    }

    sub_22BEBFDC4();
    sub_22BE1B5EC();
    sub_22BEBFDC4();
  }

LABEL_20:
  sub_22BE1AABC();
}

void sub_22BEA0CA0()
{
  sub_22BE19460();
  v5 = sub_22BE1BC30();
  v6 = type metadata accessor for TranscriptProtoSpeechPackage.Token(v5);
  v7 = sub_22BE179D8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE183AC();
  sub_22BE20324();
  MEMORY[0x28223BE20](v12);
  sub_22BE181E4();
  v75 = type metadata accessor for TranscriptProtoSpeechPackage.Interpretation(0);
  v13 = sub_22BE179D8(v75);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE183AC();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v64 - v22;
  v24 = type metadata accessor for TranscriptProtoSpeechPackage.Phrase(0);
  v25 = sub_22BE1A1D0(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE23C48();
  MEMORY[0x28223BE20](v28);
  sub_22BE239A8();
  v29 = *(v4 + 16);
  sub_22BEC0478();
  if (v58 && v31 && v4 != v0)
  {
    v73 = v31;
    v74 = v6;
    sub_22BEBFEA0(v30);
    v34 = v4 + v33;
    v70 = v3;
    v71 = v0 + v33;
    v36 = *(v35 + 72);
    v37 = v76;
    v64[1] = v15;
    v64[5] = v34;
    v65 = v38;
    v64[4] = v36;
    while (1)
    {
      v39 = v32;
      sub_22BEBFD70();
      v72 = v39;
      if (v39 == v73)
      {
        __break(1u);
        goto LABEL_38;
      }

      sub_22BEBFD70();
      v40 = *v3;
      v41 = *(*v37 + 16);
      if (v41 != *(v40 + 16))
      {
LABEL_35:
        sub_22BE32D28();
        sub_22BEBFDC4();
        sub_22BE33FCC();
        sub_22BEBFDC4();
        goto LABEL_36;
      }

      if (v41 && *v37 != v40)
      {
        break;
      }

LABEL_29:
      v62 = *(v65 + 20);
      sub_22C2704B4();
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      v3 = v70;
      v63 = sub_22C272FD4();
      sub_22BE32D28();
      sub_22BEBFDC4();
      sub_22BE33FCC();
      sub_22BEBFDC4();
      if (v63)
      {
        v32 = v72 + 1;
        if (v72 + 1 != v73)
        {
          continue;
        }
      }

      goto LABEL_36;
    }

    v42 = 0;
    sub_22BE3CF48();
    v45 = v43 + v44;
    v68 = v46 + v44;
    v69 = v9;
    v48 = *(v47 + 72);
    v66 = v23;
    v67 = v20;
    v64[2] = v48;
    v64[3] = v45;
    while (1)
    {
      sub_22BE460F0();
      sub_22BEBFD70();
      if (v42 == v41)
      {
        break;
      }

      sub_22BE460F0();
      sub_22BEBFD70();
      v49 = *v23;
      v50 = *(*v23 + 16);
      if (v50 != *(*v20 + 16))
      {
        goto LABEL_34;
      }

      if (v50 && v49 != *v20)
      {
        sub_22BE3CF48();
        v53 = v51 + v52;
        v55 = v54 + v52;
        v57 = *(v56 + 72);
        while (1)
        {
          sub_22BEC0124();
          sub_22BE38FD8();
          sub_22BEBFD70();
          sub_22BEC0124();
          sub_22BE33BE8();
          sub_22BEBFD70();
          v58 = *v2 == *v1 && *(v2 + 8) == *(v1 + 8);
          if (!v58 && (sub_22C274014() & 1) == 0 || *(v2 + 16) != *(v1 + 16) || *(v2 + 24) != *(v1 + 24) || *(v2 + 32) != *(v1 + 32) || *(v2 + 40) != *(v1 + 40))
          {
            break;
          }

          v59 = *(v74 + 36);
          sub_22C2704B4();
          sub_22BE18CE0();
          sub_22BEBFCD4(&qword_27D9090E0);
          v60 = sub_22C272FD4();
          sub_22BE37528();
          sub_22BEBFDC4();
          sub_22BE200D4();
          sub_22BEBFDC4();
          if ((v60 & 1) == 0)
          {
            goto LABEL_34;
          }

          v55 += v57;
          v53 += v57;
          if (!--v50)
          {
            goto LABEL_27;
          }
        }

        sub_22BE37528();
        sub_22BEBFDC4();
        sub_22BE200D4();
        sub_22BEBFDC4();
LABEL_34:
        sub_22BEC00AC();
        sub_22BEBFDC4();
        sub_22BEBFDC4();
        goto LABEL_35;
      }

LABEL_27:
      v61 = *(v75 + 20);
      sub_22C2704B4();
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      v23 = v66;
      v20 = v67;
      LOBYTE(v61) = sub_22C272FD4();
      sub_22BEBFDC4();
      sub_22BEBFDC4();
      v9 = v69;
      v37 = v76;
      if ((v61 & 1) == 0)
      {
        goto LABEL_35;
      }

      if (++v42 == v41)
      {
        goto LABEL_29;
      }
    }

LABEL_38:
    __break(1u);
  }

  else
  {
LABEL_36:
    sub_22BE1B1B8();
    sub_22BE1AABC();
  }
}

void sub_22BEA1204()
{
  sub_22BE19460();
  v3 = sub_22BE1B2D4();
  v4 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(v3);
  v5 = sub_22BE18000(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  v8 = sub_22BE5CE4C(&qword_27D9090C0, &qword_22C27FCC8);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE25CD0();
  v53 = sub_22BE5CE4C(&qword_27D9090C8, &unk_22C27FCD0);
  sub_22BE18000(v53);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1A174();
  v57 = v15;
  v16 = sub_22BE183BC();
  v17 = type metadata accessor for ContextProtoRetrievedTool.Definition(v16);
  v18 = sub_22BE18000(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE17A44();
  sub_22BE252B8(v21);
  v22 = sub_22BE5CE4C(&qword_27D9090D0, &unk_22C294B30);
  sub_22BE19448(v22);
  v24 = *(v23 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE20310(v26, v50);
  v56 = sub_22BE5CE4C(&qword_27D9090D8, &unk_22C27FCE0);
  sub_22BE18000(v56);
  v28 = *(v27 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE19E64();
  Output = type metadata accessor for ContextProtoToolQueryOutput(0);
  v30 = sub_22BE1A1D0(Output);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BE3D12C();
  sub_22BE239A8();
  MEMORY[0x28223BE20](v33);
  sub_22BEC036C();
  v35 = *(v1 + 16);
  if (v35 != *(v0 + 16) || !v35 || v1 == v0)
  {
    goto LABEL_30;
  }

  sub_22BEBFEA0(v34);
  v37 = v1 + v36;
  v38 = v0 + v36;
  v54 = *(v39 + 72);
  v52 = v17;
  v51 = v2;
  while (1)
  {
    sub_22BE36658();
    sub_22BEBFD70();
    sub_22BEBFD70();
    v40 = *(v56 + 48);
    sub_22BE392D4();
    sub_22BE22868();
    sub_22BE22868();
    sub_22BE1AB5C(v2, 1, v17);
    if (!v41)
    {
      break;
    }

    sub_22BE1AB5C(v2 + v40, 1, v17);
    if (!v41)
    {
      sub_22BE285BC();
      sub_22BEBFDC4();
      sub_22BE33FCC();
LABEL_24:
      sub_22BEBFDC4();
      sub_22BE33928(v2, &qword_27D9090D8, &unk_22C27FCE0);
      goto LABEL_30;
    }

    sub_22BE33928(v2, &qword_27D9090D0, &unk_22C294B30);
LABEL_19:
    v48 = *(Output + 20);
    sub_22C2704B4();
    sub_22BE18CE0();
    sub_22BEBFCD4(&qword_27D9090E0);
    v49 = sub_22C272FD4();
    sub_22BEBFDC4();
    sub_22BE196A8();
    sub_22BEBFDC4();
    if (v49)
    {
      v38 += v54;
      v37 += v54;
      if (--v35)
      {
        continue;
      }
    }

    goto LABEL_30;
  }

  sub_22BE22868();
  sub_22BE1AB5C(v2 + v40, 1, v17);
  if (v41)
  {
    sub_22BE285BC();
    sub_22BEBFDC4();
    sub_22BE33FCC();
    sub_22BEBFDC4();
    sub_22BE1B9A8();
    goto LABEL_24;
  }

  sub_22BE36C70();
  sub_22BEBFC80();
  v42 = *(v53 + 48);
  sub_22BE22868();
  sub_22BE22868();
  sub_22BEBFF10(v57, 1);
  if (v41)
  {
    sub_22BE1C14C(v57 + v42);
    if (!v41)
    {
      sub_22BE1B9A8();
LABEL_26:
      sub_22BEBFDC4();
      sub_22BE33928(v57, &qword_27D9090C8, &unk_22C27FCD0);
      goto LABEL_28;
    }

    sub_22BE33928(v57, &qword_27D9090C0, &qword_22C27FCC8);
    goto LABEL_18;
  }

  sub_22BE22868();
  sub_22BE1C14C(v57 + v42);
  if (v43)
  {
    sub_22BE1B9A8();
    sub_22BEBFDC4();
    sub_22BE3CCBC();
    goto LABEL_26;
  }

  sub_22BE28E28();
  sub_22BEBFC80();
  sub_22BE38970();
  static ContextProtoRetrievedTool.ContextProtoDefinitionEnum.== infix(_:_:)();
  v45 = v44;
  sub_22BEBFDC4();
  sub_22BE1B18C();
  sub_22BEBFDC4();
  sub_22BE33928(v57, &qword_27D9090C0, &qword_22C27FCC8);
  if (v45)
  {
LABEL_18:
    v46 = *(v52 + 20);
    sub_22C2704B4();
    sub_22BE18CE0();
    sub_22BEBFCD4(&qword_27D9090E0);
    v47 = sub_22C272FD4();
    v17 = v52;
    v2 = v51;
    sub_22BEBFDC4();
    sub_22BEBFDC4();
    sub_22BE33928(v51, &qword_27D9090D0, &unk_22C294B30);
    if ((v47 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  sub_22BE1B9A8();
  sub_22BEBFDC4();
LABEL_28:
  sub_22BE1B9A8();
  sub_22BEBFDC4();
  sub_22BE33928(v2, &qword_27D9090D0, &unk_22C294B30);
LABEL_29:
  sub_22BE285BC();
  sub_22BEBFDC4();
  sub_22BE33FCC();
  sub_22BEBFDC4();
LABEL_30:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

void sub_22BEA1A5C()
{
  sub_22BE19460();
  v4 = sub_22BE1BC30();
  v5 = type metadata accessor for ContextProtoBoundingBox(v4);
  v6 = sub_22BE18000(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  v11 = (v10 - v9);
  v12 = sub_22BE5CE4C(&qword_27D9092A0, &unk_22C294AC0);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE1B01C();
  v57 = sub_22BE5CE4C(&qword_27D9092A8, &unk_22C27FE80);
  sub_22BE18000(v57);
  v17 = *(v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE20310(v19, v52);
  v59 = type metadata accessor for ContextProtoSurroundingText(0);
  v20 = sub_22BE1A1D0(v59);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE3D12C();
  v25 = (v23 - v24);
  MEMORY[0x28223BE20](v26);
  sub_22BE36504();
  v28 = *(v3 + 16);
  if (v28 != *(v0 + 16) || !v28 || v3 == v0)
  {
    goto LABEL_47;
  }

  sub_22BEBFEA0(v27);
  sub_22BEC0568(v29);
  v53 = v30;
  v54 = v1;
  v55 = v25;
  v56 = v5;
  while (1)
  {
    sub_22BEBFD70();
    sub_22BE33FCC();
    sub_22BEBFD70();
    v31 = v1[1];
    v32 = v25[1];
    if (v31)
    {
      if (!v32)
      {
        goto LABEL_43;
      }

      v33 = *v1 == *v25 && v31 == v32;
      if (!v33 && (sub_22C274014() & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else if (v32)
    {
      goto LABEL_43;
    }

    v34 = *(v59 + 20);
    v35 = *(v57 + 48);
    sub_22BEC0A6C();
    sub_22BEC0A6C();
    sub_22BE1C14C(v58);
    if (v33)
    {
      sub_22BE1C14C(v58 + v35);
      if (!v33)
      {
        goto LABEL_45;
      }

      sub_22BE33928(v58, &qword_27D9092A0, &unk_22C294AC0);
      v1 = v54;
      v25 = v55;
      goto LABEL_37;
    }

    sub_22BE37490();
    sub_22BE22868();
    sub_22BE1C14C(v58 + v35);
    if (v36)
    {
      break;
    }

    sub_22BEBFC80();
    if (v2[1])
    {
      v1 = v54;
      v25 = v55;
      if (!*(v11 + 4))
      {
        goto LABEL_42;
      }
    }

    else
    {
      v37 = *v11;
      v38 = *v2;
      sub_22BE20498();
      v1 = v54;
      v25 = v55;
      if (v39)
      {
        goto LABEL_42;
      }
    }

    if (v2[3])
    {
      if (!*(v11 + 12))
      {
        goto LABEL_42;
      }
    }

    else
    {
      v40 = v11[2];
      v41 = v2[2];
      sub_22BE20498();
      if (v42)
      {
        goto LABEL_42;
      }
    }

    if (v2[5])
    {
      if (!*(v11 + 20))
      {
        goto LABEL_42;
      }
    }

    else
    {
      v43 = v11[4];
      v44 = v2[4];
      sub_22BE20498();
      if (v45)
      {
        goto LABEL_42;
      }
    }

    if (v2[7])
    {
      if (!*(v11 + 28))
      {
        goto LABEL_42;
      }
    }

    else
    {
      v46 = v11[6];
      v47 = v2[6];
      sub_22BE20498();
      if (v48)
      {
LABEL_42:
        sub_22BEBFDC4();
        sub_22BEBFDC4();
        sub_22BE33928(v58, &qword_27D9092A0, &unk_22C294AC0);
LABEL_43:
        sub_22BEBFDC4();
        goto LABEL_46;
      }
    }

    v49 = *(v56 + 32);
    sub_22C2704B4();
    sub_22BE18CE0();
    sub_22BEBFCD4(&qword_27D9090E0);
    v50 = sub_22BEC0724();
    sub_22BEBFDC4();
    sub_22BE38970();
    sub_22BEBFDC4();
    sub_22BE33928(v58, &qword_27D9092A0, &unk_22C294AC0);
    if ((v50 & 1) == 0)
    {
      goto LABEL_43;
    }

LABEL_37:
    sub_22BEC0A54(v59);
    sub_22BE18CE0();
    sub_22BEBFCD4(&qword_27D9090E0);
    v51 = sub_22C272FD4();
    sub_22BEBFDC4();
    sub_22BE33FD8();
    sub_22BEBFDC4();
    if (v51)
    {
      v3 += v53;
      sub_22BEC0018();
      if (!v33)
      {
        continue;
      }
    }

    goto LABEL_47;
  }

  sub_22BEBFDC4();
LABEL_45:
  sub_22BEBFDC4();
  sub_22BE33928(v58, &qword_27D9092A8, &unk_22C27FE80);
LABEL_46:
  sub_22BEBFDC4();
LABEL_47:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

void sub_22BEA1FF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4;
      v8 = v6 >> 62;
      v9 = *v4 >> 62;
      if (v6 >> 62)
      {
        v29 = v3;
        if (v8 == 1)
        {
          if (v9 != 1)
          {
            return;
          }

          v10 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v28 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
          v11 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v13 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v12 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v14 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);

          sub_22BEA7680(v11);
          sub_22BEA7680(v13);
          static AST.Expr.== infix(_:_:)();
          v16 = v15;
          sub_22BE63574(v13);
          sub_22BE63574(v11);
          if ((v16 & 1) == 0 || (sub_22BEA1FF4(v10, v12) & 1) == 0)
          {
LABEL_29:

            return;
          }

          if (v28)
          {
            if (!v14)
            {
              goto LABEL_29;
            }

            v17 = sub_22BEA1FF4(v28, v14);

            if ((v17 & 1) == 0)
            {
              return;
            }
          }

          else
          {

            if (v14)
            {
              return;
            }
          }
        }

        else
        {
          if (v9 != 2)
          {
            return;
          }

          v20 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
          v19 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
          v22 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
          v21 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
          if (*((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) != *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) || *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) != *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x18))
          {
            v24 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            if ((sub_22C274014() & 1) == 0)
            {
              return;
            }
          }

          sub_22BEA7680(v22);

          sub_22BEA7680(v20);
          sub_22BEA7680(v22);
          static AST.Expr.== infix(_:_:)();
          v26 = v25;
          sub_22BE63574(v22);
          sub_22BE63574(v20);
          if ((v26 & 1) == 0)
          {

            sub_22BE63574(v22);

            return;
          }

          v27 = sub_22BEA1FF4(v19, v21);

          sub_22BE63574(v22);

          v3 = v29;
          if ((v27 & 1) == 0)
          {
            return;
          }
        }
      }

      else
      {
        if (v9)
        {
          return;
        }

        v30 = *(v7 + 16);
        v31 = *(v5 + 16);
        static AST.Expr.== infix(_:_:)();
        if ((v18 & 1) == 0)
        {
          return;
        }
      }

      ++v4;
      --v2;
    }

    while (v2);
  }
}

void sub_22BEA230C()
{
  sub_22BE19460();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for AST.FlatValue(0);
  v6 = sub_22BE17A18(v5);
  v40 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE183AC();
  sub_22BE28EF4();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BEC07D4();
  v38 = type metadata accessor for AST.Update(v11);
  v12 = sub_22BE1A1D0(v38);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE3D12C();
  v39 = v15 - v16;
  sub_22BE467D8();
  MEMORY[0x28223BE20](v17);
  sub_22BE36504();
  v19 = *(v4 + 16);
  if (v19 == *(v2 + 16) && v19 && v4 != v2)
  {
    v20 = 0;
    sub_22BEBFEA0(v18);
    v34 = v19;
    v35 = *(v21 + 72);
    v37 = v0;
    while (1)
    {
      sub_22BE37AFC();
      sub_22BEBFD70();
      if (v20 == v19)
      {
        break;
      }

      v36 = v20;
      sub_22BE37AFC();
      sub_22BEBFD70();
      sub_22BE1AB74();
      static AST.FlatValue.== infix(_:_:)();
      if ((v22 & 1) == 0 || (v23 = v38[5], v24 = *(v37 + v23), v25 = *(v39 + v23), v26 = *(v24 + 16), v26 != *(v25 + 16)))
      {
LABEL_20:
        sub_22BEBFDC4();
        sub_22BEC0964();
        sub_22BEBFDC4();
        goto LABEL_21;
      }

      if (v26 && v24 != v25)
      {
        v27 = 0;
        sub_22BE3519C(v40);
        while (v27 < *(v24 + 16))
        {
          v28 = *(v40 + 72) * v27;
          sub_22BE3E51C();
          sub_22BEBFD70();
          if (v27 >= *(v25 + 16))
          {
            goto LABEL_23;
          }

          sub_22BE3E51C();
          sub_22BEBFD70();
          sub_22BE1804C();
          static AST.FlatValue.== infix(_:_:)();
          v30 = v29;
          sub_22BE414C8();
          sub_22BEBFDC4();
          sub_22BEBFDC4();
          if ((v30 & 1) == 0)
          {
            goto LABEL_20;
          }

          if (v26 == ++v27)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_23:
        __break(1u);
        break;
      }

LABEL_15:
      if (*(v37 + v38[6]) != *(v39 + v38[6]))
      {
        goto LABEL_20;
      }

      v31 = v38[7];
      static AST.FlatValue.== infix(_:_:)();
      v33 = v32;
      sub_22BEBFDC4();
      sub_22BE354DC();
      sub_22BEBFDC4();
      if (v33)
      {
        ++v20;
        v19 = v34;
        if (v36 + 1 != v34)
        {
          continue;
        }
      }

      goto LABEL_21;
    }

    __break(1u);
  }

  else
  {
LABEL_21:
    sub_22BE1AABC();
  }
}

uint64_t sub_22BEA267C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v11 = v6;
        v7 = *v4++;
        v10 = v7;
        sub_22BEA7680(v5);
        sub_22BEA7680(v7);
        v8 = static AST.Expr.== infix(_:_:)(&v11, &v10);
        sub_22BE63574(v7);
        sub_22BE63574(v5);
        --v2;
      }

      while ((v8 & 1) != 0 && v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_22BEA273C(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22C273CE4())
  {
    if (a2 >> 62)
    {
      result = sub_22C273CE4();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v22 = 0;
      return v22 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a1 < 0)
    {
      v7 = a1;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v23 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v22 = 1;
      return v22 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_22BEBFC3C();
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    v13 = a2;
    while (1)
    {
      v14 = v12 - 4;
      v15 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = sub_22BE38970();
        v17 = MEMORY[0x2318AC200](v16);
      }

      else
      {
        if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v17 = *(a1 + 8 * v12);
      }

      v18 = v17;
      if (v11)
      {
        v19 = sub_22BE1B18C();
        v20 = MEMORY[0x2318AC200](v19);
      }

      else
      {
        if (v14 >= *(v23 + 16))
        {
          goto LABEL_35;
        }

        v20 = *(a2 + 8 * v12);
      }

      v21 = v20;
      sub_22BE3AF28();
      v22 = sub_22C273814();

      if (v22)
      {
        ++v12;
        a2 = v13;
        if (v15 != i)
        {
          continue;
        }
      }

      return v22 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t static AST.Stmt.== infix(_:_:)(unint64_t a1, unint64_t a2)
{
  if (!(a1 >> 62))
  {
    if (!(a2 >> 62))
    {
      v6 = *(a2 + 16);
      *&v16 = *(a1 + 16);
      *&v13 = v6;
      static AST.Expr.== infix(_:_:)();
      return v5 & 1;
    }

LABEL_9:
    v5 = 0;
    return v5 & 1;
  }

  if (a1 >> 62 != 1)
  {
    if (a2 >> 62 == 2)
    {
      v8 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v7 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v9 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v10 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v16 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v17 = v8;
      v18 = v7;
      v13 = v9;
      v14 = v11;
      v15 = v10;
      static AST.ForInStmt.== infix(_:_:)(&v16, &v13);
      return v5 & 1;
    }

    goto LABEL_9;
  }

  if (a2 >> 62 != 1)
  {
    goto LABEL_9;
  }

  v2 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  v3 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v4 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  v16 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v17 = v2;
  v13 = v3;
  v14 = v4;
  v5 = static AST.IfStmt.== infix(_:_:)(&v16, &v13);
  return v5 & 1;
}

void static AST.Expr.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE1B2D4();
  updated = type metadata accessor for AST.UpdateParameters();
  v6 = sub_22BE18000(updated);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE183AC();
  sub_22BE20324();
  MEMORY[0x28223BE20](v9);
  sub_22BEC07D4();
  v10 = sub_22C26E684();
  v11 = sub_22BE179D8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE18928();
  MEMORY[0x28223BE20](v16);
  sub_22BE1C17C();
  v17 = *v1;
  v18 = *v0;
  switch(v17 >> 60)
  {
    case 1uLL:
      if (v18 >> 60 != 1)
      {
        goto LABEL_49;
      }

      swift_projectBox();
      swift_projectBox();
      v47 = *(v13 + 16);
      v48 = sub_22BE2C254();
      v47(v48);
      v49 = sub_22BE1B5E0();
      v47(v49);
      sub_22BE316EC();
      sub_22BE196A8();
      _s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0();
      v50 = *(v13 + 8);
      v50(v4, v10);
      v51 = sub_22BE194C4();
      (v50)(v51);
      goto LABEL_50;
    case 2uLL:
      if (v18 >> 60 != 2)
      {
        goto LABEL_49;
      }

      v26 = *((v17 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v25 = *((v17 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v27 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v28 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v29 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v30 = *((v17 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      sub_22BE316EC();
      v31 = sub_22BE29454();
      sub_22BEA76B8(v31, v32, v29);
      v33 = sub_22BE1C2A0();
      static AST.Literal.== infix(_:_:)(v33, v34, v30, v27, v28, v29);
      v35 = sub_22BE29454();
      sub_22BEA76F8(v35, v36, v29);
      goto LABEL_50;
    case 3uLL:
      if (v18 >> 60 != 3)
      {
        goto LABEL_49;
      }

      sub_22BEC0640();
      if (!v19)
      {
        goto LABEL_49;
      }

      v39 = *(v37 + 24);
      v40 = *(v38 + 24);
      goto LABEL_41;
    case 4uLL:
      if (v18 >> 60 != 4)
      {
        goto LABEL_49;
      }

      sub_22BEC0640();
      if (!v19)
      {
        goto LABEL_49;
      }

      v23 = *(v21 + 32);
      v24 = *(v22 + 32);
      v73 = *(v21 + 24);
      v67 = *(v22 + 24);
      goto LABEL_37;
    case 5uLL:
      if (v18 >> 60 != 5)
      {
        goto LABEL_49;
      }

      v53 = *((v17 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v52 = *((v17 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v54 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v55 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v75 = *((v17 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v69 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_22BE316EC();
      v56 = sub_22BEC0918();
      if ((static AST.Expr.== infix(_:_:)(v56, v57) & 1) == 0)
      {
        goto LABEL_50;
      }

      if (v53 == v54 && v52 == v55)
      {
        goto LABEL_54;
      }

      sub_22BE1C2A0();
      sub_22BEC06EC();
      goto LABEL_50;
    case 6uLL:
      if (v18 >> 60 != 6)
      {
        goto LABEL_49;
      }

      v59 = *((v17 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v60 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v76 = *((v17 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v70 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
LABEL_37:
      sub_22BE316EC();
      v61 = sub_22BEC0918();
      if (static AST.Expr.== infix(_:_:)(v61, v62))
      {
        goto LABEL_42;
      }

      goto LABEL_50;
    case 7uLL:
      if (v18 >> 60 != 7)
      {
        goto LABEL_49;
      }

      v41 = *((v17 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
      v42 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
      v74 = *((v17 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v77 = *((v17 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v78 = *((v17 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v68 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v71 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v72 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      sub_22BE316EC();
      v43 = sub_22BEC0918();
      if (static AST.CallFn.== infix(_:_:)(v43, v44))
      {
        v45 = sub_22BE191CC();
        sub_22BEA740C(v45, v46);
      }

      goto LABEL_50;
    case 8uLL:
      if (v18 >> 60 != 8)
      {
        goto LABEL_49;
      }

      swift_projectBox();
      swift_projectBox();
      sub_22BEBFD70();
      sub_22BE1B5E0();
      sub_22BEBFD70();
      sub_22BE316EC();
      sub_22BE191CC();
      if (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0() & 1) != 0 && (sub_22BEA70A0(*(v2 + *(updated + 20)), *(v3 + *(updated + 20))))
      {
        sub_22BEC01CC();
        sub_22BEBFDC4();
        sub_22BEBFDC4();
        goto LABEL_54;
      }

      sub_22BEC01CC();
      sub_22BEBFDC4();
      sub_22BEBFDC4();
      goto LABEL_50;
    case 9uLL:
      if (v18 >> 60 != 9)
      {
        goto LABEL_49;
      }

      goto LABEL_40;
    case 0xAuLL:
      if (v18 >> 60 != 10)
      {
        goto LABEL_49;
      }

LABEL_40:
      v63 = *((v17 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v64 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
LABEL_41:
      sub_22BE316EC();
LABEL_42:
      v65 = sub_22BEC0918();
      static AST.Expr.== infix(_:_:)(v65, v66);
      goto LABEL_50;
    case 0xBuLL:
      if (v17 == 0xB000000000000000)
      {
        if (v18 == 0xB000000000000000)
        {
          sub_22BE63574(0xB000000000000000);
          v20 = 0xB000000000000000;
          goto LABEL_55;
        }
      }

      else if (v18 == 0xB000000000000008)
      {
        sub_22BE63574(0xB000000000000008);
        v20 = 0xB000000000000008;
        goto LABEL_55;
      }

LABEL_49:
      sub_22BE316EC();
      goto LABEL_50;
    default:
      if (v18 >> 60)
      {
        goto LABEL_49;
      }

      v19 = *(v17 + 16) == *(v18 + 16) && *(v17 + 24) == *(v18 + 24);
      if (v19)
      {
        sub_22BE316EC();
LABEL_54:
        sub_22BE63574(v17);
        v20 = v18;
LABEL_55:
        sub_22BE63574(v20);
      }

      else
      {
        sub_22C274014();
        sub_22BE316EC();
LABEL_50:
        sub_22BE63574(v17);
        sub_22BE63574(v18);
      }

      sub_22BE1AABC();
      return;
  }
}

uint64_t static AST.IfStmt.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v16 = *a2;
  sub_22BEA7680(*a1);
  sub_22BEA7680(v6);
  static AST.Expr.== infix(_:_:)();
  v9 = v8;
  sub_22BE63574(v6);
  sub_22BE63574(v3);
  if (v9)
  {
    v10 = sub_22BE191CC();
    sub_22BEA1FF4(v10, v11);
    if (v12)
    {
      if (v4)
      {
        if (v7)
        {

          v13 = sub_22BE18944();
          sub_22BEA1FF4(v13, v14);
          sub_22BE417C8();
          if (v4)
          {
            return 1;
          }
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

void static AST.ForInStmt.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (sub_22C274014() & 1) != 0)
  {
    sub_22BEA7680(v2);
    sub_22BEA7680(v5);
    static AST.Expr.== infix(_:_:)();
    v8 = v7;
    sub_22BE63574(v5);
    sub_22BE63574(v2);
    if (v8)
    {
      v9 = sub_22BE19454();

      sub_22BEA1FF4(v9, v10);
    }
  }
}

unint64_t static AST.Literal.== infix(_:_:)(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a3)
  {
    case 1:
      if (a6 != 1)
      {
        goto LABEL_33;
      }

      v6 = a1 == a4;
      return v6 & 1;
    case 2:
      if (a6 != 2)
      {
        goto LABEL_33;
      }

      v6 = *&a1 == *&a4;
      return v6 & 1;
    case 3:
      if (a6 != 3)
      {
        goto LABEL_33;
      }

      goto LABEL_25;
    case 4:
      if (a6 != 4)
      {
        goto LABEL_33;
      }

      return sub_22BEA267C(a1, a4);
    case 5:
      if (a6 != 5)
      {
        goto LABEL_33;
      }

      return sub_22BEA728C(a1, a4);
    case 6:
      if (a6 != 6)
      {
        goto LABEL_33;
      }

LABEL_25:
      if (a1 == a4 && a2 == a5)
      {
        goto LABEL_32;
      }

      return sub_22C274014();
    case 7:
      if (a1 | a2)
      {
        if (a6 != 7 || a4 != 1 || a5 != 0)
        {
          goto LABEL_33;
        }

LABEL_32:
        v6 = 1;
        return v6 & 1;
      }

      if (a6 == 7 && !(a5 | a4))
      {
        goto LABEL_32;
      }

LABEL_33:
      v6 = 0;
      return v6 & 1;
    default:
      if (a6)
      {
        goto LABEL_33;
      }

      v6 = a4 ^ a1 ^ 1;
      return v6 & 1;
  }
}

uint64_t static AST.CallFn.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  if (v6 < 0)
  {
    if (v9 < 0)
    {
      v83[0] = *a1;
      v83[1] = v2;
      v83[2] = v5;
      v83[3] = v4;
      v84 = v6 & 1;
      v81 = v7;
      v53 = static GlobalToolIdentifier.== infix(_:_:)(v83);
      v66 = sub_22BE191C0();
      sub_22BEA7738(v66, v67, v8, v68, v9);
      v69 = sub_22BE1AB34();
      sub_22BEA7738(v69, v70, v71, v72, v73);
      v74 = sub_22BE1AB34();
      sub_22BEA7778(v74, v75, v76, v77, v78);
      v79 = sub_22BE191C0();
      sub_22BEA7778(v79, v80, v8, v81, v9);
      return v53 & 1;
    }

    goto LABEL_9;
  }

  if (v9 < 0)
  {
LABEL_9:
    v33 = sub_22BEBFF80();
    sub_22BEA7738(v33, v34, v35, v36, v37);
    v38 = sub_22BE1AB34();
    sub_22BEA7738(v38, v39, v40, v41, v42);
    v43 = sub_22BE1AB34();
    sub_22BEA7778(v43, v44, v45, v46, v47);
    v48 = sub_22BEBFF80();
    sub_22BEA7778(v48, v49, v50, v51, v52);
    v53 = 0;
    return v53 & 1;
  }

  v10 = *a1;
  if (v3 != *a2 || v2 != *(a2 + 8))
  {
    v82 = sub_22C274014();
    v12 = sub_22BEBFF80();
    sub_22BEA7738(v12, v13, v14, v15, v16);
    v17 = sub_22BE1AB34();
    sub_22BEA7738(v17, v18, v19, v20, v21);
    v22 = sub_22BE1AB34();
    sub_22BEA7778(v22, v23, v24, v25, v26);
    v27 = sub_22BEBFF80();
    sub_22BEA7778(v27, v28, v29, v30, v31);
    return v82 & 1;
  }

  sub_22BEA7738(v10, v2, v8, v7, v9);
  v54 = sub_22BE1AB34();
  sub_22BEA7738(v54, v55, v56, v57, v58);
  v59 = sub_22BE1AB34();
  sub_22BEA7778(v59, v60, v61, v62, v63);
  v64 = sub_22BE25C08();
  sub_22BEA7778(v64, v65, v8, v7, v9);
  v53 = 1;
  return v53 & 1;
}

void sub_22BEA3324()
{
  sub_22BE19460();
  if (v3 != v4 && (sub_22BEC05F8(v3, v4), v5))
  {
    v6 = 0;
    v7 = *(v0 + 64);
    v8 = 1 << *(v0 + 32);
    sub_22BE18010();
    v11 = v10 & v9;
    v13 = (v12 + 63) >> 6;
    while (v11)
    {
      sub_22BEC07F4();
LABEL_12:
      sub_22BEC05A8(v14);
      v18 = sub_22BE191CC();
      v20 = sub_22BE3B674(v18, v19);
      v22 = v21;

      if ((v22 & 1) == 0 || *(*(v1 + 56) + 8 * v20) != v2)
      {
        goto LABEL_14;
      }
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        goto LABEL_14;
      }

      ++v15;
      if (*(v0 + 64 + 8 * v6))
      {
        sub_22BE29270();
        v11 = v17 & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    sub_22BE1AABC();
  }
}

void sub_22BEA33FC()
{
  sub_22BE19460();
  sub_22BEBFFCC();
  v3 = sub_22C26E684();
  v4 = sub_22BE179D8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE183AC();
  sub_22BE28EF4();
  v8 = MEMORY[0x28223BE20](v7);
  sub_22BE2BB70(v8, v9, v10, v11, v12, v13, v14, v15, v50);
  v16 = sub_22BE5CE4C(&qword_27D9092C0, &qword_22C27FEA8);
  v17 = sub_22BE19448(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE19EA0();
  MEMORY[0x28223BE20](v20);
  sub_22BEBFF50();
  if (v0 != v1 && (sub_22BEC02F0(), v21))
  {
    v22 = 0;
    sub_22BEC0348();
    v51 = v0;
    v23 = *(v0 - 32);
    sub_22BE1B334();
    sub_22BE3CD98();
    while (v24)
    {
      sub_22BE22BE8();
      v52 = v25;
LABEL_11:
      v27 = sub_22BE3784C();
      v28(v27);
      v29 = sub_22BE5CE4C(&qword_27D9092C8, &qword_22C27FEB0);
      v30 = sub_22BE48D8C(v29);
      v31(v30);
      sub_22BEBFFBC();
      sub_22BEC0788(v32, v33, v34, v35);
LABEL_12:
      sub_22BEC0518();
      sub_22BEBFD18();
      sub_22BE5CE4C(&qword_27D9092C8, &qword_22C27FEB0);
      sub_22BE181B0(v0);
      if (v21)
      {
        goto LABEL_19;
      }

      v36 = sub_22BE1B04C();
      v37(v36);
      v38 = sub_22BE232C8();
      sub_22BE3B674(v38, v39);
      sub_22BEC06AC();
      if ((v0 & 1) == 0)
      {
        sub_22BEC03BC();
        v48 = sub_22BE33BE8();
        v49(v48);
        goto LABEL_19;
      }

      v40 = sub_22BE37B84();
      v41(v40);
      sub_22BE17BAC();
      sub_22BEBFCD4(&qword_27D9071B0);
      v0 = sub_22BE3E72C();
      v42 = sub_22BE25C08();
      MEMORY[0x90005F362](v42);
      v43 = sub_22BE33BE8();
      MEMORY[0x90005F362](v43);
      v24 = v52;
      if ((v0 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    while (1)
    {
      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v26 >= v2)
      {
        sub_22BE5CE4C(&qword_27D9092C8, &qword_22C27FEB0);
        v44 = sub_22BEC0354();
        sub_22BE191D8(v44, v45, v46, v47);
        v52 = 0;
        goto LABEL_12;
      }

      ++v22;
      if (*(v51 + 8 * v26))
      {
        sub_22BE24FC4();
        sub_22BEC0598();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_22BE393D4();
    sub_22BE1AABC();
  }
}

void sub_22BEA36D4()
{
  sub_22BE19460();
  v3 = v2;
  sub_22BE17BC4();
  v4 = sub_22C272874();
  v5 = sub_22BE179D8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE183AC();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  sub_22BE19E94();
  sub_22BE183BC();
  v76 = sub_22C26E684();
  v12 = sub_22BE179D8(v76);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v15);
  sub_22BE19E94();
  sub_22BE3FF64(v16);
  v17 = sub_22BE5CE4C(&qword_27D909038, &unk_22C27FC70);
  v18 = sub_22BE19448(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE19EA0();
  MEMORY[0x28223BE20](v21);
  sub_22BE19E94();
  sub_22BEC03A4(v22);
  if (v0 == v3 || *(v0 + 16) != *(v3 + 16))
  {
LABEL_19:
    sub_22BE1AABC();
  }

  else
  {
    v72 = v23;
    v24 = 0;
    sub_22BEC0348();
    v25 = *(v0 - 32);
    sub_22BE3C7F8();
    sub_22BE260C4();
    while (v10)
    {
      sub_22BEC0450();
LABEL_11:
      v29 = sub_22BE3E7D0();
      v30(v29);
      v31 = sub_22BE3CE7C();
      v32(v31);
      v33 = sub_22BE5CE4C(&qword_27D909040, &qword_22C2CC990);
      v34 = *(v33 + 48);
      v35 = *(v1 + 32);
      v36 = sub_22BE1AEE4();
      v37(v36);
      (*(v0 + 32))(v72 + v34, v10, v4);
      sub_22BE187DC();
      sub_22BE19DC4(v38, v39, v40, v33);
      v0 = v73;
      v10 = v74;
LABEL_12:
      sub_22BE39EAC();
      sub_22BEBFD18();
      v41 = sub_22BE25C08();
      v43 = sub_22BE5CE4C(v41, v42);
      sub_22BE181B0(v0);
      if (v44)
      {
        goto LABEL_19;
      }

      v45 = *(v43 + 48);
      v46 = *v75;
      v47 = sub_22BE33FCC();
      v1 = v76;
      v48(v47);
      v49 = sub_22BEC0428();
      v50(v49);
      sub_22BE602B4();
      v52 = v51;
      v53 = *v70;
      v54 = sub_22BE196A8();
      v55(v54);
      if ((v52 & 1) == 0)
      {
        v65 = *v71;
        v66 = sub_22BE1B328();
        v67(v66);
        goto LABEL_19;
      }

      v56 = sub_22BEC0310();
      v57(v56);
      sub_22BE23814();
      sub_22BEBFCD4(&unk_27D909048);
      sub_22BE3CC34();
      v58 = sub_22C272FD4();
      v59 = *(v52 + 8);
      v60 = sub_22BE260B8();
      v0 = v71;
      v59(v60);
      v61 = sub_22BE1B328();
      v59(v61);
      if ((v58 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v1 = v72;
    v0 = v73;
    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v26 >= v68)
      {
        v62 = sub_22BE5CE4C(&qword_27D909040, &qword_22C2CC990);
        sub_22BE191D8(v72, v63, v64, v62);
        v10 = 0;
        goto LABEL_12;
      }

      ++v24;
      if (*(v69 + 8 * v26))
      {
        sub_22BE24FC4();
        v74 = v27;
        v24 = v28;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_22BEA3AF0()
{
  sub_22BE19460();
  v4 = v3;
  v6 = v5;
  v63 = type metadata accessor for TranscriptProtoStatementID(0);
  v7 = sub_22BE179D8(v63);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE183AC();
  sub_22BEC0508();
  MEMORY[0x28223BE20](v12);
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v13);
  sub_22BE19E94();
  sub_22BE38A28(v14);
  v15 = sub_22BE5CE4C(&qword_27D909168, &qword_22C27FD60);
  v16 = sub_22BE19448(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v19);
  sub_22BE19E94();
  v64 = v20;
  v65 = v4;
  if (v6 != v4 && (v21 = *(v6 + 16), sub_22BEC0398(), v54))
  {
    v22 = 0;
    v24 = *(v6 + 64);
    v23 = v6 + 64;
    v25 = *(v23 - 32);
    sub_22BE1B334();
    v62 = v27 >> 6;
    v66 = v0;
    while (v26)
    {
      sub_22BE22BE8();
      v67 = v28;
LABEL_11:
      sub_22BE406C4();
      v33 = *v31;
      v32 = v31[1];
      v34 = *(v9 + 72);
      sub_22BE22AEC();
      sub_22BEBFD70();
      v35 = sub_22BE5CE4C(&qword_27D909170, &qword_22C27FD68);
      sub_22BE3A44C(v35);
      *v66 = v33;
      v66[1] = v32;
      sub_22BE1BE4C();
      sub_22BEBFC80();
      sub_22BE187DC();
      sub_22BEC0788(v36, v37, v38, &qword_27D909170);
LABEL_12:
      sub_22BEBFD18();
      v39 = sub_22BE354DC();
      v41 = sub_22BE5CE4C(v39, v40);
      sub_22BE181B0(v64);
      if (v54)
      {
        goto LABEL_30;
      }

      v42 = v2;
      v43 = *(v41 + 48);
      v44 = *v64;
      v45 = v64[1];
      sub_22BE1BE4C();
      sub_22BEBFC80();
      v46 = sub_22BE336E8();
      sub_22BE3B674(v46, v47);
      v49 = v48;

      if ((v49 & 1) == 0)
      {
        goto LABEL_29;
      }

      v50 = *(v65 + 56);
      v51 = *(v9 + 72);
      sub_22BE22AEC();
      v2 = v42;
      sub_22BEBFD70();
      if (*v42 != *v1)
      {
        goto LABEL_28;
      }

      v52 = *(v42 + 16);
      v53 = *(v1 + 16);
      if (v52)
      {
        if (!v53 || (*(v42 + 8) == *(v1 + 8) ? (v54 = v52 == v53) : (v54 = 0), !v54 && (sub_22C274014() & 1) == 0))
        {
LABEL_28:
          sub_22BE184EC();
          sub_22BEBFDC4();
LABEL_29:
          sub_22BEBFDC4();
          goto LABEL_30;
        }
      }

      else if (v53)
      {
        goto LABEL_28;
      }

      v55 = *(v63 + 24);
      sub_22C2704B4();
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      sub_22BEC0A14();
      sub_22BE1A5A0();
      sub_22BEBFDC4();
      sub_22BE1AB1C();
      sub_22BEBFDC4();
      v26 = v67;
      if ((v65 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    while (1)
    {
      v29 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v29 >= v62)
      {
        v56 = sub_22BE354DC();
        sub_22BE5CE4C(v56, v57);
        v58 = sub_22BE26188();
        sub_22BEC05D0(v58, v59, v60, v61);
        goto LABEL_12;
      }

      ++v22;
      if (*(v23 + 8 * v29))
      {
        sub_22BE24FC4();
        v67 = v30;
        sub_22BEC07B0();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_30:
    sub_22BE1AABC();
  }
}

void sub_22BEA3EAC()
{
  sub_22BE19460();
  v4 = sub_22BE1B2D4();
  v100 = type metadata accessor for TranscriptProtoAstflatValueEnum(v4);
  v5 = sub_22BE18000(v100);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  sub_22BE3FF64(v8);
  v9 = sub_22BE5CE4C(&qword_27D909178, &qword_22C27FD70);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  v14 = &v86 - v13;
  v92 = sub_22BE5CE4C(&qword_27D909180, &qword_22C27FD78);
  sub_22BE18000(v92);
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE29250(v18, v86);
  v91 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v19 = sub_22BE179D8(v91);
  v98 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE17B98();
  v99 = v23;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v24);
  sub_22BE2017C();
  MEMORY[0x28223BE20](v25);
  sub_22BE19E94();
  v90 = v26;
  v27 = sub_22BE5CE4C(&qword_27D909188, &qword_22C27FD80);
  v28 = sub_22BE19448(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BE183AC();
  v33 = (v31 - v32);
  MEMORY[0x28223BE20](v34);
  sub_22BE19E94();
  v93 = v35;
  v94 = v0;
  if (v1 == v0)
  {
    v95 = 1;
LABEL_34:
    sub_22BE1AABC();
    return;
  }

  v36 = *(v1 + 16);
  sub_22BEC0398();
  if (!v60)
  {
LABEL_33:
    v95 = 0;
    goto LABEL_34;
  }

  v37 = 0;
  v89 = v1;
  v38 = *(v1 + 64);
  v86 = v1 + 64;
  v39 = *(v1 + 32);
  sub_22BE1B334();
  v87 = v41 >> 6;
  v88 = v14;
  v42 = &qword_22C27FD70;
  while (v40)
  {
    sub_22BE22BE8();
    v97 = v43;
LABEL_12:
    sub_22BE406C4();
    v49 = *v47;
    v48 = v47[1];
    v50 = *(v98 + 72);
    sub_22BEC0094();
    sub_22BEBFD70();
    v51 = sub_22BE3E79C();
    v53 = sub_22BE5CE4C(v51, v52);
    sub_22BE3A44C(v53);
    *v33 = v49;
    v33[1] = v48;
    sub_22BEC0064();
    sub_22BEBFC80();
    sub_22BE187DC();
    sub_22BEC0788(v54, v55, v56, v2);
    v44 = v93;
LABEL_13:
    sub_22BE2C254();
    sub_22BEBFD18();
    v57 = sub_22BE3E79C();
    v59 = sub_22BE5CE4C(v57, v58);
    sub_22BE181B0(v44);
    if (v60)
    {
      v61 = 1;
    }

    else
    {
      v61 = 0;
    }

    v95 = v61;
    if (v60)
    {
      goto LABEL_34;
    }

    v62 = v42;
    v63 = v33;
    v64 = v100;
    v65 = *(v59 + 48);
    v66 = *v44;
    v67 = v44[1];
    sub_22BEC0064();
    sub_22BEBFC80();
    v68 = sub_22BE18040();
    v69 = v3;
    v70 = v94;
    v72 = sub_22BE3B674(v68, v71);
    v74 = v73;

    if ((v74 & 1) == 0)
    {
      goto LABEL_32;
    }

    v75 = *(v70 + 56) + *(v98 + 72) * v72;
    sub_22BEC0094();
    sub_22BEBFD70();
    v76 = *(v92 + 48);
    v77 = v96;
    v2 = &qword_27D909178;
    v42 = v62;
    sub_22BE22868();
    sub_22BE22868();
    v78 = sub_22BE36214();
    sub_22BE1AB5C(v78, v79, v64);
    v3 = v69;
    if (v60)
    {
      sub_22BE19678(v77 + v76);
      if (!v60)
      {
        goto LABEL_30;
      }

      v42 = v62;
      sub_22BE33928(v77, &qword_27D909178, v62);
    }

    else
    {
      sub_22BE22868();
      sub_22BE19678(v77 + v76);
      if (v80)
      {
        sub_22BEC0154();
        sub_22BEBFDC4();
LABEL_30:
        sub_22BE33928(v77, &qword_27D909180, &qword_22C27FD78);
LABEL_31:
        sub_22BEBFDC4();
LABEL_32:
        sub_22BEBFDC4();
        goto LABEL_33;
      }

      sub_22BEBFC80();
      sub_22BE3AF28();
      static TranscriptProtoAstflatValueEnum.== infix(_:_:)();
      sub_22BE3C1D0();
      sub_22BEBFDC4();
      sub_22BE232C8();
      sub_22BEBFDC4();
      sub_22BE33928(v96, &qword_27D909178, v62);
      v3 = v69;
      if ((v76 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    sub_22BEC0A84(v91);
    sub_22BE18CE0();
    sub_22BEBFCD4(&qword_27D9090E0);
    sub_22BEC0724();
    sub_22BEC00DC();
    sub_22BEBFDC4();
    sub_22BE232C8();
    sub_22BEBFDC4();
    v33 = v63;
    v40 = v97;
    if ((v76 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v44 = v93;
  while (1)
  {
    v45 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v45 >= v87)
    {
      v81 = sub_22BE3E79C();
      v83 = sub_22BE5CE4C(v81, v82);
      sub_22BE191D8(v33, v84, v85, v83);
      v97 = 0;
      goto LABEL_13;
    }

    ++v37;
    if (*(v86 + 8 * v45))
    {
      sub_22BE24FC4();
      v97 = v46;
      sub_22BEC07B0();
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_22BEA4440()
{
  sub_22BE19460();
  sub_22BE39048();
  v117 = sub_22C26F7C4();
  v4 = sub_22BE179D8(v117);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  sub_22BEC0988(v9);
  v10 = sub_22BE5CE4C(&qword_27D909088, &unk_22C27FCA0);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE1A174();
  sub_22BEC097C(v14);
  v107 = sub_22BE5CE4C(&off_27D909090, &qword_22C2B8270);
  sub_22BE18000(v107);
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE25CD0();
  v109 = sub_22BE5CE4C(&qword_27D909098, &qword_22C27FCB0);
  sub_22BE18000(v109);
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE2C638(v21, v95);
  v106 = type metadata accessor for Action.ParameterValue(0);
  v22 = sub_22BE179D8(v106);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BE183AC();
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v27);
  v111 = &v95 - v28;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v29);
  sub_22BE19E94();
  v105 = v30;
  v31 = sub_22BE5CE4C(&qword_27D9090A0, &qword_22C27FCB8);
  v32 = sub_22BE19448(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BE17B98();
  v114 = v35;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v36);
  sub_22BE19E94();
  sub_22BE38A28(v37);
  if (v1 != v0 && *(v1 + 16) == *(v0 + 16))
  {
    v104 = v3;
    v116 = v24;
    v38 = 0;
    v101 = v1;
    v39 = *(v1 + 64);
    v96 = v1 + 64;
    v40 = *(v1 + 32);
    sub_22BE1B334();
    v43 = v42 >> 6;
    v97 = (v6 + 32);
    v98 = (v6 + 8);
    v102 = v42 >> 6;
    v103 = v0;
    v112 = v2;
    while (1)
    {
      while (1)
      {
        if (!v41)
        {
          v45 = v113;
          while (1)
          {
            v46 = v38 + 1;
            if (__OFADD__(v38, 1))
            {
              break;
            }

            if (v46 >= v43)
            {
              sub_22BE5CE4C(&qword_27D9090A8, &qword_22C27FCC0);
              v92 = sub_22BE391E8();
              sub_22BE19DC4(v92, v93, 1, v94);
              v115 = 0;
              goto LABEL_12;
            }

            ++v38;
            if (*(v96 + 8 * v46))
            {
              sub_22BE24FC4();
              v115 = v47;
              v38 = v48;
              goto LABEL_11;
            }
          }

          __break(1u);
          return;
        }

        sub_22BE22BE8();
        v115 = v44;
LABEL_11:
        sub_22BE406C4();
        v50 = *v49;
        v51 = v49[1];
        v53 = *(v52 + 72);
        sub_22BE4251C();
        sub_22BEBFD70();
        v54 = sub_22BE5CE4C(&qword_27D9090A8, &qword_22C27FCC0);
        v55 = *(v54 + 48);
        v56 = v114;
        *v114 = v50;
        v56[1] = v51;
        sub_22BE3E9C0();
        sub_22BEBFC80();
        sub_22BE187DC();
        sub_22BE19DC4(v57, v58, v59, v54);

        v45 = v113;
LABEL_12:
        sub_22BE260B8();
        sub_22BEBFD18();
        v60 = sub_22BE5CE4C(&qword_27D9090A8, &qword_22C27FCC0);
        sub_22BE1AB5C(v45, 1, v60);
        if (v61)
        {
          v62 = 1;
        }

        else
        {
          v62 = 0;
        }

        if (v61)
        {
          goto LABEL_33;
        }

        v63 = *(v60 + 48);
        v64 = *v45;
        v65 = v45[1];
        sub_22BE3E9C0();
        sub_22BEBFC80();
        v66 = sub_22BE37490();
        v68 = sub_22BE3B674(v66, v67);
        LOBYTE(v64) = v69;

        if ((v64 & 1) == 0)
        {
          goto LABEL_30;
        }

        v110 = v62;
        v70 = v117;
        v71 = *(v0 + 56) + *(v116 + 72) * v68;
        sub_22BE4251C();
        sub_22BEBFD70();
        v72 = v108;
        v73 = *(v109 + 48);
        sub_22BEBFD70();
        sub_22BEBFD70();
        v74 = sub_22C272844();
        v75 = sub_22C272874();
        sub_22BE18000(v75);
        v77 = *(v76 + 8);
        v77(v72 + v73, v75);
        v78 = sub_22BE1804C();
        (v77)(v78);
        if ((v74 & 1) == 0)
        {
          sub_22BE385F0();
          sub_22BEBFDC4();
          sub_22BE39EAC();
LABEL_30:
          sub_22BEBFDC4();
          goto LABEL_33;
        }

        v79 = *(v106 + 20);
        v80 = *(v107 + 48);
        v81 = v112;
        sub_22BE22868();
        sub_22BE35E38();
        v82 = sub_22BE26188();
        sub_22BE1AB5C(v82, v83, v70);
        if (!v61)
        {
          break;
        }

        sub_22BE385F0();
        sub_22BEBFDC4();
        sub_22BE1AB74();
        sub_22BEBFDC4();
        sub_22BEBFF60(v81 + v80);
        if (!v61)
        {
          goto LABEL_32;
        }

        v84 = sub_22BE232C8();
        sub_22BE33928(v84, v85, &unk_22C27FCA0);
        v43 = v102;
        v0 = v103;
        v41 = v115;
      }

      v86 = v100;
      sub_22BE376A8();
      sub_22BE22868();
      sub_22BEBFF60(v81 + v80);
      if (v87)
      {
        break;
      }

      (*v97)(v99, v81 + v80, v117);
      sub_22BEBFCD4(&unk_27D9090B0);
      sub_22BE260B8();
      v88 = sub_22C272FD4();
      v89 = *v98;
      v90 = sub_22BE1C2A0();
      v89(v90);
      sub_22BEBFDC4();
      sub_22BEBFDC4();
      v91 = sub_22BE38970();
      v89(v91);
      sub_22BE33928(v112, &qword_27D909088, &unk_22C27FCA0);
      v43 = v102;
      v0 = v103;
      v41 = v115;
      if ((v88 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    sub_22BEBFDC4();
    sub_22BE39EAC();
    sub_22BEBFDC4();
    (*v98)(v86, v117);
LABEL_32:
    sub_22BE33928(v81, &off_27D909090, &qword_22C2B8270);
  }

LABEL_33:
  sub_22BE1AABC();
}

void sub_22BEA4B88()
{
  sub_22BE19460();
  v2 = sub_22BEBFFCC();
  v3 = type metadata accessor for TranscriptProtoParameterValue(v2);
  v4 = sub_22BE17A18(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE18928();
  MEMORY[0x28223BE20](v7);
  sub_22BE26800();
  v8 = sub_22BE5CE4C(&qword_27D909250, &off_22C27FE38);
  v9 = sub_22BE19448(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v12);
  sub_22BEBFF50();
  if (v0 != v1 && (v13 = *(v0 + 16), sub_22BEC0484(), v15))
  {
    v41 = v14;
    v16 = 0;
    sub_22BEC0348();
    v17 = *(v0 - 32);
    sub_22BE1B334();
    v20 = v19 >> 6;
    while (v18)
    {
      sub_22BE22BE8();
      sub_22BEC04F8();
LABEL_12:
      sub_22BE2BA44();
      sub_22BE3D67C();
      sub_22BEBFD70();
      v23 = sub_22BE5CE4C(&qword_27D909258, &qword_22C27FE40);
      sub_22BE363C4(v23);
      sub_22BEC0244();
      sub_22BEBFC80();
      sub_22BEBFFBC();
      sub_22BE19DC4(v24, v25, v26, v27);

      v21 = v41;
LABEL_13:
      sub_22BE33FD8();
      sub_22BEBFD18();
      v28 = sub_22BE191C0();
      v30 = sub_22BE5CE4C(v28, v29);
      v31 = sub_22BE36214();
      sub_22BE1AB5C(v31, v32, v30);
      if (v15)
      {
        goto LABEL_20;
      }

      sub_22BE38FE4();
      sub_22BEC0244();
      sub_22BEBFC80();
      v33 = sub_22BE194C4();
      sub_22BE3B674(v33, v34);
      sub_22BEC0708();
      if ((v21 & 1) == 0)
      {
        sub_22BEBFDC4();
        goto LABEL_20;
      }

      sub_22BE447D0();
      sub_22BE3D67C();
      sub_22BEBFD70();
      static TranscriptProtoParameterValue.== infix(_:_:)();
      v36 = v35;
      sub_22BEBFDC4();
      sub_22BE1AEE4();
      sub_22BEBFDC4();
      v18 = v42;
      if ((v36 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v21 = v41;
    while (1)
    {
      v22 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v22 >= v20)
      {
        sub_22BE5CE4C(&qword_27D909258, &qword_22C27FE40);
        v37 = sub_22BE391E8();
        sub_22BEC05D0(v37, v38, v39, v40);
        goto LABEL_13;
      }

      ++v16;
      if (*(v0 + 8 * v22))
      {
        sub_22BE24FC4();
        sub_22BE27174();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:
    sub_22BE393D4();
    sub_22BE1AABC();
  }
}

void sub_22BEA4E60()
{
  sub_22BE19460();
  sub_22BE1B2D4();
  v2 = sub_22C272594();
  v3 = sub_22BE179D8(v2);
  v61 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE18928();
  MEMORY[0x28223BE20](v7);
  sub_22BE19E94();
  sub_22BE3BF90(v8);
  v9 = sub_22BE5CE4C(&qword_27D909198, &unk_22C27FD90);
  v10 = sub_22BE19448(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE19EA0();
  MEMORY[0x28223BE20](v13);
  sub_22BEBFF50();
  v62 = v0;
  if (v1 != v0 && (v14 = *(v1 + 16), sub_22BEC0398(), v17))
  {
    v57 = v15;
    v58 = v16;
    v18 = 0;
    v56 = v1;
    v19 = *(v1 + 64);
    v55 = v1 + 64;
    v20 = *(v1 + 32);
    sub_22BE3C7F8();
    v23 = v22 & v21;
    v25 = (v24 + 63) >> 6;
    while (v23)
    {
      v59 = (v23 - 1) & v23;
      v26 = __clz(__rbit64(v23)) | (v18 << 6);
LABEL_11:
      v29 = *(*(v56 + 48) + 4 * v26);
      (*(v61 + 16))(v60, *(v56 + 56) + *(v61 + 72) * v26, v2);
      v30 = sub_22BE5CE4C(&qword_27D9091A0, &unk_22C2CC980);
      v31 = *(v30 + 48);
      *v58 = v29;
      (*(v61 + 32))(&v58[v31], v60, v2);
      sub_22BE187DC();
      sub_22BE19DC4(v32, v33, v34, v30);
      v23 = v59;
LABEL_12:
      sub_22BEBFD18();
      v35 = sub_22BE261AC();
      v37 = sub_22BE5CE4C(v35, v36);
      sub_22BE181B0(v57);
      if (v17)
      {
        goto LABEL_19;
      }

      v38 = *(v37 + 48);
      v39 = *v57;
      v40 = *(v61 + 32);
      v41 = sub_22BEC0360();
      v42(v41);
      v43 = sub_22BE60364(v39);
      if ((v44 & 1) == 0)
      {
        sub_22BEC061C();
        v53 = sub_22BE1B5E0();
        v54(v53);
        goto LABEL_19;
      }

      (*(v61 + 16))(v60, *(v62 + 56) + *(v61 + 72) * v43, v2);
      sub_22BEBFE88();
      sub_22BEBFCD4(&unk_27D909148);
      v45 = sub_22BE37DB4();
      v46 = *(v61 + 8);
      v46(v60, v2);
      v47 = sub_22BE1B5E0();
      (v46)(v47);
      if ((v45 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    while (1)
    {
      v27 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v27 >= v25)
      {
        v48 = sub_22BE261AC();
        sub_22BE5CE4C(v48, v49);
        v50 = sub_22BE36214();
        sub_22BE19DC4(v50, v51, 1, v52);
        v23 = 0;
        goto LABEL_12;
      }

      ++v18;
      if (*(v55 + 8 * v27))
      {
        sub_22BE24FC4();
        v59 = v28;
        sub_22BEC07B0();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_22BE393D4();
    sub_22BE1AABC();
  }
}

void sub_22BEA51FC()
{
  sub_22BE19460();
  sub_22BEBFFCC();
  v3 = sub_22C272594();
  v4 = sub_22BE179D8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE183AC();
  sub_22BE28EF4();
  v8 = MEMORY[0x28223BE20](v7);
  sub_22BE2BB70(v8, v9, v10, v11, v12, v13, v14, v15, v50);
  v16 = sub_22BE5CE4C(&qword_27D909238, &qword_22C27FE28);
  v17 = sub_22BE19448(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE19EA0();
  MEMORY[0x28223BE20](v20);
  sub_22BEBFF50();
  if (v0 != v1 && (sub_22BEC02F0(), v21))
  {
    v22 = 0;
    sub_22BEC0348();
    v51 = v0;
    v23 = *(v0 - 32);
    sub_22BE1B334();
    sub_22BE3CD98();
    while (v24)
    {
      sub_22BE22BE8();
      v52 = v25;
LABEL_11:
      v27 = sub_22BE3784C();
      v28(v27);
      v29 = sub_22BE5CE4C(&qword_27D909240, &qword_22C27FE30);
      v30 = sub_22BE48D8C(v29);
      v31(v30);
      sub_22BEBFFBC();
      sub_22BEC0788(v32, v33, v34, v35);
LABEL_12:
      sub_22BEC0518();
      sub_22BEBFD18();
      sub_22BE5CE4C(&qword_27D909240, &qword_22C27FE30);
      sub_22BE181B0(v0);
      if (v21)
      {
        goto LABEL_19;
      }

      v36 = sub_22BE1B04C();
      v37(v36);
      v38 = sub_22BE232C8();
      sub_22BE3B674(v38, v39);
      sub_22BEC06AC();
      if ((v0 & 1) == 0)
      {
        sub_22BEC03BC();
        v48 = sub_22BE33BE8();
        v49(v48);
        goto LABEL_19;
      }

      v40 = sub_22BE37B84();
      v41(v40);
      sub_22BEBFE88();
      sub_22BEBFCD4(&unk_27D909148);
      v0 = sub_22BE3E72C();
      v42 = sub_22BE25C08();
      MEMORY[0x150005F306](v42);
      v43 = sub_22BE33BE8();
      MEMORY[0x150005F306](v43);
      v24 = v52;
      if ((v0 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    while (1)
    {
      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v26 >= v2)
      {
        sub_22BE5CE4C(&qword_27D909240, &qword_22C27FE30);
        v44 = sub_22BEC0354();
        sub_22BE191D8(v44, v45, v46, v47);
        v52 = 0;
        goto LABEL_12;
      }

      ++v22;
      if (*(v51 + 8 * v26))
      {
        sub_22BE24FC4();
        sub_22BEC0598();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_22BE393D4();
    sub_22BE1AABC();
  }
}

void sub_22BEA54D4()
{
  sub_22BE19460();
  v4 = sub_22BE1B2D4();
  v65 = type metadata accessor for TranscriptProtoShimParameters(v4);
  v5 = sub_22BE179D8(v65);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE183AC();
  sub_22BEC0508();
  MEMORY[0x28223BE20](v10);
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v11);
  sub_22BE19E94();
  sub_22BE252B8(v12);
  v13 = sub_22BE5CE4C(&qword_27D909228, &qword_22C27FE18);
  v14 = sub_22BE19448(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE19EA0();
  MEMORY[0x28223BE20](v17);
  sub_22BEBFF50();
  v67 = v0;
  if (v1 != v0 && (v18 = *(v1 + 16), sub_22BEC0398(), v21))
  {
    v64 = v19;
    v66 = v20;
    v22 = 0;
    v23 = *(v1 + 64);
    v63 = v1 + 64;
    v24 = *(v1 + 32);
    sub_22BE1B334();
    v27 = v26 >> 6;
    while (v25)
    {
      sub_22BE22BE8();
      v68 = v28;
LABEL_11:
      sub_22BE406C4();
      v33 = *v31;
      v32 = v31[1];
      v34 = *(v7 + 72);
      sub_22BEC01FC();
      sub_22BEBFD70();
      v35 = sub_22BE5CE4C(&qword_27D909230, &qword_22C27FE20);
      sub_22BE3A44C(v35);
      *v66 = v33;
      v66[1] = v32;
      sub_22BE42620();
      sub_22BEBFC80();
      sub_22BE187DC();
      sub_22BEC0788(v36, v37, v38, &qword_27D909230);
LABEL_12:
      sub_22BEBFD18();
      v39 = sub_22BE354DC();
      v41 = sub_22BE5CE4C(v39, v40);
      sub_22BE181B0(v64);
      if (v21)
      {
        goto LABEL_21;
      }

      v42 = v3;
      v43 = *(v41 + 48);
      v44 = *v64;
      v45 = v64[1];
      sub_22BE42620();
      sub_22BEBFC80();
      v46 = sub_22BE336E8();
      sub_22BE3B674(v46, v47);
      v49 = v48;

      if ((v49 & 1) == 0)
      {
        goto LABEL_20;
      }

      v50 = *(v67 + 56);
      v51 = *(v7 + 72);
      sub_22BEC01FC();
      v3 = v42;
      sub_22BEBFD70();
      v52 = *v42;
      v53 = *v2;
      sub_22BE9D9B4();
      if ((v54 & 1) == 0)
      {
        sub_22BEBFDC4();
LABEL_20:
        sub_22BEBFDC4();
        goto LABEL_21;
      }

      v55 = *(v65 + 20);
      sub_22C2704B4();
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      v56 = sub_22BEC0A14();
      sub_22BEBFDC4();
      sub_22BE1AB1C();
      sub_22BEBFDC4();
      v25 = v68;
      if ((v56 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    while (1)
    {
      v29 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v29 >= v27)
      {
        v57 = sub_22BE354DC();
        sub_22BE5CE4C(v57, v58);
        v59 = sub_22BE36214();
        sub_22BEC05D0(v59, v60, v61, v62);
        goto LABEL_12;
      }

      ++v22;
      if (*(v63 + 8 * v29))
      {
        sub_22BE24FC4();
        v68 = v30;
        sub_22BEC07B0();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:
    sub_22BE1AABC();
  }
}

void sub_22BEA5870()
{
  sub_22BE19460();
  v3 = v2;
  sub_22BE17BC4();
  v4 = sub_22C2728E4();
  v5 = sub_22BE179D8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE183AC();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  sub_22BE19E94();
  sub_22BE183BC();
  v76 = sub_22C272984();
  v12 = sub_22BE179D8(v76);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v15);
  sub_22BE19E94();
  sub_22BE3FF64(v16);
  v17 = sub_22BE5CE4C(&qword_27D909058, &qword_22C27FC80);
  v18 = sub_22BE19448(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE19EA0();
  MEMORY[0x28223BE20](v21);
  sub_22BE19E94();
  sub_22BEC03A4(v22);
  if (v0 == v3 || *(v0 + 16) != *(v3 + 16))
  {
LABEL_19:
    sub_22BE1AABC();
  }

  else
  {
    v72 = v23;
    v24 = 0;
    sub_22BEC0348();
    v25 = *(v0 - 32);
    sub_22BE3C7F8();
    sub_22BE260C4();
    while (v10)
    {
      sub_22BEC0450();
LABEL_11:
      v29 = sub_22BE3E7D0();
      v30(v29);
      v31 = sub_22BE3CE7C();
      v32(v31);
      v33 = sub_22BE5CE4C(&qword_27D909060, &qword_22C27FC88);
      v34 = *(v33 + 48);
      v35 = *(v1 + 32);
      v36 = sub_22BE1AEE4();
      v37(v36);
      (*(v0 + 32))(v72 + v34, v10, v4);
      sub_22BE187DC();
      sub_22BE19DC4(v38, v39, v40, v33);
      v0 = v73;
      v10 = v74;
LABEL_12:
      sub_22BE39EAC();
      sub_22BEBFD18();
      v41 = sub_22BE25C08();
      v43 = sub_22BE5CE4C(v41, v42);
      sub_22BE181B0(v0);
      if (v44)
      {
        goto LABEL_19;
      }

      v45 = *(v43 + 48);
      v46 = *v75;
      v47 = sub_22BE33FCC();
      v1 = v76;
      v48(v47);
      v49 = sub_22BEC0428();
      v50(v49);
      sub_22BE603AC();
      v52 = v51;
      v53 = *v70;
      v54 = sub_22BE196A8();
      v55(v54);
      if ((v52 & 1) == 0)
      {
        v65 = *v71;
        v66 = sub_22BE1B328();
        v67(v66);
        goto LABEL_19;
      }

      v56 = sub_22BEC0310();
      v57(v56);
      sub_22BEBFCD4(&unk_27D909068);
      sub_22BE3CC34();
      v58 = sub_22C272FD4();
      v59 = *(v52 + 8);
      v60 = sub_22BE260B8();
      v0 = v71;
      v59(v60);
      v61 = sub_22BE1B328();
      v59(v61);
      if ((v58 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v1 = v72;
    v0 = v73;
    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v26 >= v68)
      {
        v62 = sub_22BE5CE4C(&qword_27D909060, &qword_22C27FC88);
        sub_22BE191D8(v72, v63, v64, v62);
        v10 = 0;
        goto LABEL_12;
      }

      ++v24;
      if (*(v69 + 8 * v26))
      {
        sub_22BE24FC4();
        v74 = v27;
        v24 = v28;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_22BEA5C9C()
{
  sub_22BE19460();
  v3 = v2;
  v5 = v4;
  v6 = sub_22C26E614();
  v7 = sub_22BE179D8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  sub_22BE1AB80();
  v12 = sub_22BE5CE4C(&qword_27D908FF8, &qword_22C27FC50);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE2C638(v16, v114);
  v125 = sub_22BE5CE4C(&qword_27D909028, &qword_22C27FC68);
  sub_22BE18000(v125);
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE181D0(v20, v114);
  v21 = type metadata accessor for Candidate(0);
  v22 = sub_22BE179D8(v21);
  v130 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BE17B98();
  v132 = v26;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v27);
  v129 = &v114 - v28;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v29);
  sub_22BE19E94();
  sub_22BE32BE4(v30);
  v31 = sub_22BE5CE4C(&off_27D909000, &qword_22C27FC58);
  v32 = sub_22BE19448(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BE17B98();
  v131 = v35;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v36);
  sub_22BE26800();
  if (v5 != v3)
  {
    v37 = *(v5 + 16);
    sub_22BEC0484();
    if (v66)
    {
      v117 = v0;
      v38 = 0;
      v39 = *(v5 + 64);
      v133 = v5 + 64;
      v40 = 1 << *(v5 + 32);
      sub_22BE3AF84();
      sub_22BE25A74();
      v114 = v42;
      v115 = v43;
      v116 = (v9 + 32);
      v118 = (v9 + 8);
      v121 = v6;
      v122 = v3;
      v44 = v129;
      v120 = v5;
      v127 = v21;
      while (1)
      {
        while (1)
        {
          if (!v41)
          {
            while (1)
            {
              v48 = v38 + 1;
              if (__OFADD__(v38, 1))
              {
                break;
              }

              if (v48 >= v115)
              {
                v85 = sub_22BE5CE4C(&qword_27D909008, &qword_22C27FC60);
                sub_22BE191D8(v131, v86, v87, v85);
                v126 = 0;
                goto LABEL_12;
              }

              v49 = *(v133 + 8 * v48);
              ++v38;
              if (v49)
              {
                v126 = (v49 - 1) & v49;
                v47 = __clz(__rbit64(v49)) | (v48 << 6);
                v38 = v48;
                goto LABEL_11;
              }
            }

            __break(1u);
            return;
          }

          sub_22BE22BE8();
          v126 = v45;
          v47 = v46 | (v38 << 6);
LABEL_11:
          v50 = *(v5 + 56);
          v51 = *(v5 + 48) + 32 * v47;
          v53 = *v51;
          v52 = *(v51 + 8);
          v54 = *(v51 + 16);
          v55 = *(v51 + 24);
          v56 = *(v130 + 72);
          sub_22BE40BC8();
          sub_22BEBFD70();
          v57 = sub_22BE5CE4C(&qword_27D909008, &qword_22C27FC60);
          v58 = *(v57 + 48);
          v59 = v131;
          *v131 = v53;
          v59[1] = v52;
          v59[2] = v54;
          *(v59 + 24) = v55;
          sub_22BE1949C();
          sub_22BEBFC80();
          sub_22BE187DC();
          sub_22BEC0788(v60, v61, v62, v57);
          v44 = v129;
          v21 = v127;
LABEL_12:
          sub_22BEBFD18();
          v63 = sub_22BE29264();
          v65 = sub_22BE5CE4C(v63, v64);
          sub_22BE181B0(v1);
          if (v66)
          {
            v67 = 1;
          }

          else
          {
            v67 = 0;
          }

          if (v66)
          {
            goto LABEL_67;
          }

          v68 = *(v65 + 48);
          v69 = *v1;
          v70 = *(v1 + 8);
          v71 = *(v1 + 16);
          v72 = *(v1 + 24);
          sub_22BE1949C();
          sub_22BEBFC80();
          v73 = sub_22BEBFF00();
          v74 = v122;
          sub_22BE6045C(v73, v75, v76, v72);
          LOBYTE(v71) = v77;

          if ((v71 & 1) == 0)
          {
            goto LABEL_66;
          }

          v78 = *(v74 + 56);
          v79 = *(v130 + 72);
          sub_22BE40BC8();
          sub_22BE2BB28();
          sub_22BEBFD70();
          sub_22BE1A8C4();
          if ((sub_22C272844() & 1) == 0)
          {
            goto LABEL_65;
          }

          v123 = v67;
          v80 = v21[5];
          v81 = *(v74 + v80);
          v82 = v44[v80];
          v83 = 0xEB00000000797265;
          v84 = v121;
          switch(v81)
          {
            case 1:
              sub_22BEC0950();
              sub_22BEC0864();
              break;
            case 2:
              v83 = v114;
              break;
            case 3:
              sub_22BEC0904();
              v88 = 5391173;
              goto LABEL_26;
            case 4:
              sub_22BEC093C();
              sub_22BEC0850();
              break;
            case 5:
              sub_22BEC08C8();
              v88 = 6649196;
LABEL_26:
              v83 = v88 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
              break;
            case 6:
              v83 = 0xEA00000000007470;
              sub_22BEC08B4();
              break;
            case 7:
              sub_22BEC08F0();
              v83 = 0xEA00000000006863;
              break;
            default:
              break;
          }

          sub_22BEC08A0();
          v91 = 0xEB00000000797265;
          switch(v92)
          {
            case 1:
              sub_22BE3C778();
              v91 = 0xEE007972616C7562;
              break;
            case 2:
              v90 = 0xD000000000000014;
              v91 = v114;
              break;
            case 3:
              sub_22BEC0878();
              v93 = 5391173;
              goto LABEL_35;
            case 4:
              sub_22BEC088C();
              v91 = 0xEF79727473696765;
              break;
            case 5:
              sub_22BEC083C();
              v93 = 6649196;
LABEL_35:
              v91 = v93 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
              break;
            case 6:
              v91 = 0xEA00000000007470;
              sub_22BEC0828();
              break;
            case 7:
              sub_22BE464AC();
              v91 = 0xEA00000000006863;
              break;
            default:
              break;
          }

          if (v89 == v90 && v83 == v91)
          {
          }

          else
          {
            v95 = sub_22C274014();

            if ((v95 & 1) == 0)
            {
              goto LABEL_65;
            }
          }

          v96 = v21[6];
          v97 = *(v132 + v96);
          v98 = *(v132 + v96 + 8);
          v99 = &v44[v96];
          v100 = *v99;
          v101 = v99[8];
          if (v98 == 1)
          {
            v102 = v128;
            if (v97)
            {
              if (!v100)
              {
                v101 = 0;
              }

              if ((v101 & 1) == 0)
              {
                goto LABEL_65;
              }
            }

            else
            {
              if (v100)
              {
                v101 = 0;
              }

              if ((v101 & 1) == 0)
              {
LABEL_65:
                sub_22BEBFDC4();
                sub_22BE1AB74();
LABEL_66:
                sub_22BEBFDC4();
                goto LABEL_67;
              }
            }
          }

          else
          {
            sub_22BEC02E4();
            v102 = v128;
            if (v103)
            {
              goto LABEL_65;
            }
          }

          v104 = v21[7];
          if ((_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0() & 1) == 0)
          {
            goto LABEL_65;
          }

          v105 = v21[8];
          v106 = *(v125 + 48);
          sub_22BE22868();
          sub_22BE22868();
          v107 = sub_22BE36214();
          sub_22BE1AB5C(v107, v108, v84);
          if (!v66)
          {
            break;
          }

          sub_22BE1C288();
          sub_22BEBFDC4();
          sub_22BE1AB74();
          sub_22BEBFDC4();
          sub_22BE1AB5C(v102 + v106, 1, v84);
          if (!v66)
          {
            goto LABEL_69;
          }

          sub_22BE33928(v102, &qword_27D908FF8, &qword_22C27FC50);
          v5 = v120;
          v41 = v126;
          v21 = v127;
        }

        sub_22BE22868();
        sub_22BE1AB5C(v102 + v106, 1, v84);
        if (v109)
        {
          break;
        }

        v110 = v102 + v106;
        v111 = v117;
        (*v116)(v117, v110, v84);
        sub_22BE251C4();
        sub_22BEBFCD4(&unk_27D909030);
        v119 = sub_22C272FD4();
        v112 = *v118;
        v44 = v129;
        (*v118)(v111, v84);
        sub_22BEBFDC4();
        sub_22BEBFDC4();
        v113 = sub_22BE191C0();
        (v112)(v113);
        sub_22BE33928(v128, &qword_27D908FF8, &qword_22C27FC50);
        v5 = v120;
        v41 = v126;
        v21 = v127;
        if ((v119 & 1) == 0)
        {
          goto LABEL_67;
        }
      }

      sub_22BE1C288();
      sub_22BEBFDC4();
      sub_22BE1AB74();
      sub_22BEBFDC4();
      (*v118)(v124, v84);
LABEL_69:
      sub_22BE33928(v102, &qword_27D909028, &qword_22C27FC68);
    }
  }

LABEL_67:
  sub_22BE1AABC();
}

void sub_22BEA657C()
{
  sub_22BE19460();
  v3 = sub_22BEBFFCC();
  v4 = type metadata accessor for AST.FlatValue(v3);
  v5 = sub_22BE17A18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE18928();
  MEMORY[0x28223BE20](v8);
  sub_22BE26800();
  v9 = sub_22BE5CE4C(&qword_27D9092B0, &unk_22C288C10);
  v10 = sub_22BE19448(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE17B98();
  v44 = v13;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v14);
  sub_22BEBFF50();
  if (v0 != v1 && (v15 = *(v0 + 16), sub_22BEC0484(), v17))
  {
    v43 = v16;
    v18 = 0;
    sub_22BEC0348();
    v42 = v0;
    v19 = *(v0 - 32);
    sub_22BE1B334();
    v22 = v21 >> 6;
    while (v20)
    {
      sub_22BE22BE8();
      sub_22BEC04F8();
LABEL_12:
      sub_22BE2BA44();
      sub_22BE3E51C();
      sub_22BEBFD70();
      v25 = sub_22BE5CE4C(&unk_27D907790, &unk_22C27FE90);
      sub_22BE363C4(v25);
      sub_22BE2540C();
      sub_22BEBFC80();
      sub_22BEBFFBC();
      sub_22BE19DC4(v26, v27, v28, v29);

      v23 = v43;
LABEL_13:
      sub_22BE33FD8();
      sub_22BEBFD18();
      v30 = sub_22BE191C0();
      v32 = sub_22BE5CE4C(v30, v31);
      v33 = sub_22BE36214();
      sub_22BE1AB5C(v33, v34, v32);
      if (v17)
      {
        goto LABEL_20;
      }

      sub_22BE38FE4();
      sub_22BE2540C();
      sub_22BEBFC80();
      v35 = sub_22BE194C4();
      sub_22BE3B674(v35, v36);
      sub_22BEC0708();
      if ((v23 & 1) == 0)
      {
        sub_22BEBFDC4();
        goto LABEL_20;
      }

      sub_22BE447D0();
      sub_22BE3E51C();
      sub_22BEBFD70();
      v37 = static AST.FlatValue.== infix(_:_:)(v0, v2);
      sub_22BE414C8();
      sub_22BEBFDC4();
      sub_22BE1AEE4();
      sub_22BEBFDC4();
      v20 = v45;
      if ((v37 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v23 = v43;
    v0 = v44;
    while (1)
    {
      v24 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v24 >= v22)
      {
        sub_22BE5CE4C(&unk_27D907790, &unk_22C27FE90);
        v38 = sub_22BE391E8();
        sub_22BEC05D0(v38, v39, v40, v41);
        goto LABEL_13;
      }

      ++v18;
      if (*(v42 + 8 * v24))
      {
        sub_22BE24FC4();
        sub_22BE27174();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:
    sub_22BE393D4();
    sub_22BE1AABC();
  }
}

void sub_22BEA6844()
{
  sub_22BE19460();
  sub_22BEBFFCC();
  v3 = sub_22C272874();
  v4 = sub_22BE179D8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE183AC();
  sub_22BE28EF4();
  v8 = MEMORY[0x28223BE20](v7);
  sub_22BE2BB70(v8, v9, v10, v11, v12, v13, v14, v15, v50);
  v16 = sub_22BE5CE4C(&qword_27D909078, &unk_22C27FC90);
  v17 = sub_22BE19448(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE19EA0();
  MEMORY[0x28223BE20](v20);
  sub_22BEBFF50();
  if (v0 != v1 && (sub_22BEC02F0(), v21))
  {
    v22 = 0;
    sub_22BEC0348();
    v51 = v0;
    v23 = *(v0 - 32);
    sub_22BE1B334();
    sub_22BE3CD98();
    while (v24)
    {
      sub_22BE22BE8();
      v52 = v25;
LABEL_11:
      v27 = sub_22BE3784C();
      v28(v27);
      v29 = sub_22BE5CE4C(&qword_27D909080, &qword_22C2905E0);
      v30 = sub_22BE48D8C(v29);
      v31(v30);
      sub_22BEBFFBC();
      sub_22BEC0788(v32, v33, v34, v35);
LABEL_12:
      sub_22BEC0518();
      sub_22BEBFD18();
      sub_22BE5CE4C(&qword_27D909080, &qword_22C2905E0);
      sub_22BE181B0(v0);
      if (v21)
      {
        goto LABEL_19;
      }

      v36 = sub_22BE1B04C();
      v37(v36);
      v38 = sub_22BE232C8();
      sub_22BE3B674(v38, v39);
      sub_22BEC06AC();
      if ((v0 & 1) == 0)
      {
        sub_22BEC03BC();
        v48 = sub_22BE33BE8();
        v49(v48);
        goto LABEL_19;
      }

      v40 = sub_22BE37B84();
      v41(v40);
      sub_22BE23814();
      sub_22BEBFCD4(&unk_27D909048);
      v0 = sub_22BE3E72C();
      v42 = sub_22BE25C08();
      MEMORY[0](v42);
      v43 = sub_22BE33BE8();
      MEMORY[0](v43);
      v24 = v52;
      if ((v0 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    while (1)
    {
      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v26 >= v2)
      {
        sub_22BE5CE4C(&qword_27D909080, &qword_22C2905E0);
        v44 = sub_22BEC0354();
        sub_22BE191D8(v44, v45, v46, v47);
        v52 = 0;
        goto LABEL_12;
      }

      ++v22;
      if (*(v51 + 8 * v26))
      {
        sub_22BE24FC4();
        sub_22BEC0598();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_22BE393D4();
    sub_22BE1AABC();
  }
}

void sub_22BEA6B1C()
{
  sub_22BE19460();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for ClientAction.ShimParameter(0);
  v5 = sub_22BE17A18(v4);
  v42 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE183AC();
  sub_22BE20324();
  MEMORY[0x28223BE20](v9);
  sub_22BE181E4();
  if (v3 != v1 && (v10 = *(v3 + 16), sub_22BEC0484(), v11))
  {
    v12 = 0;
    v13 = *(v3 + 64);
    v14 = 1 << *(v3 + 32);
    sub_22BE3AF84();
    v16 = v15 >> 6;
    v40 = v15 >> 6;
    if (v17)
    {
      while (1)
      {
        sub_22BE22BE8();
        v41 = v19;
LABEL_11:
        v23 = v18 | (v12 << 6);
        v24 = (*(v3 + 48) + 16 * v23);
        v25 = *v24;
        v26 = v24[1];
        v27 = *(*(v3 + 56) + 8 * v23);

        v28 = sub_22BE1AEE4();
        v30 = sub_22BE3B674(v28, v29);
        v32 = v31;

        if ((v32 & 1) == 0 || (v33 = *(*(v1 + 56) + 8 * v30), v34 = *(v33 + 16), v34 != *(v27 + 16)))
        {
LABEL_25:

          goto LABEL_26;
        }

        if (v34 && v33 != v27)
        {
          break;
        }

LABEL_21:

        v16 = v40;
        if (!v41)
        {
          goto LABEL_6;
        }
      }

      v39 = v1;
      sub_22BE3519C(v42);

      v35 = 0;
      while (v35 < *(v33 + 16))
      {
        v36 = *(v42 + 72) * v35;
        sub_22BEBFD70();
        if (v35 >= *(v27 + 16))
        {
          goto LABEL_29;
        }

        sub_22BEBFD70();
        sub_22BE1B328();
        static ClientAction.ShimParameter.== infix(_:_:)();
        v38 = v37;
        sub_22BEBFDC4();
        sub_22BEBFDC4();
        if ((v38 & 1) == 0)
        {

          goto LABEL_25;
        }

        if (v34 == ++v35)
        {

          v1 = v39;
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_6:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v16)
        {
          goto LABEL_26;
        }

        ++v20;
        if (*(v3 + 64 + 8 * v12))
        {
          sub_22BE29270();
          v41 = v22 & v21;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_26:
    sub_22BE1AABC();
  }
}

void sub_22BEA6DC8()
{
  sub_22BE19460();
  v2 = sub_22BEBFFCC();
  v3 = type metadata accessor for TranscriptProtoActionParameterValue(v2);
  v4 = sub_22BE17A18(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE18928();
  MEMORY[0x28223BE20](v7);
  sub_22BE26800();
  v8 = sub_22BE5CE4C(&qword_27D909260, &qword_22C27FE48);
  v9 = sub_22BE19448(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v12);
  sub_22BEBFF50();
  if (v0 != v1 && (v13 = *(v0 + 16), sub_22BEC0484(), v15))
  {
    v41 = v14;
    v16 = 0;
    sub_22BEC0348();
    v17 = *(v0 - 32);
    sub_22BE1B334();
    v20 = v19 >> 6;
    while (v18)
    {
      sub_22BE22BE8();
      sub_22BEC04F8();
LABEL_12:
      sub_22BE2BA44();
      sub_22BE23E68();
      sub_22BEBFD70();
      v23 = sub_22BE5CE4C(&qword_27D909268, &unk_22C27FE50);
      sub_22BE363C4(v23);
      sub_22BE416BC();
      sub_22BEBFC80();
      sub_22BEBFFBC();
      sub_22BE19DC4(v24, v25, v26, v27);

      v21 = v41;
LABEL_13:
      sub_22BE33FD8();
      sub_22BEBFD18();
      v28 = sub_22BE191C0();
      v30 = sub_22BE5CE4C(v28, v29);
      v31 = sub_22BE36214();
      sub_22BE1AB5C(v31, v32, v30);
      if (v15)
      {
        goto LABEL_20;
      }

      sub_22BE38FE4();
      sub_22BE416BC();
      sub_22BEBFC80();
      v33 = sub_22BE194C4();
      sub_22BE3B674(v33, v34);
      sub_22BEC0708();
      if ((v21 & 1) == 0)
      {
        sub_22BEBFDC4();
        goto LABEL_20;
      }

      sub_22BE447D0();
      sub_22BE23E68();
      sub_22BEBFD70();
      static TranscriptProtoActionParameterValue.== infix(_:_:)();
      v36 = v35;
      sub_22BEBFDC4();
      sub_22BE1AEE4();
      sub_22BEBFDC4();
      v18 = v42;
      if ((v36 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v21 = v41;
    while (1)
    {
      v22 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v22 >= v20)
      {
        sub_22BE5CE4C(&qword_27D909268, &unk_22C27FE50);
        v37 = sub_22BE391E8();
        sub_22BEC05D0(v37, v38, v39, v40);
        goto LABEL_13;
      }

      ++v16;
      if (*(v0 + 8 * v22))
      {
        sub_22BE24FC4();
        sub_22BE27174();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:
    sub_22BE393D4();
    sub_22BE1AABC();
  }
}

uint64_t sub_22BEA70A0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v26 = result + 64;
  v27 = result;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v25 = (v4 + 63) >> 6;
  while (v6)
  {
    v7 = __clz(__rbit64(v6));
    v28 = (v6 - 1) & v6;
LABEL_13:
    v10 = v7 | (v3 << 6);
    v11 = *(result + 48) + 32 * v10;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = (*(result + 56) + 16 * v10);
    v16 = *v15;
    v17 = *(v15 + 1);
    v18 = *(v11 + 24);
    sub_22BE6355C(*v11, v13, v14, v18);
    sub_22BEA7680(v17);
    v19 = sub_22BE60508(v12, v13, v14, v18);
    v21 = v20;
    sub_22BE635AC(v12, v13, v14, v18);
    if ((v21 & 1) == 0 || (v22 = (*(a2 + 56) + 16 * v19), v16 != *v22))
    {
      sub_22BE63574(v17);
      return 0;
    }

    v23 = *(v22 + 1);
    v29 = v17;
    v30 = v23;
    sub_22BEA7680(v23);
    sub_22BEA7680(v23);
    sub_22BEA7680(v17);
    v24 = static AST.Expr.== infix(_:_:)(&v30, &v29);
    sub_22BE63574(v17);
    sub_22BE63574(v23);
    sub_22BE63574(v23);
    sub_22BE63574(v17);
    result = v27;
    v6 = v28;
    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = v3;
  while (1)
  {
    v3 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v3 >= v25)
    {
      return 1;
    }

    v9 = *(v26 + 8 * v3);
    ++v8;
    if (v9)
    {
      v7 = __clz(__rbit64(v9));
      v28 = (v9 - 1) & v9;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22BEA728C(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    sub_22BEA7680(v16);
    if (!v14)
    {
      return 1;
    }

    v23 = v16;
    v17 = sub_22BE3B674(v15, v14);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      sub_22BE63574(v16);
      return 0;
    }

    v20 = *(*(a2 + 56) + 8 * v17);
    v22 = v20;
    sub_22BEA7680(v20);
    v21 = static AST.Expr.== infix(_:_:)(&v22, &v23);
    sub_22BE63574(v20);
    result = sub_22BE63574(v16);
    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22BEA740C(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = *(result + 64);
  v27 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v28 = v9;
  if ((v7 & v5) != 0)
  {
    do
    {
      v10 = __clz(__rbit64(v8));
      v11 = (v8 - 1) & v8;
LABEL_12:
      v14 = v10 | (v4 << 6);
      v15 = *(v3 + 48) + 32 * v14;
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      v19 = *(v15 + 24);
      v20 = *(*(v3 + 56) + 8 * v14);
      sub_22BE6355C(*v15, v17, v18, *(v15 + 24));
      sub_22BEA7680(v20);
      if (v19 == 255)
      {
        return 1;
      }

      v29 = v11;
      v21 = v3;
      v31 = v20;
      v22 = sub_22BE60508(v16, v17, v18, v19);
      v24 = v23;
      sub_22BE635AC(v16, v17, v18, v19);
      if ((v24 & 1) == 0)
      {
        sub_22BE63574(v20);
        return 0;
      }

      v25 = *(*(a2 + 56) + 8 * v22);
      v30 = v25;
      sub_22BEA7680(v25);
      v26 = static AST.Expr.== infix(_:_:)(&v30, &v31);
      sub_22BE63574(v25);
      result = sub_22BE63574(v20);
      if ((v26 & 1) == 0)
      {
        return 0;
      }

      v3 = v21;
      v9 = v28;
      v8 = v29;
    }

    while (v29);
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v13 = *(v27 + 8 * v4);
    ++v12;
    if (v13)
    {
      v10 = __clz(__rbit64(v13));
      v11 = (v13 - 1) & v13;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t static AST.UpdateParameters.== infix(_:_:)()
{
  sub_22BE18378();
  if ((_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for AST.UpdateParameters() + 20);
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);

  return sub_22BEA70A0(v3, v4);
}

uint64_t type metadata accessor for AST.UpdateParameters()
{
  result = qword_27D908AE0;
  if (!qword_27D908AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22BEA7680(unint64_t result)
{
  switch(result >> 60)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BEA76B8(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 3:
    case 4:
    case 5:
    case 6:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BEA76F8(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 3:
    case 4:
    case 5:
    case 6:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BEA7738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 < 0)
  {
  }
}

uint64_t sub_22BEA7778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if (a5 < 0)
  {
  }

  return result;
}

uint64_t sub_22BEA77C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 28262 && a2 == 0xE200000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22BEA7890(char a1)
{
  if (a1)
  {
    return 0x6574656D61726170;
  }

  else
  {
    return 28262;
  }
}

uint64_t sub_22BEA78C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E656469 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C61726574696CLL && a2 == 0xE700000000000000;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x786966657270 && a2 == 0xE600000000000000;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7869666E69 && a2 == 0xE500000000000000;
          if (v9 || (sub_22C274014() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 7630692 && a2 == 0xE300000000000000;
            if (v10 || (sub_22C274014() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
              if (v11 || (sub_22C274014() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 1819042147 && a2 == 0xE400000000000000;
                if (v12 || (sub_22C274014() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000010 && 0x800000022C2D3730 == a2;
                  if (v13 || (sub_22C274014() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x616C50664F646E65 && a2 == 0xE90000000000006ELL;
                    if (v14 || (sub_22C274014() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000010 && 0x800000022C2D3750 == a2;
                      if (v15 || (sub_22C274014() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6465646E61707865 && a2 == 0xE800000000000000;
                        if (v16 || (sub_22C274014() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0x726F707075736E75 && a2 == 0xEF7473694C646574)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_22C274014();

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

unint64_t sub_22BEA7CBC(char a1)
{
  result = 0x746E656469;
  switch(a1)
  {
    case 1:
      result = 0x6E656D6574617473;
      break;
    case 2:
      result = 0x6C61726574696CLL;
      break;
    case 3:
      result = 0x786966657270;
      break;
    case 4:
      v3 = 1768320617;
      goto LABEL_12;
    case 5:
      result = 7630692;
      break;
    case 6:
      v3 = 1701080681;
LABEL_12:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x7800000000;
      break;
    case 7:
      result = 1819042147;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x616C50664F646E65;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x6465646E61707865;
      break;
    case 12:
      result = 0x726F707075736E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BEA7E04(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7563372 && a2 == 0xE300000000000000;
  if (v3 || (sub_22BE19114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    sub_22BE19114();
    sub_22BE417C8();
    if (a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BEA7EA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 12639 && a2 == 0xE200000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 12895 && a2 == 0xE200000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

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

uint64_t sub_22BEA7FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEA77C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BEA7FE8(uint64_t a1)
{
  v2 = sub_22BEAB56C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEA8024(uint64_t a1)
{
  v2 = sub_22BEAB56C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEA8068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEA78C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BEA8090@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BEA7CB4();
  *a1 = result;
  return result;
}

uint64_t sub_22BEA80B8(uint64_t a1)
{
  v2 = sub_22BEAB320();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEA80F4(uint64_t a1)
{
  v2 = sub_22BEAB320();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEA8130(uint64_t a1)
{
  v2 = sub_22BEAB470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEA816C(uint64_t a1)
{
  v2 = sub_22BEAB470();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEA81A8(uint64_t a1)
{
  v2 = sub_22BEAB6BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEA81E4(uint64_t a1)
{
  v2 = sub_22BEAB6BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEA8220(uint64_t a1)
{
  v2 = sub_22BEAB4C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEA825C(uint64_t a1)
{
  v2 = sub_22BEAB4C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEA8298(uint64_t a1)
{
  v2 = sub_22BEAB41C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEA82D4(uint64_t a1)
{
  v2 = sub_22BEAB41C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEA8310(uint64_t a1)
{
  v2 = sub_22BEAB95C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEA834C(uint64_t a1)
{
  v2 = sub_22BEAB95C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEA8388(uint64_t a1)
{
  v2 = sub_22BEAB668();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEA83C4(uint64_t a1)
{
  v2 = sub_22BEAB668();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEA8408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEA7EA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BEA8430(uint64_t a1)
{
  v2 = sub_22BEAB710();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEA846C(uint64_t a1)
{
  v2 = sub_22BEAB710();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEA84A8(uint64_t a1)
{
  v2 = sub_22BEAB860();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEA84E4(uint64_t a1)
{
  v2 = sub_22BEAB860();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEA8520(uint64_t a1)
{
  v2 = sub_22BEAB7B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEA855C(uint64_t a1)
{
  v2 = sub_22BEAB7B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEA8598(uint64_t a1)
{
  v2 = sub_22BEAB908();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEA85D4(uint64_t a1)
{
  v2 = sub_22BEAB908();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEA8610(uint64_t a1)
{
  v2 = sub_22BEAB374();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEA864C(uint64_t a1)
{
  v2 = sub_22BEAB374();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEA8688(uint64_t a1)
{
  v2 = sub_22BEAB518();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEA86C4(uint64_t a1)
{
  v2 = sub_22BEAB518();

  return MEMORY[0x2821FE720](a1, v2);
}

void AST.Expr.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v23;
  a20 = v24;
  v217 = v21;
  v25 = v20;
  v27 = v26;
  *&v213 = sub_22BE5CE4C(&qword_27D908388, &qword_22C27AB60);
  sub_22BE179D8(v213);
  *&v212 = v28;
  v30 = *(v29 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE4104C(v32, v190);
  v33 = sub_22BE5CE4C(&qword_27D908390, &qword_22C27AB68);
  v34 = sub_22BE179D8(v33);
  v209[1] = v35;
  v210 = v34;
  v37 = *(v36 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v38);
  sub_22BE1A174();
  sub_22BE39F68(v39);
  v40 = sub_22BE5CE4C(&qword_27D908398, &qword_22C27AB70);
  sub_22BE18910(v40, &v211);
  v193 = v41;
  v43 = *(v42 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v44);
  sub_22BE1A174();
  sub_22BE190A8(v45);
  v46 = sub_22BE5CE4C(&qword_27D9083A0, &qword_22C27AB78);
  sub_22BE18910(v46, v209);
  v48 = *(v47 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v49);
  sub_22BE1A174();
  sub_22BE190A8(v50);
  v51 = sub_22BE5CE4C(&qword_27D9083A8, &qword_22C27AB80);
  v52 = sub_22BE179D8(v51);
  v207 = v53;
  v208 = v52;
  v55 = *(v54 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v56);
  sub_22BE1A174();
  sub_22BE190A8(v57);
  updated = type metadata accessor for AST.UpdateParameters();
  v58 = sub_22BE18000(updated);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  sub_22BE17A44();
  sub_22BE190A8(v61);
  v62 = sub_22BE5CE4C(&qword_27D9083B0, &qword_22C27AB88);
  v63 = sub_22BE179D8(v62);
  v205 = v64;
  v206 = v63;
  v66 = *(v65 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v67);
  sub_22BE1A174();
  sub_22BE190A8(v68);
  v69 = sub_22BE5CE4C(&qword_27D9083B8, &qword_22C27AB90);
  sub_22BE18910(v69, &a14);
  v202 = v70;
  v72 = *(v71 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v73);
  sub_22BE1A174();
  sub_22BE190A8(v74);
  v75 = sub_22BE5CE4C(&qword_27D9083C0, &qword_22C27AB98);
  sub_22BE18910(v75, &a9);
  v200 = v76;
  v78 = *(v77 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v79);
  sub_22BE1A174();
  sub_22BE190A8(v80);
  v81 = sub_22BE5CE4C(&qword_27D9083C8, &qword_22C27ABA0);
  sub_22BE18910(v81, &a11);
  v201 = v82;
  v84 = *(v83 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v85);
  sub_22BE1A174();
  sub_22BE190A8(v86);
  v87 = sub_22BE5CE4C(&qword_27D9083D0, &qword_22C27ABA8);
  sub_22BE18910(v87, &v219);
  v199 = v88;
  v90 = *(v89 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v91);
  sub_22BE1A174();
  sub_22BE190A8(v92);
  v93 = sub_22BE5CE4C(&qword_27D9083D8, &qword_22C27ABB0);
  sub_22BE18910(v93, &v217);
  v198 = v94;
  v96 = *(v95 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v97);
  sub_22BE1A174();
  sub_22BE190A8(v98);
  v99 = sub_22BE5CE4C(&qword_27D9083E0, &qword_22C27ABB8);
  sub_22BE18910(v99, &v215);
  v197 = v100;
  v102 = *(v101 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v103);
  sub_22BE1B72C();
  v104 = sub_22C26E684();
  v105 = sub_22BE18910(v104, &v213);
  v195 = v106;
  v108 = *(v107 + 64);
  MEMORY[0x28223BE20](v105);
  sub_22BE179EC();
  v111 = v110 - v109;
  v112 = sub_22BE5CE4C(&qword_27D9083E8, &qword_22C27ABC0);
  sub_22BE179D8(v112);
  v194 = v113;
  v115 = *(v114 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v116);
  sub_22BE2C64C();
  v216 = sub_22BE5CE4C(&qword_27D9083F0, &qword_22C27ABC8);
  sub_22BE179D8(v216);
  v214 = v117;
  v119 = *(v118 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v120);
  sub_22BE25CD0();
  v121 = *v25;
  v122 = v27[4];
  sub_22BE26950(v27, v27[3]);
  sub_22BEAB320();
  v215 = v22;
  sub_22BEC046C();
  sub_22C274234();
  switch(v121 >> 60)
  {
    case 1uLL:
      v165 = swift_projectBox();
      (*(v195 + 16))(v111, v165, v196);
      LOBYTE(v218) = 1;
      sub_22BEAB908();
      sub_22BE27168();
      sub_22C273EE4();
      sub_22BE17BAC();
      sub_22BEBFCD4(v166);
      sub_22BEC0400(&v215);
      sub_22C273FA4();
      sub_22BE1B5D4(&v214);
      v167 = sub_22BE3CC34();
      v168(v167);
      (*(v195 + 8))(v111, v196);
      v169 = *(v214 + 8);
      v170 = sub_22BE1B5E0();
      goto LABEL_31;
    case 2uLL:
      v140 = *((v121 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v141 = *((v121 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v142 = *((v121 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      LOBYTE(v218) = 2;
      v143 = sub_22BE260B8();
      sub_22BEA76B8(v143, v144, v142);
      sub_22BEAB860();
      v145 = v216;
      sub_22BE33B04();
      sub_22C273EE4();
      *&v218 = v140;
      *(&v218 + 1) = v141;
      LOBYTE(v219) = v142;
      sub_22BEAB8B4();
      sub_22C273FA4();
      v146 = sub_22BE31180();
      v147(v146);
      v148 = sub_22BEC0304();
      v149(v148, v145);
      v150 = sub_22BE260B8();
      sub_22BEA76F8(v150, v151, v142);
      break;
    case 3uLL:
      v152 = *((v121 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v153 = *((v121 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      LOBYTE(v218) = 3;
      sub_22BEAB7B8();
      v154 = v216;
      sub_22BE1AF00();
      sub_22C273EE4();
      LOBYTE(v218) = v152;
      HIBYTE(a10) = 0;
      sub_22BEAB80C();
      sub_22BE365EC();
      sub_22BEC077C();
      v155 = v217;
      sub_22C273FA4();
      if (!v155)
      {
        *&v218 = v153;
        sub_22BE486C4();
        sub_22BEAB3C8();
        sub_22BE365EC();
        sub_22BEC077C();
        sub_22C273FA4();
      }

      v156 = v199;
      goto LABEL_17;
    case 4uLL:
      v133 = *((v121 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v134 = *((v121 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v135 = *((v121 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      LOBYTE(v218) = 4;
      sub_22BEAB710();
      sub_22BE29E4C(&v220);
      v125 = v216;
      sub_22BE33B04();
      sub_22C273EE4();
      LOBYTE(v218) = v133;
      HIBYTE(a10) = 0;
      sub_22BEAB764();
      sub_22BE365EC();
      sub_22BEC0400(&a11);
      v136 = v217;
      sub_22C273FA4();
      if (!v136)
      {
        *&v218 = v134;
        sub_22BE486C4();
        sub_22BEAB3C8();
        sub_22BE365EC();
        sub_22BE36514();
        sub_22C273FA4();
        *&v218 = v135;
        sub_22BE39E24();
        sub_22BE365EC();
        sub_22BE36514();
        sub_22C273FA4();
      }

      v137 = &a10;
      goto LABEL_22;
    case 5uLL:
      v133 = *((v121 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v173 = *((v121 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v174 = *((v121 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      LOBYTE(v218) = 5;
      sub_22BEAB6BC();
      sub_22BE29E4C(&v219 + 8);
      v125 = v216;
      sub_22BE33B04();
      sub_22C273EE4();
      *&v218 = v133;
      HIBYTE(a10) = 0;
      sub_22BEAB3C8();
      sub_22BE365EC();
      sub_22BEC0400(&a9);
      v175 = v217;
      sub_22C273FA4();
      if (!v175)
      {
        LOBYTE(v218) = 1;
        sub_22BE260B8();
        sub_22BE36514();
        sub_22C273F54();
      }

      v137 = &v221;
LABEL_22:
      v126 = sub_22BE1AB4C(v137);
      v128 = v133;
      goto LABEL_23;
    case 6uLL:
      v176 = *((v121 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v177 = *((v121 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      LOBYTE(v218) = 6;
      sub_22BEAB668();
      sub_22BE29E4C(&a12);
      v154 = v216;
      sub_22BE1AF00();
      sub_22C273EE4();
      *&v218 = v176;
      HIBYTE(a10) = 0;
      sub_22BEAB3C8();
      sub_22BE365EC();
      v178 = v217;
      sub_22C273FA4();
      if (!v178)
      {
        *&v218 = v177;
        sub_22BE486C4();
        sub_22BE365EC();
        sub_22BE36514();
        sub_22C273FA4();
      }

      v162 = sub_22BE1AB4C(&a13);
      v163 = v203;
      goto LABEL_27;
    case 7uLL:
      v157 = *((v121 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v158 = *((v121 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
      LOBYTE(v218) = 7;
      sub_22BEAB56C();
      v159 = *((v121 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v212 = *((v121 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v213 = v159;
      v154 = v216;
      sub_22BE1AF00();
      sub_22C273EE4();
      v218 = v213;
      v219 = v212;
      v220 = v157;
      HIBYTE(a10) = 0;
      sub_22BEAB5C0();
      sub_22BE365EC();
      sub_22BEC077C();
      v160 = v217;
      sub_22C273FA4();
      if (!v160)
      {
        *&v218 = v158;
        sub_22BE486C4();
        sub_22BE5CE4C(&qword_27D908448, &qword_22C27ABD0);
        sub_22BEB9A24(&unk_27D908450);
        sub_22BE365EC();
        sub_22C273FA4();
      }

      v156 = v205;
LABEL_17:
      v161 = *(v156 + 8);
      v162 = sub_22BE392D4();
LABEL_27:
      v164(v162, v163);
      v170 = sub_22BE28D70();
      v171 = v154;
      goto LABEL_31;
    case 8uLL:
      swift_projectBox();
      sub_22BE258A8();
      sub_22BEBFD70();
      LOBYTE(v218) = 8;
      sub_22BEAB518();
      sub_22BE28EE4();
      sub_22C273EE4();
      sub_22BEC007C();
      sub_22BEBFCD4(v184);
      sub_22C273FA4();
      v185 = sub_22BE28D70();
      v186(v185, v208);
      sub_22BE35AF4();
      sub_22BEBFDC4();
      v170 = sub_22BE25EE4();
      goto LABEL_31;
    case 9uLL:
      v138 = *((v121 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v218) = 11;
      sub_22BEA7680(v138);
      sub_22BEAB41C();
      sub_22BE27168();
      sub_22C273EE4();
      *&v218 = v138;
      sub_22BEAB3C8();
      v139 = v210;
      sub_22C273FA4();
      goto LABEL_29;
    case 0xAuLL:
      v138 = *((v121 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v218) = 12;
      sub_22BEA7680(v138);
      sub_22BEAB374();
      sub_22BE27168();
      sub_22C273EE4();
      *&v218 = v138;
      sub_22BEAB3C8();
      v139 = v213;
      sub_22C273FA4();
LABEL_29:
      v179 = sub_22BEC0304();
      v180(v179, v139);
      v181 = *(v214 + 8);
      v182 = sub_22BE1B328();
      v183(v182);
      sub_22BE63574(v138);
      break;
    case 0xBuLL:
      v129 = (v214 + 8);
      if (v121 == 0xB000000000000000)
      {
        LOBYTE(v218) = 9;
        sub_22BEAB4C4();
        sub_22BE27168();
        sub_22C273EE4();
        sub_22BE1B5D4(&v208);
        v131 = v191;
        v132 = v209;
      }

      else
      {
        LOBYTE(v218) = 10;
        sub_22BEAB470();
        sub_22BE27168();
        sub_22C273EE4();
        sub_22BE1B5D4(&v210);
        v131 = v192;
        v132 = &v211;
      }

      v130(v131, *(v132 - 32));
      v187 = *v129;
      v188 = sub_22BE1A8C4();
      v189(v188);
      break;
    default:
      v123 = *(v121 + 16);
      v124 = *(v121 + 24);
      LOBYTE(v218) = 0;
      sub_22BEAB95C();

      v125 = v216;
      sub_22BE33B04();
      sub_22C273EE4();
      sub_22BE3CC34();
      sub_22C273F54();

      v126 = sub_22BE19698(&v212);
      v128 = v112;
LABEL_23:
      v127(v126, v128);
      v170 = sub_22BEC0304();
      v171 = v125;
LABEL_31:
      v172(v170, v171);
      break;
  }

  sub_22BE18478();
}

void AST.Expr.hash(into:)()
{
  sub_22BE17BC4();
  updated = type metadata accessor for AST.UpdateParameters();
  v3 = sub_22BE18000(updated);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  v8 = v7 - v6;
  v9 = sub_22C26E684();
  v10 = sub_22BE179D8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE179EC();
  v17 = v16 - v15;
  v18 = *v1;
  switch(*v1 >> 60)
  {
    case 1uLL:
      v51 = swift_projectBox();
      (*(v12 + 16))(v17, v51, v9);
      MEMORY[0x2318AC860](1);
      sub_22BE17BAC();
      sub_22BEBFCD4(v52);
      sub_22BE44750();
      sub_22C272EE4();
      v53 = *(v12 + 8);
      v54 = sub_22BE38970();
      v55(v54);
      goto LABEL_23;
    case 2uLL:
      v29 = v18 & 0xFFFFFFFFFFFFFFFLL;
      v30 = *(v29 + 16);
      v31 = *(v29 + 24);
      v32 = *(v29 + 32);
      MEMORY[0x2318AC860](2);
      v33 = sub_22BE191CC();
      sub_22BEA76B8(v33, v34, v32);
      v35 = sub_22BE33FD8();
      AST.Literal.hash(into:)(v35, v36, v31);
      sub_22BE191CC();
      sub_22BE267B8();

      sub_22BEA76F8(v37, v38, v39);
      return;
    case 3uLL:
      v41 = v18 & 0xFFFFFFFFFFFFFFFLL;
      v42 = *(v41 + 16);
      v43 = *(v41 + 24);
      MEMORY[0x2318AC860](3);
      MEMORY[0x2318AC860](v42);
      goto LABEL_22;
    case 4uLL:
      v23 = v18 & 0xFFFFFFFFFFFFFFFLL;
      v24 = *(v23 + 16);
      v25 = *(v23 + 24);
      v26 = *(v23 + 32);
      MEMORY[0x2318AC860](4);
      MEMORY[0x2318AC860](v24);
      AST.Expr.hash(into:)(v0);
      goto LABEL_22;
    case 5uLL:
      v56 = (v18 & 0xFFFFFFFFFFFFFFFLL);
      v58 = v56[2];
      v57 = v56[3];
      v59 = v56[4];
      MEMORY[0x2318AC860](5);
      AST.Expr.hash(into:)(v0);
      sub_22BE33FD8();
      sub_22BE267B8();

      sub_22C272F44();
      return;
    case 6uLL:
      v61 = v18 & 0xFFFFFFFFFFFFFFFLL;
      v62 = *(v61 + 16);
      v63 = *(v61 + 24);
      MEMORY[0x2318AC860](6);
      AST.Expr.hash(into:)(v0);
      goto LABEL_22;
    case 7uLL:
      v44 = v18 & 0xFFFFFFFFFFFFFFFLL;
      v45 = *(v44 + 16);
      v46 = *(v44 + 24);
      v47 = *(v44 + 32);
      v48 = *(v44 + 40);
      v49 = *(v44 + 48);
      v50 = *(v44 + 56);
      MEMORY[0x2318AC860](7);
      if (v49 < 0)
      {
        MEMORY[0x2318AC860](1);
        sub_22BE37490();
        sub_22C272F44();
        sub_22C274174();
        if (v48)
        {
          sub_22BE260B8();
          sub_22C272F44();
        }

        sub_22C274174();
      }

      else
      {
        MEMORY[0x2318AC860](0);
        sub_22BE37490();
        sub_22C272F44();
      }

      sub_22BE33FD8();
      sub_22BE267B8();

      sub_22BEB8C70(v66, v67);
      return;
    case 8uLL:
      swift_projectBox();
      sub_22BE258A8();
      sub_22BEBFD70();
      MEMORY[0x2318AC860](8);
      sub_22BE17BAC();
      sub_22BEBFCD4(v65);
      sub_22BE44750();
      sub_22C272EE4();
      sub_22BEB8A6C(v0, *(v8 + *(updated + 20)));
      sub_22BE35AF4();
      sub_22BEBFDC4();
      goto LABEL_23;
    case 9uLL:
      v27 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v28 = 11;
      goto LABEL_21;
    case 0xAuLL:
      v64 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v28 = 12;
LABEL_21:
      MEMORY[0x2318AC860](v28);
LABEL_22:
      AST.Expr.hash(into:)(v0);
      goto LABEL_23;
    case 0xBuLL:
      if (v18 == 0xB000000000000000)
      {
        v22 = 9;
      }

      else
      {
        v22 = 10;
      }

      MEMORY[0x2318AC860](v22);
LABEL_23:
      sub_22BE267B8();
      break;
    default:
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      MEMORY[0x2318AC860](0);

      sub_22BE33FD8();
      sub_22C272F44();
      sub_22BE267B8();

      break;
  }
}

uint64_t AST.Expr.hashValue.getter()
{
  v2 = *v0;
  sub_22C274154();
  AST.Expr.hash(into:)();
  return sub_22C2741A4();
}

void AST.Expr.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v22;
  a20 = v23;
  v219 = v20;
  v25 = v24;
  v214 = v26;
  v27 = sub_22BE5CE4C(&qword_27D9084B0, &qword_22C27ABD8);
  sub_22BE179D8(v27);
  v29 = *(v28 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  sub_22BE1A174();
  sub_22BEC03A4(v31);
  v32 = sub_22BE5CE4C(&qword_27D9084B8, &qword_22C27ABE0);
  sub_22BE179D8(v32);
  v34 = *(v33 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v35);
  sub_22BE2BA30(v36, v204);
  v215 = sub_22BE5CE4C(&qword_27D9084C0, &qword_22C27ABE8);
  sub_22BE179D8(v215);
  v38 = *(v37 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v39);
  sub_22BE2C638(v40, v205);
  v41 = sub_22BE5CE4C(&qword_27D9084C8, &qword_22C27ABF0);
  sub_22BE18910(v41, &a14);
  v43 = *(v42 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v44);
  sub_22BE1A174();
  sub_22BE3FF64(v45);
  v211 = sub_22BE5CE4C(&qword_27D9084D0, &qword_22C27ABF8);
  sub_22BE179D8(v211);
  v47 = *(v46 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v48);
  sub_22BE20168(v49, v206);
  v50 = sub_22BE5CE4C(&qword_27D9084D8, &qword_22C27AC00);
  sub_22BE18910(v50, &v218);
  v52 = *(v51 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v53);
  sub_22BE29250(v54, v207);
  v55 = sub_22BE5CE4C(&qword_27D9084E0, &qword_22C27AC08);
  sub_22BE18910(v55, &a16);
  v57 = *(v56 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v58);
  sub_22BE1A174();
  sub_22BE32BE4(v59);
  v60 = sub_22BE5CE4C(&qword_27D9084E8, &qword_22C27AC10);
  sub_22BE18910(v60, &a10);
  v62 = *(v61 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v63);
  sub_22BE4104C(v64, v208);
  v65 = sub_22BE5CE4C(&qword_27D9084F0, &qword_22C27AC18);
  sub_22BE18910(v65, &a12);
  v67 = *(v66 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v68);
  sub_22BE486B0(v69, v209);
  v70 = sub_22BE5CE4C(&qword_27D9084F8, &qword_22C27AC20);
  sub_22BE18910(v70, &v220);
  v72 = *(v71 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v73);
  sub_22BE23AA4(v74);
  v75 = sub_22BE5CE4C(&qword_27D908500, &qword_22C27AC28);
  sub_22BE18910(v75, &v217);
  v77 = *(v76 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v78);
  sub_22BE1A174();
  sub_22BEC07BC(v79);
  v80 = sub_22BE5CE4C(&qword_27D908508, &qword_22C27AC30);
  sub_22BE18910(v80, &v216);
  v82 = *(v81 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v83);
  sub_22BE25CD0();
  v84 = sub_22BE5CE4C(&qword_27D908510, &qword_22C27AC38);
  sub_22BE179D8(v84);
  v86 = *(v85 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v87);
  sub_22BE23E58();
  v88 = sub_22BE5CE4C(&qword_27D908518, &unk_22C27AC40);
  sub_22BE179D8(v88);
  v90 = *(v89 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v91);
  sub_22BE234F4();
  v93 = v25[3];
  v92 = v25[4];
  v218 = v25;
  v94 = sub_22BE31038();
  sub_22BE26950(v94, v95);
  sub_22BEAB320();
  sub_22BE48270();
  v96 = v219;
  sub_22C274214();
  if (!v96)
  {
    v97 = v216;
    v219 = v21;
    v98 = sub_22C273ED4();
    sub_22BE7C5C4(v98, 0);
    v100 = v88;
    if (v101 != v99 >> 1)
    {
      sub_22BE38A18();
      sub_22BE3E9D8();
      if (v108 == v109)
      {
        __break(1u);
        return;
      }

      v110 = v88;
      v210 = *(v107 + v106);
      v111 = sub_22BEC0558(v102, v103, v104, v105, v106);
      v112 = sub_22BE7C5C0(v111);
      v114 = v113;
      v116 = v115;
      swift_unknownObjectRelease();
      v117 = v215;
      if (v114 == v116 >> 1)
      {
        v118 = v214;
        switch(v210)
        {
          case 1:
            sub_22BE486C4();
            sub_22BEAB908();
            sub_22BE3E8A0();
            sub_22BE36514();
            sub_22C273DE4();
            sub_22C26E684();
            v135 = swift_allocBox();
            sub_22BE17BAC();
            sub_22BEBFCD4(v136);
            sub_22BEC0628();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v165 = sub_22BE19698(&v215);
            v166(v165);
            sub_22BE41274();
            v167 = sub_22BE33BE8();
            v168(v167);
            v140 = v135 | 0x1000000000000000;
            break;
          case 2:
            sub_22BE39E24();
            sub_22BEAB860();
            sub_22BE3E8A0();
            sub_22BE26108();
            sub_22C273DE4();
            v137 = swift_allocObject();
            sub_22BEB9BA0();
            sub_22BEC03E0();
            sub_22BE3C6F8();
            v139 = *(v138 - 256);
            swift_unknownObjectRelease();
            v160 = sub_22BE31180();
            v161(v160);
            v162 = *(v139 + 8);
            v163 = sub_22BE1B328();
            v164(v163);
            v140 = v137 | 0x2000000000000000;
            break;
          case 3:
            HIBYTE(a10) = 3;
            sub_22BEAB7B8();
            sub_22BE3E8A0();
            sub_22BE35F10();
            sub_22BE236BC();
            swift_allocObject();
            sub_22BEC0658();
            sub_22BEB9B4C();
            sub_22BEC0634();
            sub_22BEBFFFC();
            sub_22BE26108();
            sub_22C273EB4();
            sub_22BE3ADC8();
            sub_22BE486C4();
            sub_22BEB997C();
            sub_22BEC000C();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v180 = sub_22BE267EC(&v219);
            v181(v180);
            v182 = *(v97 + 8);
            v183 = sub_22BE1B5E0();
            v184(v183);
            v140 = v215 | 0x3000000000000000;
            break;
          case 4:
            HIBYTE(a10) = 4;
            sub_22BEAB710();
            sub_22BE3E8A0();
            sub_22BE36514();
            sub_22C273DE4();
            sub_22BE2B7C4();
            swift_allocObject();
            sub_22BEC0658();
            sub_22BEB9AF8();
            sub_22BEC0634();
            sub_22BEBFFFC();
            sub_22BE26108();
            sub_22C273EB4();
            sub_22BE3ADC8();
            v217 = 0;
            sub_22BE486C4();
            sub_22BEB997C();
            sub_22BEC000C();
            sub_22C273EB4();
            sub_22BE39E24();
            sub_22BEC000C();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v200 = sub_22BE267EC(&a11);
            v201(v200);
            v202 = sub_22BE28C60();
            v203(v202);
            v140 = v215 | 0x4000000000000000;
            break;
          case 5:
            HIBYTE(a10) = 5;
            sub_22BEAB6BC();
            sub_22BE3E8A0();
            sub_22BE36514();
            sub_22C273DE4();
            sub_22BE2B7C4();
            swift_allocObject();
            sub_22BEC0658();
            sub_22BEB997C();
            sub_22BEC0634();
            sub_22BEBFFFC();
            sub_22BE26108();
            sub_22C273EB4();
            sub_22BE3ADC8();
            sub_22BE486C4();
            v217 = sub_22C273E64();
            v191 = v190;
            swift_unknownObjectRelease();
            v192 = sub_22BE267EC(&a9);
            v193(v192);
            v194 = sub_22BE28C60();
            v195(v194);
            *(v215 + 24) = v217;
            *(v117 + 32) = v191;
            v154 = 0x5000000000000000;
            goto LABEL_24;
          case 6:
            HIBYTE(a10) = 6;
            sub_22BEAB668();
            sub_22BE3E8A0();
            sub_22BE36514();
            sub_22C273DE4();
            v217 = v112;
            sub_22BE236BC();
            swift_allocObject();
            sub_22BEC0658();
            sub_22BEB997C();
            sub_22BEC0634();
            sub_22BEBFFFC();
            sub_22BE26108();
            sub_22C273EB4();
            sub_22BE3ADC8();
            sub_22BE486C4();
            sub_22BEC000C();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v196 = sub_22BE267EC(&a15);
            v197(v196);
            v198 = sub_22BE28C60();
            v199(v198);
            v140 = v215 | 0x6000000000000000;
            break;
          case 7:
            HIBYTE(a10) = 7;
            sub_22BEAB56C();
            sub_22BE3E8A0();
            sub_22BE35F10();
            swift_allocObject();
            sub_22BEC0658();
            sub_22BEB99D0();
            sub_22BEC0634();
            sub_22BEBFFFC();
            sub_22BE36514();
            sub_22C273EB4();
            sub_22BE3ADC8();
            sub_22BE5CE4C(&qword_27D908448, &qword_22C27ABD0);
            sub_22BE486C4();
            sub_22BEB9A24(&unk_27D908538);
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v185 = sub_22BE1C16C();
            v186(v185);
            v187 = *(v97 + 8);
            v188 = sub_22BE1B5E0();
            v189(v188);
            v140 = v215 | 0x7000000000000000;
            v127 = v218;
            v118 = v214;
            goto LABEL_26;
          case 8:
            HIBYTE(a10) = 8;
            sub_22BEAB518();
            sub_22BE3E8A0();
            sub_22BE35F10();
            type metadata accessor for AST.UpdateParameters();
            v145 = swift_allocBox();
            sub_22BEC007C();
            sub_22BEBFCD4(v146);
            sub_22BEC0628();
            sub_22C273EB4();
            sub_22BE3C6F8();
            v148 = *(v147 - 256);
            swift_unknownObjectRelease();
            v175 = sub_22BE19698(&a18);
            v176(v175, v211);
            v177 = *(v148 + 8);
            v178 = sub_22BE1B5E0();
            v179(v178);
            v140 = v145 | 0x8000000000000000;
            break;
          case 9:
            HIBYTE(a10) = 9;
            sub_22BEAB4C4();
            sub_22BE27168();
            sub_22C273DE4();
            swift_unknownObjectRelease();
            sub_22BE1B5D4(&a13);
            v132();
            v133 = sub_22BE360C8(&v213);
            v134(v133, v110);
            v140 = 0xB000000000000000;
            break;
          case 10:
            HIBYTE(a10) = 10;
            sub_22BEAB470();
            sub_22BE27168();
            sub_22C273DE4();
            swift_unknownObjectRelease();
            sub_22BE1B5D4(&a17);
            v141 = sub_22BE200D4();
            v142(v141);
            v143 = sub_22BE360C8(&v213);
            v144(v143, v110);
            v140 = 0xB000000000000008;
            break;
          case 11:
            HIBYTE(a10) = 11;
            sub_22BEAB41C();
            sub_22BE3E8A0();
            sub_22BE26108();
            sub_22C273DE4();
            v117 = swift_allocObject();
            sub_22BEB997C();
            sub_22BEC03E0();
            sub_22BE3C6F8();
            v129 = *(v128 - 256);
            swift_unknownObjectRelease();
            v149 = sub_22BE31180();
            v150(v149);
            v151 = *(v129 + 8);
            v152 = sub_22BE1B328();
            v153(v152);
            v154 = 0x9000000000000000;
            goto LABEL_24;
          case 12:
            HIBYTE(a10) = 12;
            sub_22BEAB374();
            sub_22BE3E8A0();
            sub_22BE26108();
            sub_22C273DE4();
            v117 = swift_allocObject();
            sub_22BEB997C();
            sub_22BEC03E0();
            sub_22BE3C6F8();
            v131 = *(v130 - 256);
            swift_unknownObjectRelease();
            v155 = sub_22BE31180();
            v156(v155);
            v157 = *(v131 + 8);
            v158 = sub_22BE1B328();
            v159(v158);
            v154 = 0xA000000000000000;
LABEL_24:
            v140 = v117 | v154;
            break;
          default:
            HIBYTE(a10) = 0;
            sub_22BEAB95C();
            sub_22BE29E4C(&v212);
            sub_22BE3E8A0();
            sub_22C273DE4();
            sub_22BE236BC();
            v140 = swift_allocObject();
            sub_22BE36514();
            v169 = sub_22C273E64();
            v171 = v170;
            swift_unknownObjectRelease();
            v172 = sub_22BE1AB4C(&v214);
            v173(v172, v84);
            sub_22BE41274();
            v174(v219, v110);
            *(v140 + 16) = v169;
            *(v140 + 24) = v171;
            break;
        }

        v127 = v218;
LABEL_26:
        *v118 = v140;
        goto LABEL_11;
      }

      v100 = v110;
    }

    v119 = sub_22C273B34();
    sub_22BE196B4();
    v121 = v120;
    v122 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v121 = &type metadata for AST.Expr;
    sub_22C273DF4();
    sub_22BE1B198();
    v123 = *MEMORY[0x277D84160];
    sub_22BE1BC24(v119);
    (*(v124 + 104))(v121);
    swift_willThrow();
    swift_unknownObjectRelease();
    v125 = sub_22BE360C8(&v213);
    v126(v125, v100);
  }

  v127 = v218;
LABEL_11:
  sub_22BE26B64(v127);
  sub_22BE18478();
}