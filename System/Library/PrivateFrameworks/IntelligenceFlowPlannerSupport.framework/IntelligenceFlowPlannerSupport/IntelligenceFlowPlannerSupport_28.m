uint64_t TranscriptProtoQueryStepResults.rawQueryEventID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return sub_22BE19454();
}

uint64_t TranscriptProtoQueryStepResults.rawQueryEventID.setter()
{
  sub_22BE1A8A8();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t TranscriptProtoQueryStepResults.originStatementID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoQueryStepResults(v0) + 24);
  return sub_22BE18504();
}

void TranscriptProtoQueryStepResults.init(queryResults:originStatementID:rawQueryEventID:)()
{
  sub_22BE3C358();
  v4 = sub_22BE2597C();
  v5 = *(type metadata accessor for TranscriptProtoQueryStepResults(v4) + 24);
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22C0E9C4C(v6, v7, v8, v9);
  *v3 = v2;
  sub_22BE2343C();
  v3[1] = v1;
  v3[2] = v0;
  sub_22BE267B8();
}

uint64_t TranscriptProtoResponseDialog.fullSpeak.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_22BE19454();
}

uint64_t TranscriptProtoResponseDialog.fullSpeak.setter()
{
  sub_22BE1A8A8();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

void TranscriptProtoResponseDialog.init(fullPrint:fullSpeak:supportingPrint:supportingSpeak:)()
{
  sub_22BE19460();
  v8 = v7;
  sub_22C0E9DA0();
  sub_22BE1B23C();
  v10 = v9;
  v11 = v9 + *(type metadata accessor for TranscriptProtoResponseDialog(0) + 32);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v10 = v6;
  v10[1] = v5;
  v10[2] = v4;
  v10[3] = v3;
  v10[4] = v2;
  v10[5] = v1;
  v10[6] = v0;
  v10[7] = v8;
  sub_22BE1AABC();
}

uint64_t TranscriptProtoResponseOutput.printedDialogOutput.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoResponseOutput(v0) + 32);
  return sub_22BE18504();
}

uint64_t TranscriptProtoResponseOutput.spokenDialogOutput.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoResponseOutput(v0) + 36);
  return sub_22BE18504();
}

uint64_t TranscriptProtoResponseOutput.options.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoResponseOutput(v0) + 40);
  return sub_22BE18504();
}

uint64_t TranscriptProtoResponseOutput.attribution.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoResponseOutput(v0) + 44);
  return sub_22BE18504();
}

uint64_t sub_22C0CCF80()
{
  v0 = sub_22BE2BB48();
  v2 = v1(v0);
  sub_22BE36160(*(v2 + 48));
  return sub_22BE19454();
}

uint64_t sub_22C0CCFCC()
{
  v3 = sub_22BE23708();
  v5 = v4(v3);
  result = sub_22BE1AFA8(*(v5 + 48));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TranscriptProtoResponseOutput.dialogIdentifier.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoResponseOutput(v0) + 48);
  return sub_22BE18504();
}

uint64_t TranscriptProtoResponseOutput.init(visualOutput:printedDialogOutput:spokenDialogOutput:responseType:resultStatementIds:options:attribution:dialogIdentifier:entities:)@<X0>(uint64_t a1@<X0>, char *a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7)
{
  v32 = *a2;
  v9 = type metadata accessor for TranscriptProtoResponseOutput(0);
  v10 = v9[8];
  v11 = type metadata accessor for TranscriptProtoDialogType(0);
  sub_22BE1A140();
  sub_22BE19DC4(v12, v13, v14, v11);
  v15 = v9[9];
  v16 = sub_22BE3CE14();
  sub_22BE19DC4(v16, v17, v18, v11);
  v19 = v9[10];
  type metadata accessor for TranscriptProtoVisualOutputOptions(0);
  sub_22BE1A140();
  sub_22BE19DC4(v20, v21, v22, v23);
  v24 = v9[11];
  type metadata accessor for TranscriptProtoVisualOutput(0);
  sub_22BE1A140();
  sub_22BE19DC4(v25, v26, v27, v28);
  v29 = v9[13];
  v30 = (a5 + v9[12]);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *a5 = a1;
  sub_22BE2343C();
  sub_22BE2343C();
  *(a5 + 8) = v32;
  *(a5 + 16) = a3;
  sub_22BE2343C();
  result = sub_22BE2343C();
  *v30 = a4;
  v30[1] = a6;
  *(a5 + 24) = a7;
  return result;
}

void static TranscriptProtoVisualOutputType.== infix(_:_:)()
{
  sub_22BE19460();
  v7 = sub_22BE46DA4(v5, v6);
  v8 = type metadata accessor for TranscriptProtoAceCommandOutputPayload(v7);
  v9 = sub_22BE19448(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE17A44();
  v13 = sub_22BE28E74(v12);
  v54 = type metadata accessor for TranscriptProtoPluginSnippetOutputPayload(v13);
  v14 = sub_22BE18000(v54);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE17A44();
  v18 = sub_22C0E9724(v17);
  v55 = type metadata accessor for TranscriptProtoSystemSnippetOutputPayload(v18);
  v19 = sub_22BE18000(v55);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE17A44();
  v22 = sub_22BE183BC();
  v57 = type metadata accessor for TranscriptProtoInAppResponseOutputPayload(v22);
  v23 = sub_22BE18000(v57);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE17A44();
  v27 = sub_22BE48A8C(v26);
  v56 = type metadata accessor for TranscriptProtoLiveActivityOutputPayload(v27);
  v28 = sub_22BE18000(v56);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = sub_22BE35598();
  v32 = type metadata accessor for TranscriptProtoVisualOutputType(v31);
  v33 = sub_22BE18000(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BE183AC();
  MEMORY[0x28223BE20](v36);
  sub_22BE23858();
  MEMORY[0x28223BE20](v37);
  sub_22BE18094();
  MEMORY[0x28223BE20](v38);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v39);
  sub_22BE181E4();
  v40 = sub_22BE5CE4C(&qword_27D911798, &qword_22C2AE6C8);
  sub_22BE19448(v40);
  v42 = *(v41 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v43);
  sub_22BE1B72C();
  v45 = *(v44 + 56);
  sub_22C0C2A68();
  sub_22C0C2A68();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE2577C();
      sub_22C0C2A68();
      if (sub_22C0E9D64() != 1)
      {
        goto LABEL_30;
      }

      sub_22C0E9AC4();
      sub_22BE385CC();
      sub_22C0C1B18();
      v48 = *v1 == *v2 && v1[1] == v2[1];
      if (v48 || (sub_22C274014() & 1) != 0)
      {
        sub_22BEC0A84(v57);
        sub_22C0C1B6C();
        sub_22C0E9E64();
      }

      sub_22C0E993C();
      sub_22C0C1AC4();
      goto LABEL_41;
    case 2u:
      sub_22BE2577C();
      sub_22C0C2A68();
      if (sub_22C0E9D64() != 2)
      {
        sub_22BE3E76C();
        goto LABEL_30;
      }

      sub_22C0E9AC4();
      sub_22C0E9B7C();
      sub_22C0C1B18();
      if (MEMORY[0x2318A6720](*v4, v4[1], *v1, v1[1]))
      {
        sub_22BEC0A84(v55);
        sub_22C0C1B6C();
        sub_22C0E9A88();
      }

      sub_22C0E9954();
      sub_22C0C1AC4();
      goto LABEL_41;
    case 3u:
      sub_22BE2577C();
      sub_22C0C2A68();
      if (sub_22C0E9D64() != 3)
      {
        sub_22BE3ACD8();
        goto LABEL_30;
      }

      sub_22C0E9AC4();
      sub_22C0E9A5C();
      sub_22C0C1B18();
      if (MEMORY[0x2318A6720](*v3, v3[1], *v1, v1[1]))
      {
        v46 = v3[2] == v1[2] && v3[3] == v1[3];
        if (v46 || (sub_22C274014() & 1) != 0)
        {
          v47 = *(v54 + 24);
          sub_22C2704B4();
          sub_22C0C1B6C();
          sub_22BE32E64();
        }
      }

      sub_22BE36604();
      sub_22C0C1AC4();
      goto LABEL_41;
    case 4u:
      sub_22BE2577C();
      sub_22C0C2A68();
      if (sub_22C0E9D64() == 4)
      {
        sub_22C0E9AC4();
        sub_22C0C1B18();
        sub_22BE336E8();
        static TranscriptProtoAceCommandOutputPayload.== infix(_:_:)();
        sub_22C0C1AC4();
        sub_22BE1A8C4();
        sub_22C0C1AC4();
        sub_22BE37730();
        goto LABEL_42;
      }

      sub_22C0E9A74();
      goto LABEL_30;
    default:
      sub_22BE2577C();
      sub_22C0C2A68();
      if (sub_22C0E9D64())
      {
        sub_22C0E9830();
LABEL_30:
        sub_22C0C1AC4();
        sub_22BE33928(v0, &qword_27D911798, &qword_22C2AE6C8);
      }

      else
      {
        sub_22C0E9AC4();
        sub_22C0C1B18();
        v49 = *v2;
        v50 = v2[1];
        sub_22C0E9854();
        v53 = v46 && v51 == v52;
        if (v53 || (sub_22C274014() & 1) != 0)
        {
          sub_22C0E9F44(v56);
          sub_22C0C1B6C();
          sub_22C272FD4();
        }

        sub_22BE39E7C();
        sub_22C0C1AC4();
LABEL_41:
        sub_22C0C1AC4();
        sub_22BE37730();
      }

LABEL_42:
      sub_22C0E9B70();
      sub_22BE1AABC();
      return;
  }
}

void static TranscriptProtoAceCommandOutputDataEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v9 = sub_22BE46DA4(v7, v8);
  v59 = type metadata accessor for TranscriptProtoCommandFailed(v9);
  v10 = sub_22BE18000(v59);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE17A44();
  v14 = sub_22C0E9724(v13);
  v58 = type metadata accessor for TranscriptProtoRequestCompleted(v14);
  v15 = sub_22BE18000(v58);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE17A44();
  v19 = sub_22BE28E74(v18);
  v57 = type metadata accessor for TranscriptProtoRepeatIt(v19);
  v20 = sub_22BE18000(v57);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE17A44();
  v23 = sub_22BE183BC();
  v56 = type metadata accessor for TranscriptProtoSayIt(v23);
  v24 = sub_22BE18000(v56);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22BE17A44();
  v28 = sub_22BE48A8C(v27);
  v55 = type metadata accessor for TranscriptProtoAddDialogs(v28);
  v29 = sub_22BE18000(v55);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BE17A44();
  v61 = v32;
  v33 = sub_22BE183BC();
  v54 = type metadata accessor for TranscriptProtoAddViews(v33);
  v34 = sub_22BE18000(v54);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BE17A44();
  v60 = v37;
  v38 = sub_22BE183BC();
  v39 = type metadata accessor for TranscriptProtoAceCommandOutputDataEnum(v38);
  v40 = sub_22BE18000(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22BE183AC();
  sub_22BE41FF4();
  MEMORY[0x28223BE20](v43);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v44);
  sub_22BE2390C();
  MEMORY[0x28223BE20](v45);
  sub_22BE23858();
  MEMORY[0x28223BE20](v46);
  sub_22BE360F8();
  MEMORY[0x28223BE20](v47);
  sub_22BE181E4();
  v48 = sub_22BE5CE4C(&qword_27D9117A0, &unk_22C2AE6E0);
  sub_22BE19448(v48);
  v50 = *(v49 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v51);
  sub_22BE1B72C();
  v53 = *(v52 + 56);
  sub_22C0C2A68();
  sub_22C0E9D34();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE1A350();
      sub_22C0C2A68();
      if (sub_22BE35F38() != 1)
      {
        sub_22BE25B30();
        goto LABEL_29;
      }

      sub_22BE393F8();
      sub_22C0C1B18();
      if (MEMORY[0x2318A6720](*v4, v4[1], *v61, v61[1]))
      {
        sub_22BEC0A84(v55);
        sub_22C0C1B6C();
        sub_22BE3C224();
      }

      sub_22BE25B30();
      sub_22C0C1AC4();
      sub_22BE25B30();
      goto LABEL_38;
    case 2u:
      sub_22BE1A350();
      sub_22C0C2A68();
      if (sub_22BE35F38() != 2)
      {
        sub_22BE373E4();
        goto LABEL_29;
      }

      sub_22BE393F8();
      sub_22BE39F80();
      if (MEMORY[0x2318A6720](*v5, v5[1], *v53, v53[1]))
      {
        sub_22BEC0A84(v56);
        sub_22C0C1B6C();
        sub_22BE32E64();
      }

      sub_22BE373E4();
      sub_22C0C1AC4();
      sub_22BE373E4();
      goto LABEL_38;
    case 3u:
      sub_22BE1A350();
      sub_22C0C2A68();
      if (sub_22BE35F38() != 3)
      {
        sub_22BE2F1EC();
        goto LABEL_29;
      }

      sub_22BE393F8();
      sub_22C0E9B7C();
      sub_22C0C1B18();
      if (MEMORY[0x2318A6720](*v3, v3[1], *v53, v53[1]))
      {
        sub_22BEC0A84(v57);
        sub_22C0C1B6C();
        sub_22C0E99FC();
      }

      sub_22BE2F1EC();
      sub_22C0C1AC4();
      sub_22BE2F1EC();
      goto LABEL_38;
    case 4u:
      sub_22BE1A350();
      sub_22C0C2A68();
      if (sub_22BE35F38() != 4)
      {
        sub_22BE2550C();
        goto LABEL_29;
      }

      sub_22BE393F8();
      sub_22C0E9A68();
      sub_22C0C1B18();
      if (MEMORY[0x2318A6720](*v6, v6[1], *v53, v53[1]))
      {
        sub_22BEC0A84(v58);
        sub_22C0C1B6C();
        sub_22C0E9A88();
      }

      sub_22BE2550C();
      sub_22C0C1AC4();
      sub_22BE2550C();
      goto LABEL_38;
    case 5u:
      sub_22BE1A350();
      sub_22C0C2A68();
      if (sub_22BE35F38() != 5)
      {
        sub_22BE22CD4();
        goto LABEL_29;
      }

      sub_22BE393F8();
      sub_22C0C1B18();
      if (MEMORY[0x2318A6720](*v1, v1[1], *v62, v62[1]))
      {
        sub_22C0E9F44(v59);
        sub_22C0C1B6C();
        sub_22C0E9AD0();
      }

      sub_22BE22CD4();
      sub_22C0C1AC4();
      sub_22BE22CD4();
      goto LABEL_38;
    default:
      sub_22BE1A350();
      sub_22C0C2A68();
      if (sub_22BE35F38())
      {
        sub_22BE19574();
LABEL_29:
        sub_22C0C1AC4();
        sub_22BE33928(v0, &qword_27D9117A0, &unk_22C2AE6E0);
      }

      else
      {
        sub_22BE393F8();
        sub_22C0C1B18();
        if (MEMORY[0x2318A6720](*v2, v2[1], *v60, v60[1]))
        {
          sub_22BEC0A84(v54);
          sub_22C0C1B6C();
          sub_22BE39EB8();
        }

        sub_22BE19574();
        sub_22C0C1AC4();
        sub_22BE19574();
LABEL_38:
        sub_22C0C1AC4();
        sub_22BE26148();
        sub_22C0C1AC4();
      }

      sub_22BE1AABC();
      return;
  }
}

uint64_t TranscriptProtoSayIt.serializedAceCommand.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_22BE19454();
  sub_22BE29D7C(v3, v4);
  return sub_22BE19454();
}

uint64_t TranscriptProtoSayIt.serializedAceCommand.setter()
{
  sub_22BE1A8A8();
  result = sub_22BE29DD4(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v0;
  return result;
}

void static TranscriptProtoDialogFormat.== infix(_:_:)()
{
  sub_22BE19460();
  v7 = sub_22BE46DA4(v5, v6);
  v71 = type metadata accessor for TranscriptProtoCATDialog(v7);
  v8 = sub_22BE18000(v71);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE17A44();
  v12 = sub_22C0E9724(v11);
  v13 = type metadata accessor for TranscriptProtoSuppressed(v12);
  v14 = sub_22BE19448(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE17A44();
  v18 = sub_22BE28E74(v17);
  v19 = type metadata accessor for TranscriptProtoUnableToGenerate(v18);
  v20 = sub_22BE19448(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE17A44();
  v24 = sub_22BE48A8C(v23);
  v70 = type metadata accessor for TranscriptProtoGeneratedText(v24);
  v25 = sub_22BE18000(v70);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE17A44();
  v28 = sub_22BE183BC();
  v69 = type metadata accessor for TranscriptProtoSonicText(v28);
  v29 = sub_22BE18000(v69);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BE17A44();
  v32 = sub_22BE183BC();
  v68 = type metadata accessor for TranscriptProtoStaticText(v32);
  v33 = sub_22BE18000(v68);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BE17A44();
  v36 = sub_22BE183BC();
  v37 = type metadata accessor for TranscriptProtoDialogFormat(v36);
  v38 = sub_22BE18000(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22BE183AC();
  sub_22BE41FF4();
  MEMORY[0x28223BE20](v41);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v42);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v43);
  sub_22BE18094();
  MEMORY[0x28223BE20](v44);
  sub_22BE2390C();
  MEMORY[0x28223BE20](v45);
  sub_22BE181E4();
  v46 = sub_22BE5CE4C(&qword_27D9117A8, &unk_22C2AE6F0);
  sub_22BE19448(v46);
  v48 = *(v47 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v49);
  sub_22BE1B72C();
  v51 = *(v50 + 56);
  sub_22C0C2A68();
  sub_22C0E9D34();
  sub_22BE1B62C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE1BAE4();
      sub_22C0C2A68();
      if (sub_22BE3CB78() != 1)
      {
        sub_22BE19764();
        goto LABEL_36;
      }

      sub_22C0E9AB8();
      sub_22C0C1B18();
      v57 = *v3;
      v58 = v3[1];
      sub_22BE33C2C();
      v61 = v56 && v59 == v60;
      if (v61 || (sub_22C274014() & 1) != 0)
      {
        sub_22BEC0A84(v69);
        sub_22C0C1B6C();
        sub_22C0E99FC();
        sub_22BE19764();
        sub_22C0C1AC4();
      }

      else
      {
        sub_22BE19764();
        sub_22C0C1AC4();
      }

      sub_22BE19764();
      goto LABEL_49;
    case 2u:
      sub_22BE1BAE4();
      sub_22C0C2A68();
      if (sub_22BE3CB78() != 2)
      {
        sub_22BE3E76C();
        goto LABEL_36;
      }

      sub_22C0E9AB8();
      sub_22C0E9B7C();
      sub_22C0C1B18();
      v52 = *v4;
      v53 = v4[1];
      sub_22BE33C2C();
      v56 = v56 && v54 == v55;
      if (v56 || (sub_22C274014() & 1) != 0)
      {
        sub_22BEC0A84(v70);
        sub_22C0C1B6C();
        sub_22C0E9A88();
      }

      sub_22BE31724();
      sub_22C0C1AC4();
      goto LABEL_49;
    case 3u:
      sub_22BE1BAE4();
      sub_22C0C2A68();
      if (sub_22BE3CB78() == 3)
      {
        sub_22C0E9AB8();
        sub_22BE385CC();
        sub_22C0C1B18();
        sub_22C2704B4();
        sub_22C0C1B6C();
        sub_22BE2590C();
        sub_22C272FD4();
        sub_22C0C1AC4();
        goto LABEL_49;
      }

      sub_22BE379D8();
      goto LABEL_36;
    case 4u:
      sub_22BE1BAE4();
      sub_22C0C2A68();
      if (sub_22BE3CB78() == 4)
      {
        sub_22C0E9AB8();
        sub_22C0E9A68();
        sub_22C0C1B18();
        sub_22C2704B4();
        sub_22C0C1B6C();
        sub_22BE33BE8();
        sub_22C272FD4();
        sub_22C0C1AC4();
        goto LABEL_49;
      }

      sub_22BE20118();
      goto LABEL_36;
    case 5u:
      sub_22BE1BAE4();
      sub_22C0C2A68();
      if (sub_22BE3CB78() != 5)
      {
        sub_22BE1AC98();
        goto LABEL_36;
      }

      sub_22C0E9AB8();
      sub_22C0C1B18();
      v62 = *v1 == *v72 && v1[1] == v72[1];
      if (v62 || (sub_22C274014() & 1) != 0)
      {
        sub_22C0E9F44(v71);
        sub_22C0C1B6C();
        sub_22C0E9AD0();
        sub_22BE1AC98();
        sub_22C0C1AC4();
      }

      else
      {
        sub_22BE1AC98();
        sub_22C0C1AC4();
      }

      sub_22BE1AC98();
      goto LABEL_49;
    default:
      sub_22BE1BAE4();
      sub_22C0C2A68();
      if (sub_22BE3CB78())
      {
        sub_22C0E9830();
LABEL_36:
        sub_22C0C1AC4();
        sub_22BE33928(v0, &qword_27D9117A8, &unk_22C2AE6F0);
      }

      else
      {
        sub_22C0E9AB8();
        sub_22C0C1B18();
        v63 = *v2;
        v64 = v2[1];
        sub_22BE33C2C();
        v67 = v56 && v65 == v66;
        if (v67 || (sub_22C274014() & 1) != 0)
        {
          sub_22BEC0A84(v68);
          sub_22C0C1B6C();
          sub_22BE39EB8();
        }

        sub_22C0E9924();
        sub_22C0C1AC4();
LABEL_49:
        sub_22C0C1AC4();
        sub_22BE29300();
      }

      sub_22BE1B1B8();
      sub_22BE1AABC();
      return;
  }
}

uint64_t TranscriptProtoResponseManifest.dialog.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoResponseManifest(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoResponseManifest.visual.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoResponseManifest(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoResponseManifest.templateID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoResponseManifest(v0) + 28);
  return sub_22BE18504();
}

uint64_t sub_22C0CED70()
{
  v0 = sub_22BE2BB48();
  v2 = v1(v0);
  sub_22BE36160(*(v2 + 32));
  return sub_22BE19454();
}

uint64_t sub_22C0CEDBC()
{
  v3 = sub_22BE23708();
  v5 = v4(v3);
  result = sub_22BE1AFA8(*(v5 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TranscriptProtoResponseManifest.templateLocation.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoResponseManifest(v0) + 32);
  return sub_22BE18504();
}

uint64_t TranscriptProtoResponseManifest.useTemplateAsFallback.setter()
{
  v2 = sub_22BE17BC4();
  result = type metadata accessor for TranscriptProtoResponseManifest(v2);
  *(v1 + *(result + 36)) = v0;
  return result;
}

uint64_t TranscriptProtoResponseManifest.useTemplateAsFallback.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoResponseManifest(v0) + 36);
  return sub_22BE18504();
}

uint64_t TranscriptProtoResponseManifest.dialogPresentationHint.getter()
{
  v2 = sub_22BE1A5E4();
  result = type metadata accessor for TranscriptProtoResponseManifest(v2);
  *v0 = *(v1 + *(result + 40));
  return result;
}

uint64_t TranscriptProtoResponseManifest.dialogPresentationHint.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TranscriptProtoResponseManifest(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t TranscriptProtoResponseManifest.dialogPresentationHint.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoResponseManifest(v0) + 40);
  return sub_22BE18504();
}

uint64_t TranscriptProtoResponseManifest.attribution.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoResponseManifest(v0) + 44);
  return sub_22BE18504();
}

uint64_t TranscriptProtoResponseManifest.init(parameters:dialog:visual:templateID:templateLocation:useTemplateAsFallback:dialogPresentationHint:attribution:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, char a6@<W7>, void *a7@<X8>, char *a8)
{
  v32 = *a8;
  v10 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v11 = sub_22BE341A4(v10);
  type metadata accessor for TranscriptProtoResponseDialog(v11);
  v12 = sub_22BE3CE14();
  sub_22BE19DC4(v12, v13, v14, v15);
  v16 = v10[6];
  type metadata accessor for TranscriptProtoResponseVisual(0);
  sub_22BE1A140();
  sub_22BE19DC4(v17, v18, v19, v20);
  v21 = (a7 + v10[7]);
  v22 = (a7 + v10[8]);
  v23 = v10[9];
  v24 = v10[10];
  *(a7 + v24) = 2;
  v25 = v10[11];
  type metadata accessor for TranscriptProtoUIType(0);
  v26 = sub_22BE409A4();
  sub_22BE19DC4(v26, v27, v28, v29);
  v30 = a7 + v10[12];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *a7 = a1;
  sub_22BE2343C();
  sub_22BE2343C();
  *v21 = a2;
  v21[1] = a3;
  *v22 = a4;
  v22[1] = a5;
  *(a7 + v23) = a6;
  *(a7 + v24) = v32;
  return sub_22BE2343C();
}

uint64_t TranscriptProtoResponseParameter.value.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_22BE19454();
  sub_22BF1C1E4(v3, v4);
  return sub_22BE19454();
}

uint64_t TranscriptProtoResponseParameter.value.setter()
{
  sub_22BE1A8A8();
  result = sub_22BF158B4(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t TranscriptProtoResponseParameter.format.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return sub_22BE19454();
}

uint64_t TranscriptProtoResponseParameter.format.setter()
{
  sub_22BE1A8A8();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

void TranscriptProtoResponseParameter.init(key:value:type:required:format:profanityFilter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_22BE22B9C();
  v37 = v29;
  v31 = v30;
  v33 = v32;
  sub_22BE1B23C();
  v35 = v34;
  *(v34 + 16) = xmmword_22C28E6A0;
  v36 = v34 + *(type metadata accessor for TranscriptProtoResponseParameter(0) + 40);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v35 = v28;
  *(v35 + 8) = v27;
  sub_22BF158B4(*(v35 + 16), *(v35 + 24));
  *(v35 + 16) = v26;
  *(v35 + 24) = v25;
  *(v35 + 32) = v24;
  *(v35 + 40) = v33;
  *(v35 + 48) = v31;
  *(v35 + 56) = v37;
  *(v35 + 64) = a23;
  *(v35 + 72) = a24;
  sub_22BE234D8();
}

uint64_t TranscriptProtoResponseVisual.options.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoResponseVisual(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoResponseVisual.init(views:labels:options:)()
{
  v3 = sub_22BE37898();
  v4 = *(type metadata accessor for TranscriptProtoResponseVisual(v3) + 24);
  type metadata accessor for TranscriptProtoResponseVisualOptions(0);
  sub_22BE1A140();
  sub_22C0E9DE4(v5, v6, v7, v8);
  *v2 = v1;
  v2[1] = v0;
  return sub_22BE2343C();
}

uint64_t sub_22C0CF4DC(char a1)
{
  v3 = sub_22C0E9824();
  v5 = v4(v3);
  sub_22BE38954(v5);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v1 = a1;
  return result;
}

void static TranscriptProtoUitype.== infix(_:_:)()
{
  sub_22BE19460();
  v8 = sub_22BE46DA4(v6, v7);
  v47 = type metadata accessor for TranscriptProtoControlPayload(v8);
  v9 = sub_22BE18000(v47);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE17A44();
  v13 = sub_22BE28E74(v12);
  v46 = type metadata accessor for TranscriptProtoPluginSnippetPayload(v13);
  v14 = sub_22BE18000(v46);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE17A44();
  v18 = sub_22C0E9724(v17);
  v48 = type metadata accessor for TranscriptProtoLiveActivityPayload(v18);
  v19 = sub_22BE18000(v48);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE179EC();
  v22 = sub_22BE37EA4();
  v23 = type metadata accessor for TranscriptProtoArchiveViewPayload(v22);
  v24 = sub_22BE19448(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22BE179EC();
  v29 = (v28 - v27);
  v30 = type metadata accessor for TranscriptProtoUitype(0);
  v31 = sub_22BE18000(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BE183AC();
  sub_22BE486EC();
  MEMORY[0x28223BE20](v34);
  sub_22BE360F8();
  MEMORY[0x28223BE20](v35);
  sub_22BE18094();
  MEMORY[0x28223BE20](v36);
  sub_22C0E9BD8();
  v37 = sub_22BE5CE4C(&qword_27D9117B0, &unk_22C2AE720);
  sub_22BE19448(v37);
  v39 = *(v38 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v40);
  sub_22BE1B72C();
  v42 = *(v41 + 56);
  sub_22C0C2A68();
  sub_22C0E9D34();
  sub_22BE260B8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE182D4();
      sub_22C0C2A68();
      if (sub_22C0E9F2C() != 1)
      {
        goto LABEL_26;
      }

      sub_22BE47E00();
      sub_22C0C1B18();
      v45 = *v5 == *v2 && v5[1] == v2[1];
      if (v45 || (sub_22C274014() & 1) != 0)
      {
        sub_22BEC0A84(v48);
        sub_22C0C1B6C();
        sub_22C272FD4();
      }

      sub_22BE33B54();
      sub_22C0C1AC4();
      goto LABEL_31;
    case 2u:
      sub_22BE182D4();
      sub_22C0C2A68();
      if (sub_22C0E9F2C() != 2)
      {
        sub_22BE291DC();
        goto LABEL_26;
      }

      sub_22BE47E00();
      sub_22C0E9A5C();
      sub_22C0C1B18();
      if (MEMORY[0x2318A6720](*v3, v3[1], *v30, v30[1]))
      {
        v43 = v3[2] == v30[2] && v3[3] == v30[3];
        if (v43 || (sub_22C274014() & 1) != 0)
        {
          v44 = *(v46 + 24);
          sub_22C2704B4();
          sub_22C0C1B6C();
          sub_22BE3C224();
        }
      }

      sub_22BE406FC();
      sub_22C0C1AC4();
      goto LABEL_31;
    case 3u:
      sub_22BE182D4();
      sub_22C0C2A68();
      if (sub_22C0E9F2C() != 3)
      {
        sub_22BE20118();
        goto LABEL_26;
      }

      sub_22BE47E00();
      sub_22C0E9A68();
      sub_22C0C1B18();
      if (MEMORY[0x2318A6720](*v4, v4[1], *v30, v30[1]))
      {
        sub_22BEC0A84(v47);
        sub_22C0C1B6C();
        sub_22C0E9A88();
      }

      sub_22C0E9900();
      sub_22C0C1AC4();
LABEL_31:
      sub_22C0C1AC4();
      sub_22BE2BAA4();
      break;
    default:
      sub_22BE182D4();
      sub_22C0C2A68();
      if (sub_22C0E9F2C())
      {
        sub_22C0E9918();
LABEL_26:
        sub_22C0C1AC4();
        sub_22BE33928(v0, &qword_27D9117B0, &unk_22C2AE720);
      }

      else
      {
        sub_22BE47E00();
        sub_22C0C1B18();
        static TranscriptProtoArchiveViewPayload.== infix(_:_:)(v1, v29);
        sub_22C0C1AC4();
        sub_22C0C1AC4();
        sub_22BE2BAA4();
      }

      break;
  }

  sub_22BE1B1B8();
  sub_22BE1AABC();
}

BOOL static TranscriptProtoLabel.== infix(_:_:)()
{
  v1 = sub_22BE5CE4C(&qword_27D9091C8, &qword_22C27FDC0);
  sub_22BE19448(v1);
  v3 = *(v2 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1B72C();
  v6 = v0 + *(v5 + 56);
  sub_22C0C2A68();
  sub_22BE18040();
  sub_22C0C2A68();
  v7 = *v0;
  v8 = v0[1];
  sub_22C0E9854();
  v11 = v11 && v9 == v10;
  v14 = 0;
  if (v11 || (sub_22C274014() & 1) != 0)
  {
    v12 = v0[2] == *(v6 + 2) && v0[3] == *(v6 + 3);
    if (v12 || (sub_22C274014() & 1) != 0)
    {
      v13 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
      sub_22C0E9B58(v13);
      sub_22C2704B4();
      sub_22C0C1B6C();
      if (sub_22C0E9E84())
      {
        v14 = 1;
      }
    }
  }

  sub_22C0C1AC4();
  sub_22BE260B8();
  sub_22C0C1AC4();
  return v14;
}

uint64_t sub_22C0CFCB4()
{
  v5 = sub_22BE2597C();
  v7 = v4 + *(v6(v5) + 24);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v4 = v3;
  v4[1] = v2;
  v4[2] = v1;
  v4[3] = v0;
  return result;
}

void TranscriptProtoArchiveViewPayload.init(viewData:containerBundleID:targetBundleID:)()
{
  sub_22BE3C358();
  sub_22BE32384();
  v7 = sub_22BE41300();
  v8 = v6 + *(type metadata accessor for TranscriptProtoArchiveViewPayload(v7) + 28);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v6 = v5;
  v6[1] = v4;
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v1;
  v6[5] = v0;
  sub_22BE267B8();
}

uint64_t TranscriptProtoSystemPromptResolution.userAction.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSystemPromptResolution(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSystemPromptResolution.statementID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSystemPromptResolution(v0) + 28);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSystemPromptResolution.input.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSystemPromptResolution(v0) + 32);
  return sub_22BE18504();
}

void TranscriptProtoSystemPromptResolution.init(actionEventID:userAction:systemResponseEventID:statementID:input:)()
{
  sub_22BE22B9C();
  sub_22BE1B23C();
  v5 = sub_22C0E9824();
  v6 = type metadata accessor for TranscriptProtoSystemPromptResolution(v5);
  v7 = v6[6];
  type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
  sub_22BE1A140();
  sub_22BE19DC4(v8, v9, v10, v11);
  v12 = v6[7];
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v13, v14, v15, v16);
  v17 = v6[8];
  type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
  sub_22BE1A140();
  sub_22BE19DC4(v18, v19, v20, v21);
  v22 = v0 + v6[9];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v0[2] = v4;
  v0[3] = v3;
  sub_22BE2343C();
  *v0 = v2;
  v0[1] = v1;
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE234D8();
}

void static TranscriptProtoSystemPromptResolutionInputEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE39FFC();
  v2 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(v1);
  v3 = sub_22BE19448(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  v6 = sub_22BE36588();
  v7 = type metadata accessor for TranscriptProtoRequestContentTextContent(v6);
  v8 = sub_22BE19448(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = sub_22BE35598();
  v12 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(v11);
  v13 = sub_22BE18000(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE183AC();
  sub_22BE20324();
  MEMORY[0x28223BE20](v16);
  v17 = sub_22BE5CE4C(&qword_27D9117B8, &unk_22C2AE740);
  sub_22BE19448(v17);
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE1B72C();
  v22 = *(v21 + 56);
  sub_22C0C2A68();
  sub_22C0C2A68();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE19EBC();
      sub_22C0C2A68();
      if (sub_22C0E9EE4() == 1)
      {
        sub_22BE3D6A0();
        sub_22C0C1B18();
        sub_22BE3C5E4();
        static TranscriptProtoRequestContentSpeechContent.== infix(_:_:)();
        sub_22C0C1AC4();
        sub_22BE1C2A0();
        goto LABEL_14;
      }

      sub_22C0E99B4();
      goto LABEL_11;
    case 2u:
      if (sub_22C0E9EE4() != 2)
      {
        goto LABEL_12;
      }

      goto LABEL_7;
    case 3u:
      if (sub_22C0E9EE4() != 3)
      {
        goto LABEL_12;
      }

LABEL_7:
      sub_22BE26148();
      sub_22C0C1AC4();
      break;
    default:
      sub_22BE19EBC();
      sub_22C0C2A68();
      if (sub_22C0E9EE4())
      {
        sub_22BE291DC();
LABEL_11:
        sub_22C0C1AC4();
LABEL_12:
        sub_22BE33928(v0, &qword_27D9117B8, &unk_22C2AE740);
      }

      else
      {
        sub_22BE3D6A0();
        sub_22C0C1B18();
        static TranscriptProtoRequestContentTextContent.== infix(_:_:)();
        sub_22BE3C724();
        sub_22C0C1AC4();
        sub_22BE35838();
LABEL_14:
        sub_22C0C1AC4();
        sub_22BE26148();
        sub_22C0C1AC4();
      }

      break;
  }

  sub_22BE1AABC();
}

uint64_t TranscriptProtoActionResolverRequest.resolvedParameters.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoActionResolverRequest(v0) + 28);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionResolverRequest.statementID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoActionResolverRequest(v0) + 32);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionResolverRequest.tool.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoActionResolverRequest(v0) + 36);
  return sub_22BE18504();
}

void TranscriptProtoActionResolverRequest.init(resolvedParameters:unresolvedParameterSets:isConfirmed:statementID:isAuthenticated:tool:)()
{
  sub_22BE22B9C();
  v3 = v2;
  v5 = v4;
  sub_22BE44738();
  v6 = sub_22C0E9824();
  v7 = type metadata accessor for TranscriptProtoActionResolverRequest(v6);
  v8 = v7[7];
  type metadata accessor for TranscriptProtoParameterSet(0);
  v9 = sub_22BE409A4();
  sub_22BE19DC4(v9, v10, v11, v12);
  v13 = v7[8];
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v14, v15, v16, v17);
  v18 = v7[9];
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  sub_22BE1A140();
  sub_22BE19DC4(v19, v20, v21, v22);
  v23 = v0 + v7[10];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE2343C();
  *v0 = v1;
  *(v0 + 8) = v5;
  sub_22BE2343C();
  *(v0 + 9) = v3;
  sub_22BE2343C();
  sub_22BE234D8();
}

uint64_t TranscriptProtoContextRetrieved.init(requiredContext:utteranceContext:)()
{
  v3 = sub_22BE28634();
  v4 = v2 + *(type metadata accessor for TranscriptProtoContextRetrieved(v3) + 24);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v2 = v1;
  v2[1] = v0;
  return result;
}

uint64_t TranscriptProtoRetrievedContextStatement.retrievedContext.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoRetrievedContextStatement(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRetrievedContextStatement.init(statementID:retrievedContext:)()
{
  v1 = sub_22BE28634();
  v2 = type metadata accessor for TranscriptProtoStatementID(v1);
  v5 = sub_22C0E966C(v0, v3, v4, v2);
  v6 = type metadata accessor for TranscriptProtoRetrievedContextStatement(v5);
  v7 = sub_22BFBFCD0(v6);
  v8 = type metadata accessor for ContextProtoRetrievedContext(v7);
  sub_22BE30FA8(v8);
  sub_22BE18040();
  sub_22BE2343C();
  sub_22C0E987C();
  return sub_22BE2343C();
}

uint64_t TranscriptProtoDynamicEnumerationEntityStatement.dynamicEnumerationEntity.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoDynamicEnumerationEntityStatement.init(statementID:dynamicEnumerationEntity:)()
{
  v1 = sub_22BE28634();
  v2 = type metadata accessor for TranscriptProtoStatementID(v1);
  v5 = sub_22C0E966C(v0, v3, v4, v2);
  v6 = type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(v5);
  v7 = sub_22BFBFCD0(v6);
  v8 = type metadata accessor for ContextProtoDynamicEnumerationEntity(v7);
  sub_22BE30FA8(v8);
  sub_22BE18040();
  sub_22BE2343C();
  sub_22C0E987C();
  return sub_22BE2343C();
}

uint64_t TranscriptProtoParameter.collectionIndex.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t TranscriptProtoParameter.collectionIndex.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t TranscriptProtoParameter.candidate.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoParameter(v0) + 24);
  return sub_22BE18504();
}

void TranscriptProtoParameter.init(key:collectionIndex:candidate:)()
{
  sub_22BE3C358();
  v4 = v3;
  v6 = v5;
  v7 = sub_22BE367A8();
  v8 = *(type metadata accessor for TranscriptProtoParameter(v7) + 24);
  type metadata accessor for TranscriptProtoCandidate(0);
  sub_22BE1A140();
  sub_22C0E9E10(v9, v10, v11, v12);
  *v2 = v1;
  *(v2 + 8) = v0;
  *(v2 + 16) = v6;
  *(v2 + 24) = v4 & 1;
  sub_22BE2343C();
  sub_22BE267B8();
}

void static TranscriptProtoSystemPromptResolutionUserActionEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v8 = sub_22BE46DA4(v6, v7);
  v9 = type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation(v8);
  v10 = sub_22BE19448(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE17A44();
  v14 = sub_22BE48A8C(v13);
  v44 = type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution(v14);
  v15 = sub_22BE18000(v44);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE17A44();
  v45 = v18;
  sub_22BE183BC();
  v19 = sub_22C272594();
  v20 = sub_22BE179D8(v19);
  v46 = v21;
  v47 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = sub_22BE35598();
  v25 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(v24);
  v26 = sub_22BE18000(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BE183AC();
  sub_22BE486EC();
  MEMORY[0x28223BE20](v29);
  sub_22BE389A0();
  MEMORY[0x28223BE20](v30);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v31);
  sub_22BE23858();
  MEMORY[0x28223BE20](v32);
  sub_22BE2937C();
  MEMORY[0x28223BE20](v33);
  sub_22BE324EC();
  v34 = sub_22BE5CE4C(&qword_27D9117C0, &unk_22C2AE750);
  sub_22BE19448(v34);
  v36 = *(v35 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  sub_22BE1B72C();
  v39 = *(v38 + 56);
  sub_22C0C2A68();
  sub_22C0C2A68();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22C0E9650();
      sub_22C0C2A68();
      if (sub_22BE482A4() == 1)
      {
        (*(v46 + 32))(v2, v0 + v39, v47);
        sub_22BE18040();
        sub_22C272584();
        v43 = *(v46 + 8);
        v43(v2, v47);
        v43(v1, v47);
        goto LABEL_17;
      }

      (*(v46 + 8))(v1, v47);
      goto LABEL_21;
    case 2u:
      sub_22C0E9650();
      sub_22C0C2A68();
      if (sub_22BE482A4() != 2)
      {
        goto LABEL_21;
      }

      v40 = *v4;
      goto LABEL_10;
    case 3u:
      sub_22C0E9650();
      sub_22C0C2A68();
      if (sub_22BE482A4() != 3)
      {
        goto LABEL_21;
      }

      v42 = *v3 == *(v0 + v39);
      goto LABEL_17;
    case 4u:
      sub_22C0E9650();
      sub_22C0E9D94();
      sub_22C0C2A68();
      if (sub_22BE482A4() == 4)
      {
        sub_22C0E9AC4();
        sub_22C0C1B18();
        if (*type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum == *v45)
        {
          sub_22BEC0A84(v44);
          sub_22C0C1B6C();
          sub_22BE39EB8();
        }

        sub_22BE3D4D4();
        sub_22C0C1AC4();
        sub_22BE3D4D4();
        sub_22C0C1AC4();
        sub_22BE3E970();
      }

      else
      {
        sub_22BE3D4D4();
LABEL_20:
        sub_22C0C1AC4();
LABEL_21:
        sub_22BE33928(v0, &qword_27D9117C0, &unk_22C2AE750);
      }

      break;
    case 5u:
      sub_22C0E9650();
      sub_22C0C2A68();
      if (sub_22BE482A4() != 5)
      {
        goto LABEL_20;
      }

      sub_22C0E9AC4();
      sub_22C0C1B18();
      sub_22C2704B4();
      sub_22C0C1B6C();
      sub_22BE2BD04();
      sub_22C272FD4();
      sub_22C0C1AC4();
      sub_22C0C1AC4();
LABEL_17:
      sub_22BE3E970();
      break;
    default:
      sub_22C0E9650();
      sub_22C0C2A68();
      if (sub_22BE482A4())
      {
        goto LABEL_21;
      }

      v40 = *v5;
LABEL_10:
      v41 = v40 ^ *(v0 + v39);
      sub_22BE3E970();
      break;
  }

  sub_22BE363EC();
  sub_22BE1AABC();
}

uint64_t TranscriptProtoVariableSetter.value.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoVariableSetter(v0) + 20);
  return sub_22BE18504();
}

void sub_22C0D1328()
{
  sub_22BE3C358();
  sub_22BE32384();
  v3 = sub_22BE367A8();
  v5 = v4(v3);
  v6 = *(v5 + 20);
  v0(0);
  sub_22BE1A140();
  sub_22BE19DC4(v7, v8, v9, v10);
  v11 = v2 + *(v5 + 24);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE3D598();
  *v2 = v1;
  sub_22BE267B8();
}

uint64_t TranscriptProtoVariableStep.statementID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoVariableStep(v0) + 20);
  return sub_22BE18504();
}

void sub_22C0D1490()
{
  sub_22BE3C358();
  sub_22BE32384();
  v3 = sub_22BE367A8();
  v5 = v4(v3);
  v6 = *(v5 + 20);
  v0(0);
  sub_22BE1A140();
  sub_22BE19DC4(v7, v8, v9, v10);
  v11 = v2 + *(v5 + 24);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v2 = v1;
  sub_22BE2C278();
  sub_22BE267B8();
}

uint64_t TranscriptProtoASTFlatExprPickVariant.pickType.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoASTFlatExprPickVariant(v0) + 20);
  return sub_22BE18504();
}

void TranscriptProtoASTPickType.astpickTypeValues.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t TranscriptProtoASTPickType.astpickTypeValues.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t static TranscriptProtoAstpickTypeEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_22BE36330(a1, a2);
  v6 = v5 ^ v4 ^ 1;
  if ((v7 & 1) == 0)
  {
    v6 = 0;
  }

  if (v2 != 1)
  {
    v6 = v3;
  }

  return v6 & 1;
}

uint64_t sub_22C0D1844(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v9 = sub_22BE3E308();
  v11 = v6 + *(v10(v9) + 28);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v6 = v5;
  *(v6 + 8) = v4;
  *(v6 + 16) = a3;
  *(v6 + 17) = a4;
  return result;
}

uint64_t TranscriptProtoASTFlatExprUpdateVariant.lhs.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatExprUpdateVariant.value.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(v0) + 28);
  return sub_22BE18504();
}

void TranscriptProtoASTFlatExprUpdateVariant.init(lhs:path:value:kind:)()
{
  sub_22BE19460();
  sub_22BE28798();
  v3 = *v2;
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  v5 = updated[6];
  v6 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_22BE1A140();
  sub_22BE19DC4(v7, v8, v9, v6);
  v10 = updated[7];
  sub_22BE1A140();
  sub_22BE19DC4(v11, v12, v13, v6);
  v14 = v1 + updated[8];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C0E9C9C();
  *v1 = v0;
  sub_22C0E9C9C();
  *(v1 + 8) = v3;
  sub_22BE1AABC();
}

uint64_t TranscriptProtoASTFlatExprDotVariant.lhs.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoASTFlatExprDotVariant(v0) + 20);
  return sub_22BE18504();
}

void static TranscriptProtoAstflatExprEnum.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19460();
  a19 = v21;
  a20 = v22;
  v248 = v23;
  v249 = v24;
  MentionedApps = type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps(0);
  v26 = sub_22BE19448(MentionedApps);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BE17A44();
  v235 = v29;
  v30 = sub_22BE183BC();
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant(v30);
  v32 = sub_22BE290A0(updated, &v245);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BE17A44();
  v234 = v35;
  v36 = sub_22BE183BC();
  v37 = type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant(v36);
  v38 = sub_22BE19448(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22BE17A44();
  v232 = v41;
  v42 = sub_22BE183BC();
  v43 = type metadata accessor for TranscriptProtoASTFlatExprCancelVariant(v42);
  v44 = sub_22BE290A0(v43, &v250);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22BE17A44();
  v233 = v47;
  v48 = sub_22BE183BC();
  v49 = type metadata accessor for TranscriptProtoASTFlatExprRejectVariant(v48);
  v50 = sub_22BE290A0(v49, &v249);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  sub_22BE17A44();
  v231 = v53;
  v54 = sub_22BE183BC();
  v55 = type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant(v54);
  v56 = sub_22BE290A0(v55, &v244);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  sub_22BE17A44();
  v229[22] = v59;
  v60 = sub_22BE183BC();
  v61 = type metadata accessor for TranscriptProtoASTFlatExprUndoVariant(v60);
  v62 = sub_22BE290A0(v61, &v242);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  sub_22BE17A44();
  v230 = v65;
  v66 = sub_22BE183BC();
  v67 = type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant(v66);
  v68 = sub_22BE290A0(v67, &v248);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v68);
  sub_22BE17A44();
  v72 = sub_22BE18950(v71);
  v73 = type metadata accessor for TranscriptProtoASTFlatExprSearchVariant(v72);
  v74 = sub_22BE290A0(v73, &v240);
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v74);
  sub_22BE17A44();
  v78 = sub_22BE18950(v77);
  v79 = type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant(v78);
  v80 = sub_22BE290A0(v79, &v247);
  v82 = *(v81 + 64);
  MEMORY[0x28223BE20](v80);
  sub_22BE17A44();
  v84 = sub_22BE18950(v83);
  v85 = type metadata accessor for TranscriptProtoASTFlatExprPickVariant(v84);
  v86 = sub_22BE19448(v85);
  v88 = *(v87 + 64);
  MEMORY[0x28223BE20](v86);
  sub_22BE17A44();
  v90 = sub_22BE18950(v89);
  v91 = type metadata accessor for TranscriptProtoASTFlatExprSayVariant(v90);
  v92 = sub_22BE290A0(v91, &v243);
  v94 = *(v93 + 64);
  MEMORY[0x28223BE20](v92);
  sub_22BE17A44();
  v96 = sub_22BE18950(v95);
  v97 = type metadata accessor for TranscriptProtoASTFlatExprCallVariant(v96);
  v98 = sub_22BE290A0(v97, &v241);
  v100 = *(v99 + 64);
  MEMORY[0x28223BE20](v98);
  sub_22BE17A44();
  v102 = sub_22BE18950(v101);
  v103 = type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(v102);
  v104 = sub_22BE19448(v103);
  v106 = *(v105 + 64);
  MEMORY[0x28223BE20](v104);
  sub_22BE17A44();
  v108 = sub_22BE18950(v107);
  v109 = type metadata accessor for TranscriptProtoASTFlatExprDotVariant(v108);
  v110 = sub_22BE19448(v109);
  v112 = *(v111 + 64);
  MEMORY[0x28223BE20](v110);
  sub_22BE17A44();
  v114 = sub_22BE18950(v113);
  v115 = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(v114);
  v116 = sub_22BE19448(v115);
  v118 = *(v117 + 64);
  MEMORY[0x28223BE20](v116);
  sub_22BE17A44();
  v120 = sub_22BE18950(v119);
  v121 = type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(v120);
  v122 = sub_22BE19448(v121);
  v124 = *(v123 + 64);
  MEMORY[0x28223BE20](v122);
  sub_22BE17A44();
  v126 = sub_22BE18950(v125);
  v127 = type metadata accessor for TranscriptProtoASTFlatValue(v126);
  v128 = sub_22BE19448(v127);
  v130 = *(v129 + 64);
  MEMORY[0x28223BE20](v128);
  sub_22BE17A44();
  v132 = sub_22BE18950(v131);
  v133 = type metadata accessor for TranscriptProtoAstflatExprEnum(v132);
  v134 = sub_22BE18000(v133);
  v136 = *(v135 + 64);
  MEMORY[0x28223BE20](v134);
  sub_22BE183AC();
  v243 = v137 - v138;
  sub_22BE1B99C();
  v140 = MEMORY[0x28223BE20](v139);
  sub_22BE3C05C(v140, v141, v142, v143, v144, v145, v146, v147, v229[0]);
  MEMORY[0x28223BE20](v148);
  sub_22BE19490();
  v240 = v149;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v150);
  sub_22BE389A0();
  v152 = MEMORY[0x28223BE20](v151);
  sub_22BE23730(v152, v153, v154, v155, v156, v157, v158, v159, v229[0]);
  MEMORY[0x28223BE20](v160);
  sub_22BE19490();
  v241 = v161;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v162);
  sub_22BE19490();
  v244 = v163;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v164);
  sub_22BE19490();
  v239 = v165;
  sub_22BE1B99C();
  v167 = MEMORY[0x28223BE20](v166);
  sub_22BE4608C(v167, v168, v169, v170, v171, v172, v173, v174, v229[0]);
  MEMORY[0x28223BE20](v175);
  sub_22BE19490();
  v238 = v176;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v177);
  sub_22BE2937C();
  MEMORY[0x28223BE20](v178);
  sub_22BE19490();
  v236 = v179;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v180);
  sub_22BE19490();
  v237 = v181;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v182);
  sub_22BE18094();
  MEMORY[0x28223BE20](v183);
  sub_22BE1B604();
  MEMORY[0x28223BE20](v184);
  sub_22BE3A4D8();
  MEMORY[0x28223BE20](v185);
  sub_22BE23858();
  MEMORY[0x28223BE20](v186);
  v187 = sub_22BE5CE4C(&qword_27D9117C8, &unk_22C2AE770);
  sub_22BE19448(v187);
  v189 = *(v188 + 64);
  sub_22BE179FC();
  v191 = MEMORY[0x28223BE20](v190);
  v193 = v229 - v192;
  v194 = *(v191 + 56);
  sub_22C0C2A68();
  v248 = v194;
  sub_22C0C2A68();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE1C000();
      sub_22C0C2A68();
      if (sub_22C0E9808() == 1)
      {
        sub_22BE28E84();
        sub_22C0E9AA0(&a9);
        static TranscriptProtoASTFlatExprPrefixVariant.== infix(_:_:)();
        sub_22C0C1AC4();
        goto LABEL_112;
      }

      sub_22BE3ACD8();
      goto LABEL_105;
    case 2u:
      sub_22BE1C000();
      sub_22C0C2A68();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_22BE324E0(&a10);
        sub_22C0C1B18();
        static TranscriptProtoASTFlatExprInfixVariant.== infix(_:_:)();
        sub_22C0C1AC4();
        sub_22BE19454();
        goto LABEL_112;
      }

      sub_22BE26148();
      goto LABEL_105;
    case 3u:
      sub_22BE1C000();
      sub_22C0C2A68();
      if (sub_22C0E9808() == 3)
      {
        sub_22BE28E84();
        sub_22C0E9AA0(&a11);
        sub_22BE1804C();
        static TranscriptProtoASTFlatExprDotVariant.== infix(_:_:)();
        sub_22C0C1AC4();
        goto LABEL_112;
      }

      sub_22C0E9918();
      goto LABEL_105;
    case 4u:
      sub_22BE1C000();
      sub_22C0C2A68();
      if (sub_22C0E9808() == 4)
      {
        sub_22BE28E84();
        sub_22C0E9AA0(&a12);
        static TranscriptProtoASTFlatExprIndexVariant.== infix(_:_:)();
        sub_22C0C1AC4();
        goto LABEL_112;
      }

      sub_22BE3E76C();
      goto LABEL_105;
    case 5u:
      sub_22BE1C000();
      v211 = v237;
      sub_22C0C2A68();
      if (sub_22C0E9808() != 5)
      {
        goto LABEL_105;
      }

      sub_22BE28E84();
      sub_22BE324E0(&a15);
      sub_22C0C1B18();
      sub_22BE46B80();
      v214 = v198 && v212 == v213;
      if (v214 || (sub_22C274014() & 1) != 0)
      {
        v215 = *(v211 + 16);
        v216 = *(v20 + 16);
        sub_22BEA3EAC();
        if (v217)
        {
          sub_22C0E9B3C(&v241);
          sub_22C0C1B6C();
          if (sub_22BE3F474())
          {
            goto LABEL_120;
          }
        }
      }

      goto LABEL_122;
    case 6u:
      sub_22BE1C000();
      sub_22C0C2A68();
      if (sub_22C0E9808() != 6)
      {
        goto LABEL_105;
      }

      sub_22BE28E84();
      sub_22BE324E0(&a14);
      sub_22C0C1B18();
      v221 = sub_22C0E9B30();
      if (sub_22BE9693C(v221, v222))
      {
        sub_22C0E97EC(&v243);
        sub_22C0C1B6C();
        if (sub_22BE3F474())
        {
          goto LABEL_120;
        }
      }

      goto LABEL_122;
    case 7u:
      sub_22BE1C000();
      sub_22C0C2A68();
      if (sub_22C0E9808() == 7)
      {
        sub_22BE28E84();
        sub_22BE324E0(&a13);
        sub_22C0C1B18();
        sub_22BE18040();
        static TranscriptProtoASTFlatExprPickVariant.== infix(_:_:)();
        sub_22C0C1AC4();
        goto LABEL_112;
      }

      sub_22C0E9A74();
      goto LABEL_105;
    case 8u:
      sub_22BE1C000();
      sub_22C0C2A68();
      if (sub_22C0E9808() != 8)
      {
        goto LABEL_105;
      }

      sub_22BE28E84();
      sub_22BE324E0(&a16);
      sub_22C0C1B18();
      sub_22BE46B80();
      v228 = v198 && v226 == v227;
      if (v228 || (sub_22C274014() & 1) != 0)
      {
        sub_22C0E97EC(&v247);
        sub_22C0C1B6C();
        if (sub_22BE3F474())
        {
          goto LABEL_120;
        }
      }

      goto LABEL_122;
    case 9u:
      sub_22BE1C000();
      v206 = v242;
      sub_22C0C2A68();
      if (sub_22C0E9808() != 9)
      {
        goto LABEL_105;
      }

      sub_22BE28E84();
      sub_22BE324E0(&a17);
      sub_22C0C1B18();
      sub_22BE46B80();
      v209 = v198 && v207 == v208;
      if (v209 || (sub_22C274014()) && *(v206 + 16) == *(v20 + 16) && *(v206 + 17) == *(v20 + 17))
      {
        v210 = *(v229[1] + 28);
        sub_22C2704B4();
        sub_22C0C1B6C();
        if (sub_22BE3F474())
        {
          goto LABEL_120;
        }
      }

      goto LABEL_122;
    case 0xAu:
      sub_22BE1C000();
      sub_22C0C2A68();
      if (sub_22C0E9808() != 10)
      {
        goto LABEL_105;
      }

      sub_22BE28E84();
      sub_22BE324E0(&a18);
      sub_22C0C1B18();
      sub_22BE46B80();
      v225 = v198 && v223 == v224;
      if (v225 || (sub_22C274014() & 1) != 0)
      {
        sub_22C0E97EC(&v248);
        sub_22C0C1B6C();
        if (sub_22BE3F474())
        {
          goto LABEL_120;
        }
      }

      goto LABEL_122;
    case 0xBu:
      sub_22BE1C000();
      v199 = v244;
      sub_22C0C2A68();
      if (sub_22C0E9808() != 11)
      {
        goto LABEL_105;
      }

      sub_22BE28E84();
      v200 = v230;
      sub_22C0C1B18();
      v201 = v199[1];
      v202 = v200[1];
      if (v201)
      {
        if (!v202)
        {
          goto LABEL_122;
        }

        v203 = *v199 == *v200 && v201 == v202;
        if (!v203 && (sub_22C274014() & 1) == 0)
        {
          goto LABEL_122;
        }
      }

      else if (v202)
      {
LABEL_122:
        sub_22C0C1AC4();
        sub_22BE291B0();
        sub_22C0C1AC4();
        sub_22BE3FE20();
        goto LABEL_123;
      }

      sub_22C0E97EC(&v242);
      sub_22C0C1B6C();
      if ((sub_22BE3F474() & 1) == 0)
      {
        goto LABEL_122;
      }

LABEL_120:
      sub_22C0C1AC4();
      sub_22BE291B0();
      sub_22C0C1AC4();
LABEL_121:
      sub_22BE3FE20();
LABEL_123:
      sub_22BE363EC();
      sub_22BE1AABC();
      return;
    case 0xCu:
      sub_22BE1C000();
      sub_22C0C2A68();
      if (sub_22C0E9808() != 12)
      {
        goto LABEL_105;
      }

      sub_22BE28E84();
      sub_22C0C1B18();
      v204 = sub_22C0E9B30();
      if (sub_22BE9693C(v204, v205))
      {
        sub_22C0E97EC(&v244);
        sub_22C0C1B6C();
        if (sub_22BE3F474())
        {
          goto LABEL_120;
        }
      }

      goto LABEL_122;
    case 0xDu:
      sub_22BE1C000();
      sub_22C0C2A68();
      if (sub_22C0E9808() != 13)
      {
        goto LABEL_105;
      }

      sub_22BE28E84();
      sub_22C0C1B18();
      sub_22BE46B80();
      v220 = v198 && v218 == v219;
      if (v220 || (sub_22C274014() & 1) != 0)
      {
        sub_22C0E97EC(&v249);
        sub_22C0C1B6C();
        if (sub_22BE3F474())
        {
          goto LABEL_120;
        }
      }

      goto LABEL_122;
    case 0xEu:
      sub_22BE1C000();
      sub_22C0C2A68();
      if (sub_22C0E9808() != 14)
      {
        goto LABEL_105;
      }

      sub_22BE28E84();
      sub_22C0C1B18();
      sub_22BE46B80();
      v198 = v198 && v196 == v197;
      if (v198 || (sub_22C274014() & 1) != 0)
      {
        sub_22C0E97EC(&v250);
        sub_22C0C1B6C();
        if (sub_22BE3F474())
        {
          goto LABEL_120;
        }
      }

      goto LABEL_122;
    case 0xFu:
      sub_22BE1C000();
      sub_22C0C2A68();
      if (sub_22C0E9808() == 15)
      {
        goto LABEL_52;
      }

      goto LABEL_105;
    case 0x10u:
      sub_22BE1C000();
      sub_22C0C2A68();
      if (sub_22C0E9808() != 16)
      {
        goto LABEL_105;
      }

      sub_22BE28E84();
      sub_22C0C1B18();
      sub_22C0E9B30();
      sub_22BE96788();
      if (v195)
      {
        sub_22C0E97EC(&v245);
        sub_22C0C1B6C();
        if (sub_22BE3F474())
        {
          goto LABEL_120;
        }
      }

      goto LABEL_122;
    case 0x11u:
      sub_22BE1C000();
      sub_22C0C2A68();
      if (sub_22C0E9808() != 17)
      {
        goto LABEL_105;
      }

LABEL_52:
      sub_22BE28E84();
      sub_22C0C1B18();
      sub_22C2704B4();
      sub_22C0C1B6C();
      sub_22BE38970();
      sub_22C272FD4();
      sub_22C0C1AC4();
      goto LABEL_112;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        goto LABEL_121;
      }

      goto LABEL_106;
    case 0x13u:
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        goto LABEL_121;
      }

      goto LABEL_106;
    default:
      sub_22BE1C000();
      sub_22C0C2A68();
      if (sub_22C0E9808())
      {
        sub_22BE20118();
LABEL_105:
        sub_22C0C1AC4();
LABEL_106:
        sub_22BE33928(v193, &qword_27D9117C8, &unk_22C2AE770);
      }

      else
      {
        sub_22BE28E84();
        sub_22C0E9AA0(&v246);
        static TranscriptProtoASTFlatValue.== infix(_:_:)();
        sub_22C0C1AC4();
LABEL_112:
        sub_22C0C1AC4();
        sub_22BE3FE20();
      }

      goto LABEL_123;
  }
}

void static TranscriptProtoAstflatValueEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v8 = sub_22BE46DA4(v6, v7);
  v9 = type metadata accessor for TranscriptProtoStatementID(v8);
  v10 = sub_22BE19448(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE17A44();
  v68 = v13;
  v14 = sub_22BE183BC();
  v66 = type metadata accessor for TranscriptProtoASTFlatValueDictVariant(v14);
  v15 = sub_22BE18000(v66);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE17A44();
  v19 = sub_22BE48A8C(v18);
  v65 = type metadata accessor for TranscriptProtoASTFlatValueArrayVariant(v19);
  v20 = sub_22BE18000(v65);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE17A44();
  v67 = v23;
  v24 = sub_22BE183BC();
  v25 = type metadata accessor for TranscriptProtoAstflatValueEnum(v24);
  v26 = sub_22BE18000(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BE183AC();
  sub_22BE389A0();
  MEMORY[0x28223BE20](v29);
  sub_22BE360F8();
  MEMORY[0x28223BE20](v30);
  sub_22BE23858();
  MEMORY[0x28223BE20](v31);
  sub_22BE19490();
  v69 = v32;
  sub_22BE1B99C();
  v34 = MEMORY[0x28223BE20](v33);
  sub_22BE3C05C(v34, v35, v36, v37, v38, v39, v40, v41, v65);
  MEMORY[0x28223BE20](v42);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v43);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v44);
  sub_22BE3A4D8();
  MEMORY[0x28223BE20](v45);
  sub_22BE324EC();
  v46 = sub_22BE5CE4C(&qword_27D9117D0, &unk_22C2AE780);
  sub_22BE19448(v46);
  v48 = *(v47 + 64);
  sub_22BE179FC();
  v50 = MEMORY[0x28223BE20](v49);
  v52 = &v65 - v51;
  v53 = (&v65 + *(v50 + 56) - v51);
  sub_22C0C2A68();
  sub_22C0C2A68();
  sub_22BE36680();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE186A4();
      sub_22C0C2A68();
      sub_22BE1804C();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_35;
      }

      v58 = *v0 == *v53;
      goto LABEL_38;
    case 2u:
      sub_22BE186A4();
      sub_22C0C2A68();
      sub_22BE1804C();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_35;
      }

      v58 = *v4 == *v53;
      goto LABEL_38;
    case 3u:
      sub_22BE186A4();
      sub_22C0C2A68();
      v57 = *v1;
      v56 = v1[1];
      sub_22BE1804C();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_29;
      }

      v58 = v57 == *v53 && v56 == *(v53 + 1);
      if (!v58)
      {
        goto LABEL_22;
      }

      goto LABEL_32;
    case 4u:
      sub_22BE186A4();
      sub_22C0E9A68();
      sub_22C0C2A68();
      sub_22BE1804C();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_34;
      }

      sub_22C0C1B18();
      sub_22C0E9B08();
      sub_22BE98ABC();
      if (v55)
      {
        sub_22BE3FF30(v65);
        sub_22C0C1B6C();
        sub_22BE3C4B0();
      }

      goto LABEL_37;
    case 5u:
      sub_22BE186A4();
      sub_22C0E9A5C();
      sub_22C0C2A68();
      sub_22BE1804C();
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_34;
      }

      sub_22C0C1B18();
      v62 = sub_22C0E9B08();
      if (sub_22BEA3EAC(v62))
      {
        sub_22BE3FF30(v66);
        sub_22C0C1B6C();
        sub_22BE3C4B0();
      }

LABEL_37:
      sub_22C0C1AC4();
      sub_22BE1AB74();
      sub_22C0C1AC4();
      goto LABEL_38;
    case 6u:
      sub_22BE186A4();
      sub_22C0C2A68();
      v60 = *v3;
      v59 = v3[1];
      sub_22BE1804C();
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    case 7u:
      sub_22BE186A4();
      sub_22C0C2A68();
      v60 = *v2;
      v59 = v2[1];
      sub_22BE1804C();
      if (swift_getEnumCaseMultiPayload() != 7)
      {
LABEL_29:

        goto LABEL_35;
      }

LABEL_18:
      if (v60 == *v53 && v59 == *(v53 + 1))
      {
LABEL_32:
      }

      else
      {
LABEL_22:
        sub_22C274014();
      }

      goto LABEL_38;
    case 8u:
      sub_22BE186A4();
      sub_22C0E9B7C();
      sub_22C0C2A68();
      sub_22BE1804C();
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        sub_22C0E970C();
        sub_22C0C1B18();
        v63 = sub_22BE1C2A0();
        static TranscriptProtoStatementID.== infix(_:_:)(v63, v64);
        sub_22BE3E82C();
        sub_22C0C1AC4();
        sub_22BE1AB74();
        sub_22C0C1AC4();
LABEL_38:
        sub_22BE235D0();
      }

      else
      {
LABEL_34:
        sub_22C0C1AC4();
LABEL_35:
        sub_22BE33928(v52, &qword_27D9117D0, &unk_22C2AE780);
      }

LABEL_36:
      sub_22BE1B1B8();
      sub_22BE1AABC();
      return;
    case 9u:
      sub_22BE1804C();
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_35;
      }

      goto LABEL_38;
    default:
      sub_22BE186A4();
      sub_22C0C2A68();
      sub_22BE1804C();
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_35;
      }

      v54 = *v5 ^ *v53;
      sub_22BE235D0();
      goto LABEL_36;
  }
}

uint64_t TranscriptProtoASTFlatExprIndexVariant.index.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(v0) + 20);
  return sub_22BE18504();
}

void sub_22C0D3760()
{
  sub_22BE3C358();
  sub_22BE32384();
  v2 = sub_22BE367A8();
  v4 = v3(v2);
  sub_22BE1A140();
  sub_22BE19DC4(v5, v6, v7, v4);
  v8 = v0(0);
  v9 = *(v8 + 20);
  sub_22BE1A140();
  sub_22BE19DC4(v10, v11, v12, v4);
  v13 = v1 + *(v8 + 24);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE3D598();
  sub_22BE2C278();
  sub_22BE267B8();
}

uint64_t TranscriptProtoASTFlatExprInfixVariant.second.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatExprInfixVariant.third.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(v0) + 24);
  return sub_22BE18504();
}

void static TranscriptProtoExpressionEnum.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19460();
  a19 = v20;
  a20 = v21;
  v328 = v22;
  v329 = v23;
  v24 = type metadata accessor for TranscriptProtoAnswerSynthesisExpression(0);
  v25 = sub_22BE19448(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE17A44();
  v29 = sub_22BE18950(v28);
  v30 = type metadata accessor for TranscriptProtoUserDisambiguateExpression(v29);
  v31 = sub_22BE19448(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BE17A44();
  v35 = sub_22BE18950(v34);
  v36 = type metadata accessor for TranscriptProtoUserConfirmExpression(v35);
  v37 = sub_22BE19448(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  sub_22BE17A44();
  v41 = sub_22BE18950(v40);
  v42 = type metadata accessor for TranscriptProtoSiriXFallbackExpression(v41);
  v43 = sub_22BE19448(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  sub_22BE17A44();
  v47 = sub_22BE18950(v46);
  ToolsExpression = type metadata accessor for TranscriptProtoRetrieveToolsExpression(v47);
  v49 = sub_22BE19448(ToolsExpression);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  sub_22BE17A44();
  v53 = sub_22BE18950(v52);
  SpansExpression = type metadata accessor for TranscriptProtoRetrieveSpansExpression(v53);
  v55 = sub_22BE19448(SpansExpression);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  sub_22BE17A44();
  v59 = sub_22BE18950(v58);
  ContextExpression = type metadata accessor for TranscriptProtoRetrieveContextExpression(v59);
  v61 = sub_22BE19448(ContextExpression);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  sub_22BE17A44();
  v65 = sub_22BE18950(v64);
  v66 = type metadata accessor for TranscriptProtoFormatExpression(v65);
  v67 = sub_22BE290A0(v66, &v301);
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v67);
  sub_22BE17A44();
  v71 = sub_22BE18950(v70);
  v72 = type metadata accessor for TranscriptProtoPayloadExpression(v71);
  v73 = sub_22BE290A0(v72, &v300);
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v73);
  sub_22BE17A44();
  v77 = sub_22BE18950(v76);
  v78 = type metadata accessor for TranscriptProtoExplicitResolutionRequest(v77);
  v79 = sub_22BE19448(v78);
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v79);
  sub_22BE17A44();
  v83 = sub_22BE18950(v82);
  v84 = type metadata accessor for TranscriptProtoOpenExpression(v83);
  v85 = sub_22BE19448(v84);
  v87 = *(v86 + 64);
  MEMORY[0x28223BE20](v85);
  sub_22BE17A44();
  v89 = sub_22BE18950(v88);
  MentionedAppsExpression = type metadata accessor for TranscriptProtoGetMentionedAppsExpression(v89);
  v91 = sub_22BE19448(MentionedAppsExpression);
  v93 = *(v92 + 64);
  MEMORY[0x28223BE20](v91);
  sub_22BE17A44();
  v95 = sub_22BE18950(v94);
  v96 = type metadata accessor for TranscriptProtoEndOfPlanExpression(v95);
  v97 = sub_22BE19448(v96);
  v99 = *(v98 + 64);
  MEMORY[0x28223BE20](v97);
  sub_22BE17A44();
  v101 = sub_22BE18950(v100);
  v102 = type metadata accessor for TranscriptProtoContinuePlanningExpression(v101);
  v103 = sub_22BE19448(v102);
  v105 = *(v104 + 64);
  MEMORY[0x28223BE20](v103);
  sub_22BE17A44();
  v107 = sub_22BE18950(v106);
  v108 = type metadata accessor for TranscriptProtoNoMatchingToolExpression(v107);
  v109 = sub_22BE19448(v108);
  v111 = *(v110 + 64);
  MEMORY[0x28223BE20](v109);
  sub_22BE17A44();
  v113 = sub_22BE18950(v112);
  v114 = type metadata accessor for TranscriptProtoCancelExpression(v113);
  v115 = sub_22BE19448(v114);
  v117 = *(v116 + 64);
  MEMORY[0x28223BE20](v115);
  sub_22BE17A44();
  v119 = sub_22BE18950(v118);
  v120 = type metadata accessor for TranscriptProtoRejectExpression(v119);
  v121 = sub_22BE19448(v120);
  v123 = *(v122 + 64);
  MEMORY[0x28223BE20](v121);
  sub_22BE17A44();
  v125 = sub_22BE18950(v124);
  v126 = type metadata accessor for TranscriptProtoUndoExpression(v125);
  v127 = sub_22BE19448(v126);
  v129 = *(v128 + 64);
  MEMORY[0x28223BE20](v127);
  sub_22BE17A44();
  v131 = sub_22BE18950(v130);
  v132 = type metadata accessor for TranscriptProtoResolveToolExpression(v131);
  v133 = sub_22BE290A0(v132, &v299);
  v135 = *(v134 + 64);
  MEMORY[0x28223BE20](v133);
  sub_22BE17A44();
  v137 = sub_22BE18950(v136);
  v138 = type metadata accessor for TranscriptProtoPickOneExpression(v137);
  v139 = sub_22BE19448(v138);
  v141 = *(v140 + 64);
  MEMORY[0x28223BE20](v139);
  sub_22BE17A44();
  v143 = sub_22BE18950(v142);
  v144 = type metadata accessor for TranscriptProtoStructuredSearchExpression(v143);
  v145 = sub_22BE19448(v144);
  v147 = *(v146 + 64);
  MEMORY[0x28223BE20](v145);
  sub_22BE17A44();
  v149 = sub_22BE18950(v148);
  v150 = type metadata accessor for TranscriptProtoSearchExpression(v149);
  v151 = sub_22BE19448(v150);
  v153 = *(v152 + 64);
  MEMORY[0x28223BE20](v151);
  sub_22BE17A44();
  v155 = sub_22BE18950(v154);
  v156 = type metadata accessor for TranscriptProtoConfirmExpression(v155);
  v157 = sub_22BE19448(v156);
  v159 = *(v158 + 64);
  MEMORY[0x28223BE20](v157);
  sub_22BE17A44();
  v161 = sub_22BE18950(v160);
  v162 = type metadata accessor for TranscriptProtoPickExpression(v161);
  v163 = sub_22BE19448(v162);
  v165 = *(v164 + 64);
  MEMORY[0x28223BE20](v163);
  sub_22BE17A44();
  v167 = sub_22BE18950(v166);
  v168 = type metadata accessor for TranscriptProtoSayExpression(v167);
  v169 = sub_22BE290A0(v168, &v298);
  v171 = *(v170 + 64);
  MEMORY[0x28223BE20](v169);
  sub_22BE17A44();
  v173 = sub_22BE18950(v172);
  v174 = type metadata accessor for TranscriptProtoCallExpression(v173);
  v175 = sub_22BE19448(v174);
  v177 = *(v176 + 64);
  MEMORY[0x28223BE20](v175);
  sub_22BE17A44();
  v179 = sub_22BE18950(v178);
  updated = type metadata accessor for TranscriptProtoUpdateParametersExpression(v179);
  v181 = sub_22BE19448(updated);
  v183 = *(v182 + 64);
  MEMORY[0x28223BE20](v181);
  sub_22BE17A44();
  v185 = sub_22BE18950(v184);
  v186 = type metadata accessor for TranscriptProtoIndexExpression(v185);
  v187 = sub_22BE19448(v186);
  v189 = *(v188 + 64);
  MEMORY[0x28223BE20](v187);
  sub_22BE17A44();
  v191 = sub_22BE18950(v190);
  v192 = type metadata accessor for TranscriptProtoInfixExpression(v191);
  v193 = sub_22BE19448(v192);
  v195 = *(v194 + 64);
  MEMORY[0x28223BE20](v193);
  sub_22BE17A44();
  v197 = sub_22BE18950(v196);
  v198 = type metadata accessor for TranscriptProtoPrefixExpression(v197);
  v199 = sub_22BE19448(v198);
  v201 = *(v200 + 64);
  MEMORY[0x28223BE20](v199);
  sub_22BE17A44();
  v203 = sub_22BE18950(v202);
  v204 = type metadata accessor for TranscriptProtoStatementID(v203);
  v205 = sub_22BE19448(v204);
  v207 = *(v206 + 64);
  MEMORY[0x28223BE20](v205);
  sub_22BE17A44();
  v209 = sub_22BE18950(v208);
  v210 = type metadata accessor for TranscriptProtoValueExpression(v209);
  v211 = sub_22BE19448(v210);
  v213 = *(v212 + 64);
  MEMORY[0x28223BE20](v211);
  sub_22BE17A44();
  v215 = sub_22BE18950(v214);
  v327 = type metadata accessor for TranscriptProtoExpressionEnum(v215);
  v216 = sub_22BE18000(v327);
  v218 = *(v217 + 64);
  MEMORY[0x28223BE20](v216);
  sub_22BE183AC();
  sub_22BE389A0();
  v220 = MEMORY[0x28223BE20](v219);
  sub_22BE23730(v220, v221, v222, v223, v224, v225, v226, v227, v297);
  MEMORY[0x28223BE20](v228);
  sub_22BE19490();
  v324 = v229;
  sub_22BE1B99C();
  v231 = MEMORY[0x28223BE20](v230);
  sub_22BE4608C(v231, v232, v233, v234, v235, v236, v237, v238, v297);
  MEMORY[0x28223BE20](v239);
  sub_22BE19490();
  v320 = v240;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v241);
  sub_22BE19490();
  v318 = v242;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v243);
  sub_22BE19490();
  v319 = v244;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v245);
  sub_22BE19490();
  v323 = v246;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v247);
  sub_22BE19490();
  v321 = v248;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v249);
  sub_22BE19490();
  v317 = v250;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v251);
  sub_22BE19490();
  v315 = v252;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v253);
  sub_22BE19490();
  v316 = v254;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v255);
  sub_22BE19490();
  v314 = v256;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v257);
  sub_22BE19490();
  v313 = v258;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v259);
  sub_22BE19490();
  v312 = v260;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v261);
  sub_22BE19490();
  v310 = v262;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v263);
  sub_22BE19490();
  v309 = v264;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v265);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v266);
  sub_22BE19490();
  v311 = v267;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v268);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v269);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v270);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v271);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v272);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v273);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v274);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v275);
  sub_22BE3A4D8();
  MEMORY[0x28223BE20](v276);
  sub_22BE2390C();
  MEMORY[0x28223BE20](v277);
  sub_22BE1B604();
  MEMORY[0x28223BE20](v278);
  sub_22BE23858();
  MEMORY[0x28223BE20](v279);
  sub_22BE2017C();
  MEMORY[0x28223BE20](v280);
  v281 = sub_22BE5CE4C(&qword_27D9117D8, &unk_22C2AE790);
  sub_22BE19448(v281);
  v283 = *(v282 + 64);
  sub_22BE179FC();
  v285 = MEMORY[0x28223BE20](v284);
  v287 = &v297 - v286;
  v288 = *(v285 + 56);
  sub_22C0C2A68();
  v328 = v288;
  sub_22C0C2A68();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() == 1)
      {
        sub_22C0E970C();
        sub_22C0E9AA0(&v303);
        v291 = sub_22BE431C0();
        static TranscriptProtoStatementID.== infix(_:_:)(v291, v292);
        sub_22BE3E82C();
        sub_22C0C1AC4();
        goto LABEL_72;
      }

      sub_22C0E9830();
      goto LABEL_91;
    case 2u:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() == 2)
      {
        sub_22BE3F3BC();
        sub_22C0E9AA0(&v304);
        static TranscriptProtoPrefixExpression.== infix(_:_:)();
        sub_22C0C1AC4();
        goto LABEL_72;
      }

      sub_22BE3ACD8();
      goto LABEL_91;
    case 3u:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 3)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22C0E9AA0(&v305);
      sub_22BE1804C();
      static TranscriptProtoInfixExpression.== infix(_:_:)();
      goto LABEL_71;
    case 4u:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() == 4)
      {
        sub_22BE3F3BC();
        sub_22C0E9AA0(&v306);
        sub_22BE36680();
        static TranscriptProtoIndexExpression.== infix(_:_:)();
        sub_22C0C1AC4();
        goto LABEL_72;
      }

      sub_22C0E9848();
      goto LABEL_91;
    case 5u:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        sub_22BE324E0(&v307);
        sub_22C0C1B18();
        static TranscriptProtoUpdateParametersExpression.== infix(_:_:)();
        sub_22C0C1AC4();
        sub_22BE19454();
        goto LABEL_72;
      }

      sub_22BE26148();
      goto LABEL_91;
    case 6u:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 6)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22C0E9AA0(&v308);
      sub_22BE3C5E4();
      static TranscriptProtoCallExpression.== infix(_:_:)();
      goto LABEL_71;
    case 7u:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 7)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22BE324E0(&v310);
      sub_22C0C1B18();
      sub_22C0E9B08();
      sub_22BE97814();
      if (v290)
      {
        sub_22C0E97EC(&v298);
        sub_22C0C1B6C();
        sub_22BE3C4B0();
      }

      goto LABEL_64;
    case 8u:
      sub_22BE17DC8();
      sub_22BE324E0(&a12);
      sub_22C0C2A68();
      if (sub_22BE3E450() != 8)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22C0E9AA0(&v309);
      sub_22BE1804C();
      static TranscriptProtoPickExpression.== infix(_:_:)();
      goto LABEL_71;
    case 9u:
      sub_22BE17DC8();
      sub_22BE324E0(&a13);
      sub_22C0C2A68();
      if (sub_22BE3E450() != 9)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22C0E9AA0(&v311);
      sub_22BE1804C();
      static TranscriptProtoConfirmExpression.== infix(_:_:)();
      goto LABEL_71;
    case 0xAu:
      sub_22BE17DC8();
      sub_22BE324E0(&a14);
      sub_22C0C2A68();
      if (sub_22BE3E450() != 10)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22C0E9AA0(&v312);
      v294 = sub_22BE1804C();
      static TranscriptProtoSearchExpression.== infix(_:_:)(v294, v295);
      goto LABEL_71;
    case 0xBu:
      sub_22BE17DC8();
      sub_22BE324E0(&a15);
      sub_22C0C2A68();
      if (sub_22BE3E450() != 11)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22C0E9AA0(&v313);
      sub_22BE1804C();
      static TranscriptProtoStructuredSearchExpression.== infix(_:_:)();
      goto LABEL_71;
    case 0xCu:
      sub_22BE17DC8();
      sub_22BE324E0(&a17);
      sub_22C0C2A68();
      if (sub_22BE3E450() != 12)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22C0E9AA0(&v314);
      sub_22BE1804C();
      static TranscriptProtoPickOneExpression.== infix(_:_:)();
      goto LABEL_71;
    case 0xDu:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 13)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22BE324E0(&v316);
      sub_22C0C1B18();
      sub_22C0E9B08();
      sub_22BE99FA4();
      if (v293)
      {
        sub_22C0E97EC(&v299);
        sub_22C0C1B6C();
        sub_22BE3C4B0();
      }

      goto LABEL_64;
    case 0xEu:
      sub_22BE17DC8();
      sub_22BE324E0(&a18);
      sub_22C0C2A68();
      if (sub_22BE3E450() != 14)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22C0E9AA0(&v315);
      sub_22BE1804C();
      static TranscriptProtoUndoExpression.== infix(_:_:)();
      goto LABEL_71;
    case 0xFu:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 15)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22C0E9AA0(&v317);
      sub_22BE1804C();
      static TranscriptProtoRejectExpression.== infix(_:_:)();
      goto LABEL_71;
    case 0x10u:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 16)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22C0E9AA0(&v318);
      sub_22BE1804C();
      static TranscriptProtoCancelExpression.== infix(_:_:)();
      goto LABEL_71;
    case 0x11u:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 17)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22BE324E0(&v319);
      sub_22C0C1B18();
      sub_22C2704B4();
      sub_22C0C1B6C();
      sub_22BE36258();
      goto LABEL_71;
    case 0x12u:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 18)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22BE324E0(&v320);
      sub_22C0C1B18();
      sub_22C2704B4();
      sub_22C0C1B6C();
      sub_22BE36258();
      goto LABEL_71;
    case 0x13u:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 19)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22BE324E0(&v321);
      sub_22C0C1B18();
      sub_22C2704B4();
      sub_22C0C1B6C();
      sub_22BE36258();
      goto LABEL_71;
    case 0x14u:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 20)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22BE324E0(&v322);
      sub_22C0C1B18();
      sub_22C2704B4();
      sub_22C0C1B6C();
      sub_22BE36258();
      goto LABEL_71;
    case 0x15u:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 21)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22C0E9AA0(&v323);
      sub_22BE1804C();
      static TranscriptProtoOpenExpression.== infix(_:_:)();
      goto LABEL_71;
    case 0x16u:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 22)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22BE324E0(&v324);
      sub_22C0C1B18();
      sub_22C2704B4();
      sub_22C0C1B6C();
      sub_22BE36258();
      goto LABEL_71;
    case 0x17u:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 23)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22BE324E0(&v325);
      sub_22C0C1B18();
      sub_22C0E9B08();
      sub_22BE97814();
      if (v296)
      {
        sub_22C0E97EC(&v300);
        sub_22C0C1B6C();
        sub_22BE3C4B0();
      }

      goto LABEL_64;
    case 0x18u:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 24)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22BE324E0(&v326);
      sub_22C0C1B18();
      sub_22C0E9B08();
      sub_22BE97814();
      if (v289)
      {
        sub_22C0E97EC(&v301);
        sub_22C0C1B6C();
        sub_22BE3C4B0();
      }

LABEL_64:
      sub_22C0C1AC4();
      sub_22BE1AB74();
      sub_22C0C1AC4();
      sub_22C0E978C();
      goto LABEL_92;
    case 0x19u:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 25)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22BE324E0(&v327);
      sub_22C0C1B18();
      sub_22C2704B4();
      sub_22C0C1B6C();
      sub_22BE36258();
      goto LABEL_71;
    case 0x1Au:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 26)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22C0E9AA0(&v328);
      sub_22BE1804C();
      static TranscriptProtoRetrieveSpansExpression.== infix(_:_:)();
      goto LABEL_71;
    case 0x1Bu:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 27)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22C0E9AA0(&v329);
      sub_22BE1804C();
      static TranscriptProtoRetrieveToolsExpression.== infix(_:_:)();
      goto LABEL_71;
    case 0x1Cu:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 28)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22C0E9AA0(&v330);
      sub_22BE1804C();
      static TranscriptProtoSiriXFallbackExpression.== infix(_:_:)();
      goto LABEL_71;
    case 0x1Du:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 29)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22C0E9AA0(&a9);
      sub_22BE1804C();
      static TranscriptProtoUserConfirmExpression.== infix(_:_:)();
      goto LABEL_71;
    case 0x1Eu:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 30)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22C0E9AA0(&a10);
      sub_22BE1804C();
      static TranscriptProtoUserDisambiguateExpression.== infix(_:_:)();
      goto LABEL_71;
    case 0x1Fu:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450() != 31)
      {
        goto LABEL_91;
      }

      sub_22BE3F3BC();
      sub_22C0E9AA0(&a11);
      sub_22BE1804C();
      static TranscriptProtoAnswerSynthesisExpression.== infix(_:_:)();
LABEL_71:
      sub_22C0C1AC4();
      goto LABEL_72;
    default:
      sub_22BE17DC8();
      sub_22C0C2A68();
      if (sub_22BE3E450())
      {
        sub_22C0E9A74();
LABEL_91:
        sub_22C0C1AC4();
        sub_22BE33928(v287, &qword_27D9117D8, &unk_22C2AE790);
      }

      else
      {
        sub_22BE3F3BC();
        sub_22BE324E0(&v302);
        sub_22C0C1B18();
        sub_22BE18040();
        static TranscriptProtoValueExpression.== infix(_:_:)();
        sub_22C0C1AC4();
LABEL_72:
        sub_22C0C1AC4();
        sub_22C0E978C();
      }

LABEL_92:
      sub_22BE1AABC();
      return;
  }
}

void static TranscriptProtoValueExpressionEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v6 = sub_22BE39FFC();
  v33 = type metadata accessor for TranscriptProtoValueExpressionArrayVariant(v6);
  v7 = sub_22BE18000(v33);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE17A44();
  v11 = sub_22C0E9724(v10);
  v12 = type metadata accessor for TranscriptProtoValueExpressionEnum(v11);
  v13 = sub_22BE18000(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE183AC();
  sub_22BE486EC();
  MEMORY[0x28223BE20](v16);
  sub_22BE19490();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v17);
  sub_22BE2017C();
  MEMORY[0x28223BE20](v18);
  sub_22BE18094();
  MEMORY[0x28223BE20](v19);
  sub_22BE1B604();
  MEMORY[0x28223BE20](v20);
  sub_22BE25A90();
  v21 = sub_22BE5CE4C(&qword_27D9117E0, &unk_22C2AE7A0);
  sub_22BE19448(v21);
  v23 = *(v22 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  sub_22BE1B72C();
  v26 = (v0 + *(v25 + 56));
  sub_22C0C2A68();
  sub_22C0C2A68();
  sub_22BE19454();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE3E658();
      sub_22C0C2A68();
      sub_22BE36680();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_25;
      }

      v31 = *v1 == *v26;
      goto LABEL_19;
    case 2u:
      sub_22BE3E658();
      sub_22C0C2A68();
      sub_22BE36680();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_25;
      }

      v31 = *v5 == *v26;
LABEL_19:
      sub_22C0C1AC4();
      goto LABEL_28;
    case 3u:
      sub_22BE3E658();
      sub_22C0C2A68();
      v30 = *v3;
      v29 = v3[1];
      sub_22BE36680();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    case 4u:
      sub_22BE3E658();
      sub_22C0C2A68();
      sub_22BE36680();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_22C0E9830();
        sub_22C0C1AC4();
        goto LABEL_25;
      }

      sub_22C0E9A5C();
      sub_22C0C1B18();
      sub_22C0E9E3C();
      sub_22BE97814();
      if (v28)
      {
        sub_22BEC0A84(v33);
        sub_22C0C1B6C();
        sub_22BE39EB8();
      }

      sub_22BE42540();
      sub_22C0C1AC4();
      sub_22BE431C0();
      sub_22C0C1AC4();
      goto LABEL_27;
    case 5u:
      sub_22BE3E658();
      sub_22C0C2A68();
      v30 = *v4;
      v29 = v4[1];
      sub_22BE36680();
      if (swift_getEnumCaseMultiPayload() == 5)
      {
LABEL_11:
        v31 = v30 == *v26 && v29 == *(v26 + 1);
        if (v31)
        {
          v32 = *(v26 + 1);
        }

        else
        {
          sub_22BE1C2A0();
          sub_22C274014();
        }

LABEL_27:
        sub_22C0E9764();
      }

      else
      {
LABEL_21:

LABEL_25:
        sub_22BE33928(v0, &qword_27D9117E0, &unk_22C2AE7A0);
      }

LABEL_28:
      sub_22BE1B1B8();
      sub_22BE1AABC();
      return;
    case 6u:
      sub_22BE36680();
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    default:
      sub_22BE3E658();
      sub_22C0C2A68();
      sub_22BE36680();
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_25;
      }

      v27 = *v2 ^ *v26;
      sub_22C0E9764();
      goto LABEL_28;
  }
}

uint64_t TranscriptProtoPrefixExpression.value.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoPrefixExpression(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoInfixExpression.lhs.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoInfixExpression(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoInfixExpression.rhs.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoInfixExpression(v0) + 24);
  return sub_22BE18504();
}

void sub_22C0D5C94()
{
  sub_22BE19460();
  sub_22BE32534();
  v2 = v1;
  v4 = *v3;
  v6 = v5(0);
  v7 = sub_22C0E9B88(v6);
  v8 = v0(v7);
  sub_22BE1A140();
  sub_22BE19DC4(v9, v10, v11, v8);
  v12 = *(v6 + 24);
  sub_22BE1A140();
  sub_22C0E9E10(v13, v14, v15, v8);
  *v2 = v4;
  sub_22BE3D598();
  sub_22BE2C278();
  sub_22BE1AABC();
}

uint64_t TranscriptProtoASTFlatExprPrefixVariant.second.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(v0) + 20);
  return sub_22BE18504();
}

void sub_22C0D5E1C()
{
  sub_22BE3C358();
  sub_22BE32384();
  v2 = v1;
  v4 = *v3;
  v6 = v5(0);
  v7 = *(v6 + 20);
  v0(0);
  sub_22BE1A140();
  sub_22BE19DC4(v8, v9, v10, v11);
  v12 = &v2[*(v6 + 24)];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v2 = v4;
  sub_22BE2C278();
  sub_22BE267B8();
}

uint64_t TranscriptProtoIndexExpression.index.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoIndexExpression(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoUpdateParametersExpression.callStatementID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoUpdateParametersExpression(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoUpdateParameterExpression_UpdateParameter.value.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoUpdateParameterExpression_UpdateParameter.parameterIndex.getter()
{
  v1 = (v0 + *(type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0) + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t TranscriptProtoUpdateParameterExpression_UpdateParameter.parameterIndex.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TranscriptProtoUpdateParameterExpression_UpdateParameter.parameterIndex.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(v0) + 28);
  return sub_22BE18504();
}

void TranscriptProtoUpdateParameterExpression_UpdateParameter.init(parameterID:kind:value:parameterIndex:)()
{
  sub_22BE19460();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = *v10;
  updated = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  v13 = updated[6];
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v14, v15, v16, v17);
  v18 = updated[8];
  v19 = v9 + updated[7];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v9 = v7;
  *(v9 + 8) = v5;
  *(v9 + 16) = v11;
  sub_22BE2343C();
  *v19 = v3;
  *(v19 + 8) = v1 & 1;
  sub_22BE1AABC();
}

uint64_t TranscriptProtoGlobalToolIdentifier.init(toolID:deviceIdsID:representsBuiltInTool:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = sub_22BE367A8();
  v12 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(v11);
  result = sub_22C0E9D10(v12);
  *v7 = v6;
  *(v7 + 8) = v5;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  *(v7 + 16) = a5;
  return result;
}

uint64_t TranscriptProtoCallExpression.tool.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoCallExpression(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoPickExpression.statementID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoPickExpression(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSearchExpression.init(query:isLowConfidenceKnowledge:pickOne:shouldOpenResultIfApplicable:)(uint64_t a1, uint64_t a2, char a3, char a4, char a5)
{
  v11 = sub_22BE367A8();
  v12 = v7 + *(type metadata accessor for TranscriptProtoSearchExpression(v11) + 32);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v7 = v6;
  *(v7 + 8) = v5;
  *(v7 + 16) = a3;
  *(v7 + 17) = a4;
  *(v7 + 18) = a5;
  return result;
}

uint64_t TranscriptProtoStructuredSearchExpression.returnType.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoStructuredSearchExpression(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoStructuredSearchExpression.StructuredSearchProperty.previousAnswerReference.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(v0) + 24);
  return sub_22BE18504();
}

void TranscriptProtoStructuredSearchExpression.StructuredSearchProperty.init(name:type:previousAnswerReference:)()
{
  sub_22BE3C358();
  sub_22BE3852C();
  v5 = sub_22BE367A8();
  v6 = *(type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(v5) + 24);
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22C0E9E10(v7, v8, v9, v10);
  *v4 = v3;
  v4[1] = v2;
  v4[2] = v1;
  v4[3] = v0;
  sub_22BE2343C();
  sub_22BE267B8();
}

uint64_t TranscriptProtoStructuredSearchExpression.init(parameters:returnType:properties:)()
{
  v3 = sub_22BE37898();
  v4 = *(type metadata accessor for TranscriptProtoStructuredSearchExpression(v3) + 24);
  sub_22C2725A4();
  sub_22BE1A140();
  sub_22C0E9DE4(v5, v6, v7, v8);
  *v2 = v1;
  result = sub_22BE2343C();
  v2[1] = v0;
  return result;
}

uint64_t TranscriptProtoUserConfirmExpression.confirmOption.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoUserConfirmExpression(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoUserConfirmExpression.dismissOption.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoUserConfirmExpression(v0) + 24);
  return sub_22BE18504();
}

void TranscriptProtoUserConfirmExpression.init(promptForUser:confirmOption:dismissOption:)()
{
  sub_22BE3C358();
  v1 = sub_22C0E9824();
  v2 = type metadata accessor for TranscriptProtoStatementID(v1);
  sub_22BE1A140();
  sub_22BE19DC4(v3, v4, v5, v2);
  v6 = type metadata accessor for TranscriptProtoUserConfirmExpression(0);
  v7 = v6[5];
  sub_22BE1A140();
  sub_22BE19DC4(v8, v9, v10, v2);
  v11 = v6[6];
  sub_22BE1A140();
  sub_22BE19DC4(v12, v13, v14, v2);
  v15 = v0 + v6[7];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE3C5E4();
  sub_22C0E9C9C();
  sub_22C0E9C9C();
  sub_22C0E9C9C();
  sub_22BE267B8();
}

uint64_t TranscriptProtoUserDisambiguateExpression.promptForUser.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoUserDisambiguateExpression(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoAnswerSynthesisExpression.query.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoAnswerSynthesisExpression(v0) + 20);
  return sub_22BE18504();
}

void static TranscriptProtoAnswerSynthesisExtractionCandidateEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v2 = type metadata accessor for TranscriptProtoStatementID(0);
  v3 = sub_22BE19448(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  v6 = sub_22BE36588();
  v7 = type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidateEnum(v6);
  v8 = sub_22BE18000(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE183AC();
  sub_22BE2351C();
  MEMORY[0x28223BE20](v11);
  sub_22C0E9BD8();
  v12 = sub_22BE5CE4C(&qword_27D909150, &unk_22C2AE7B0);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE1B72C();
  v17 = (v0 + *(v16 + 56));
  sub_22C0C2A68();
  sub_22C0C2A68();
  sub_22BE260B8();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22BE19EBC();
    sub_22C0C2A68();
    sub_22BE25C08();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_22C0E970C();
      sub_22BE36680();
      sub_22C0C1B18();
      v21 = sub_22BE1804C();
      static TranscriptProtoStatementID.== infix(_:_:)(v21, v22);
      sub_22C0C1AC4();
      sub_22BE324FC();
      sub_22C0C1AC4();
      sub_22BE41E10();
      goto LABEL_15;
    }

    sub_22C0E9918();
    sub_22C0C1AC4();
    goto LABEL_11;
  }

  sub_22BE19EBC();
  sub_22C0C2A68();
  v19 = *v1;
  v18 = v1[1];
  sub_22BE25C08();
  if (swift_getEnumCaseMultiPayload() != 1)
  {

LABEL_11:
    sub_22BE33928(v0, &qword_27D909150, &unk_22C2AE7B0);
    goto LABEL_15;
  }

  if (v19 == *v17 && v18 == v17[1])
  {
    v23 = v17[1];
  }

  else
  {
    sub_22BE1804C();
    sub_22C274014();
  }

  sub_22BE41E10();
LABEL_15:
  sub_22BE363EC();
  sub_22BE1AABC();
}

uint64_t static TranscriptProtoToolParameterValueEnum.== infix(_:_:)()
{
  sub_22BE18378();
  v2 = sub_22BE5CE4C(&qword_27D9117E8, &unk_22C2AE7C0);
  sub_22BE19448(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  v6 = MEMORY[0x28223BE20](v5);
  sub_22BE3607C(v6);
  sub_22C0C2A68();
  sub_22C0E987C();
  sub_22C0C2A68();
  sub_22C0E9C28();
  sub_22C272584();
  sub_22BE17BC4();
  v7 = sub_22C272594();
  sub_22BE18000(v7);
  v9 = *(v8 + 8);
  v9(v0 + v1, v7);
  v10 = sub_22BE1804C();
  (v9)(v10);
  return sub_22BE36384();
}

uint64_t TranscriptProtoSpanMatchedEntityStatement.entity.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSpanMatchedEntityStatement(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSpanMatchedEntityStatement.init(statementID:entity:)()
{
  v1 = sub_22BE28634();
  v2 = type metadata accessor for TranscriptProtoStatementID(v1);
  v5 = sub_22C0E966C(v0, v3, v4, v2);
  v6 = type metadata accessor for TranscriptProtoSpanMatchedEntityStatement(v5);
  v7 = sub_22BFBFCD0(v6);
  v8 = type metadata accessor for ContextProtoSpanMatchedEntity(v7);
  sub_22BE30FA8(v8);
  sub_22BE18040();
  sub_22BE2343C();
  sub_22C0E987C();
  return sub_22BE2343C();
}

uint64_t TranscriptProtoToolRetrievalResponse.retrievedTools.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t TranscriptProtoToolRetrievalResponse.types.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t TranscriptProtoToolRetrievalResponse.init(originalSubQuery:rewrittenQuery:confidence:retrievedTools:types:)(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = sub_22BE41300();
  v16 = v10 + *(type metadata accessor for TranscriptProtoToolRetrievalResponse(v15) + 36);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v10 = v9;
  *(v10 + 8) = v8;
  *(v10 + 16) = v7;
  *(v10 + 24) = a5;
  *(v10 + 32) = a1;
  *(v10 + 40) = a6;
  *(v10 + 48) = a7;
  return result;
}

uint64_t TranscriptProtoSystemResponse.responseOutput.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSystemResponse(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSystemResponse.clientQueryID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSystemResponse(v0) + 24);
  return sub_22BE18504();
}

void TranscriptProtoSystemResponse.init(responseOutput:clientQueryID:interpretedStatementResults:)()
{
  sub_22BE3C358();
  v5 = sub_22BE2597C();
  v6 = type metadata accessor for TranscriptProtoSystemResponse(v5);
  v7 = sub_22BE23ED8(v6);
  type metadata accessor for TranscriptProtoResponseOutput(v7);
  sub_22BE1A140();
  sub_22BE19DC4(v8, v9, v10, v11);
  v12 = *(v4 + 28);
  v13 = (v3 + *(v4 + 24));
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE2343C();
  *v13 = v2;
  v13[1] = v1;
  *v3 = v0;
  sub_22BE267B8();
}

uint64_t TranscriptProtoInterpretedStatementResult.resultStatementID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoInterpretedStatementResult(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoInterpretedStatementResult.originProgramStatementID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoInterpretedStatementResult(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoInterpretedStatementResult.actionEventID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoInterpretedStatementResult(v0) + 28);
  return sub_22BE18504();
}

uint64_t TranscriptProtoInterpretedStatementResult.toolID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoInterpretedStatementResult(v0) + 32);
  return sub_22BE18504();
}

uint64_t TranscriptProtoInterpretedStatementResult.originTaskStatementID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoInterpretedStatementResult(v0) + 36);
  return sub_22BE18504();
}

uint64_t TranscriptProtoInterpretedStatementResult.init(outcome:resultStatementID:originProgramStatementID:actionEventID:toolID:originTaskStatementID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_22C0E9C34();
  v8 = sub_22BE3C4D0();
  v9 = type metadata accessor for TranscriptProtoStatementOutcome(v8);
  v12 = sub_22C0E966C(v7, v10, v11, v9);
  v13 = type metadata accessor for TranscriptProtoInterpretedStatementResult(v12);
  v14 = v13[5];
  v15 = type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE1A140();
  sub_22BE19DC4(v16, v17, v18, v15);
  v19 = v13[6];
  sub_22BE1A140();
  sub_22BE19DC4(v20, v21, v22, v15);
  v23 = (v7 + v13[7]);
  v24 = (v7 + v13[8]);
  v25 = v13[9];
  sub_22BE1A140();
  sub_22BE19DC4(v26, v27, v28, v15);
  v29 = v7 + v13[10];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE33BE8();
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE2343C();
  *v23 = a4;
  v23[1] = a5;
  *v24 = a6;
  v24[1] = a7;
  return sub_22BE2343C();
}

uint64_t TranscriptProtoProgramStatement.expression.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoProgramStatement(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoProgramStatement.isRoot.setter()
{
  v2 = sub_22BE17BC4();
  result = type metadata accessor for TranscriptProtoProgramStatement(v2);
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t TranscriptProtoProgramStatement.isRoot.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoProgramStatement(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoProgramStatement.isExpanded.setter()
{
  v2 = sub_22BE17BC4();
  result = type metadata accessor for TranscriptProtoProgramStatement(v2);
  *(v1 + *(result + 28)) = v0;
  return result;
}

uint64_t TranscriptProtoProgramStatement.isExpanded.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoProgramStatement(v0) + 28);
  return sub_22BE18504();
}

uint64_t TranscriptProtoProgramStatement.canonicalIndex.setter()
{
  v2 = sub_22BE17BC4();
  result = type metadata accessor for TranscriptProtoProgramStatement(v2);
  v4 = v1 + *(result + 32);
  *v4 = v0;
  *(v4 + 4) = BYTE4(v0) & 1;
  return result;
}

uint64_t TranscriptProtoProgramStatement.canonicalIndex.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoProgramStatement(v0) + 32);
  return sub_22BE18504();
}

uint64_t TranscriptProtoProgramStatement.executionSupportType.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoProgramStatement(v0) + 36);
  return sub_22BE18504();
}

void TranscriptProtoProgramStatement.init(id:expression:isRoot:isExpanded:canonicalIndex:executionSupportType:)()
{
  sub_22BE22B9C();
  v1 = v0;
  v25 = v2;
  v26 = v3;
  sub_22BE44738();
  v5 = v4;
  sub_22BE375F8();
  v9 = sub_22C0E966C(v5, v6, v7, v8);
  v10 = type metadata accessor for TranscriptProtoProgramStatement(v9);
  v11 = sub_22C0E9B88(v10);
  type metadata accessor for TranscriptProtoExpression(v11);
  v12 = sub_22BE409A4();
  sub_22BE19DC4(v12, v13, v14, v15);
  v17 = v10[6];
  v16 = v10[7];
  v18 = v10[9];
  v19 = v5 + v10[8];
  type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType(0);
  v20 = sub_22BE3CE14();
  sub_22BE19DC4(v20, v21, v22, v23);
  v24 = v5 + v10[10];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE35838();
  sub_22BE2343C();
  sub_22BE2343C();
  *(v5 + v17) = v25;
  *(v5 + v16) = v26;
  *v19 = v1;
  *(v19 + 4) = BYTE4(v1) & 1;
  sub_22BE2343C();
  sub_22BE234D8();
}

void sub_22C0D8198()
{
  sub_22BE3C358();
  sub_22BE32384();
  v7 = sub_22BE41300();
  v9 = v6 + *(v8(v7) + 28);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v6 = v5;
  v6[1] = v4;
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v1;
  v6[5] = v0;
  sub_22BE267B8();
}

uint64_t TranscriptProtoGenderSettings.init(voiceGender:userGender:)@<X0>(char *a1@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = type metadata accessor for TranscriptProtoGenderSettings(0);
  result = sub_22BE37CF8(v6);
  *a3 = v4;
  a3[1] = v5;
  return result;
}

uint64_t TranscriptProtoDeviceDetailsDeviceType.init(rawValue:)(int a1)
{
  v3 = sub_22C0E9824();
  v4 = type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(v3);
  sub_22BE38954(v4);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v1 = a1;
  return result;
}

uint64_t TranscriptProtoDeviceDetails.type.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoDeviceDetails(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoStatementID.init(index:name:)(int a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22BE3C4D0();
  v8 = v3 + *(type metadata accessor for TranscriptProtoStatementID(v7) + 24);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

uint64_t TranscriptProtoToolResolution.statementID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoToolResolution(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoToolResolution.originProgramStatementID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoToolResolution(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoUndoRedoRequest.statementID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoUndoRedoRequest(v0) + 28);
  return sub_22BE18504();
}

uint64_t TranscriptProtoUndoRedoRequest.statementIDToUndo.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoUndoRedoRequest(v0) + 32);
  return sub_22BE18504();
}

void TranscriptProtoUndoRedoRequest.init(bundleIdentifier:token:operation:statementID:statementIDToUndo:)()
{
  sub_22BE22B9C();
  sub_22BE3CAC4();
  v5 = v4;
  v7 = *v6;
  v8 = type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  v9 = v8[7];
  v10 = type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE1A140();
  sub_22BE19DC4(v11, v12, v13, v10);
  v14 = v8[8];
  sub_22BE1A140();
  sub_22BE19DC4(v15, v16, v17, v10);
  v18 = v5 + v8[9];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v5 = v3;
  *(v5 + 8) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v0;
  *(v5 + 16) = v7;
  sub_22C0E9CCC();
  sub_22C0E9CCC();
  sub_22BE234D8();
}

uint64_t TranscriptProtoClientUndoRedoRequest.statementID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoClientUndoRedoRequest(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoClientUndoRedoRequest.statementIDToUndo.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoClientUndoRedoRequest(v0) + 28);
  return sub_22BE18504();
}

void TranscriptProtoClientUndoRedoRequest.init(token:operation:statementID:statementIDToUndo:)()
{
  sub_22BE19460();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = *v6;
  v8 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  v9 = v8[6];
  v10 = type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE1A140();
  sub_22BE19DC4(v11, v12, v13, v10);
  v14 = v8[7];
  sub_22BE1A140();
  sub_22BE19DC4(v15, v16, v17, v10);
  v18 = v5 + v8[8];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v5 = v3;
  *(v5 + 8) = v1;
  *(v5 + 16) = v7;
  sub_22C0E9CCC();
  sub_22C0E9CCC();
  sub_22BE1AABC();
}

uint64_t TranscriptProtoTypeConversionRequest.target.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoTypeConversionRequest(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoTypeConversionRequest.statementID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoTypeConversionRequest(v0) + 24);
  return sub_22BE18504();
}

void TranscriptProtoTypeConversionRequest.init(value:target:statementID:)()
{
  sub_22BE3C358();
  sub_22C0E9824();
  sub_22C272594();
  v1 = sub_22BE238E8();
  v5 = sub_22C0E966C(v1, v2, v3, v4);
  v6 = type metadata accessor for TranscriptProtoTypeConversionRequest(v5);
  v7 = v6[5];
  sub_22C2725A4();
  sub_22BE1A140();
  sub_22BE19DC4(v8, v9, v10, v11);
  v12 = v6[6];
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v13, v14, v15, v16);
  v17 = v0 + v6[7];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE3C5E4();
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE267B8();
}

uint64_t TranscriptProtoTypeConversionResult.statementID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoTypeConversionResult(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoTypeConversionResult.originStatementID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoTypeConversionResult(v0) + 24);
  return sub_22BE18504();
}

void sub_22C0D8E10()
{
  sub_22BE19460();
  v2 = v1;
  v3 = sub_22C0E9824();
  v4(v3);
  v5 = sub_22BE238E8();
  v9 = sub_22C0E966C(v5, v6, v7, v8);
  v10 = v2(v9);
  v11 = sub_22C0E9B88(v10);
  v12 = type metadata accessor for TranscriptProtoStatementID(v11);
  v13 = sub_22BE409A4();
  sub_22BE19DC4(v13, v14, v15, v12);
  v16 = *(v10 + 24);
  sub_22BE1A140();
  sub_22BE19DC4(v17, v18, v19, v12);
  v20 = v0 + *(v10 + 28);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE35838();
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE1AABC();
}

uint64_t TranscriptProtoQueryDecorationResult.toolRetrievalResponse.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoQueryDecorationResult(v0) + 28);
  return sub_22BE18504();
}

void TranscriptProtoQueryDecorationResult.init(spans:toolRetrievalResponse:dynamicEnumerationEntities:context:)()
{
  sub_22BE3C358();
  v4 = sub_22BE2597C();
  DecorationResult = type metadata accessor for TranscriptProtoQueryDecorationResult(v4);
  v6 = *(DecorationResult + 28);
  type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  sub_22BE1A140();
  sub_22BE19DC4(v7, v8, v9, v10);
  v11 = v3 + *(DecorationResult + 32);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v3 = v2;
  sub_22BE2343C();
  v3[1] = v1;
  v3[2] = v0;
  sub_22BE267B8();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResult.statementID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResult.payload.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(v0) + 24);
  return sub_22BE18504();
}

void TranscriptProtoQueryDecorationPrePlannerResult.init(statementID:dataSource:payload:)()
{
  sub_22BE3C358();
  v3 = sub_22BE2597C();
  v4 = *(type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(v3) + 20);
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v5, v6, v7, v8);
  v9 = sub_22C0E9D7C();
  type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(v9);
  sub_22BE1A140();
  sub_22C0E9C4C(v10, v11, v12, v13);
  sub_22BE2343C();
  *v2 = v1;
  v2[1] = v0;
  sub_22BE2343C();
  sub_22BE267B8();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant.values.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

void static TranscriptProtoQueryDecorationPrePlannerPayloadEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v8 = sub_22BE46DA4(v6, v7);
  DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant(v8);
  v9 = sub_22BE18000(DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE17A44();
  v13 = sub_22C0E9724(v12);
  DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant(v13);
  v14 = sub_22BE18000(DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE17A44();
  v18 = sub_22BE28E74(v17);
  DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant(v18);
  v19 = sub_22BE18000(DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE17A44();
  v81 = v22;
  v23 = sub_22BE183BC();
  DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant(v23);
  v24 = sub_22BE18000(DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22BE17A44();
  v28 = sub_22BE48A8C(v27);
  DecorationPrePlannerResultPayloadRepeatedTypedValueVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant(v28);
  v29 = sub_22BE18000(DecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BE17A44();
  v79 = v32;
  v33 = sub_22BE183BC();
  DecorationPrePlannerResultPayloadRepeatedStringVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant(v33);
  v34 = sub_22BE18000(DecorationPrePlannerResultPayloadRepeatedStringVariant);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BE17A44();
  v78 = v37;
  v38 = sub_22BE183BC();
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(v38);
  v40 = sub_22BE18000(DecorationPrePlannerPayloadEnum);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22BE183AC();
  sub_22BE28C8C();
  MEMORY[0x28223BE20](v43);
  sub_22BE2390C();
  MEMORY[0x28223BE20](v44);
  sub_22BE23858();
  MEMORY[0x28223BE20](v45);
  sub_22BE2017C();
  MEMORY[0x28223BE20](v46);
  sub_22BE1B604();
  MEMORY[0x28223BE20](v47);
  sub_22BE25A90();
  v48 = sub_22BE5CE4C(&qword_27D9117F0, &unk_22C2AE800);
  sub_22BE19448(v48);
  v50 = *(v49 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v51);
  sub_22BE1B72C();
  v53 = *(v52 + 56);
  sub_22C0C2A68();
  sub_22C0E9D34();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE383A8();
      sub_22C0C2A68();
      if (sub_22BE36558() != 1)
      {
        sub_22C0E9918();
        goto LABEL_28;
      }

      sub_22BE3D6A0();
      sub_22C0C1B18();
      v65 = *v1;
      v66 = *v79;
      sub_22BE98DD8();
      if (v67)
      {
        sub_22C0E9F44(DecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
        sub_22C0C1B6C();
        sub_22C0E9AD0();
      }

      sub_22BE41E6C();
      sub_22C0C1AC4();
      goto LABEL_37;
    case 2u:
      sub_22BE383A8();
      sub_22C0C2A68();
      if (sub_22BE36558() != 2)
      {
        sub_22C0E9830();
        goto LABEL_28;
      }

      sub_22BE3D6A0();
      sub_22BE39F80();
      sub_22C0E9E3C();
      sub_22BE9776C();
      if (v57)
      {
        sub_22BEC0A84(DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
        sub_22C0C1B6C();
        sub_22BE39EB8();
      }

      sub_22C0E996C();
      sub_22C0C1AC4();
      goto LABEL_37;
    case 3u:
      sub_22BE383A8();
      sub_22C0C2A68();
      if (sub_22BE36558() != 3)
      {
        sub_22BE3ACD8();
        goto LABEL_28;
      }

      sub_22BE3D6A0();
      sub_22C0E9B7C();
      sub_22C0C1B18();
      sub_22BE969C8(*v5, *v2, v58, v59, v60, v61, v62, v63, DecorationPrePlannerResultPayloadRepeatedStringVariant, DecorationPrePlannerResultPayloadRepeatedTypedValueVariant, DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant, DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant, DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant, DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant, v78, v79, v80, v81, v82, v83);
      if (v64)
      {
        sub_22BEC0A84(v75);
        sub_22C0C1B6C();
        sub_22BE32E64();
      }

      sub_22BE377B0();
      sub_22C0C1AC4();
      goto LABEL_37;
    case 4u:
      sub_22BE383A8();
      sub_22C0C2A68();
      if (sub_22BE36558() != 4)
      {
        sub_22C0E9848();
        goto LABEL_28;
      }

      sub_22BE3D6A0();
      sub_22C0E9A68();
      sub_22C0C1B18();
      v54 = *v3;
      v55 = *v2;
      sub_22BE98FD4();
      if (v56)
      {
        sub_22BEC0A84(DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
        sub_22C0C1B6C();
        sub_22C0E99FC();
      }

      sub_22C0E9984();
      sub_22C0C1AC4();
      goto LABEL_37;
    case 5u:
      sub_22BE383A8();
      sub_22C0C2A68();
      if (sub_22BE36558() != 5)
      {
        goto LABEL_28;
      }

      sub_22BE3D6A0();
      sub_22C0E9A5C();
      sub_22C0C1B18();
      v68 = *v4;
      v69 = *v2;
      sub_22BEA1204();
      if (v70)
      {
        sub_22BEC0A84(DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
        sub_22C0C1B6C();
        sub_22BE3C224();
      }

      sub_22BE33710();
      sub_22C0C1AC4();
      goto LABEL_37;
    default:
      sub_22BE383A8();
      sub_22C0C2A68();
      if (sub_22BE36558())
      {
        sub_22BE379D8();
LABEL_28:
        sub_22C0C1AC4();
        sub_22BE33928(v0, &qword_27D9117F0, &unk_22C2AE800);
      }

      else
      {
        sub_22BE3D6A0();
        sub_22C0C1B18();
        if (sub_22BE9693C(*v2, *v78))
        {
          sub_22BEC0A84(DecorationPrePlannerResultPayloadRepeatedStringVariant);
          sub_22C0C1B6C();
          sub_22C0E9E64();
        }

        sub_22C0E999C();
        sub_22C0C1AC4();
LABEL_37:
        sub_22C0C1AC4();
        sub_22BE26148();
        sub_22C0C1AC4();
      }

      sub_22BE1AABC();
      return;
  }
}

uint64_t TranscriptProtoExecutionPreconditionEvaluatorRequest.request.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(v0) + 20);
  return sub_22BE18504();
}

void static TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE39FFC();
  v2 = type metadata accessor for TranscriptProtoClientAction(v1);
  v3 = sub_22BE19448(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  v6 = sub_22BE36588();
  v7 = type metadata accessor for TranscriptProtoAction(v6);
  v8 = sub_22BE19448(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = sub_22BE35598();
  v12 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum(v11);
  v13 = sub_22BE18000(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE183AC();
  sub_22BE20324();
  MEMORY[0x28223BE20](v16);
  sub_22BE181E4();
  v17 = sub_22BE5CE4C(&qword_27D9117F8, &qword_22C2AE818);
  sub_22BE19448(v17);
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE1B72C();
  v22 = *(v21 + 56);
  sub_22C0C2A68();
  sub_22C0C2A68();
  sub_22BE1B62C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22BE19EBC();
    sub_22C0C2A68();
    if (sub_22C0E9EFC() == 1)
    {
      sub_22BE3D6A0();
      sub_22C0C1B18();
      sub_22BE3C5E4();
      static TranscriptProtoClientAction.== infix(_:_:)();
      sub_22C0C1AC4();
      sub_22BE1C2A0();
LABEL_9:
      sub_22C0C1AC4();
      sub_22BE26148();
      sub_22C0C1AC4();
      goto LABEL_10;
    }

    sub_22C0E98B8();
  }

  else
  {
    sub_22BE19EBC();
    sub_22C0C2A68();
    if (sub_22C0E9EFC() != 1)
    {
      sub_22BE3D6A0();
      sub_22C0C1B18();
      static TranscriptProtoAction.== infix(_:_:)();
      sub_22C0C1AC4();
      sub_22BE431C0();
      goto LABEL_9;
    }

    sub_22C0E9830();
  }

  sub_22C0C1AC4();
  sub_22BE33928(v0, &qword_27D9117F8, &qword_22C2AE818);
LABEL_10:
  sub_22BE1AABC();
}

uint64_t TranscriptProtoRequestAmendment.content.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoRequestAmendment(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoIntermediateSystemResponse.responseOutput.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoIntermediateSystemResponse(v0) + 20);
  return sub_22BE18504();
}

uint64_t sub_22C0DA218()
{
  v0 = sub_22BE2BB48();
  v2 = v1(v0);
  sub_22BE36160(*(v2 + 24));
  return sub_22BE19454();
}

uint64_t sub_22C0DA264()
{
  v3 = sub_22BE23708();
  v5 = v4(v3);
  result = sub_22BE1AFA8(*(v5 + 24));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TranscriptProtoIntermediateSystemResponse.clientQueryID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoIntermediateSystemResponse(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoIntermediateSystemResponse.statementID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoIntermediateSystemResponse(v0) + 28);
  return sub_22BE18504();
}

uint64_t TranscriptProtoIntermediateSystemResponse.actionEventID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoIntermediateSystemResponse(v0) + 32);
  return sub_22BE18504();
}

void TranscriptProtoIntermediateSystemResponse.init(responseOutput:clientQueryID:toolID:statementID:actionEventID:)()
{
  sub_22C0E9E48();
  v25 = v2;
  v26 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_22C0E9C34();
  v10 = sub_22BE3C4D0();
  v11 = type metadata accessor for TranscriptProtoIntermediateSystemResponse(v10);
  v12 = v11[5];
  type metadata accessor for TranscriptProtoResponseOutput(0);
  sub_22BE1A140();
  sub_22BE19DC4(v13, v14, v15, v16);
  v17 = v11[7];
  v18 = (v0 + v11[6]);
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v19, v20, v21, v22);
  v23 = v11[9];
  v24 = (v0 + v11[8]);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE2343C();
  *v18 = v1;
  v18[1] = v9;
  *v0 = v7;
  v0[1] = v5;
  sub_22BE2343C();
  *v24 = v25;
  v24[1] = v26;
  sub_22BE3E534();
}

uint64_t TranscriptProtoIntermediateSystemResponseRendered.statementID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoIntermediateSystemResponseRendered.actionEventID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered(v0) + 28);
  return sub_22BE18504();
}

void TranscriptProtoIntermediateSystemResponseRendered.init(renderedResponse:toolID:statementID:actionEventID:)()
{
  sub_22BE19460();
  sub_22BE32384();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered(0);
  v11 = v10[6];
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v12, v13, v14, v15);
  v16 = v10[8];
  v17 = (v9 + v10[7]);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v9 = v7;
  *(v9 + 8) = v5;
  *(v9 + 16) = v3;
  sub_22BE2343C();
  *v17 = v1;
  v17[1] = v0;
  sub_22BE1AABC();
}

uint64_t static TranscriptProtoAgentRequestEnum.== infix(_:_:)()
{
  sub_22BE18378();
  v0 = sub_22BE5CE4C(&qword_27D911800, &qword_22C2AE828);
  sub_22BE19448(v0);
  v2 = *(v1 + 64);
  sub_22BE179FC();
  v4 = MEMORY[0x28223BE20](v3);
  sub_22BE3607C(v4);
  sub_22C0C2A68();
  sub_22C0E987C();
  sub_22C0C2A68();
  sub_22C0E9C28();
  static TranscriptProtoRequest.== infix(_:_:)();
  sub_22C0C1AC4();
  sub_22BE1804C();
  sub_22C0C1AC4();
  return sub_22BE36384();
}

uint64_t TranscriptProtoAgentHandoffRequest.request.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoAgentHandoffRequest(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoAgentPrimitiveAction.primiviteAction.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoAgentPrimitiveAction(v0) + 20);
  return sub_22BE18504();
}

void static TranscriptProtoPrimitiveActionEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE39FFC();
  v2 = type metadata accessor for TranscriptProtoAgentYieldRequest(v1);
  v3 = sub_22BE19448(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE17A44();
  v6 = sub_22BE183BC();
  v7 = type metadata accessor for TranscriptProtoAgentPassRequest(v6);
  v8 = sub_22BE19448(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE179EC();
  v11 = sub_22BE36588();
  v12 = type metadata accessor for TranscriptProtoAgentHandoffRequest(v11);
  v13 = sub_22BE19448(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE179EC();
  v16 = sub_22BE37EA4();
  v17 = type metadata accessor for TranscriptProtoPrimitiveActionEnum(v16);
  v18 = sub_22BE18000(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE183AC();
  sub_22BE20324();
  MEMORY[0x28223BE20](v21);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v22);
  sub_22BE324EC();
  v23 = sub_22BE5CE4C(&qword_27D911808, &qword_22C2AE848);
  sub_22BE19448(v23);
  v25 = *(v24 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE1B72C();
  v28 = *(v27 + 56);
  sub_22C0C2A68();
  sub_22C0C2A68();
  sub_22BE1B62C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22C0E96F0();
      sub_22C0C2A68();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_22BE47E00();
        sub_22C0C1B18();
        static TranscriptProtoAgentPassRequest.== infix(_:_:)();
        sub_22C0C1AC4();
LABEL_12:
        sub_22C0C1AC4();
        sub_22BE26148();
        sub_22C0C1AC4();
        goto LABEL_13;
      }

      sub_22BE20118();
    }

    else
    {
      sub_22C0E96F0();
      sub_22C0C2A68();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_22BE47E00();
        sub_22C0C1B18();
        sub_22C2704B4();
        sub_22C0C1B6C();
        sub_22BE36258();
        sub_22C0C1AC4();
        goto LABEL_12;
      }
    }
  }

  else
  {
    sub_22C0E96F0();
    sub_22C0C2A68();
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22BE47E00();
      sub_22C0C1B18();
      static TranscriptProtoAgentHandoffRequest.== infix(_:_:)();
      sub_22C0C1AC4();
      goto LABEL_12;
    }

    sub_22BE3E76C();
  }

  sub_22C0C1AC4();
  sub_22BE33928(v0, &qword_27D911808, &qword_22C2AE848);
LABEL_13:
  sub_22BE1AABC();
}

unint64_t sub_22C0DAEAC()
{
  result = qword_27D911810;
  if (!qword_27D911810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911810);
  }

  return result;
}

unint64_t sub_22C0DAF34()
{
  result = qword_27D911828;
  if (!qword_27D911828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911828);
  }

  return result;
}

unint64_t sub_22C0DAFBC()
{
  result = qword_27D911840;
  if (!qword_27D911840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911840);
  }

  return result;
}

unint64_t sub_22C0DB044()
{
  result = qword_27D911858;
  if (!qword_27D911858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911858);
  }

  return result;
}

unint64_t sub_22C0DB0CC()
{
  result = qword_27D911870;
  if (!qword_27D911870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911870);
  }

  return result;
}

unint64_t sub_22C0DB154()
{
  result = qword_27D911888;
  if (!qword_27D911888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911888);
  }

  return result;
}

unint64_t sub_22C0DB1DC()
{
  result = qword_27D9118A0;
  if (!qword_27D9118A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9118A0);
  }

  return result;
}

unint64_t sub_22C0DB264()
{
  result = qword_27D9118B8;
  if (!qword_27D9118B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9118B8);
  }

  return result;
}

unint64_t sub_22C0DB2EC()
{
  result = qword_27D9118D0;
  if (!qword_27D9118D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9118D0);
  }

  return result;
}

unint64_t sub_22C0DB374()
{
  result = qword_27D9118E8;
  if (!qword_27D9118E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9118E8);
  }

  return result;
}

unint64_t sub_22C0DB3FC()
{
  result = qword_27D911900;
  if (!qword_27D911900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911900);
  }

  return result;
}

unint64_t sub_22C0DB484()
{
  result = qword_27D911918;
  if (!qword_27D911918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911918);
  }

  return result;
}

unint64_t sub_22C0DB50C()
{
  result = qword_27D911930;
  if (!qword_27D911930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911930);
  }

  return result;
}

unint64_t sub_22C0DB594()
{
  result = qword_27D911948;
  if (!qword_27D911948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911948);
  }

  return result;
}

unint64_t sub_22C0DB5EC()
{
  result = qword_27D911950;
  if (!qword_27D911950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911950);
  }

  return result;
}

unint64_t sub_22C0DB674()
{
  result = qword_27D911968;
  if (!qword_27D911968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911968);
  }

  return result;
}

unint64_t sub_22C0DB6CC()
{
  result = qword_27D911970;
  if (!qword_27D911970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911970);
  }

  return result;
}

unint64_t sub_22C0DB724()
{
  result = qword_27D911978;
  if (!qword_27D911978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911978);
  }

  return result;
}

unint64_t sub_22C0DB77C()
{
  result = qword_27D911980;
  if (!qword_27D911980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911980);
  }

  return result;
}

unint64_t sub_22C0DB804()
{
  result = qword_27D911998;
  if (!qword_27D911998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911998);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TranscriptProtoPlanSource(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for TranscriptProtoResponseType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22C0DBA64(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xEE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xED)
  {
    v6 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
    switch(v5)
    {
      case 1:
        result = sub_22BE22DB0(result, v6);
        break;
      case 2:
        result = sub_22BE18058(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_22BE25EF4(result, v6);
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
          result = sub_22BE22BD0(result, a2 + 18);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22C0DBBA8()
{
  sub_22C0DBDCC();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_22C0E66A4(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_22C0DBE2C(319, qword_281079880, type metadata accessor for TranscriptProtoPayload, MEMORY[0x277D83D88]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_22C0DBE2C(319, qword_281078C10, type metadata accessor for TranscriptProtoTimepoint, MEMORY[0x277D83D88]);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_22C0DBE2C(319, qword_281076BB8, type metadata accessor for TranscriptProtoParticipantID, MEMORY[0x277D83D88]);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_22C0DBE2C(319, qword_28107A2E0, type metadata accessor for TranscriptProtoSpanID, MEMORY[0x277D83D88]);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              v1 = sub_22C2704B4();
              if (v13 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_22C0DBDCC()
{
  if (!qword_28106DE30)
  {
    v0 = sub_22C272EC4();
    if (!v1)
    {
      atomic_store(v0, &qword_28106DE30);
    }
  }
}

void sub_22C0DBE2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22C0DBEC4()
{
  result = type metadata accessor for TranscriptProtoSessionStart(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoUserTurnStarted(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoSpeechPartialResult(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for TranscriptProtoRequest(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for TranscriptProtoPlan(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for TranscriptProtoAction(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for TranscriptProtoClientAction(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for TranscriptProtoQueryStep(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for TranscriptProtoVariableStep(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for TranscriptProtoSessionError(319);
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for TranscriptProtoRecoverableError(319);
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for TranscriptProtoQueryStepResults(319);
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for TranscriptProtoActionResolverRequest(319);
                          if (v13 <= 0x3F)
                          {
                            result = type metadata accessor for TranscriptProtoSafetyModeRelease(319);
                            if (v14 <= 0x3F)
                            {
                              result = type metadata accessor for TranscriptProtoSafetyModeException(319);
                              if (v15 <= 0x3F)
                              {
                                result = type metadata accessor for TranscriptProtoResponseGenerationRequest(319);
                                if (v16 <= 0x3F)
                                {
                                  result = type metadata accessor for TranscriptProtoEntitySpanMatchResult(319);
                                  if (v17 <= 0x3F)
                                  {
                                    result = type metadata accessor for TranscriptProtoContextRetrieved(319);
                                    if (v18 <= 0x3F)
                                    {
                                      result = type metadata accessor for TranscriptProtoActionCancellation(319);
                                      if (v19 <= 0x3F)
                                      {
                                        result = type metadata accessor for TranscriptProtoToolRetrievalResponse(319);
                                        if (v20 <= 0x3F)
                                        {
                                          result = type metadata accessor for TranscriptProtoSystemResponse(319);
                                          if (v21 <= 0x3F)
                                          {
                                            result = type metadata accessor for TranscriptProtoStatementResult(319);
                                            if (v22 <= 0x3F)
                                            {
                                              result = type metadata accessor for TranscriptProtoExternalAgentRequest(319);
                                              if (v23 <= 0x3F)
                                              {
                                                result = type metadata accessor for TranscriptProtoExternalAgentOutcome(319);
                                                if (v24 <= 0x3F)
                                                {
                                                  result = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(319);
                                                  if (v25 <= 0x3F)
                                                  {
                                                    result = type metadata accessor for TranscriptProtoToolResolution(319);
                                                    if (v26 <= 0x3F)
                                                    {
                                                      result = type metadata accessor for TranscriptProtoUndoRedoRequest(319);
                                                      if (v27 <= 0x3F)
                                                      {
                                                        result = type metadata accessor for TranscriptProtoClientUndoRedoRequest(319);
                                                        if (v28 <= 0x3F)
                                                        {
                                                          result = type metadata accessor for TranscriptProtoTypeConversionRequest(319);
                                                          if (v29 <= 0x3F)
                                                          {
                                                            result = type metadata accessor for TranscriptProtoTypeConversionResult(319);
                                                            if (v30 <= 0x3F)
                                                            {
                                                              result = type metadata accessor for TranscriptProtoQueryDecorationResult(319);
                                                              if (v31 <= 0x3F)
                                                              {
                                                                result = type metadata accessor for TranscriptProtoContinuePlanning(319);
                                                                if (v32 <= 0x3F)
                                                                {
                                                                  result = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(319);
                                                                  if (v33 <= 0x3F)
                                                                  {
                                                                    result = type metadata accessor for TranscriptProtoSkipStatement(319);
                                                                    if (v34 <= 0x3F)
                                                                    {
                                                                      result = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(319);
                                                                      if (v35 <= 0x3F)
                                                                      {
                                                                        result = type metadata accessor for TranscriptProtoRequestAmendment(319);
                                                                        if (v36 <= 0x3F)
                                                                        {
                                                                          result = type metadata accessor for TranscriptProtoToolRetrievalRequest(319);
                                                                          if (v37 <= 0x3F)
                                                                          {
                                                                            result = type metadata accessor for TranscriptProtoContextRetrievalRequest(319);
                                                                            if (v38 <= 0x3F)
                                                                            {
                                                                              result = type metadata accessor for TranscriptProtoSpanMatchRequest(319);
                                                                              if (v39 <= 0x3F)
                                                                              {
                                                                                result = type metadata accessor for TranscriptProtoIntermediateSystemResponse(319);
                                                                                if (v40 <= 0x3F)
                                                                                {
                                                                                  result = type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered(319);
                                                                                  if (v41 <= 0x3F)
                                                                                  {
                                                                                    result = type metadata accessor for TranscriptProtoAgentPrimitiveAction(319);
                                                                                    if (v42 <= 0x3F)
                                                                                    {
                                                                                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                                                                      return 0;
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

  return result;
}

void sub_22C0DC280()
{
  sub_22C0DBE2C(319, &qword_27D9119B0, type metadata accessor for TranscriptProtoEvent, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22C0E66A4(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C2704B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C0DC380()
{
  sub_22C0DBE2C(319, &qword_28107F1D8, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22C2704B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C0DC47C()
{
  sub_22C0DBE2C(319, qword_281075F90, type metadata accessor for TranscriptProtoLocaleSettings, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_281076DA8, type metadata accessor for TranscriptProtoDeviceDetails, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C0DBE2C(319, qword_281076068, type metadata accessor for TranscriptProtoGenderSettings, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_22C0E66A4(319, &qword_28106DBD0, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_22C2704B4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22C0DC688()
{
  sub_22C0DBE2C(319, qword_281077EF0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_281078FE8, type metadata accessor for TranscriptProtoUserTurn, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C0DBE2C(319, qword_28107E7A0, type metadata accessor for ContextProtoStructuredContextSiriRequestContext, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_22C2704B4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22C0DC940()
{
  sub_22C0DBE2C(319, qword_281075D08, type metadata accessor for TranscriptProtoRequestContent, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_281072398, type metadata accessor for TranscriptProtoRequestPrescribedPlan, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C0E66A4(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_22C0DBE2C(319, qword_28106F940, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_22C0DBE2C(319, qword_28107E7A0, type metadata accessor for ContextProtoStructuredContextSiriRequestContext, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_22C0DBE2C(319, qword_281070CB8, type metadata accessor for TranscriptProtoRequestSuggestedInvocation, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_22C0DBE2C(319, qword_2810756F0, type metadata accessor for TranscriptProtoDateTimeContext, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_22C2704B4();
                if (v7 <= 0x3F)
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
}

uint64_t sub_22C0DCD0C()
{
  sub_22C0DBE2C(319, qword_281076690, type metadata accessor for TranscriptProtoSpeechPackage, MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_281077EF0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      v1 = sub_22C2704B4();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t sub_22C0DCF6C()
{
  result = sub_22C2704B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22C0DD02C()
{
  sub_22C0DBE2C(319, qword_281075D08, type metadata accessor for TranscriptProtoRequestContent, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22C0E66A4(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C0DBE2C(319, qword_28106F940, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_22C2704B4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22C0DD18C()
{
  v0 = sub_22C0E9DAC();
  sub_22C0E66A4(v0, v1, v2, v3);
  if (v4 <= 0x3F)
  {
    sub_22BE39730();
    sub_22C2704B4();
    if (v5 <= 0x3F)
    {
      sub_22C0E9B64();
      sub_22BE22E88();
      swift_cvw_initStructMetadataWithLayoutString();
      sub_22BEE94D4();
    }
  }
}

uint64_t sub_22C0DD26C()
{
  result = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(319);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_22C0DD3F8()
{
  sub_22C0E66A4(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22C2704B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C0DD4D8(uint64_t a1)
{
  sub_22C0E9A1C(a1, &qword_28106DDD8, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_22C2704B4();
    if (v2 <= 0x3F)
    {
      sub_22BE22E88();
      swift_cvw_initStructMetadataWithLayoutString();
      sub_22BEE94D4();
    }
  }
}

void sub_22C0DD5BC()
{
  sub_22C0DBE2C(319, qword_281077EF0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22C0E66A4(319, &qword_28106DAD8, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C2704B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C0DD6FC()
{
  sub_22C0E97DC();
  v0 = sub_22C0E9DAC();
  sub_22C0E66A4(v0, v1, v2, v3);
  if (v4 <= 0x3F)
  {
    sub_22BE39730();
    sub_22C2704B4();
    if (v5 <= 0x3F)
    {
      sub_22BE22E88();
      swift_cvw_initStructMetadataWithLayoutString();
      sub_22BEE94D4();
    }
  }
}

void sub_22C0DD798()
{
  sub_22C0DDB34(319, &qword_28106DE58, type metadata accessor for TranscriptProtoActionParameterValue);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_281077EF0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C0E66A4(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_22C0DBE2C(319, qword_281072CD8, type metadata accessor for TranscriptProtoGlobalToolIdentifier, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_22C2704B4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22C0DD94C()
{
  sub_22C0DBE2C(319, qword_2810739A8, type metadata accessor for TranscriptProtoToolParameterValue, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_281075490, type metadata accessor for TranscriptProtoPromptSelection, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C2704B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C0DDB34(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_22BE1C2A0();
    v4 = sub_22C272EC4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22C0DDBF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_22BE53788);
}

uint64_t sub_22C0DDC50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_22BE5379C);
}

_BYTE *sub_22C0DDD70(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_22BE22DB0(result, v6);
        break;
      case 2:
        result = sub_22BE18058(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_22BE25EF4(result, v6);
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
          result = sub_22BE22BD0(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

void sub_22C0DDE64()
{
  sub_22C0DBE2C(319, &qword_28106DF48, MEMORY[0x277D727E0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_281075490, type metadata accessor for TranscriptProtoPromptSelection, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C2704B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C0DDF88()
{
  sub_22C0DBE2C(319, &qword_28106DC28, MEMORY[0x277D72898], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22C0E66A4(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C2704B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C0DE0A0()
{
  sub_22C0E66A4(319, &qword_28106DBF0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_281077EF0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C0DBE2C(319, qword_281074488, type metadata accessor for TranscriptProtoStatementOutcome, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_22C2704B4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22C0DE200()
{
  sub_22C0DBE2C(319, qword_281074488, type metadata accessor for TranscriptProtoStatementOutcome, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_281074730, type metadata accessor for TranscriptProtoResponseManifest, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C2704B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C0DE324()
{
  sub_22C0E66A4(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_281071E18, type metadata accessor for TranscriptProtoStatementResultPayload, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C0DBE2C(319, qword_281077EF0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_22C0DBE2C(319, qword_281072CD8, type metadata accessor for TranscriptProtoGlobalToolIdentifier, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_22C2704B4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22C0DE530()
{
  sub_22C0DBE2C(319, &qword_28106DF48, MEMORY[0x277D727E0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_281072730, type metadata accessor for TranscriptProtoCandidatePromptStatus, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C0DBE2C(319, qword_281077EF0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_22C2704B4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22C0DE70C()
{
  sub_22C0DDB34(319, &qword_28106DE48, MEMORY[0x277D727E0]);
  if (v0 <= 0x3F)
  {
    sub_22C0DDB34(319, &qword_28106DE60, type metadata accessor for TranscriptProtoShimParameters);
    if (v1 <= 0x3F)
    {
      sub_22C0E66A4(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_22C0DBE2C(319, qword_281077EF0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_22C2704B4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_22C0DE9C0()
{
  sub_22C0E9DA0();
  v3 = v2;
  v4 = sub_22BE3CD70();
  result = v5(v4);
  if (v7 <= 0x3F)
  {
    result = v3(319);
    if (v8 <= 0x3F)
    {
      result = v1(319);
      if (v9 <= 0x3F)
      {
        v10 = sub_22BE39730();
        result = v0(v10);
        if (v11 <= 0x3F)
        {
          sub_22BE3CA30();
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return sub_22BEE94D4();
        }
      }
    }
  }

  return result;
}

uint64_t sub_22C0DEAB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_22C0E9A1C(a1, &qword_28106DDD8, MEMORY[0x277D837D0]);
  v8 = v7;
  if (v9 <= 0x3F)
  {
    v10 = sub_22BE26A40();
    sub_22C0DBE2C(v10, a4, a5, v11);
    if (v13 > 0x3F)
    {
      return v12;
    }

    else
    {
      v8 = sub_22C2704B4();
      if (v14 <= 0x3F)
      {
        sub_22BE22E88();
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v8;
}

void sub_22C0DEC1C()
{
  sub_22C0DBE2C(319, &qword_28106DC30, MEMORY[0x277D727E0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22C0E66A4(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C2704B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C0DED34()
{
  sub_22C0DBE2C(319, qword_281077EF0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_281072CD8, type metadata accessor for TranscriptProtoGlobalToolIdentifier, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C2704B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22C0DEF90()
{
  result = type metadata accessor for TranscriptProtoIntelligenceFlowError(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C0DF078()
{
  v0 = type metadata accessor for TranscriptProtoIntelligenceFlowError(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_22C0DF12C()
{
  result = type metadata accessor for TranscriptProtoIntelligenceFlowError(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C0DF2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  v8 = sub_22BE3CD70();
  result = v9(v8);
  if (v11 <= 0x3F)
  {
    result = a5(319);
    if (v12 <= 0x3F)
    {
      v13 = sub_22BE39730();
      result = a6(v13);
      if (v14 <= 0x3F)
      {
        sub_22C0E9B64();
        sub_22BE3CA30();
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return sub_22BEE94D4();
      }
    }
  }

  return result;
}

uint64_t sub_22C0DF44C(unsigned __int8 *a1, int a2)
{
  if (a2 == 252)
  {
    v2 = *a1;
    if (v2 <= 3)
    {
      v3 = 3;
    }

    else
    {
      v3 = *a1;
    }

    v4 = v3 - 3;
    if (v2 >= 3)
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22BE27A38();
    sub_22C2704B4();
    v6 = sub_22C0E96A0();

    return sub_22BE1AEA8(v6, v7, v8);
  }
}

void sub_22C0DF4DC()
{
  sub_22BE18378();
  if (v2 == 252)
  {
    *v1 = v0 + 3;
  }

  else
  {
    sub_22BE294C8();
    v3 = sub_22BE3D1CC();

    sub_22BE19DC4(v3, v4, v5, v6);
  }
}

void sub_22C0DF59C()
{
  sub_22C0E66A4(319, &qword_28106DBC8, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22C0E66A4(319, &qword_28106DAD8, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C2704B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22C0DF6E0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_22BE39E30(-1);
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return sub_22BE39E30((*a1 | (v4 << 8)) - 8);
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

      return sub_22BE39E30((*a1 | (v4 << 8)) - 8);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_22BE39E30((*a1 | (v4 << 8)) - 8);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_22BE39E30(v8);
}

_BYTE *sub_22C0DF764(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_22BE22DB0(result, v6);
        break;
      case 2:
        result = sub_22BE18058(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_22BE25EF4(result, v6);
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
          result = sub_22BE22BD0(result, a2 + 7);
        }

        break;
    }
  }

  return result;
}

void sub_22C0DF858()
{
  sub_22C0DBE2C(319, qword_28107E3B0, type metadata accessor for TranscriptProtoActionFailureFailure, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_281077EF0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C2704B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22C0DF9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = sub_22BE3CD70();
  result = v7(v6);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      sub_22BE3CA30();
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return sub_22BEE94D4();
    }
  }

  return result;
}

void sub_22C0DFADC()
{
  sub_22C0DBE2C(319, &qword_28106DF48, MEMORY[0x277D727E0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_281077E50, type metadata accessor for TranscriptProtoUndoContext, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C0DBE2C(319, qword_281076108, type metadata accessor for TranscriptProtoFollowUpAction, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_22C0E66A4(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_22C0DBE2C(319, qword_281077EF0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_22C2704B4();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_22C0DFD90()
{
  v1 = sub_22BE3CD70();
  v3 = v2(v1);
  if (v4 <= 0x3F)
  {
    sub_22BE3CA30();
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(v0 - 8) + 84) = *(*(v3 - 8) + 84);
    return 0;
  }

  return v3;
}

void sub_22C0DFE98()
{
  sub_22C0E66A4(319, &qword_28106DAD8, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, &qword_28106DF48, MEMORY[0x277D727E0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C2704B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C0DFFC0()
{
  sub_22C0DBE2C(319, &qword_28106DC30, MEMORY[0x277D727E0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22C0E66A4(319, &qword_28106DAD8, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C2704B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22C0E011C()
{
  result = type metadata accessor for TranscriptProtoActionSuccess(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoActionConfirmation(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoParameterNeedsValue(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for TranscriptProtoParameterConfirmation(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for TranscriptProtoParameterDisambiguation(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for TranscriptProtoParameterNotAllowed(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for TranscriptProtoParameterCandidatesNotFound(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for TranscriptProtoActionRequirement(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for TranscriptProtoToolDisambiguation(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for TranscriptProtoActionFailure(319);
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for TranscriptProtoValueDisambiguation(319);
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for TranscriptProtoSnippetStream(319);
                        if (v12 <= 0x3F)
                        {
                          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                          return 0;
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

  return result;
}

void sub_22C0E0280()
{
  sub_22C0DBE2C(319, &qword_28106DF40, MEMORY[0x277D72800], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_281070DE8, type metadata accessor for TranscriptProtoParameterNeedsValueContext, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C2704B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22C0E03E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_22BE3225C);
}

uint64_t sub_22C0E0440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_22BE3B29C);
}

void sub_22C0E0538()
{
  sub_22C0E9BC8();
  v0 = sub_22BE26A40();
  sub_22C0DBE2C(v0, v1, v2, v3);
  if (v4 <= 0x3F)
  {
    sub_22C2704B4();
    if (v5 <= 0x3F)
    {
      sub_22BE22E88();
      swift_cvw_initStructMetadataWithLayoutString();
      sub_22BEE94D4();
    }
  }
}

_BYTE *sub_22C0E05C0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_22BE22DB0(result, v6);
        break;
      case 2:
        result = sub_22BE18058(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_22BE25EF4(result, v6);
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
          result = sub_22BE22BD0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

void sub_22C0E0724()
{
  sub_22C0DBE2C(319, &qword_28106DCA0, type metadata accessor for TranscriptProtoProgramStatement, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22C0E66A4(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C0E66A4(319, qword_281078500, &type metadata for TranscriptProtoPlanSource, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_22C2704B4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_22C0E08BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoPlanGenerationError(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_22BE54C68);
}

uint64_t sub_22C0E0914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TranscriptProtoPlanGenerationError(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_22BE54C7C);
}

uint64_t sub_22C0E09F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_22BE54C90);
}

uint64_t sub_22C0E0A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_22BE54CA4);
}

void sub_22C0E0B9C()
{
  sub_22C0DBE2C(319, qword_281077EF0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_281071EB8, type metadata accessor for TranscriptProtoActionParameterContext, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C0DBE2C(319, qword_281077560, type metadata accessor for TranscriptProtoQueryPayload, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_22C2704B4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22C0E0E00()
{
  sub_22C0E66A4(319, &qword_28106DBF0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, &qword_28106DF30, MEMORY[0x277D72830], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C2704B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22C0E0F18()
{
  result = type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoPersonQuery(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoQueryPayload.StringQuery(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_22C0E0FF0()
{
  sub_22C0DBE2C(319, &qword_28106DD00, type metadata accessor for TranscriptProtoQueryResults, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_281077EF0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C2704B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C0E111C()
{
  sub_22C0E66A4(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22C2704B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C0E11FC()
{
  sub_22C0DBE2C(319, &qword_28106DCF8, type metadata accessor for TranscriptProtoVisualOutput, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, &qword_28106DD28, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_22C0DBE2C(319, &qword_28106DC38, MEMORY[0x277D727C8], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_22C0DBE2C(319, qword_2810785F8, type metadata accessor for TranscriptProtoDialogType, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_22C0DBE2C(319, qword_2810730E0, type metadata accessor for TranscriptProtoVisualOutputOptions, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_22C0DBE2C(319, qword_281077100, type metadata accessor for TranscriptProtoVisualOutput, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_22C0E66A4(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_22C2704B4();
                if (v7 <= 0x3F)
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
}

uint64_t sub_22C0E14E0()
{
  result = type metadata accessor for TranscriptProtoLiveActivityOutputPayload(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoInAppResponseOutputPayload(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoSystemSnippetOutputPayload(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for TranscriptProtoPluginSnippetOutputPayload(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for TranscriptProtoAceCommandOutputPayload(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_22C0E16E8()
{
  result = type metadata accessor for TranscriptProtoAddViews(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoAddDialogs(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoSayIt(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for TranscriptProtoRepeatIt(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for TranscriptProtoRequestCompleted(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for TranscriptProtoCommandFailed(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_22C0E18F8()
{
  result = type metadata accessor for TranscriptProtoStaticText(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoSonicText(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoGeneratedText(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for TranscriptProtoUnableToGenerate(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for TranscriptProtoSuppressed(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for TranscriptProtoCATDialog(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_22C0E1AD4()
{
  sub_22C0DBE2C(319, &qword_28106DC98, type metadata accessor for TranscriptProtoResponseParameter, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_281075C60, type metadata accessor for TranscriptProtoResponseDialog, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C0DBE2C(319, qword_281075B08, type metadata accessor for TranscriptProtoResponseVisual, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_22C0E66A4(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_22C0E66A4(319, &qword_28106DBD0, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_22C0E66A4(319, qword_2810702A8, &type metadata for TranscriptProtoResponseDialogPresentationHint, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_22C0DBE2C(319, qword_28107A248, type metadata accessor for TranscriptProtoUIType, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_22C2704B4();
                if (v7 <= 0x3F)
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
}

uint64_t sub_22C0E1D3C()
{
  sub_22C0E66A4(319, &qword_28107F340, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_22C0E66A4(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_22C0E66A4(319, &qword_28106DBD0, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        v1 = sub_22C2704B4();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_22C0E1EB8()
{
  sub_22C0DBE2C(319, &qword_28106DD78, type metadata accessor for TranscriptProtoUIType, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, &qword_28106DD70, type metadata accessor for TranscriptProtoUILabel, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_22C0DBE2C(319, qword_281072270, type metadata accessor for TranscriptProtoResponseVisualOptions, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_22C2704B4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_22C0E2130(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_22BE3DFF4);
}

uint64_t sub_22C0E2188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_22BE384C0);
}

void sub_22C0E2268()
{
  sub_22C0E66A4(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22C2704B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22C0E235C()
{
  sub_22BE1B9D8();
  if (v1)
  {
    return sub_22BE1A5D0(*(v0 + 24));
  }

  sub_22BE27A38();
  sub_22C2704B4();
  v3 = sub_22BE41590();

  return sub_22BE1AEA8(v3, v4, v5);
}

void sub_22C0E23D8()
{
  sub_22BE18660();
  if (v2)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    sub_22BE294C8();
    sub_22BE38994();
    v4 = sub_22BE3B0A4(v3);

    sub_22BE19DC4(v4, v5, v6, v7);
  }
}

uint64_t sub_22C0E244C(uint64_t a1, int a2)
{
  if (a2 == 12)
  {
    v2 = *(a1 + 8) >> 60;
    if (((4 * v2) & 0xC) != 0)
    {
      return 16 - ((4 * v2) & 0xC | (v2 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22BE27A38();
    sub_22C2704B4();
    v4 = sub_22C0E96A0();

    return sub_22BE1AEA8(v4, v5, v6);
  }
}

void *sub_22C0E24E4(void *result, uint64_t a2, int a3)
{
  v4 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    sub_22BE294C8();
    sub_22BE26204();

    return sub_22BE19DC4(v4 + v6, a2, a2, v5);
  }

  return result;
}

void sub_22C0E2588()
{
  sub_22C0E66A4(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_28106FF58, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C0DBE2C(319, qword_281077EF0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_22C0DBE2C(319, qword_281070750, type metadata accessor for TranscriptProtoSystemPromptResolutionInput, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_22C2704B4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22C0E27C0()
{
  sub_22C0DBE2C(319, &qword_28106DD08, type metadata accessor for TranscriptProtoParameterSet, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_281077848, type metadata accessor for TranscriptProtoParameterSet, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C0DBE2C(319, qword_281077EF0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_22C0DBE2C(319, qword_281072CD8, type metadata accessor for TranscriptProtoGlobalToolIdentifier, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_22C2704B4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_22C0E2970()
{
  sub_22BE1B9D8();
  if (v1)
  {
    return sub_22BE1A5D0(*v0);
  }

  sub_22BE27A38();
  sub_22C2704B4();
  v3 = sub_22BE41590();

  return sub_22BE1AEA8(v3, v4, v5);
}

void sub_22C0E29EC()
{
  sub_22BE18660();
  if (v0)
  {
    sub_22BE375D8();
  }

  else
  {
    sub_22BE294C8();
    sub_22BE38994();
    v2 = sub_22BE3B0A4(v1);

    sub_22BE19DC4(v2, v3, v4, v5);
  }
}

void sub_22C0E2AA4()
{
  sub_22C0DBE2C(319, qword_281077EF0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_28107EBB8, type metadata accessor for ContextProtoRetrievedContext, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C2704B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C0E2BC8()
{
  sub_22C0DBE2C(319, qword_281077EF0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_281072920, type metadata accessor for ContextProtoDynamicEnumerationEntity, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C2704B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C0E2D98()
{
  sub_22C0E66A4(319, &qword_28106DAD8, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_281078EB0, type metadata accessor for TranscriptProtoCandidate, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C2704B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22C0E2EF4()
{
  result = sub_22C272594();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22C0E2FD0(uint64_t a1, int a2)
{
  if (a2 == 254)
  {
    sub_22C0E9BE8();
    v4 = (v2 + v3) & 0x7FFFFFFF;
    if (v5)
    {
      return (v4 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22BE27A38();
    sub_22C2704B4();
    v7 = sub_22C0E96A0();

    return sub_22BE1AEA8(v7, v8, v9);
  }
}

void sub_22C0E3054()
{
  sub_22BE18378();
  if (v2 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    sub_22BE294C8();
    v3 = sub_22BE3D1CC();

    sub_22BE19DC4(v3, v4, v5, v6);
  }
}

void sub_22C0E30DC()
{
  sub_22C0DDB34(319, &qword_28106DE28, MEMORY[0x277D727E0]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, &qword_28106DF48, MEMORY[0x277D727E0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C2704B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C0E31FC()
{
  sub_22C0DBE2C(319, &qword_28106DCB0, type metadata accessor for TranscriptProtoVariableSetter, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_281077EF0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C2704B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22C0E330C()
{
  sub_22BE1B9D8();
  if (v0)
  {
    return sub_22BE18A6C();
  }

  sub_22BE27A38();
  sub_22C2704B4();
  v2 = sub_22BE41590();

  return sub_22BE1AEA8(v2, v3, v4);
}

void sub_22C0E3384()
{
  sub_22C0DDB34(319, &qword_27D9119C8, type metadata accessor for TranscriptProtoASTFlatValue);
  if (v0 <= 0x3F)
  {
    sub_22C2704B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22C0E3504()
{
  sub_22BE36798();
  if (v1)
  {
    return sub_22BE17D90(*(v0 + 8));
  }

  sub_22BE27A38();
  sub_22C2704B4();
  v3 = sub_22C0E96A0();

  return sub_22BE1AEA8(v3, v4, v5);
}

void sub_22C0E357C()
{
  sub_22BE22984();
  if (v2)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    sub_22BE294C8();
    v3 = sub_22BE3D1CC();

    sub_22BE19DC4(v3, v4, v5, v6);
  }
}

uint64_t getEnumTagSinglePayload for TranscriptProtoAstpickTypeEnum(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TranscriptProtoAstpickTypeEnum(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_22C0E3864()
{
  sub_22C0DBE2C(319, &qword_27D911AB8, type metadata accessor for TranscriptProtoASTFlatValue, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, &qword_27D911AC0, type metadata accessor for TranscriptProtoASTFlatValue, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C2704B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22C0E3A78()
{
  result = type metadata accessor for TranscriptProtoASTFlatValue(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for TranscriptProtoASTFlatExprDotVariant(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for TranscriptProtoASTFlatExprCallVariant(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for TranscriptProtoASTFlatExprSayVariant(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for TranscriptProtoASTFlatExprPickVariant(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for TranscriptProtoASTFlatExprSearchVariant(319);
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant(319);
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for TranscriptProtoASTFlatExprUndoVariant(319);
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant(319);
                          if (v13 <= 0x3F)
                          {
                            result = type metadata accessor for TranscriptProtoASTFlatExprRejectVariant(319);
                            if (v14 <= 0x3F)
                            {
                              result = type metadata accessor for TranscriptProtoASTFlatExprCancelVariant(319);
                              if (v15 <= 0x3F)
                              {
                                result = type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant(319);
                                if (v16 <= 0x3F)
                                {
                                  result = type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant(319);
                                  if (v17 <= 0x3F)
                                  {
                                    result = type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps(319);
                                    if (v18 <= 0x3F)
                                    {
                                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                      return 0;
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
        }
      }
    }
  }

  return result;
}

uint64_t sub_22C0E3C88()
{
  result = type metadata accessor for TranscriptProtoASTFlatValueArrayVariant(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoASTFlatValueDictVariant(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoStatementID(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_22C0E3DE0()
{
  sub_22C0E97DC();
  sub_22C0DDB34(319, v0, v1);
  if (v2 <= 0x3F)
  {
    sub_22BE39730();
    sub_22C2704B4();
    if (v3 <= 0x3F)
    {
      sub_22BE22E88();
      swift_cvw_initStructMetadataWithLayoutString();
      sub_22BEE94D4();
    }
  }
}

uint64_t sub_22C0E3F6C()
{
  result = type metadata accessor for TranscriptProtoValueExpression(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoStatementID(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoPrefixExpression(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for TranscriptProtoInfixExpression(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for TranscriptProtoIndexExpression(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for TranscriptProtoUpdateParametersExpression(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for TranscriptProtoCallExpression(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for TranscriptProtoSayExpression(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for TranscriptProtoPickExpression(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for TranscriptProtoConfirmExpression(319);
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for TranscriptProtoSearchExpression(319);
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for TranscriptProtoStructuredSearchExpression(319);
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for TranscriptProtoPickOneExpression(319);
                          if (v13 <= 0x3F)
                          {
                            result = type metadata accessor for TranscriptProtoResolveToolExpression(319);
                            if (v14 <= 0x3F)
                            {
                              result = type metadata accessor for TranscriptProtoUndoExpression(319);
                              if (v15 <= 0x3F)
                              {
                                result = type metadata accessor for TranscriptProtoRejectExpression(319);
                                if (v16 <= 0x3F)
                                {
                                  result = type metadata accessor for TranscriptProtoCancelExpression(319);
                                  if (v17 <= 0x3F)
                                  {
                                    result = type metadata accessor for TranscriptProtoNoMatchingToolExpression(319);
                                    if (v18 <= 0x3F)
                                    {
                                      result = type metadata accessor for TranscriptProtoContinuePlanningExpression(319);
                                      if (v19 <= 0x3F)
                                      {
                                        result = type metadata accessor for TranscriptProtoEndOfPlanExpression(319);
                                        if (v20 <= 0x3F)
                                        {
                                          result = type metadata accessor for TranscriptProtoGetMentionedAppsExpression(319);
                                          if (v21 <= 0x3F)
                                          {
                                            result = type metadata accessor for TranscriptProtoOpenExpression(319);
                                            if (v22 <= 0x3F)
                                            {
                                              result = type metadata accessor for TranscriptProtoExplicitResolutionRequest(319);
                                              if (v23 <= 0x3F)
                                              {
                                                result = type metadata accessor for TranscriptProtoPayloadExpression(319);
                                                if (v24 <= 0x3F)
                                                {
                                                  result = type metadata accessor for TranscriptProtoFormatExpression(319);
                                                  if (v25 <= 0x3F)
                                                  {
                                                    result = type metadata accessor for TranscriptProtoRetrieveContextExpression(319);
                                                    if (v26 <= 0x3F)
                                                    {
                                                      result = type metadata accessor for TranscriptProtoRetrieveSpansExpression(319);
                                                      if (v27 <= 0x3F)
                                                      {
                                                        result = type metadata accessor for TranscriptProtoRetrieveToolsExpression(319);
                                                        if (v28 <= 0x3F)
                                                        {
                                                          result = type metadata accessor for TranscriptProtoSiriXFallbackExpression(319);
                                                          if (v29 <= 0x3F)
                                                          {
                                                            result = type metadata accessor for TranscriptProtoUserConfirmExpression(319);
                                                            if (v30 <= 0x3F)
                                                            {
                                                              result = type metadata accessor for TranscriptProtoUserDisambiguateExpression(319);
                                                              if (v31 <= 0x3F)
                                                              {
                                                                result = type metadata accessor for TranscriptProtoAnswerSynthesisExpression(319);
                                                                if (v32 <= 0x3F)
                                                                {
                                                                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                                                  return 0;
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
        }
      }
    }
  }

  return result;
}

uint64_t sub_22C0E42BC()
{
  result = type metadata accessor for TranscriptProtoValueExpressionArrayVariant(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C0E43E4(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 237)
  {
    v6 = *a1;
    if (v6 >= 0x13)
    {
      return v6 - 18;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22BE34004(a1, a2, a3, a4, a5);
    sub_22BE187D0(v8);
    if (*(v9 + 84) == v5)
    {
      sub_22BE23B20();
    }

    else
    {
      sub_22C2704B4();
      sub_22BE22B34();
    }

    v11 = sub_22BE25438(v10);

    return sub_22BE1AEA8(v11, v12, v13);
  }
}

void sub_22C0E44A0()
{
  sub_22BE18378();
  if (v5 == 237)
  {
    *v1 = v0 + 18;
  }

  else
  {
    v9 = sub_22BE35CA8(v3, v4, v5, v6, v7, v8);
    sub_22BE187D0(v9);
    if (*(v10 + 84) == v2)
    {
      sub_22BE26204();
    }

    else
    {
      sub_22C2704B4();
      sub_22BE272B4();
    }

    v12 = sub_22BE3B0A4(v11);

    sub_22BE19DC4(v12, v13, v14, v15);
  }
}

void sub_22C0E4568()
{
  sub_22C0E9BC8();
  v0 = sub_22BE26A40();
  sub_22C0DBE2C(v0, v1, v2, v3);
  if (v4 <= 0x3F)
  {
    sub_22C2704B4();
    if (v5 <= 0x3F)
    {
      sub_22BE22E88();
      swift_cvw_initStructMetadataWithLayoutString();
      sub_22BEE94D4();
    }
  }
}

uint64_t sub_22C0E45FC(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 253)
  {
    v6 = *a1;
    if (v6 >= 3)
    {
      return v6 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22BE34004(a1, a2, a3, a4, a5);
    sub_22BE187D0(v8);
    if (*(v9 + 84) == v5)
    {
      sub_22BE23B20();
    }

    else
    {
      sub_22C2704B4();
      sub_22BE1C1E8();
    }

    v11 = sub_22BE25438(v10);

    return sub_22BE1AEA8(v11, v12, v13);
  }
}

void sub_22C0E46B8()
{
  sub_22BE18378();
  if (v5 == 253)
  {
    *v1 = v0 + 2;
  }

  else
  {
    v9 = sub_22BE35CA8(v3, v4, v5, v6, v7, v8);
    sub_22BE187D0(v9);
    if (*(v10 + 84) == v2)
    {
      sub_22BE26204();
    }

    else
    {
      sub_22C2704B4();
      sub_22BE38994();
    }

    v12 = sub_22BE3B0A4(v11);

    sub_22BE19DC4(v12, v13, v14, v15);
  }
}

uint64_t sub_22C0E47A8()
{
  sub_22BE2BC0C();
  v7 = sub_22C0E9AF0(v2, v3, v4, v5, v6);
  sub_22BE187D0(v7);
  if (*(v8 + 84) == v0)
  {
    v9 = sub_22BE291BC();
  }

  else
  {
    sub_22C2704B4();
    sub_22BE1C1E8();
    v9 = v1 + v11;
  }

  return sub_22BE1AEA8(v9, v0, v10);
}

uint64_t sub_22C0E4840()
{
  sub_22BE29120();
  v7 = sub_22BE2F100(v1, v2, v3, v4, v5, v6);
  sub_22BE187D0(v7);
  if (*(v8 + 84) == v0)
  {
    sub_22BE238E8();
  }

  else
  {
    sub_22C2704B4();
    sub_22BE38994();
  }

  sub_22BE38A34();

  return sub_22BE19DC4(v9, v10, v11, v12);
}

void sub_22C0E48C4()
{
  sub_22C0E97DC();
  v0 = sub_22C0E9DAC();
  sub_22C0DBE2C(v0, v1, v2, v3);
  if (v4 <= 0x3F)
  {
    sub_22C2704B4();
    if (v5 <= 0x3F)
    {
      sub_22C0E9B64();
      sub_22BE22E88();
      swift_cvw_initStructMetadataWithLayoutString();
      sub_22BEE94D4();
    }
  }
}

void sub_22C0E4960()
{
  sub_22C0DBE2C(319, &qword_28106DD90, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_281077EF0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C2704B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C0E4A84()
{
  sub_22C0DBE2C(319, qword_281077EF0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22C0E66A4(319, &qword_28106DAD8, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C2704B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C0E4C18()
{
  sub_22C0E9DA0();
  sub_22C0E97DC();
  sub_22C0DDB34(319, v0, v1);
  if (v2 <= 0x3F)
  {
    sub_22BE26A40();
    sub_22BE2BD04();
    sub_22C0DBE2C(v3, v4, v5, v6);
    if (v7 <= 0x3F)
    {
      sub_22BE39730();
      sub_22C2704B4();
      if (v8 <= 0x3F)
      {
        sub_22C0E9B64();
        sub_22BE22E88();
        swift_cvw_initStructMetadataWithLayoutString();
        sub_22BEE94D4();
      }
    }
  }
}

uint64_t sub_22C0E4E00()
{
  sub_22BE1B9D8();
  if (v0)
  {
    return sub_22BE18A6C();
  }

  sub_22BE27A38();
  sub_22C2704B4();
  sub_22BE28648();
  v3 = sub_22BE25438(v2);

  return sub_22BE1AEA8(v3, v4, v5);
}

void sub_22C0E4E78()
{
  sub_22BE18660();
  if (v0)
  {
    sub_22BE35FD8();
  }

  else
  {
    sub_22BE294C8();
    sub_22BE36CC4();
    v2 = sub_22BE3B0A4(v1);

    sub_22BE19DC4(v2, v3, v4, v5);
  }
}

uint64_t sub_22C0E4ED4()
{
  result = sub_22C2704B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C0E4F70()
{
  sub_22BE1B9D8();
  if (v7)
  {
    return sub_22BE1A5D0(*v1);
  }

  v9 = sub_22BE34004(v2, v3, v4, v5, v6);
  sub_22BE187D0(v9);
  if (*(v10 + 84) == v0)
  {
    sub_22BE1C1E8();
  }

  else
  {
    sub_22C2704B4();
    sub_22BE22B34();
  }

  v12 = sub_22BE25438(v11);

  return sub_22BE1AEA8(v12, v13, v14);
}

void sub_22C0E5020()
{
  sub_22BE18660();
  if (v7)
  {
    sub_22BE375D8();
  }

  else
  {
    v8 = sub_22BE35CA8(v1, v2, v3, v4, v5, v6);
    sub_22BE187D0(v8);
    if (*(v9 + 84) == v0)
    {
      sub_22BE38994();
    }

    else
    {
      sub_22C2704B4();
      sub_22BE272B4();
    }

    v11 = sub_22BE3B0A4(v10);

    sub_22BE19DC4(v11, v12, v13, v14);
  }
}

void sub_22C0E50B8()
{
  sub_22C0DDB34(319, &qword_28106DE70, type metadata accessor for TranscriptProtoStatementID);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, &qword_28106DC68, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_22C0DBE2C(319, &qword_28106DF40, MEMORY[0x277D72800], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_22C2704B4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_22C0E520C()
{
  sub_22BE1B9D8();
  if (v6)
  {
    return sub_22BE18A6C();
  }

  v8 = sub_22BE34004(v1, v2, v3, v4, v5);
  sub_22BE187D0(v8);
  if (*(v9 + 84) == v0)
  {
    sub_22BE1C1E8();
  }

  else
  {
    sub_22C2704B4();
    sub_22BE22B34();
  }

  v11 = sub_22BE25438(v10);

  return sub_22BE1AEA8(v11, v12, v13);
}

void sub_22C0E52B8()
{
  sub_22BE18660();
  if (v7)
  {
    sub_22BE35FD8();
  }

  else
  {
    v8 = sub_22BE35CA8(v1, v2, v3, v4, v5, v6);
    sub_22BE187D0(v8);
    if (*(v9 + 84) == v0)
    {
      sub_22BE38994();
    }

    else
    {
      sub_22C2704B4();
      sub_22BE272B4();
    }

    v11 = sub_22BE3B0A4(v10);

    sub_22BE19DC4(v11, v12, v13, v14);
  }
}

void sub_22C0E5350()
{
  sub_22C0E66A4(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_281077EF0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C2704B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C0E56AC()
{
  sub_22C0DBE2C(319, qword_281077EF0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22C2704B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C0E5790()
{
  sub_22C0DBE2C(319, &qword_28106DD28, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_281077EF0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C2704B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C0E58B4()
{
  sub_22C0DBE2C(319, &qword_28106DC58, type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidate, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_281077EF0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C2704B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22C0E5A0C()
{
  result = type metadata accessor for TranscriptProtoStatementID(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C0E5AD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C272594();

  return sub_22BE1AEA8(a1, a2, v4);
}

uint64_t sub_22C0E5B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C272594();

  return sub_22BE19DC4(a1, a2, a3, v6);
}

uint64_t sub_22C0E5B9C()
{
  sub_22BE2BC0C();
  v7 = sub_22C0E9AF0(v2, v3, v4, v5, v6);
  sub_22BE187D0(v7);
  if (*(v8 + 84) == v0)
  {
    v9 = sub_22BE291BC();
  }

  else
  {
    v11 = sub_22BE1B328();
    v13 = sub_22BE5CE4C(v11, v12);
    sub_22BE187D0(v13);
    if (*(v14 + 84) == v0)
    {
      sub_22BE23B20();
    }

    else
    {
      sub_22C2704B4();
      sub_22BE1C1E8();
    }

    v9 = v1 + v15;
  }

  return sub_22BE1AEA8(v9, v0, v10);
}

uint64_t sub_22C0E5C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  sub_22BE29120();
  v17 = sub_22BE2F100(v11, v12, v13, v14, v15, v16);
  sub_22BE187D0(v17);
  if (*(v18 + 84) == v8)
  {
    sub_22BE238E8();
  }

  else
  {
    v19 = sub_22BE5CE4C(a7, a8);
    sub_22BE187D0(v19);
    if (*(v20 + 84) == v8)
    {
      sub_22BE26204();
    }

    else
    {
      sub_22C2704B4();
      sub_22BE38994();
    }
  }

  sub_22BE38A34();

  return sub_22BE19DC4(v21, v22, v23, v24);
}

void sub_22C0E5D54()
{
  sub_22C0DBE2C(319, qword_281077EF0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_2810765F0, type metadata accessor for ContextProtoSpanMatchedEntity, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C2704B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22C0E5EC0()
{
  sub_22BE1B9D8();
  if (v0)
  {
    return sub_22BE18A6C();
  }

  sub_22BE27A38();
  sub_22C2704B4();
  sub_22C0E99E4();
  v3 = sub_22BE25438(v2);

  return sub_22BE1AEA8(v3, v4, v5);
}

void sub_22C0E5F38()
{
  sub_22BE18660();
  if (v0)
  {
    sub_22BE35FD8();
  }

  else
  {
    sub_22BE294C8();
    sub_22C0E99F0();
    v2 = sub_22BE3B0A4(v1);

    sub_22BE19DC4(v2, v3, v4, v5);
  }
}

void sub_22C0E5F94()
{
  sub_22C0DBE2C(319, &qword_28106DD40, type metadata accessor for ContextProtoRetrievedTool, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, &qword_28106DCB8, type metadata accessor for ContextProtoToolRetrievalType, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_22C2704B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C0E60D8()
{
  sub_22C0DBE2C(319, &qword_28106DC78, type metadata accessor for TranscriptProtoInterpretedStatementResult, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_281075BA8, type metadata accessor for TranscriptProtoResponseOutput, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C0E66A4(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_22C2704B4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_22C0E6238()
{
  sub_22C0DBE2C(319, qword_281074488, type metadata accessor for TranscriptProtoStatementOutcome, MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_281077EF0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_22C0E66A4(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        v1 = sub_22C2704B4();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_22C0E63BC()
{
  sub_22C0DBE2C(319, qword_281077EF0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_281078560, type metadata accessor for TranscriptProtoExpression, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C0E66A4(319, &qword_28106DBD0, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_22C0E66A4(319, &qword_28106DAD0, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_22C0DBE2C(319, qword_281074C28, type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_22C2704B4();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_22C0E658C(unsigned __int8 *a1, int a2)
{
  if (a2 == 253)
  {
    v2 = *a1;
    if (v2 <= 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = *a1;
    }

    v4 = v3 - 2;
    if (v2 >= 2)
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22BE27A38();
    sub_22C2704B4();
    v6 = sub_22C0E96A0();

    return sub_22BE1AEA8(v6, v7, v8);
  }
}

void sub_22C0E661C()
{
  sub_22BE18378();
  if (v2 == 253)
  {
    *v1 = v0 + 2;
  }

  else
  {
    sub_22BE294C8();
    v3 = sub_22BE3D1CC();

    sub_22BE19DC4(v3, v4, v5, v6);
  }
}

void sub_22C0E66A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

_BYTE *sub_22C0E66F4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_22BE22DB0(result, v6);
        break;
      case 2:
        result = sub_22BE18058(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_22BE25EF4(result, v6);
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
          result = sub_22BE22BD0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22C0E67C0()
{
  sub_22BE1B9D8();
  if (v0)
  {
    return sub_22BE18A6C();
  }

  sub_22BE27A38();
  sub_22C2704B4();
  sub_22BE22B34();
  v3 = sub_22BE25438(v2);

  return sub_22BE1AEA8(v3, v4, v5);
}

void sub_22C0E6824()
{
  sub_22BE18660();
  if (v0)
  {
    sub_22BE35FD8();
  }

  else
  {
    sub_22BE294C8();
    sub_22BE272B4();
    v2 = sub_22BE3B0A4(v1);

    sub_22BE19DC4(v2, v3, v4, v5);
  }
}

uint64_t sub_22C0E6880()
{
  result = sub_22C2704B4();
  if (v1 <= 0x3F)
  {
    sub_22BE22E88();
    swift_cvw_initStructMetadataWithLayoutString();
    return sub_22BEE94D4();
  }

  return result;
}

uint64_t sub_22C0E6908()
{
  result = sub_22C2704B4();
  if (v1 <= 0x3F)
  {
    sub_22C0E9B64();
    sub_22BE22E88();
    swift_cvw_initStructMetadataWithLayoutString();
    return sub_22BEE94D4();
  }

  return result;
}

uint64_t sub_22C0E6980()
{
  sub_22BE18378();
  v3 = *(v2 + 20);
  v4 = sub_22C2704B4();

  return sub_22BE1AEA8(v1 + v3, v0, v4);
}

uint64_t sub_22C0E69E4()
{
  sub_22BE18378();
  v1 = *(v0 + 20);
  sub_22C2704B4();
  sub_22BE38A34();

  return sub_22BE19DC4(v2, v3, v4, v5);
}

void sub_22C0E6B14()
{
  sub_22C0E66A4(319, &qword_28106DDD8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_281077EF0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C2704B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22C0E6C28()
{
  sub_22BE1B9D8();
  if (v6)
  {
    return sub_22BE18A6C();
  }

  v8 = sub_22BE34004(v1, v2, v3, v4, v5);
  sub_22BE187D0(v8);
  if (*(v9 + 84) == v0)
  {
    sub_22BE1C1E8();
  }

  else
  {
    sub_22C2704B4();
    sub_22BE28648();
  }

  v11 = sub_22BE25438(v10);

  return sub_22BE1AEA8(v11, v12, v13);
}

void sub_22C0E6CD4()
{
  sub_22BE18660();
  if (v7)
  {
    sub_22BE35FD8();
  }

  else
  {
    v8 = sub_22BE35CA8(v1, v2, v3, v4, v5, v6);
    sub_22BE187D0(v8);
    if (*(v9 + 84) == v0)
    {
      sub_22BE38994();
    }

    else
    {
      sub_22C2704B4();
      sub_22BE36CC4();
    }

    v11 = sub_22BE3B0A4(v10);

    sub_22BE19DC4(v11, v12, v13, v14);
  }
}

void sub_22C0E6D6C()
{
  sub_22C0DBE2C(319, qword_281077EF0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22C2704B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C0E6E60()
{
  sub_22C0DBE2C(319, &qword_28106DF48, MEMORY[0x277D727E0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22C0DBE2C(319, &qword_28106DF40, MEMORY[0x277D72800], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22C0DBE2C(319, qword_281077EF0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_22C2704B4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_22C0E6FB8()
{
  sub_22BE2BC0C();
  v7 = sub_22C0E9AF0(v2, v3, v4, v5, v6);
  sub_22BE187D0(v7);
  if (*(v8 + 84) == v0)
  {
    v9 = sub_22BE291BC();
  }

  else
  {
    v11 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
    sub_22BE187D0(v11);
    if (*(v12 + 84) == v0)
    {
      sub_22BE23B20();
    }

    else
    {
      sub_22C2704B4();
      sub_22BE22B34();
    }

    v9 = v1 + v13;
  }

  return sub_22BE1AEA8(v9, v0, v10);
}

uint64_t sub_22C0E7098()
{
  sub_22BE29120();
  v7 = sub_22BE2F100(v1, v2, v3, v4, v5, v6);
  sub_22BE187D0(v7);
  if (*(v8 + 84) == v0)
  {
    sub_22BE238E8();
  }

  else
  {
    v9 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
    sub_22BE187D0(v9);
    if (*(v10 + 84) == v0)
    {
      sub_22BE26204();
    }

    else
    {
      sub_22C2704B4();
      sub_22BE272B4();
    }
  }

  sub_22BE38A34();

  return sub_22BE19DC4(v11, v12, v13, v14);
}

void sub_22C0E7184()
{
  sub_22C0E97DC();
  v0 = sub_22BE26A40();
  sub_22C0DBE2C(v0, v1, v2, v3);
  if (v4 <= 0x3F)
  {
    sub_22C0DBE2C(319, qword_281077EF0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v5 <= 0x3F)
    {
      sub_22C2704B4();
      if (v6 <= 0x3F)
      {
        sub_22BE22E88();
        swift_cvw_initStructMetadataWithLayoutString();
        sub_22BEE94D4();
      }
    }
  }
}