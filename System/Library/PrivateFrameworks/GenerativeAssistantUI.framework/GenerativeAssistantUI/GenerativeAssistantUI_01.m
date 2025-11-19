uint64_t sub_24FE6AE48()
{
  v1 = v0;
  v37 = type metadata accessor for DocumentParagraphElement();
  v2 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54F0, &qword_24FEE1F20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v35 - v6;
  v8 = type metadata accessor for DocumentOutlineElement();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DocumentCodeBlockElement();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - v18;
  v20 = type metadata accessor for TextGenerationView(0);
  v21 = *(v0 + v20[5]);
  v22 = DocumentViewModel.elements.getter();
  v23 = *(v22 + 16);
  if (v23)
  {
    v35 = v1;
    sub_24FE72D1C(v22 + 40 * v23 - 8, v39);

    sub_24FE71ADC(v39, v40);
    sub_24FE72D1C(v40, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54B0, &qword_24FEE1EE0);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v40);
      result = sub_24FE73150(v19, type metadata accessor for DocumentCodeBlockElement);
      v25 = *(v35 + v20[9]);
      return result;
    }

    sub_24FE72D1C(v40, v39);
    if (swift_dynamicCast())
    {
      (*(v9 + 56))(v7, 0, 1, v8);
      sub_24FE728F8(v7, v12, type metadata accessor for DocumentOutlineElement);
      v26 = *&v12[*(v8 + 20)];
      v27 = *(v26 + 16);
      if (v27 && (v28 = *(v26 + 8 * v27 + 24), (v29 = *(v28 + 16)) != 0))
      {
        sub_24FE72D1C(v28 + 40 * v29 - 8, v38);
        __swift_destroy_boxed_opaque_existential_1(v40);
        sub_24FE71ADC(v38, v39);
        sub_24FE71ADC(v39, v38);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54F8, &qword_24FEE1F28);
        v30 = swift_dynamicCast();
        v1 = v35;
        if (v30)
        {
          sub_24FE73150(v17, type metadata accessor for DocumentCodeBlockElement);
          result = sub_24FE73150(v12, type metadata accessor for DocumentOutlineElement);
          v31 = v20[9];
          goto LABEL_18;
        }

        sub_24FE73150(v12, type metadata accessor for DocumentOutlineElement);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v40);
        sub_24FE73150(v12, type metadata accessor for DocumentOutlineElement);
        v1 = v35;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v40);
      (*(v9 + 56))(v7, 1, 1, v8);
      sub_24FE58B7C(v7, &qword_27F3A54F0, &qword_24FEE1F20);
      v1 = v35;
    }
  }

  else
  {
  }

  v32 = *(DocumentViewModel.elements.getter() + 16);

  if (v32 != 1)
  {
    goto LABEL_17;
  }

  result = DocumentViewModel.elements.getter();
  if (!*(result + 16))
  {
    __break(1u);
    return result;
  }

  sub_24FE72D1C(result + 32, v40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54B0, &qword_24FEE1EE0);
  v33 = v36;
  result = swift_dynamicCast();
  if (result)
  {
    result = sub_24FE73150(v33, type metadata accessor for DocumentParagraphElement);
    v31 = v20[7];
  }

  else
  {
LABEL_17:
    v31 = v20[8];
  }

LABEL_18:
  v34 = *(v1 + v31);
  return result;
}

uint64_t sub_24FE6B338@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24FEDD424();
  v44 = 1;
  sub_24FE6ED48(&v30);
  v55 = v40;
  v56 = v41;
  v51 = v36;
  v52 = v37;
  v53 = v38;
  v54 = v39;
  v47 = v32;
  v48 = v33;
  v49 = v34;
  v50 = v35;
  v45 = v30;
  v46 = v31;
  v58[10] = v40;
  v58[11] = v41;
  v58[6] = v36;
  v58[7] = v37;
  v58[8] = v38;
  v58[9] = v39;
  v58[2] = v32;
  v58[3] = v33;
  v58[4] = v34;
  v58[5] = v35;
  v57 = v42;
  v59 = v42;
  v58[0] = v30;
  v58[1] = v31;
  sub_24FE58B14(&v45, &v29, &qword_27F3A55D8, &qword_24FEE1FE0);
  sub_24FE58B7C(v58, &qword_27F3A55D8, &qword_24FEE1FE0);
  *&v43[151] = v54;
  *&v43[167] = v55;
  *&v43[183] = v56;
  *&v43[87] = v50;
  *&v43[103] = v51;
  *&v43[119] = v52;
  *&v43[135] = v53;
  *&v43[23] = v46;
  *&v43[39] = v47;
  *&v43[55] = v48;
  *&v43[71] = v49;
  *&v43[199] = v57;
  *&v43[7] = v45;
  v4 = v44;
  v5 = sub_24FEDD754();
  v6 = type metadata accessor for TextGenerationView(0);
  v7 = *(v1 + *(v6 + 40));
  sub_24FEDD014();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  LOBYTE(v30) = 0;
  v16 = sub_24FEDD764();
  v17 = *(v1 + *(v6 + 32));
  result = sub_24FEDD014();
  v19 = *&v43[128];
  *(a1 + 161) = *&v43[144];
  v20 = *&v43[176];
  *(a1 + 177) = *&v43[160];
  *(a1 + 193) = v20;
  *(a1 + 208) = *&v43[191];
  v21 = *&v43[64];
  *(a1 + 97) = *&v43[80];
  v22 = *&v43[112];
  *(a1 + 113) = *&v43[96];
  *(a1 + 129) = v22;
  *(a1 + 145) = v19;
  v23 = *v43;
  *(a1 + 33) = *&v43[16];
  v24 = *&v43[48];
  *(a1 + 49) = *&v43[32];
  *(a1 + 65) = v24;
  *(a1 + 81) = v21;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  *(a1 + 17) = v23;
  *(a1 + 224) = v5;
  *(a1 + 232) = v9;
  *(a1 + 240) = v11;
  *(a1 + 248) = v13;
  *(a1 + 256) = v15;
  *(a1 + 264) = 0;
  *(a1 + 272) = v16;
  *(a1 + 280) = v25;
  *(a1 + 288) = v26;
  *(a1 + 296) = v27;
  *(a1 + 304) = v28;
  *(a1 + 312) = 0;
  return result;
}

uint64_t sub_24FE6B574@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = sub_24FEDD234();
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v2);
  v36 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GenerativeResultAttributionSnippetModel();
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for AttributionsTextView();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v33 = (&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A55B8, &qword_24FEE1FD0);
  v13 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v34 = &v33 - v14;
  v16 = v1[1];
  v15 = v1[2];
  v18 = v1[3];
  v17 = v1[4];
  v20 = v1[5];
  v19 = v1[6];
  v21 = v1[7];
  v22 = type metadata accessor for GenerativeRichTextResultSnippetModel(0);
  sub_24FE58B14(v1 + *(v22 + 36), v9 + *(v6 + 40), &unk_27F3A4A40, &qword_24FEE08C0);
  *v9 = v16;
  v9[1] = v15;
  v9[2] = v18;
  v9[3] = v17;
  v9[4] = v20;
  v9[5] = v19;
  v9[6] = v21;

  v23 = v33;
  AttributionsTextView.init(model:)(v9, v33);
  sub_24FEDDF44();
  sub_24FEDD294();
  v24 = v34;
  sub_24FE728F8(v23, v34, type metadata accessor for AttributionsTextView);
  v26 = v35;
  v25 = v36;
  v27 = (v24 + *(v35 + 36));
  v28 = v47;
  v27[4] = v46;
  v27[5] = v28;
  v27[6] = v48;
  v29 = v43;
  *v27 = v42;
  v27[1] = v29;
  v30 = v45;
  v27[2] = v44;
  v27[3] = v30;
  sub_24FE69B78(v25);
  sub_24FEDD224();
  (*(v37 + 8))(v25, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A55C0, &qword_24FEE1FD8);
  v31 = sub_24FE73044();
  v40 = v26;
  v41 = v31;
  swift_getOpaqueTypeConformance2();
  sub_24FEDDA64();
  return sub_24FE58B7C(v24, &qword_27F3A55B8, &qword_24FEE1FD0);
}

void sub_24FE6B910()
{
  if (qword_27F3A4698 != -1)
  {
    swift_once();
  }

  v0 = sub_24FEDCF54();
  __swift_project_value_buffer(v0, qword_27F3A5310);
  v1 = sub_24FEDCF34();
  v2 = sub_24FEDE4B4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315394;
    *(v3 + 4) = sub_24FE70EC4(0xD000000000000012, 0x800000024FEE1CD0, &v10);
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_24FE70EC4(2036625250, 0xE400000000000000, &v10);
    _os_log_impl(&dword_24FE50000, v1, v2, "%s.%s User tapped on response view. Activating TTS.", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25305B320](v4, -1, -1);
    MEMORY[0x25305B320](v3, -1, -1);
  }

  v9 = [objc_allocWithZone(GenerativeAssistantSiriInvocationManager) init];
  [v9 invokeTypeToSiriForFollowup];
  v5 = sub_24FEDCF34();
  v6 = sub_24FEDE4B4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_24FE70EC4(0xD000000000000012, 0x800000024FEE1CD0, &v10);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_24FE70EC4(2036625250, 0xE400000000000000, &v10);
    _os_log_impl(&dword_24FE50000, v5, v6, "%s.%s Finished activating TTS.", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25305B320](v8, -1, -1);
    MEMORY[0x25305B320](v7, -1, -1);
  }
}

uint64_t TextGenerationView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GenerativeRichTextResultSnippetModel(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FE70838(a1, v7, type metadata accessor for GenerativeRichTextResultSnippetModel);
  v10 = 1;
  v11 = 0u;
  memset(v12, 0, sizeof(v12));
  TextGenerationView.init(model:shouldMockSnippetContext:presentationOptions:)(v7, 0, &v10, a2);
  return sub_24FE73150(a1, type metadata accessor for GenerativeRichTextResultSnippetModel);
}

id TextGenerationView.init(model:shouldMockSnippetContext:presentationOptions:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  LODWORD(v219) = a2;
  v191 = a1;
  v208 = sub_24FEDC774();
  v222 = *(v208 - 8);
  v6 = *(v222 + 8);
  v7 = MEMORY[0x28223BE20](v208);
  v205 = &v164 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v204 = &v164 - v10;
  MEMORY[0x28223BE20](v9);
  v203 = &v164 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5358, &qword_24FEE1BB8);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v174 = &v164 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v177 = &v164 - v16;
  v180 = sub_24FEDC9E4();
  v221 = *(v180 - 8);
  v17 = *(v221 + 64);
  v18 = MEMORY[0x28223BE20](v180);
  v176 = &v164 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v214 = &v164 - v20;
  v198 = sub_24FEDCE94();
  v206 = *(v198 - 8);
  v21 = *(v206 + 64);
  MEMORY[0x28223BE20](v198);
  v197 = &v164 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for RichContentResultSegment(0);
  v201 = *(v207 - 8);
  v23 = *(v201 + 64);
  MEMORY[0x28223BE20](v207);
  v215 = (&v164 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5360, &qword_24FEE1BC0);
  v218 = *(v217 - 8);
  v25 = *(v218 + 64);
  MEMORY[0x28223BE20](v217);
  v200 = (&v164 - v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5368, &qword_24FEE1BC8);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v216 = &v164 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v220 = &v164 - v31;
  v32 = *a3;
  v33 = *(a3 + 8);
  v34 = *(a3 + 16);
  v35 = *(a3 + 24);
  v36 = *(a3 + 32);
  v37 = *(a3 + 40);
  v38 = *(a3 + 48);
  v39 = type metadata accessor for TextGenerationView(0);
  v40 = v39[6];
  *(a4 + v40) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5370, &qword_24FEE1C00);
  swift_storeEnumTagMultiPayload();
  *(a4 + v39[7]) = 0x401C000000000000;
  *(a4 + v39[8]) = 0x4026000000000000;
  *(a4 + v39[9]) = 0x402E000000000000;
  *(a4 + v39[10]) = 0x4010000000000000;
  sub_24FE70838(v191, a4, type metadata accessor for GenerativeRichTextResultSnippetModel);
  *(a4 + v39[14]) = v219;
  v189 = v39;
  v41 = v39[15];
  v190 = a4;
  v42 = a4 + v41;
  *v42 = v32;
  *(v42 + 8) = v33;
  *(v42 + 16) = v34;
  *(v42 + 24) = v35;
  v187 = v35;
  v186 = v36;
  *(v42 + 32) = v36;
  *(v42 + 40) = v37;
  v185 = v37;
  v188 = v38;
  *(v42 + 48) = v38;
  if (v32 >= 2)
  {
    v227[0] = v32;
    v227[1] = v33;
    v227[2] = v34;
    v227[3] = v187;
    v227[4] = v186;
    v227[5] = v185;
    sub_24FE71AF4(v32);
    sub_24FE71B04(v32);
    v43 = *(**MarkdownFont.shared.unsafeMutableAddressor() + 112);

    v43(v227);
  }

  v182 = v34;
  v183 = v33;
  v184 = v32;
  v44 = MEMORY[0x277D84F90];
  v213 = MarkdownParser.init(documentElementParsers:includeDefaultDocumentElementParsers:inlineParsers:includeDefaultInlineParsers:)(MEMORY[0x277D84F90], 1, MEMORY[0x277D84F90], 1);
  v212 = v45;
  v211 = v46;
  v210 = v47;
  v226 = v44;
  result = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  v49 = result;
  LODWORD(v181) = 0;
  v50 = 0;
  v51 = 0;
  v52 = *v191;
  v53 = *(*v191 + 16);
  v219 = (v218 + 56);
  v218 += 48;
  v196 = (v206 + 8);
  v202 = v222 + 16;
  v194 = *MEMORY[0x277D76918];
  v193 = v222 + 8;
  v179 = (v221 + 32);
  v192 = *MEMORY[0x277D740A8];
  v175 = (v221 + 16);
  v178 = (v221 + 8);
  v173 = (v206 + 48);
  *(&v54 + 1) = 2;
  v199 = xmmword_24FEE0740;
  *&v54 = 136315394;
  v172 = v54;
  v55 = v214;
  v56 = v215;
  v57 = v217;
  v58 = v216;
  v59 = v220;
  v206 = v53;
  v195 = result;
  v209 = v52;
  while (1)
  {
    v222 = v51;
    if (v50 != v53)
    {
      break;
    }

    v60 = 1;
    v221 = v53;
LABEL_12:
    (*v219)(v58, v60, 1, v57);
    sub_24FE6315C(v58, v59, &qword_27F3A5368, &qword_24FEE1BC8);
    if ((*v218)(v59, 1, v57) == 1)
    {
      v157 = v49;
      if ([v157 length] <= 0)
      {

        v158 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5378, &qword_24FEE1C08);
        v158 = swift_allocObject();
        *(v158 + 16) = v199;
        *(v158 + 56) = v208;
        *(v158 + 64) = &protocol witness table for AttributedString;
        __swift_allocate_boxed_opaque_existential_1((v158 + 32));
        sub_24FEDC7B4();
      }

      v159 = v189;
      v160 = v190;
      *(v190 + v189[11]) = v158;
      *(v160 + v159[12]) = v44;
      v161 = MarkdownParser.makeDocumentViewModel(from:)();

      *(v160 + v159[5]) = v161;

      LOBYTE(v160) = DocumentViewModel.hasCodeblockOrImage()();

      if (v160)
      {
        v162 = 1;
        v163 = v184;
        goto LABEL_58;
      }

      v163 = v184;
      if (v184 == 1)
      {
        v162 = 0;
      }

      else
      {
        v162 = v188;
LABEL_58:
        sub_24FE708A0(v163);
      }

      *(v190 + v189[13]) = v162 & 1;
      sub_24FE6D994();

      return sub_24FE73150(v191, type metadata accessor for GenerativeRichTextResultSnippetModel);
    }

    v65 = *v59;
    sub_24FE728F8(v59 + *(v57 + 48), v56, type metadata accessor for RichContentResultSegment);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v80 = *v56;
      v81 = v56[1];
      KeyPath = swift_getKeyPath();
      v83 = type metadata accessor for AttributeScopes.MarkdownDocumentAttributes();
      v84 = sub_24FE73100(&qword_27F3A5380, type metadata accessor for AttributeScopes.MarkdownDocumentAttributes);
      v85 = v203;
      v86 = v213;
      v87 = v212;
      v88 = v211;
      v89 = v210;
      MarkdownParser.attributedStringSafeForLaTeX<A>(markdown:including:)(v80, v81, KeyPath, v213, v212, v211, v210, v83, v203, v84);

      v90 = MarkdownParser.makeDocumentElements(attributedString:)(v85, v86, v87, v88, v89);
      sub_24FE6D86C(v90);
      v91 = [objc_opt_self() preferredFontForTextStyle_];
      v92 = objc_opt_self();
      v93 = sub_24FEDE1C4();

      v94 = [objc_opt_self() defaultFormatOptions];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5388, &qword_24FEE1C40);
      inited = swift_initStackObject();
      *(inited + 16) = v199;
      v96 = v192;
      *(inited + 32) = v192;
      *(inited + 64) = sub_24FE709D8();
      *(inited + 40) = v91;
      v97 = v96;
      v98 = v91;
      sub_24FE7197C(inited);
      swift_setDeallocating();
      sub_24FE58B7C(inited + 32, &qword_27F3A5398, &qword_24FEE1C48);
      type metadata accessor for Key();
      sub_24FE73100(&qword_27F3A46D8, type metadata accessor for Key);
      v99 = sub_24FEDE144();

      v100 = [v92 reconstituteAttributedStringFromFormattedString:v93 formatOptions:v94 attributes:v99];

      v101 = v100;
      v102 = v204;
      sub_24FEDC7B4();
      v103 = *v202;
      (*v202)(v205, v102, v208);
      v104 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v104 = sub_24FE70D7C(0, v44[2] + 1, 1, v44, &qword_27F3A54C0, &qword_24FEE1EF0, &qword_27F3A53E8, &qword_24FEE1D10);
      }

      v106 = v104[2];
      v105 = v104[3];
      v55 = v214;
      v49 = v195;
      if (v106 >= v105 >> 1)
      {
        v44 = sub_24FE70D7C((v105 > 1), v106 + 1, 1, v104, &qword_27F3A54C0, &qword_24FEE1EF0, &qword_27F3A53E8, &qword_24FEE1D10);
      }

      else
      {
        v44 = v104;
      }

      v107 = v208;
      v224 = v208;
      v225 = &protocol witness table for AttributedString;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v223);
      v109 = v205;
      v103(boxed_opaque_existential_1, v205, v107);
      v44[2] = v106 + 1;
      sub_24FE71ADC(&v223, &v44[5 * v106 + 4]);
      v110 = *v193;
      (*v193)(v109, v107);
      [v49 appendAttributedString_];

      v110(v204, v107);
      result = (v110)(v203, v107);
      v56 = v215;
      v57 = v217;
      v58 = v216;
      goto LABEL_5;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v67 = *v56;
      v68 = v56[1];
      sub_24FE62C94(*v56, v68);
      v69 = v197;
      sub_24FEDCE64();
      sub_24FEDCDF4();
      (*v196)(v69, v198);
      v70 = objc_allocWithZone(MEMORY[0x277D74270]);
      v71 = sub_24FEDCA04();
      sub_24FE62CFC(v67, v68);
      v72 = sub_24FEDE1C4();

      v73 = [v70 initWithData:v71 ofType:v72];

      v74 = [objc_opt_self() attributedStringWithAttachment_];
      [v49 appendAttributedString_];
      MarkdownParser.makeDocumentElement(imageData:isFirst:)(v67, v68, v65 == 0, &v223);
      v75 = v226;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = sub_24FE70D7C(0, v75[2] + 1, 1, v75, &qword_27F3A54A8, &qword_24FEE1ED8, &qword_27F3A54B0, &qword_24FEE1EE0);
      }

      v77 = v75[2];
      v76 = v75[3];
      v55 = v214;
      if (v77 >= v76 >> 1)
      {
        v75 = sub_24FE70D7C((v76 > 1), v77 + 1, 1, v75, &qword_27F3A54A8, &qword_24FEE1ED8, &qword_27F3A54B0, &qword_24FEE1EE0);
      }

      v75[2] = v77 + 1;
      sub_24FE71ADC(&v223, &v75[5 * v77 + 4]);
      v226 = v75;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_24FE70D7C(0, v44[2] + 1, 1, v44, &qword_27F3A54C0, &qword_24FEE1EF0, &qword_27F3A53E8, &qword_24FEE1D10);
      }

      v52 = v209;
      v79 = v44[2];
      v78 = v44[3];
      if (v79 >= v78 >> 1)
      {
        v44 = sub_24FE70D7C((v78 > 1), v79 + 1, 1, v44, &qword_27F3A54C0, &qword_24FEE1EF0, &qword_27F3A53E8, &qword_24FEE1D10);
      }

      v224 = MEMORY[0x277CC9318];
      v225 = &protocol witness table for Data;
      *&v223 = v67;
      *(&v223 + 1) = v68;
      v44[2] = v79 + 1;
      result = sub_24FE71ADC(&v223, &v44[5 * v79 + 4]);
      v56 = v215;
      v57 = v217;
      v58 = v216;
LABEL_24:
      v59 = v220;
LABEL_6:
      v53 = v206;
      v50 = v221;
      v51 = v222;
    }

    else
    {
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A53A0, &qword_24FEE1C50);
      v112 = (v56 + v111[12]);
      v114 = *v112;
      v113 = v112[1];
      v115 = (v56 + v111[16]);
      v116 = v115[1];
      v171 = *v115;
      v170 = *(v56 + v111[20]);
      v117 = v180;
      (*v179)(v55, v56, v180);
      if (v181)
      {
        (*v178)(v55, v117);

        LODWORD(v181) = 1;
LABEL_5:
        v59 = v220;
        v52 = v209;
        goto LABEL_6;
      }

      v169 = v114;
      v181 = v116;
      v118 = v222;
      v119 = sub_24FEDC9F4();
      v52 = v209;
      v222 = v118;
      if (!v118)
      {
        v167 = v120;
        v168 = v119;

        sub_24FEDCE54();
        v142 = v177;
        sub_24FEDCDE4();
        v143 = v142;
        v144 = v174;
        sub_24FE58B14(v143, v174, &qword_27F3A5358, &qword_24FEE1BB8);
        if ((*v173)(v144, 1, v198) == 1)
        {
          sub_24FE58B7C(v174, &qword_27F3A5358, &qword_24FEE1BB8);
          v144 = v197;
          sub_24FEDCE54();
        }

        v166 = sub_24FEDCDF4();
        (*v196)(v144, v198);
        v165 = objc_allocWithZone(MEMORY[0x277D74270]);
        v145 = v168;
        v146 = v167;
        sub_24FE62C94(v168, v167);
        v147 = sub_24FEDCA04();
        sub_24FE62CFC(v145, v146);
        v148 = sub_24FEDE1C4();

        v149 = [v165 initWithData:v147 ofType:v148];

        v150 = [objc_opt_self() attributedStringWithAttachment_];
        [v49 appendAttributedString_];
        MarkdownParser.makeFileDocumentElement(url:fileName:mimeType:size:)(v55, v171, v181, v170, &v223);

        v151 = v226;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v151 = sub_24FE70D7C(0, v151[2] + 1, 1, v151, &qword_27F3A54A8, &qword_24FEE1ED8, &qword_27F3A54B0, &qword_24FEE1EE0);
        }

        v153 = v151[2];
        v152 = v151[3];
        if (v153 >= v152 >> 1)
        {
          v151 = sub_24FE70D7C((v152 > 1), v153 + 1, 1, v151, &qword_27F3A54A8, &qword_24FEE1ED8, &qword_27F3A54B0, &qword_24FEE1EE0);
        }

        v151[2] = v153 + 1;
        sub_24FE71ADC(&v223, &v151[5 * v153 + 4]);
        v226 = v151;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_24FE70D7C(0, v44[2] + 1, 1, v44, &qword_27F3A54C0, &qword_24FEE1EF0, &qword_27F3A53E8, &qword_24FEE1D10);
        }

        v58 = v216;
        v155 = v44[2];
        v154 = v44[3];
        if (v155 >= v154 >> 1)
        {
          v44 = sub_24FE70D7C((v154 > 1), v155 + 1, 1, v44, &qword_27F3A54C0, &qword_24FEE1EF0, &qword_27F3A53E8, &qword_24FEE1D10);
        }

        sub_24FE58B7C(v177, &qword_27F3A5358, &qword_24FEE1BB8);
        (*v178)(v55, v180);
        v224 = MEMORY[0x277CC9318];
        v225 = &protocol witness table for Data;
        *&v223 = v168;
        *(&v223 + 1) = v167;
        v44[2] = v155 + 1;
        result = sub_24FE71ADC(&v223, &v44[5 * v155 + 4]);
        LODWORD(v181) = 1;
        v57 = v217;
        goto LABEL_24;
      }

      if (qword_27F3A4688 != -1)
      {
        swift_once();
      }

      v121 = sub_24FEDCF54();
      __swift_project_value_buffer(v121, qword_27F3A52E0);
      v122 = v176;
      v123 = v180;
      (*v175)(v176, v55, v180);
      v124 = v222;
      v125 = v222;
      v126 = sub_24FEDCF34();
      v127 = sub_24FEDE4C4();

      if (os_log_type_enabled(v126, v127))
      {
        v128 = v123;
        v129 = v122;
        v130 = swift_slowAlloc();
        v181 = swift_slowAlloc();
        *&v223 = v181;
        *v130 = v172;
        sub_24FE73100(&qword_27F3A53A8, MEMORY[0x277CC9260]);
        LODWORD(v171) = v127;
        v131 = sub_24FEDE824();
        v133 = v132;
        v134 = *v178;
        v170 = v126;
        v135 = v129;
        v55 = v214;
        v134(v135, v128);
        v136 = sub_24FE70EC4(v131, v133, &v223);

        *(v130 + 4) = v136;
        *(v130 + 12) = 2080;
        swift_getErrorValue();
        v137 = sub_24FEDE8A4();
        v139 = sub_24FE70EC4(v137, v138, &v223);

        *(v130 + 14) = v139;
        v57 = v217;
        v140 = v170;
        _os_log_impl(&dword_24FE50000, v170, v171, "Failed to load file data at %s: %s", v130, 0x16u);
        v141 = v181;
        swift_arrayDestroy();
        MEMORY[0x25305B320](v141, -1, -1);
        MEMORY[0x25305B320](v130, -1, -1);

        result = (v134)(v55, v180);
        v58 = v216;
      }

      else
      {

        v156 = *v178;
        (*v178)(v122, v123);
        result = (v156)(v55, v123);
      }

      LODWORD(v181) = 0;
      v51 = 0;
      v56 = v215;
      v59 = v220;
      v52 = v209;
      v53 = v206;
      v50 = v221;
    }
  }

  if ((v50 & 0x8000000000000000) == 0)
  {
    if (v50 >= *(v52 + 16))
    {
      goto LABEL_61;
    }

    v61 = v50 + 1;
    v62 = v52 + ((*(v201 + 80) + 32) & ~*(v201 + 80)) + *(v201 + 72) * v50;
    v63 = *(v57 + 48);
    v64 = v200;
    *v200 = v50;
    sub_24FE70838(v62, v64 + v63, type metadata accessor for RichContentResultSegment);
    sub_24FE6315C(v64, v58, &qword_27F3A5360, &qword_24FEE1BC0);
    v60 = 0;
    v221 = v61;
    goto LABEL_12;
  }

  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t TextGenerationView.init(model:shouldMockSnippetContext:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for GenerativeRichTextResultSnippetModel(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FE70838(a1, v9, type metadata accessor for GenerativeRichTextResultSnippetModel);
  v12 = 1;
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  TextGenerationView.init(model:shouldMockSnippetContext:presentationOptions:)(v9, a2, &v12, a3);
  return sub_24FE73150(a1, type metadata accessor for GenerativeRichTextResultSnippetModel);
}

void *sub_24FE6D86C(void *result)
{
  v2 = result[2];
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_24FE70D7C(result, v11, 1, v3, &qword_27F3A54A8, &qword_24FEE1ED8, &qword_27F3A54B0, &qword_24FEE1EE0);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54B0, &qword_24FEE1EE0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24FE6D994()
{
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54D0, &qword_24FEE1F00);
  v1 = *(*(v98 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v98);
  v97 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v96 = &v75 - v4;
  v5 = sub_24FEDC714();
  v110 = *(v5 - 8);
  v6 = *(v110 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54D8, &qword_24FEE1F08);
  v9 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95);
  v94 = &v75 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54E0, &qword_24FEE1F10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v75 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54E8, &qword_24FEE1F18);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v93 = &v75 - v17;
  v109 = sub_24FEDC5A4();
  v102 = *(v109 - 8);
  v18 = *(v102 + 64);
  MEMORY[0x28223BE20](v109);
  v108 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_24FEDC774();
  v20 = *(v100 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v100);
  v99 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54F0, &qword_24FEE1F20);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v107 = &v75 - v25;
  v106 = type metadata accessor for DocumentOutlineElement();
  v26 = *(v106 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v106);
  v29 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = LaTeXMathTracker.instance.unsafeMutableAddressor();
  swift_beginAccess();
  v85 = v30;
  v31 = *(**v30 + 192);

  v31(v32);

  v33 = *(type metadata accessor for TextGenerationView(0) + 20);
  v83 = v0;
  v34 = *(v0 + v33);
  result = DocumentViewModel.elements.getter();
  v101 = *(result + 16);
  if (!v101)
  {
  }

  v36 = 0;
  v105 = result + 32;
  v37 = (v26 + 56);
  v92 = (v20 + 8);
  v91 = (v110 + 32);
  v90 = (v110 + 8);
  v89 = (v102 + 8);
  v38 = v107;
  v39 = v106;
  v103 = result;
  v104 = v37;
  while (1)
  {
    if (v36 >= *(result + 16))
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

    sub_24FE72D1C(v105 + 40 * v36, &v117);
    sub_24FE72D1C(&v117, &v114);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54B0, &qword_24FEE1EE0);
    v40 = swift_dynamicCast();
    v41 = *v104;
    if (v40)
    {
      break;
    }

    v41(v38, 1, 1, v39);
    sub_24FE58B7C(v38, &qword_27F3A54F0, &qword_24FEE1F20);
    sub_24FE72D1C(&v117, v113);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54F8, &qword_24FEE1F28);
    if (swift_dynamicCast())
    {
      sub_24FE71ADC(v111, &v114);
      v72 = sub_24FE6E608(&v114);
      __swift_destroy_boxed_opaque_existential_1(&v114);
      __swift_destroy_boxed_opaque_existential_1(&v117);
      if (v72)
      {
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v117);
      v112 = 0;
      memset(v111, 0, sizeof(v111));
      sub_24FE58B7C(v111, &qword_27F3A5500, &qword_24FEE1F30);
    }

LABEL_4:
    result = v103;
    if (++v36 == v101)
    {
    }
  }

  v41(v38, 0, 1, v39);
  result = sub_24FE728F8(v38, v29, type metadata accessor for DocumentOutlineElement);
  v42 = *&v29[*(v39 + 20)];
  v81 = *(v42 + 16);
  if (!v81)
  {
LABEL_21:
    sub_24FE73150(v29, type metadata accessor for DocumentOutlineElement);
    __swift_destroy_boxed_opaque_existential_1(&v117);
    goto LABEL_4;
  }

  v43 = 0;
  v44 = v42 + 32;
  v79 = v8;
  v78 = v14;
  v87 = v29;
  v86 = v36;
  v77 = v42;
  v76 = v42 + 32;
  while (v43 < *(v42 + 16))
  {
    v82 = v43;
    v45 = *(*(v44 + 8 * v43) + 16);

    v84 = v45;
    if (v45)
    {
      v46 = 0;
      v47 = result + 32;
      v88 = result;
      v80 = result + 32;
      while (v46 < *(result + 16))
      {
        v110 = v46;
        sub_24FE72D1C(v47 + 40 * v46, &v114);
        v48 = v115;
        v49 = v116;
        __swift_project_boxed_opaque_existential_1(&v114, v115);
        v50 = v99;
        (*(v49 + 24))(v48, v49);
        sub_24FEDC574();
        (*v92)(v50, v100);
        v51 = sub_24FE73100(&qword_27F3A5508, MEMORY[0x277CC8B30]);
        sub_24FEDE454();
        sub_24FE73100(&qword_27F3A5510, MEMORY[0x277CC8C20]);
        result = sub_24FEDE194();
        if ((result & 1) == 0)
        {
          goto LABEL_27;
        }

        sub_24FEDE474();
        sub_24FE73100(&qword_27F3A5518, MEMORY[0x277CC8C20]);
        result = sub_24FEDE184();
        if ((result & 1) == 0)
        {
          goto LABEL_28;
        }

        ++v110;
        v52 = *v91;
        v53 = v96;
        (*v91)(v96, v14, v5);
        v102 = v51;
        v54 = v98;
        v52((v53 + *(v98 + 48)), v8, v5);
        v55 = v97;
        sub_24FE58B14(v53, v97, &qword_27F3A54D0, &qword_24FEE1F00);
        v56 = *(v54 + 48);
        v57 = v94;
        v52(v94, v55, v5);
        v58 = *v90;
        (*v90)(v55 + v56, v5);
        v59 = v53;
        v60 = v108;
        sub_24FE6315C(v59, v55, &qword_27F3A54D0, &qword_24FEE1F00);
        v52((v57 + *(v95 + 36)), (v55 + *(v54 + 48)), v5);
        v36 = v86;
        v61 = v55;
        v62 = v109;
        v58(v61, v5);
        sub_24FEDE494();
        sub_24FE58B7C(v57, &qword_27F3A54D8, &qword_24FEE1F08);
        (*v89)(v60, v62);
        v63 = sub_24FEDE224();
        v65 = v64;
        v66 = LaTeXMathExtractor.ExtractionType.all.unsafeMutableAddressor();
        v67 = static LaTeXMathExtractor.extract(from:extractingTypes:)(v63, v65, *v66);

        v68 = *(v67 + 16) + 1;
        v69 = 64;
        v29 = v87;
        v38 = v107;
        v39 = v106;
        while (--v68)
        {
          v70 = *(v67 + v69);
          v69 += 40;
          if ((v70 & 1) == 0)
          {

            v73 = v85;
            swift_beginAccess();
            v74 = *(**v73 + 104);

            v74(1);

            __swift_destroy_boxed_opaque_existential_1(&v114);

            sub_24FE73150(v29, type metadata accessor for DocumentOutlineElement);
            return __swift_destroy_boxed_opaque_existential_1(&v117);
          }
        }

        __swift_destroy_boxed_opaque_existential_1(&v114);
        v46 = v110;
        v8 = v79;
        v14 = v78;
        result = v88;
        v47 = v80;
        if (v110 == v84)
        {
          goto LABEL_20;
        }
      }

      goto LABEL_26;
    }

LABEL_20:
    v71 = v82 + 1;

    v43 = v71;
    v42 = v77;
    v44 = v76;
    if (v71 == v81)
    {
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

BOOL sub_24FE6E608(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54E8, &qword_24FEE1F18);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v29 - v4;
  v6 = sub_24FEDC5A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24FEDC774();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  (*(v17 + 24))(v16, v17);
  sub_24FEDC574();
  (*(v12 + 8))(v15, v11);
  sub_24FE6E8E4(v5);
  (*(v7 + 8))(v10, v6);
  v18 = sub_24FEDE224();
  v20 = v19;
  v21 = LaTeXMathExtractor.ExtractionType.all.unsafeMutableAddressor();
  v22 = static LaTeXMathExtractor.extract(from:extractingTypes:)(v18, v20, *v21);

  v23 = *(v22 + 16) + 1;
  v24 = 64;
  while (--v23)
  {
    v25 = *(v22 + v24);
    v24 += 40;
    if ((v25 & 1) == 0)
    {

      v26 = LaTeXMathTracker.instance.unsafeMutableAddressor();
      swift_beginAccess();
      v27 = *(**v26 + 104);

      v27(1);

      return v23 != 0;
    }
  }

  return v23 != 0;
}

uint64_t sub_24FE6E8E4@<X0>(uint64_t a1@<X8>)
{
  v28[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54D0, &qword_24FEE1F00);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v28 - v7;
  v9 = sub_24FEDC714();
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v9);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54D8, &qword_24FEE1F08);
  v14 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v30 = v28 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54E0, &qword_24FEE1F10);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - v18;
  v20 = sub_24FEDC5A4();
  v21 = sub_24FE73100(&qword_27F3A5508, MEMORY[0x277CC8B30]);
  v31 = v20;
  v22 = v21;
  sub_24FEDE454();
  sub_24FE73100(&qword_27F3A5510, MEMORY[0x277CC8C20]);
  result = sub_24FEDE194();
  if (result)
  {
    sub_24FEDE474();
    sub_24FE73100(&qword_27F3A5518, MEMORY[0x277CC8C20]);
    result = sub_24FEDE184();
    if (result)
    {
      v28[0] = v1;
      v28[1] = v22;
      v24 = v10[4];
      v24(v8, v19, v9);
      v24(&v8[*(v2 + 48)], v13, v9);
      sub_24FE58B14(v8, v6, &qword_27F3A54D0, &qword_24FEE1F00);
      v25 = *(v2 + 48);
      v26 = v30;
      v24(v30, v6, v9);
      v27 = v10[1];
      v27(&v6[v25], v9);
      sub_24FE6315C(v8, v6, &qword_27F3A54D0, &qword_24FEE1F00);
      v24((v26 + *(v29 + 36)), &v6[*(v2 + 48)], v9);
      v27(v6, v9);
      sub_24FEDE494();
      return sub_24FE58B7C(v26, &qword_27F3A54D8, &qword_24FEE1F08);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24FE6ECF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A55B8, &qword_24FEE1FD0);
  sub_24FE73044();
  return sub_24FEDDA34();
}

uint64_t sub_24FE6ED48@<X0>(uint64_t a1@<X8>)
{
  sub_24FEDDCB4();
  v2 = sub_24FEDDA04();
  v4 = v3;
  v6 = v5;
  sub_24FEDD7E4();
  v7 = sub_24FEDD994();
  v9 = v8;
  v11 = v10;

  sub_24FE56B94(v2, v4, v6 & 1);

  sub_24FEDD664();
  v38 = sub_24FEDD974();
  v13 = v12;
  v39 = v14;
  v40 = v15;
  sub_24FE56B94(v7, v9, v11 & 1);

  sub_24FEDD4B4();
  v16 = sub_24FEDD9D4();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = sub_24FEDD7E4();
  KeyPath = swift_getKeyPath();
  v72 = v20 & 1;
  sub_24FEDDF14();
  sub_24FEDD294();
  *&v49 = v16;
  *(&v49 + 1) = v18;
  LOBYTE(v50) = v20 & 1;
  *(&v50 + 1) = *v71;
  DWORD1(v50) = *&v71[3];
  *(&v50 + 1) = v22;
  LOWORD(v51) = 256;
  *(&v51 + 2) = v69;
  WORD3(v51) = v70;
  *(&v51 + 1) = KeyPath;
  *v52 = v23;
  *&v52[40] = v44;
  v26 = v43;
  v25 = v44;
  *&v52[24] = v43;
  v27 = v42;
  *&v52[8] = v42;
  *&v52[104] = v48;
  v29 = v47;
  v28 = v48;
  *&v52[88] = v47;
  *&v52[72] = v46;
  v31 = v45;
  v30 = v46;
  *&v52[56] = v45;
  v32 = v50;
  *(a1 + 32) = v49;
  *(a1 + 48) = v32;
  v33 = *&v52[32];
  *(a1 + 96) = *&v52[16];
  *(a1 + 112) = v33;
  v34 = *v52;
  *(a1 + 64) = v51;
  *(a1 + 80) = v34;
  v35 = *&v52[96];
  *(a1 + 160) = *&v52[80];
  *(a1 + 176) = v35;
  v36 = *&v52[64];
  *(a1 + 128) = *&v52[48];
  *(a1 + 144) = v36;
  v64 = v25;
  v63 = v26;
  v62 = v27;
  v41[168] = v39 & 1;
  *a1 = v38;
  *(a1 + 8) = v13;
  *(a1 + 16) = v39 & 1;
  *(a1 + 24) = v40;
  *(a1 + 192) = *&v52[112];
  v53[0] = v16;
  v53[1] = v18;
  v54 = v20 & 1;
  *v55 = *v71;
  *&v55[3] = *&v71[3];
  v56 = v22;
  v57 = 256;
  v58 = v69;
  v59 = v70;
  v60 = KeyPath;
  v61 = v23;
  v68 = v28;
  v67 = v29;
  v66 = v30;
  v65 = v31;
  sub_24FE629DC(v38, v13, v39 & 1);

  sub_24FE58B14(&v49, v41, &qword_27F3A55E0, &qword_24FEE2018);
  sub_24FE58B7C(v53, &qword_27F3A55E0, &qword_24FEE2018);
  sub_24FE56B94(v38, v13, v39 & 1);
}

uint64_t sub_24FE6F0C8@<X0>(uint64_t a1@<X8>)
{
  v91 = a1;
  v1 = type metadata accessor for RateLimitTextView(0);
  v87 = *(v1 - 8);
  v86 = *(v87 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v85 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5420, &qword_24FEE1E78);
  v3 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v82 = &v70 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5428, &qword_24FEE1E80);
  v89 = *(v5 - 8);
  v90 = v5;
  v6 = *(v89 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v88 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v84 = &v70 - v9;
  v10 = sub_24FEDD054();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v70 - v16;
  v80 = sub_24FEDDF84();
  v18 = *(v80 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v80);
  v76 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24FEDDE84();
  v78 = *(v21 - 8);
  v79 = v21;
  v22 = *(v78 + 64);
  MEMORY[0x28223BE20](v21);
  v71 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5430, &qword_24FEE1E88);
  v24 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v26 = &v70 - v25;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5438, &qword_24FEE1E90);
  v75 = *(v77 - 8);
  v27 = *(v75 + 64);
  MEMORY[0x28223BE20](v77);
  v72 = &v70 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5440, &qword_24FEE1E98);
  v30 = v29 - 8;
  v31 = *(*(v29 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v81 = &v70 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v70 - v35;
  MEMORY[0x28223BE20](v34);
  v92 = &v70 - v37;
  sub_24FEDDE74();
  sub_24FE70A24(v17);
  (*(v11 + 104))(v15, *MEMORY[0x277CDF3D0], v10);
  v38 = sub_24FEDD044();
  v39 = *(v11 + 8);
  v39(v15, v10);
  v39(v17, v10);
  v40 = MEMORY[0x277CE13B0];
  if ((v38 & 1) == 0)
  {
    v40 = MEMORY[0x277CE13B8];
  }

  v41 = v76;
  v42 = v80;
  (*(v18 + 104))(v76, *v40, v80);
  (*(v18 + 32))(&v26[*(v74 + 36)], v41, v42);
  (*(v78 + 32))(v26, v71, v79);
  sub_24FE72698();
  v43 = v72;
  sub_24FEDDA54();
  sub_24FE58B7C(v26, &qword_27F3A5430, &qword_24FEE1E88);
  v44 = sub_24FEDD754();
  sub_24FEDD014();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  (*(v75 + 32))(v36, v43, v77);
  v53 = &v36[*(v30 + 44)];
  *v53 = v44;
  *(v53 + 1) = v46;
  *(v53 + 2) = v48;
  *(v53 + 3) = v50;
  *(v53 + 4) = v52;
  v53[40] = 0;
  v54 = v92;
  sub_24FE72754(v36, v92);
  v55 = v82;
  v56 = v73;
  sub_24FE6F924(v82);
  *(v55 + *(v83 + 36)) = 256;
  v57 = v85;
  sub_24FE70838(v56, v85, type metadata accessor for RateLimitTextView);
  v58 = (*(v87 + 80) + 16) & ~*(v87 + 80);
  v59 = swift_allocObject();
  sub_24FE728F8(v57, v59 + v58, type metadata accessor for RateLimitTextView);
  sub_24FE729C0();
  v60 = v84;
  sub_24FEDDB14();

  sub_24FE58B7C(v55, &qword_27F3A5420, &qword_24FEE1E78);
  v61 = v81;
  sub_24FE58B14(v54, v81, &qword_27F3A5440, &qword_24FEE1E98);
  v62 = v88;
  v63 = v89;
  v64 = *(v89 + 16);
  v65 = v90;
  v64(v88, v60, v90);
  v66 = v91;
  sub_24FE58B14(v61, v91, &qword_27F3A5440, &qword_24FEE1E98);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5480, &qword_24FEE1EB8);
  v64((v66 + *(v67 + 48)), v62, v65);
  v68 = *(v63 + 8);
  v68(v60, v65);
  sub_24FE58B7C(v92, &qword_27F3A5440, &qword_24FEE1E98);
  v68(v62, v65);
  return sub_24FE58B7C(v61, &qword_27F3A5440, &qword_24FEE1E98);
}

uint64_t sub_24FE6F924@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v2 = sub_24FEDD054();
  v79 = *(v2 - 8);
  v80 = v2;
  v3 = *(v79 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v76 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v75 = &v70 - v6;
  v81 = sub_24FEDDF84();
  v78 = *(v81 - 8);
  v7 = *(v78 + 64);
  MEMORY[0x28223BE20](v81);
  v77 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24FEDD1E4();
  v72 = *(v9 - 8);
  v10 = *(v72 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24FEDD4A4();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5478, &qword_24FEE1EB0);
  v16 = *(v15 - 8);
  v74 = v15 - 8;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v73 = &v70 - v18;
  v19 = (v1 + *(type metadata accessor for RateLimitTextView(0) + 20));
  v21 = *v19;
  v20 = v19[1];
  v22 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v22 = *v19 & 0xFFFFFFFFFFFFLL;
  }

  v23 = 32 * (v22 != 0);
  if (v22)
  {
    v24 = 0xE100000000000000;
  }

  else
  {
    v24 = 0xE000000000000000;
  }

  v83 = *v19;
  v84 = v20;

  MEMORY[0x25305A470](v23, v24);

  sub_24FEDD494();
  sub_24FEDD484();
  sub_24FEDD474();

  sub_24FEDD484();
  v25 = v19[3];
  v83 = v19[2];
  v84 = v25;
  sub_24FE56B40();

  v26 = sub_24FEDD9F4();
  v28 = v27;
  v30 = v29;
  v71 = v12;
  sub_24FEDD1D4();
  v31 = sub_24FEDD974();
  v33 = v32;
  v35 = v34;
  sub_24FE56B94(v26, v28, v30 & 1);

  (*(v72 + 8))(v71, v9);
  sub_24FEDD464();
  sub_24FE56B94(v31, v33, v35 & 1);

  sub_24FEDD484();
  sub_24FEDD4C4();
  v36 = sub_24FEDD9D4();
  v38 = v37;
  v40 = v39;
  sub_24FEDD8A4();
  v41 = sub_24FEDD994();
  v43 = v42;
  v45 = v44;
  v47 = v46;

  sub_24FE56B94(v36, v38, v40 & 1);

  v48 = v75;
  sub_24FE70A24(v75);
  v50 = v79;
  v49 = v80;
  v51 = v76;
  (*(v79 + 104))(v76, *MEMORY[0x277CDF3D0], v80);
  LOBYTE(v36) = sub_24FEDD044();
  v52 = *(v50 + 8);
  v52(v51, v49);
  v52(v48, v49);
  v54 = v77;
  v53 = v78;
  v55 = MEMORY[0x277CE13B0];
  if ((v36 & 1) == 0)
  {
    v55 = MEMORY[0x277CE13B8];
  }

  v56 = v81;
  (*(v78 + 104))(v77, *v55, v81);
  v57 = v73;
  (*(v53 + 32))(&v73[*(v74 + 44)], v54, v56);
  *v57 = v41;
  *(v57 + 8) = v43;
  *(v57 + 16) = v45 & 1;
  *(v57 + 24) = v47;
  v58 = sub_24FEDD7A4();
  sub_24FEDD014();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v67 = v82;
  sub_24FE6315C(v57, v82, &qword_27F3A5478, &qword_24FEE1EB0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5468, &qword_24FEE1EA8);
  v69 = v67 + *(result + 36);
  *v69 = v58;
  *(v69 + 8) = v60;
  *(v69 + 16) = v62;
  *(v69 + 24) = v64;
  *(v69 + 32) = v66;
  *(v69 + 40) = 0;
  return result;
}

uint64_t sub_24FE6FF2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27[-v4];
  v6 = sub_24FEDC9E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = (a1 + *(type metadata accessor for RateLimitTextView(0) + 20));
  v12 = v11[4];
  v13 = v11[5];
  sub_24FEDC9D4();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_24FE58B7C(v5, &unk_27F3A4A40, &qword_24FEE08C0);
  }

  (*(v7 + 32))(v10, v5, v6);
  v15 = v11[3];
  v16 = v11[2] & 0xFFFFFFFFFFFFLL;
  if ((v15 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v15) & 0xF;
  }

  if (!v16)
  {
    return (*(v7 + 8))(v10, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5488, &unk_24FEE2440);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24FEE0830;
  v18 = *MEMORY[0x277D0AC70];
  *(inited + 32) = sub_24FEDE1F4();
  *(inited + 40) = v19;
  *(inited + 48) = 1;
  v20 = *MEMORY[0x277D0AC58];
  *(inited + 56) = sub_24FEDE1F4();
  *(inited + 64) = v21;
  *(inited + 72) = 1;
  v22 = sub_24FE72B5C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5490, &qword_24FEE1EC0);
  swift_arrayDestroy();
  v23 = [objc_opt_self() defaultWorkspace];
  if (v23)
  {
    v24 = v23;
    v25 = sub_24FEDC974();
    sub_24FE7023C(v22);

    v26 = sub_24FEDE144();

    [v24 openSensitiveURL:v25 withOptions:v26];

    return (*(v7 + 8))(v10, v6);
  }

  (*(v7 + 8))(v10, v6);
}

unint64_t sub_24FE7023C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5498, &qword_24FEE1EC8);
    v2 = sub_24FEDE6D4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + v15);

        swift_dynamicCast();
        sub_24FE725D8(&v25, v27);
        sub_24FE725D8(v27, v28);
        sub_24FE725D8(v28, &v26);
        result = sub_24FE71544(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_24FE725D8(&v26, v12);
          v8 = v13;
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
          *v20 = v18;
          v20[1] = v17;
          result = sub_24FE725D8(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
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

uint64_t sub_24FE705E0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_24FEDCF54();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  sub_24FEDCF24();
  return sub_24FEDCF44();
}

uint64_t sub_24FE7066C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_24FEDCF54();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_24FE70728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_24FE70838(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24FE708A0(uint64_t result)
{
  if (result != 1)
  {
    return sub_24FE708C4(result);
  }

  return result;
}

uint64_t sub_24FE708C4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_24FE709A8@<X0>(uint64_t *a1@<X8>)
{
  AttributeScopes.markdownDocumentAttributes.getter();
  result = type metadata accessor for AttributeScopes.MarkdownDocumentAttributes();
  *a1 = result;
  return result;
}

unint64_t sub_24FE709D8()
{
  result = qword_27F3A5390;
  if (!qword_27F3A5390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F3A5390);
  }

  return result;
}

uint64_t sub_24FE70A24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24FEDD3E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A52C0, &qword_24FEE1EA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_24FE58B14(v2, &v17 - v11, &qword_27F3A52C0, &qword_24FEE1EA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_24FEDD054();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_24FEDE4D4();
    v16 = sub_24FEDD714();
    sub_24FEDCF14();

    sub_24FEDD3D4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_24FE70C24(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

char *sub_24FE70C70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A55E8, &qword_24FEE2020);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_24FE70D7C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_24FE70EC4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24FE70F90(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_24FE72CC0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_24FE70F90(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_24FE7109C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_24FEDE674();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_24FE7109C(uint64_t a1, unint64_t a2)
{
  v4 = sub_24FE710E8(a1, a2);
  sub_24FE71218(&unk_286284510);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_24FE710E8(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24FE71304(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_24FEDE674();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_24FEDE284();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24FE71304(v10, 0);
        result = sub_24FEDE614();
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

uint64_t sub_24FE71218(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_24FE71378(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24FE71304(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54B8, &qword_24FEE1EE8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24FE71378(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54B8, &qword_24FEE1EE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_24FE7146C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_24FEDE5A4();

  return sub_24FE715BC(a1, v5);
}

unint64_t sub_24FE714B0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_24FEDE1F4();
  sub_24FEDE904();
  sub_24FEDE254();
  v4 = sub_24FEDE924();

  return sub_24FE71684(a1, v4);
}

unint64_t sub_24FE71544(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24FEDE904();
  sub_24FEDE254();
  v6 = sub_24FEDE924();

  return sub_24FE71788(a1, a2, v6);
}

unint64_t sub_24FE715BC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_24FE725E8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x25305A7B0](v9, a1);
      sub_24FE72644(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_24FE71684(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_24FEDE1F4();
      v9 = v8;
      if (v7 == sub_24FEDE1F4() && v9 == v10)
      {
        break;
      }

      v12 = sub_24FEDE844();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_24FE71788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_24FEDE844())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_24FE71840(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5418, &unk_24FEE1E68);
    v3 = sub_24FEDE6D4();
    v4 = a1 + 32;

    while (1)
    {
      sub_24FE58B14(v4, v13, &qword_27F3A4C88, &qword_24FEE0C50);
      result = sub_24FE7146C(v13);
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
      result = sub_24FE725D8(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24FE7197C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54C8, &qword_24FEE1EF8);
    v3 = sub_24FEDE6D4();
    v4 = a1 + 32;

    while (1)
    {
      sub_24FE58B14(v4, &v11, &qword_27F3A5398, &qword_24FEE1C48);
      v5 = v11;
      result = sub_24FE714B0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_24FE725D8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_24FE71ADC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_24FE71AF4(uint64_t result)
{
  if (result != 1)
  {
    return sub_24FE71B04(result);
  }

  return result;
}

uint64_t sub_24FE71B04(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24FE71BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GenerativeRichTextResultSnippetModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A53B0, qword_24FEE1CC8);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24FE71CF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GenerativeRichTextResultSnippetModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A53B0, qword_24FEE1CC8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24FE71E28()
{
  type metadata accessor for GenerativeRichTextResultSnippetModel(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for DocumentViewModel();
    if (v1 <= 0x3F)
    {
      sub_24FE72568(319, &qword_27F3A53C8, MEMORY[0x277CDFA28]);
      if (v2 <= 0x3F)
      {
        sub_24FE71F7C(319, &qword_27F3A53D0, &qword_27F3A53D8, &qword_24FEE1D08);
        if (v3 <= 0x3F)
        {
          sub_24FE71F7C(319, &qword_27F3A53E0, &qword_27F3A53E8, &qword_24FEE1D10);
          if (v4 <= 0x3F)
          {
            sub_24FE71FD0();
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

void sub_24FE71F7C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_24FEDE3A4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_24FE71FD0()
{
  if (!qword_27F3A53F0)
  {
    v0 = sub_24FEDE554();
    if (!v1)
    {
      atomic_store(v0, &qword_27F3A53F0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_16MarkdownDocument0A17FontConfigurationVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24FE72054(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 50))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24FE720B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24FE72124(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_24FE7216C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24FE721C8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5338, &qword_24FEE1BA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5330, &qword_24FEE1B98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5328, &qword_24FEE1B90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5348, &qword_24FEE1BB0);
  sub_24FE58928(&qword_27F3A5350, &qword_27F3A5328, &qword_24FEE1B90);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24FE72310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A53F8, &qword_24FEE1DF8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24FE723F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A53F8, &qword_24FEE1DF8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24FE724D8()
{
  sub_24FE72568(319, &qword_27F3A5410, MEMORY[0x277CDF3E0]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24FE72568(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24FEDD074();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_OWORD *sub_24FE725D8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_24FE72698()
{
  result = qword_27F3A5448;
  if (!qword_27F3A5448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5430, &qword_24FEE1E88);
    sub_24FE73100(&qword_27F3A5450, MEMORY[0x277CDF088]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5448);
  }

  return result;
}

uint64_t sub_24FE72754(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5440, &qword_24FEE1E98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE727C4()
{
  v1 = type metadata accessor for RateLimitTextView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A52C0, &qword_24FEE1EA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24FEDD054();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = (v5 + *(v1 + 20));
  v9 = v8[1];

  v10 = v8[3];

  v11 = v8[5];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24FE728F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24FE72960()
{
  v1 = *(type metadata accessor for RateLimitTextView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24FE6FF2C(v2);
}

unint64_t sub_24FE729C0()
{
  result = qword_27F3A5458;
  if (!qword_27F3A5458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5420, &qword_24FEE1E78);
    sub_24FE72A4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5458);
  }

  return result;
}

unint64_t sub_24FE72A4C()
{
  result = qword_27F3A5460;
  if (!qword_27F3A5460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5468, &qword_24FEE1EA8);
    sub_24FE72AD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5460);
  }

  return result;
}

unint64_t sub_24FE72AD8()
{
  result = qword_27F3A5470;
  if (!qword_27F3A5470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5478, &qword_24FEE1EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5470);
  }

  return result;
}

unint64_t sub_24FE72B5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54A0, &qword_24FEE1ED0);
    v3 = sub_24FEDE6D4();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24FE71544(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_24FE72CC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24FE72D1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_24FE72D80()
{
  result = qword_27F3A5560;
  if (!qword_27F3A5560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5550, &qword_24FEE1F70);
    sub_24FE72E38();
    sub_24FE58928(&qword_27F3A5590, &qword_27F3A5598, &qword_24FEE1F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5560);
  }

  return result;
}

unint64_t sub_24FE72E38()
{
  result = qword_27F3A5568;
  if (!qword_27F3A5568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5548, &qword_24FEE1F68);
    sub_24FE72EF0();
    sub_24FE58928(&qword_27F3A5580, &qword_27F3A5588, &qword_24FEE1F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5568);
  }

  return result;
}

unint64_t sub_24FE72EF0()
{
  result = qword_27F3A5570;
  if (!qword_27F3A5570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5540, &qword_24FEE1F60);
    sub_24FE58928(&qword_27F3A5578, &qword_27F3A5538, &qword_24FEE1F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5570);
  }

  return result;
}

double sub_24FE7300C(_OWORD *a1)
{
  result = 0.0;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  *(a1 + 297) = 0u;
  return result;
}

unint64_t sub_24FE73044()
{
  result = qword_27F3A55C8;
  if (!qword_27F3A55C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A55B8, &qword_24FEE1FD0);
    sub_24FE73100(&qword_27F3A55D0, type metadata accessor for AttributionsTextView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A55C8);
  }

  return result;
}

uint64_t sub_24FE73100(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24FE73150(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24FE73214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7972657571 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24FEDE844();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24FE73298(uint64_t a1)
{
  v2 = sub_24FE7344C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE732D4(uint64_t a1)
{
  v2 = sub_24FE7344C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GenerativeSearchWebButtonSnippetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5600, &qword_24FEE2030);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE7344C();
  sub_24FEDE944();
  sub_24FEDE7E4();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_24FE7344C()
{
  result = qword_27F3A5608;
  if (!qword_27F3A5608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5608);
  }

  return result;
}

uint64_t GenerativeSearchWebButtonSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5610, &qword_24FEE2038);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE7344C();
  sub_24FEDE934();
  if (!v2)
  {
    v11 = sub_24FEDE754();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24FE73634(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5600, &qword_24FEE2030);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE7344C();
  sub_24FEDE944();
  sub_24FEDE7E4();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_24FE73794()
{
  result = qword_27F3A5618;
  if (!qword_27F3A5618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5618);
  }

  return result;
}

unint64_t sub_24FE737EC()
{
  result = qword_27F3A5620;
  if (!qword_27F3A5620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5620);
  }

  return result;
}

unint64_t sub_24FE73844()
{
  result = qword_27F3A5628;
  if (!qword_27F3A5628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5628);
  }

  return result;
}

uint64_t GenerativeDismissalView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for GenerativeDismissalView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FEDD4B4();
  v8 = sub_24FEDD9D4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_24FE73C04(v2, v7);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  result = sub_24FE73C6C(v7, v16 + v15);
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  *(a1 + 32) = sub_24FE73CD0;
  *(a1 + 40) = v16;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  return result;
}

uint64_t type metadata accessor for GenerativeDismissalView()
{
  result = qword_27F3A5648;
  if (!qword_27F3A5648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24FE73A50()
{
  v0 = sub_24FEDE0B4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F3A46A0 != -1)
  {
    swift_once();
  }

  v5 = sub_24FEDCF54();
  __swift_project_value_buffer(v5, qword_27F3A5630);
  v6 = sub_24FEDCF34();
  v7 = sub_24FEDE4B4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_24FE50000, v6, v7, "Dismissing Siri by sending SAUICloseAssistant", v8, 2u);
    MEMORY[0x25305B320](v8, -1, -1);
  }

  sub_24FEDE044();
  v9 = [objc_allocWithZone(MEMORY[0x277D47A20]) init];
  sub_24FEDE094();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_24FE73C04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeDismissalView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE73C6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeDismissalView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE73CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FEDD4B4();
  v8 = sub_24FEDD9D4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_24FE73C04(v3, v7);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  result = sub_24FE73C6C(v7, v16 + v15);
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = sub_24FE7429C;
  *(a2 + 40) = v16;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

uint64_t sub_24FE73E3C()
{
  v0 = sub_24FEDCF54();
  __swift_allocate_value_buffer(v0, qword_27F3A5630);
  __swift_project_value_buffer(v0, qword_27F3A5630);
  sub_24FEDCF24();
  return sub_24FEDCF44();
}

uint64_t static Logger.dismissalView.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F3A46A0 != -1)
  {
    swift_once();
  }

  v2 = sub_24FEDCF54();
  v3 = __swift_project_value_buffer(v2, qword_27F3A5630);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24FE73F88(uint64_t a1, uint64_t a2)
{
  v4 = sub_24FEDE064();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24FE74008(uint64_t a1, uint64_t a2)
{
  v4 = sub_24FEDE064();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24FE74078()
{
  result = sub_24FEDE064();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24FE740E8()
{
  result = qword_27F3A5658;
  if (!qword_27F3A5658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5660, &unk_24FEE22D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5658);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = *(type metadata accessor for GenerativeDismissalView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_24FEDE064();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24FE74238()
{
  v0 = *(*(type metadata accessor for GenerativeDismissalView() - 8) + 80);

  return sub_24FE73A50();
}

uint64_t AttributionsTextView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v49 = sub_24FEDDFD4();
  v4 = *(v49 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v50 = &v39 - v9;
  v47 = sub_24FEDE034();
  v10 = *(v47 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v47);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5668, &qword_24FEE2318);
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for AttributionsTextView();
  v15 = (a2 + v14[5]);
  v52 = 0;
  sub_24FEDDD34();
  v16 = v54;
  *v15 = v53;
  v15[1] = v16;
  v17 = a2 + v14[6];
  sub_24FE765DC(a1, v17, type metadata accessor for GenerativeResultAttributionSnippetModel);
  v18 = *(v17 + 48);
  v19 = *(v18 + 16);
  if (v19)
  {
    v39 = v14;
    v40 = a1;
    v41 = a2;
    v53 = MEMORY[0x277D84F90];
    sub_24FE76038(0, v19, 0);
    v20 = v53;
    v43 = v10 + 32;
    v44 = (v4 + 104);
    v42 = *MEMORY[0x277D63AD0];
    v21 = (v18 + 56);
    v45 = v13;
    v46 = v10;
    do
    {
      v22 = *(v21 - 2);
      v51 = *(v21 - 3);
      v23 = *(v21 - 1);
      v24 = *v21;
      v25 = objc_allocWithZone(MEMORY[0x277D479F0]);

      v26 = [v25 init];
      v27 = v50;
      sub_24FEDC9D4();
      v28 = sub_24FEDC9E4();
      v29 = *(v28 - 8);
      v30 = 0;
      if ((*(v29 + 48))(v27, 1, v28) != 1)
      {
        v31 = v50;
        v30 = sub_24FEDC974();
        (*(v29 + 8))(v31, v28);
      }

      [v26 setPunchOutUri_];

      v33 = v48;
      v32 = v49;
      *v48 = v26;
      (*v44)(v33, v42, v32);

      v34 = v45;
      sub_24FEDE024();

      v53 = v20;
      v36 = *(v20 + 16);
      v35 = *(v20 + 24);
      v37 = v46;
      if (v36 >= v35 >> 1)
      {
        sub_24FE76038(v35 > 1, v36 + 1, 1);
        v20 = v53;
      }

      *(v20 + 16) = v36 + 1;
      (*(v37 + 32))(v20 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v36, v34, v47);
      v21 += 4;
      --v19;
    }

    while (v19);
    result = sub_24FE76058(v40);
    a2 = v41;
    v14 = v39;
  }

  else
  {
    result = sub_24FE76058(a1);
    v20 = MEMORY[0x277D84F90];
  }

  *(a2 + v14[7]) = v20;
  return result;
}

uint64_t AttributionsTextView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_24FEDDF14();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5670, &qword_24FEE2320);
  sub_24FE747A4(v1, (a1 + *(v4 + 44)));
  v5 = sub_24FEDD8A4();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5678, &qword_24FEE2358);
  v8 = (a1 + *(result + 36));
  *v8 = KeyPath;
  v8[1] = v5;
  return result;
}

uint64_t sub_24FE747A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v153 = a2;
  v134 = sub_24FEDDFD4();
  v133 = *(v134 - 8);
  v3 = *(v133 + 64);
  MEMORY[0x28223BE20](v134);
  v132 = (&v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A56C8, &qword_24FEE2408);
  v151 = *(v150 - 8);
  v5 = *(v151 + 64);
  MEMORY[0x28223BE20](v150);
  v135 = &v131 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A56D0, &qword_24FEE2410);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v152 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v147 = &v131 - v11;
  v158 = type metadata accessor for AttributionsTextView();
  v143 = *(v158 - 1);
  v142 = *(v143 + 64);
  MEMORY[0x28223BE20](v158);
  v140 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A56D8, &qword_24FEE2418);
  v145 = *(v144 - 8);
  v13 = *(v145 + 64);
  MEMORY[0x28223BE20](v144);
  v141 = &v131 - v14;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A56E0, &qword_24FEE2420);
  v148 = *(v149 - 8);
  v15 = *(v148 + 64);
  v16 = MEMORY[0x28223BE20](v149);
  v146 = &v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v159 = &v131 - v18;
  v157 = a1;
  v139 = sub_24FE754C0();
  v20 = v19;
  v22 = v21;
  v138 = v23;
  v24 = sub_24FE758E8();
  v26 = v25;
  v28 = v27;
  LODWORD(v161) = sub_24FEDD664();
  v29 = sub_24FEDD974();
  v31 = v30;
  LOBYTE(a1) = v32;
  sub_24FE56B94(v24, v26, v28 & 1);

  v33 = v139;
  v156 = sub_24FEDD984();
  v155 = v34;
  v36 = v35;
  v154 = v37;
  sub_24FE56B94(v29, v31, a1 & 1);

  sub_24FE56B94(v33, v20, v22 & 1);

  v161 = 0x20A280E220;
  v162 = 0xA500000000000000;
  sub_24FE56B40();
  v38 = sub_24FEDD9F4();
  v40 = v39;
  LOBYTE(v29) = v41;
  sub_24FEDD814();
  v42 = sub_24FEDD8E4();
  v44 = v43;
  LOBYTE(v33) = v45;
  sub_24FE56B94(v38, v40, v29 & 1);

  LODWORD(v161) = sub_24FEDD664();
  v46 = sub_24FEDD974();
  v48 = v47;
  v50 = v49;
  sub_24FE56B94(v42, v44, v33 & 1);

  v51 = v156;
  v52 = v155;
  v138 = sub_24FEDD984();
  v137 = v53;
  LOBYTE(v42) = v54;
  v136 = v55;
  sub_24FE56B94(v46, v48, v50 & 1);

  sub_24FE56B94(v51, v52, v36 & 1);

  v56 = v157;
  v57 = v157 + v158[6];
  v58 = *(v57 + 40);
  v161 = *(v57 + 32);
  v162 = v58;

  v59 = sub_24FEDD9F4();
  v61 = v60;
  LOBYTE(v46) = v62;
  sub_24FEDD814();
  v63 = sub_24FEDD8E4();
  v65 = v64;
  LOBYTE(v44) = v66;
  sub_24FE56B94(v59, v61, v46 & 1);

  LODWORD(v161) = sub_24FEDD664();
  v67 = sub_24FEDD974();
  v69 = v68;
  LOBYTE(v46) = v70;
  sub_24FE56B94(v63, v65, v44 & 1);

  v71 = v138;
  v72 = v137;
  v155 = sub_24FEDD984();
  v154 = v73;
  LODWORD(v139) = v74;
  v156 = v75;
  sub_24FE56B94(v67, v69, v46 & 1);

  sub_24FE56B94(v71, v72, v42 & 1);

  v76 = sub_24FE754C0();
  v78 = v77;
  LOBYTE(v71) = v79;
  v161 = sub_24FEDDC44();
  v80 = sub_24FEDD974();
  v137 = v80;
  v82 = v81;
  LOBYTE(v65) = v83;
  v85 = v84;
  v138 = v84;
  sub_24FE56B94(v76, v78, v71 & 1);

  v161 = v80;
  v162 = v82;
  v163 = v65 & 1;
  v164 = v85;
  v86 = v140;
  sub_24FE765DC(v56, v140, type metadata accessor for AttributionsTextView);
  v87 = (*(v143 + 80) + 16) & ~*(v143 + 80);
  v88 = swift_allocObject();
  sub_24FE76648(v86, v88 + v87);
  v89 = v141;
  sub_24FEDDB14();

  sub_24FE56B94(v137, v82, v65 & 1);

  v90 = v157;
  sub_24FE765DC(v157, v86, type metadata accessor for AttributionsTextView);
  v91 = swift_allocObject();
  sub_24FE76648(v86, v91 + v87);
  v161 = MEMORY[0x277CE0BD8];
  v162 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  v92 = v144;
  sub_24FEDDA74();

  (*(v145 + 8))(v89, v92);
  v93 = *(v90 + v158[7]);
  if (*(v93 + 16))
  {
    v94 = sub_24FE758E8();
    v96 = v95;
    v98 = v97;
    v99 = v132;
    *v132 = v93;
    v100 = v133;
    v101 = v134;
    (*(v133 + 104))(v99, *MEMORY[0x277D63AD8], v134);

    v102 = sub_24FEDD8D4();
    v104 = v103;
    LODWORD(v145) = v105;
    v107 = v106;
    sub_24FE56B94(v94, v96, v98 & 1);

    (*(v100 + 8))(v99, v101);
    v161 = v102;
    v162 = v104;
    LOBYTE(v94) = v145 & 1;
    v163 = v145 & 1;
    v164 = v107;
    v108 = v135;
    sub_24FEDDA14();
    sub_24FE56B94(v102, v104, v94);

    v109 = sub_24FEDDC44();
    *(v108 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A56E8, &qword_24FEE2428) + 36)) = v109;
    v110 = (v157 + v158[5]);
    v111 = *v110;
    v112 = v110[1];
    v161 = v111;
    v162 = v112;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A56F0, &qword_24FEE2430);
    sub_24FEDDD44();
    v113 = v150;
    v114 = (v108 + *(v150 + 36));
    *v114 = v160;
    v114[1] = 0;
    v115 = v147;
    sub_24FE76968(v108, v147);
    v116 = 0;
    v117 = v113;
  }

  else
  {
    v115 = v147;
    v117 = v150;
    v116 = 1;
  }

  (*(v151 + 56))(v115, v116, 1, v117);
  v118 = v148;
  v119 = *(v148 + 16);
  v120 = v146;
  v121 = v149;
  v119(v146, v159, v149);
  v122 = v152;
  sub_24FE769D8(v115, v152);
  v123 = v153;
  v124 = v154;
  *v153 = v155;
  v123[1] = v124;
  v125 = v139 & 1;
  *(v123 + 16) = v139 & 1;
  v123[3] = v156;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A56F8, &qword_24FEE2438);
  v119(v123 + *(v126 + 48), v120, v121);
  sub_24FE769D8(v122, v123 + *(v126 + 64));
  v127 = v155;
  v128 = v154;
  sub_24FE629DC(v155, v154, v125);

  sub_24FE76A48(v115);
  v129 = *(v118 + 8);
  v129(v159, v121);
  sub_24FE76A48(v122);
  v129(v120, v121);
  sub_24FE56B94(v127, v128, v125);
}

uint64_t sub_24FE754C0()
{
  v1 = sub_24FEDD1E4();
  v62 = *(v1 - 8);
  v63 = v1;
  v2 = *(v62 + 64);
  MEMORY[0x28223BE20](v1);
  v61 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = (v0 + *(type metadata accessor for AttributionsTextView() + 24));
  if (v4[3])
  {
    v5 = v4[2];

    v60 = sub_24FEDDCE4();

    v6 = sub_24FEDDA04();
    v8 = v7;
    v10 = v9;
    sub_24FEDD814();
    v11 = sub_24FEDD8E4();
    v13 = v12;
    v15 = v14;
    v56 = v16;
    sub_24FE56B94(v6, v8, v10 & 1);

    sub_24FEDD4B4();
    v17 = sub_24FEDD9D4();
    v19 = v18;
    LOBYTE(v8) = v20;
    v21 = sub_24FEDD984();
    v58 = v22;
    v59 = v21;
    v57 = v23;
    v64 = v24;
    sub_24FE56B94(v17, v19, v8 & 1);

    sub_24FE56B94(v11, v13, v15 & 1);

    v25 = v4[1];
    v65 = *v4;
    v66 = v25;
    sub_24FE56B40();

    v26 = sub_24FEDD9F4();
    v28 = v27;
    LOBYTE(v19) = v29;
    sub_24FEDD824();
    v30 = sub_24FEDD8E4();
    v32 = v31;
    LOBYTE(v6) = v33;
    v56 = v34;
    sub_24FE56B94(v26, v28, v19 & 1);

    LOBYTE(v8) = v57;
    v36 = v58;
    v35 = v59;
    v37 = sub_24FEDD984();
    v39 = v38;
    v41 = v40;

    sub_24FE56B94(v30, v32, v6 & 1);

    v42 = v8 & 1;
  }

  else
  {
    v43 = v4[1];
    v65 = *v4;
    v66 = v43;
    sub_24FE56B40();

    v35 = sub_24FEDD9F4();
    v36 = v44;
    v46 = v45;
    v48 = v47;
    sub_24FEDD824();
    v64 = v48;
    v37 = sub_24FEDD8E4();
    v39 = v49;
    v41 = v50;
    v42 = v46 & 1;
  }

  sub_24FE56B94(v35, v36, v42);

  sub_24FE629DC(v37, v39, v41 & 1);

  v51 = v61;
  sub_24FEDD1D4();
  v52 = v63;
  v53 = sub_24FEDD974();
  sub_24FE56B94(v37, v39, v41 & 1);

  sub_24FE56B94(v37, v39, v41 & 1);

  (*(v62 + 8))(v51, v52);
  return v53;
}

uint64_t sub_24FE758E8()
{
  v1 = sub_24FEDD4A4();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = *(v0 + *(type metadata accessor for AttributionsTextView() + 28));
  if (*(v3 + 16))
  {
    sub_24FEDD494();
    sub_24FEDD484();
    v6 = *(v3 + 16);
    sub_24FEDD454();
    sub_24FEDD484();
    sub_24FEDD4C4();
    if (qword_27F3A4678 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_24FEDD4B4();
  if (qword_27F3A4678 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v4 = qword_27F3B30E0;
  return sub_24FEDD9D4();
}

uint64_t sub_24FE75B04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24[-v4];
  v6 = sub_24FEDC9E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = a1 + *(type metadata accessor for AttributionsTextView() + 24);
  v12 = type metadata accessor for GenerativeResultAttributionSnippetModel();
  sub_24FE76AB0(v11 + *(v12 + 32), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_24FE76B20(v5);
  }

  (*(v7 + 32))(v10, v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5488, &unk_24FEE2440);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24FEE0830;
  v15 = *MEMORY[0x277D0AC70];
  *(inited + 32) = sub_24FEDE1F4();
  *(inited + 40) = v16;
  *(inited + 48) = 1;
  v17 = *MEMORY[0x277D0AC58];
  *(inited + 56) = sub_24FEDE1F4();
  *(inited + 64) = v18;
  *(inited + 72) = 1;
  v19 = sub_24FE72B5C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5490, &qword_24FEE1EC0);
  swift_arrayDestroy();
  v20 = [objc_opt_self() defaultWorkspace];
  if (v20)
  {
    v21 = v20;
    v22 = sub_24FEDC974();
    sub_24FE7023C(v19);

    v23 = sub_24FEDE144();

    [v21 openURL:v22 withOptions:v23];

    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_24FE75DF8(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AttributionsTextView() + 20));
  v3 = *v1;
  v4 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A56F0, &qword_24FEE2430);
  return sub_24FEDDD54();
}

uint64_t sub_24FE75E70@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_24FEDDF14();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5670, &qword_24FEE2320);
  sub_24FE747A4(v1, (a1 + *(v4 + 44)));
  v5 = sub_24FEDD8A4();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5678, &qword_24FEE2358);
  v8 = (a1 + *(result + 36));
  *v8 = KeyPath;
  v8[1] = v5;
  return result;
}

uint64_t sub_24FE75F20(uint64_t a1)
{
  v2 = sub_24FEDD164();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_24FEDD3A4();
}

uint64_t type metadata accessor for AttributionsTextView()
{
  result = qword_27F3A5688;
  if (!qword_27F3A5688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

size_t sub_24FE76038(size_t a1, int64_t a2, char a3)
{
  result = sub_24FE76B88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_24FE76058(uint64_t a1)
{
  v2 = type metadata accessor for GenerativeResultAttributionSnippetModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24FE760EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5680, qword_24FEE23B8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for GenerativeResultAttributionSnippetModel();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24FE76218(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5680, qword_24FEE23B8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for GenerativeResultAttributionSnippetModel();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_24FE7632C()
{
  sub_24FE76490(319, &qword_27F3A5698, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24FE76440();
    if (v1 <= 0x3F)
    {
      type metadata accessor for GenerativeResultAttributionSnippetModel();
      if (v2 <= 0x3F)
      {
        sub_24FE76490(319, &qword_27F3A56A8, MEMORY[0x277D63CE8], MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24FE76440()
{
  if (!qword_27F3A56A0)
  {
    v0 = sub_24FEDDD74();
    if (!v1)
    {
      atomic_store(v0, &qword_27F3A56A0);
    }
  }
}

void sub_24FE76490(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24FE764F8()
{
  result = qword_27F3A56B0;
  if (!qword_27F3A56B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5678, &qword_24FEE2358);
    sub_24FE58928(&qword_27F3A56B8, &qword_27F3A56C0, &unk_24FEE23F8);
    sub_24FE58928(&qword_27F3A4A18, &qword_27F3A4A20, &unk_24FEE08B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A56B0);
  }

  return result;
}

uint64_t sub_24FE765DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24FE76648(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionsTextView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE766AC()
{
  v1 = *(type metadata accessor for AttributionsTextView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24FE75B04(v2);
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for AttributionsTextView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5668, &qword_24FEE2318);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24FEDD164();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + v1[5] + 8);

  v9 = v5 + v1[6];
  v10 = *(v9 + 1);

  v11 = *(v9 + 3);

  v12 = *(v9 + 5);

  v13 = *(v9 + 6);

  v14 = *(type metadata accessor for GenerativeResultAttributionSnippetModel() + 32);
  v15 = sub_24FEDC9E4();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(&v9[v14], 1, v15))
  {
    (*(v16 + 8))(&v9[v14], v15);
  }

  v17 = *(v5 + v1[7]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24FE768F0()
{
  v1 = *(type metadata accessor for AttributionsTextView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24FE75DF8(v2);
}

uint64_t sub_24FE76968(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A56C8, &qword_24FEE2408);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE769D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A56D0, &qword_24FEE2410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE76A48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A56D0, &qword_24FEE2410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24FE76AB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE76B20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

size_t sub_24FE76B88(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5700, &unk_24FEE2450);
  v10 = *(sub_24FEDE034() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(sub_24FEDE034() - 8);
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

uint64_t sub_24FE76D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24FEDE844();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24FE76E04(uint64_t a1)
{
  v2 = sub_24FE76FB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE76E40(uint64_t a1)
{
  v2 = sub_24FE76FB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GenerativeNoResultSnippetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5708, &qword_24FEE2460);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE76FB8();
  sub_24FEDE944();
  sub_24FEDE7E4();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_24FE76FB8()
{
  result = qword_27F3A5710;
  if (!qword_27F3A5710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5710);
  }

  return result;
}

uint64_t GenerativeNoResultSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5718, &qword_24FEE2468);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE76FB8();
  sub_24FEDE934();
  if (!v2)
  {
    v11 = sub_24FEDE754();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24FE771A0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5708, &qword_24FEE2460);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE76FB8();
  sub_24FEDE944();
  sub_24FEDE7E4();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_24FE77300()
{
  result = qword_27F3A5720;
  if (!qword_27F3A5720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5720);
  }

  return result;
}

unint64_t sub_24FE77358()
{
  result = qword_27F3A5728;
  if (!qword_27F3A5728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5728);
  }

  return result;
}

unint64_t sub_24FE773B0()
{
  result = qword_27F3A5730;
  if (!qword_27F3A5730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5730);
  }

  return result;
}

uint64_t sub_24FE77414@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_24FE77444(uint64_t a1)
{
  v2 = sub_24FE775D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE77480(uint64_t a1)
{
  v2 = sub_24FE775D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GenerativeDismissalSnippetModel.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5738, &qword_24FEE2670);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE775D0();
  sub_24FEDE944();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_24FE775D0()
{
  result = qword_27F3A5740;
  if (!qword_27F3A5740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5740);
  }

  return result;
}

uint64_t sub_24FE7767C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5738, &qword_24FEE2670);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE775D0();
  sub_24FEDE944();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_24FE777B4()
{
  result = qword_27F3A5748;
  if (!qword_27F3A5748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5748);
  }

  return result;
}

unint64_t sub_24FE7780C()
{
  result = qword_27F3A5750;
  if (!qword_27F3A5750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5750);
  }

  return result;
}

uint64_t GenerativeResultAttributionSnippetModel.init(provider:iconName:disclaimer:attributions:punchOutURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  v10 = a9 + *(type metadata accessor for GenerativeResultAttributionSnippetModel() + 32);

  return sub_24FE77904(a8, v10);
}

uint64_t type metadata accessor for GenerativeResultAttributionSnippetModel()
{
  result = qword_27F3A57B0;
  if (!qword_27F3A57B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24FE77904(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE77974()
{
  v1 = *v0;
  v2 = 0x72656469766F7270;
  v3 = 0x6D69616C63736964;
  v4 = 0x7475626972747461;
  if (v1 != 3)
  {
    v4 = 0x74754F68636E7570;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656D614E6E6F6369;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24FE77A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24FE79048(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24FE77A4C(uint64_t a1)
{
  v2 = sub_24FE77D84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE77A88(uint64_t a1)
{
  v2 = sub_24FE77D84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GenerativeResultAttributionSnippetModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5758, &qword_24FEE27F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE77D84();
  sub_24FEDE944();
  v11 = *v3;
  v12 = v3[1];
  v23 = 0;
  sub_24FEDE7E4();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v22 = 1;
    sub_24FEDE7B4();
    v15 = v3[4];
    v16 = v3[5];
    v21 = 2;
    sub_24FEDE7E4();
    v20 = v3[6];
    v19[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5768, &qword_24FEE2800);
    sub_24FE78284(&qword_27F3A5770, sub_24FE77DD8);
    sub_24FEDE804();
    v17 = *(type metadata accessor for GenerativeResultAttributionSnippetModel() + 32);
    v19[14] = 4;
    sub_24FEDC9E4();
    sub_24FE78A20(&qword_27F3A51C8, MEMORY[0x277CC9260]);
    sub_24FEDE7D4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_24FE77D84()
{
  result = qword_27F3A5760;
  if (!qword_27F3A5760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5760);
  }

  return result;
}

unint64_t sub_24FE77DD8()
{
  result = qword_27F3A5778;
  if (!qword_27F3A5778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5778);
  }

  return result;
}

uint64_t GenerativeResultAttributionSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5780, &qword_24FEE2808);
  v24 = *(v8 - 8);
  v25 = v8;
  v9 = *(v24 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for GenerativeResultAttributionSnippetModel();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE77D84();
  v26 = v11;
  sub_24FEDE934();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v24;
  v32 = 0;
  *v15 = sub_24FEDE754();
  v15[1] = v18;
  v22 = v18;
  v31 = 1;
  v15[2] = sub_24FEDE724();
  v15[3] = v19;
  v30 = 2;
  v15[4] = sub_24FEDE754();
  v15[5] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5768, &qword_24FEE2800);
  v29 = 3;
  sub_24FE78284(&qword_27F3A5788, sub_24FE782FC);
  sub_24FEDE774();
  v15[6] = v27;
  sub_24FEDC9E4();
  v28 = 4;
  sub_24FE78A20(&qword_27F3A51F8, MEMORY[0x277CC9260]);
  sub_24FEDE744();
  (*(v17 + 8))(v26, v25);
  sub_24FE77904(v7, v15 + *(v12 + 32));
  sub_24FE78350(v15, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24FE76058(v15);
}

uint64_t sub_24FE78284(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5768, &qword_24FEE2800);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24FE782FC()
{
  result = qword_27F3A5790;
  if (!qword_27F3A5790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5790);
  }

  return result;
}

uint64_t sub_24FE78350(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeResultAttributionSnippetModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

GenerativeAssistantUI::Attribution __swiftcall Attribution.init(displayUrl:url:)(Swift::String displayUrl, Swift::String url)
{
  *v2 = displayUrl;
  v2[1] = url;
  result.url = url;
  result.displayUrl = displayUrl;
  return result;
}

uint64_t sub_24FE78408()
{
  if (*v0)
  {
    result = 7107189;
  }

  else
  {
    result = 0x5579616C70736964;
  }

  *v0;
  return result;
}

uint64_t sub_24FE78440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x5579616C70736964 && a2 == 0xEA00000000006C72;
  if (v6 || (sub_24FEDE844() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24FEDE844();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24FE78530(uint64_t a1)
{
  v2 = sub_24FE7873C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE7856C(uint64_t a1)
{
  v2 = sub_24FE7873C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Attribution.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5798, &qword_24FEE2810);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE7873C();
  sub_24FEDE944();
  v16 = 0;
  v12 = v14[3];
  sub_24FEDE7E4();
  if (!v12)
  {
    v15 = 1;
    sub_24FEDE7E4();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_24FE7873C()
{
  result = qword_27F3A57A0;
  if (!qword_27F3A57A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A57A0);
  }

  return result;
}

uint64_t Attribution.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A57A8, &qword_24FEE2818);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE7873C();
  sub_24FEDE934();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_24FEDE754();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_24FEDE754();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24FE78A20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24FE78AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24FE78B7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24FE78C2C()
{
  sub_24FE685A0(319, &qword_27F3A4A60, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_24FE685A0(319, &qword_27F3A57C0, &type metadata for Attribution, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_24FE78D1C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24FE78D1C()
{
  if (!qword_27F3A4A70)
  {
    sub_24FEDC9E4();
    v0 = sub_24FEDE554();
    if (!v1)
    {
      atomic_store(v0, &qword_27F3A4A70);
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24FE78D80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24FE78DC8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_24FE78E3C()
{
  result = qword_27F3A57C8;
  if (!qword_27F3A57C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A57C8);
  }

  return result;
}

unint64_t sub_24FE78E94()
{
  result = qword_27F3A57D0;
  if (!qword_27F3A57D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A57D0);
  }

  return result;
}

unint64_t sub_24FE78EEC()
{
  result = qword_27F3A57D8;
  if (!qword_27F3A57D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A57D8);
  }

  return result;
}

unint64_t sub_24FE78F44()
{
  result = qword_27F3A57E0;
  if (!qword_27F3A57E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A57E0);
  }

  return result;
}

unint64_t sub_24FE78F9C()
{
  result = qword_27F3A57E8;
  if (!qword_27F3A57E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A57E8);
  }

  return result;
}

unint64_t sub_24FE78FF4()
{
  result = qword_27F3A57F0;
  if (!qword_27F3A57F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A57F0);
  }

  return result;
}

uint64_t sub_24FE79048(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656469766F7270 && a2 == 0xE800000000000000;
  if (v4 || (sub_24FEDE844() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E6E6F6369 && a2 == 0xE800000000000000 || (sub_24FEDE844() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D69616C63736964 && a2 == 0xEA00000000007265 || (sub_24FEDE844() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEC000000736E6F69 || (sub_24FEDE844() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74754F68636E7570 && a2 == 0xEB000000004C5255)
  {

    return 4;
  }

  else
  {
    v6 = sub_24FEDE844();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

double GenerativeRichTextResultSnippetModel.init(results:partnerName:iconName:contentDisclaimer:attributions:punchOutURL:criticalDisclaimers:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  v12 = type metadata accessor for GenerativeRichTextResultSnippetModel(0);
  sub_24FE77904(a10, a9 + v12[9]);
  *(a9 + v12[10]) = a11;
  v13 = (a9 + v12[11]);
  v13[1] = 0u;
  v13[2] = 0u;
  *v13 = 0u;
  result = 0.0;
  *(a9 + v12[12]) = xmmword_24FEE2B90;
  return result;
}

double GenerativeRichTextResultSnippetModel.init(results:partnerName:iconName:contentDisclaimer:attributions:punchOutURL:criticalDisclaimers:modelDisclaimer:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(a12 + 32);
  v14 = *(a12 + 40);
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  v15 = type metadata accessor for GenerativeRichTextResultSnippetModel(0);
  sub_24FE77904(a10, a9 + v15[9]);
  *(a9 + v15[10]) = a11;
  v16 = a9 + v15[11];
  v17 = *(a12 + 16);
  *v16 = *a12;
  *(v16 + 1) = v17;
  *(v16 + 4) = v13;
  *(v16 + 5) = v14;
  result = 0.0;
  *(a9 + v15[12]) = xmmword_24FEE2B90;
  return result;
}

__n128 GenerativeRichTextResultSnippetModel.init(results:partnerName:iconName:contentDisclaimer:attributions:punchOutURL:criticalDisclaimers:modelDisclaimer:visualIntelligenceImage:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = *(a12 + 32);
  v16 = *(a12 + 40);
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  v17 = type metadata accessor for GenerativeRichTextResultSnippetModel(0);
  sub_24FE77904(a10, a9 + v17[9]);
  *(a9 + v17[10]) = a11;
  v18 = a9 + v17[11];
  result = *a12;
  v20 = *(a12 + 16);
  *v18 = *a12;
  *(v18 + 1) = v20;
  *(v18 + 4) = v15;
  *(v18 + 5) = v16;
  v21 = (a9 + v17[12]);
  *v21 = a13;
  v21[1] = a14;
  return result;
}

unint64_t sub_24FE793F4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x73746C75736572;
    v6 = 0x656D614E6E6F6369;
    if (a1 != 2)
    {
      v6 = 0x6D69616C63736964;
    }

    if (a1)
    {
      v5 = 0x72656469766F7270;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    v2 = 0x7369446C65646F6DLL;
    if (a1 != 7)
    {
      v2 = 0xD000000000000017;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x7475626972747461;
    if (a1 != 4)
    {
      v3 = 0x74754F68636E7570;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24FE7953C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24FE7D0FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24FE79570(uint64_t a1)
{
  v2 = sub_24FE79A90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE795AC(uint64_t a1)
{
  v2 = sub_24FE79A90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GenerativeRichTextResultSnippetModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A57F8, &qword_24FEE2BA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE79A90();
  sub_24FEDE944();
  v29 = *v3;
  v35 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5808, &unk_24FEE2BB0);
  sub_24FE7A2A8(&qword_27F3A5810, &qword_27F3A5818);
  sub_24FEDE804();
  if (!v2)
  {
    v11 = v3[1];
    v12 = v3[2];
    LOBYTE(v29) = 1;
    sub_24FEDE7E4();
    v13 = v3[3];
    v14 = v3[4];
    LOBYTE(v29) = 2;
    sub_24FEDE7B4();
    v15 = v3[5];
    v16 = v3[6];
    LOBYTE(v29) = 3;
    sub_24FEDE7E4();
    v29 = v3[7];
    v35 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5768, &qword_24FEE2800);
    sub_24FE78284(&qword_27F3A5770, sub_24FE77DD8);
    sub_24FEDE804();
    v17 = type metadata accessor for GenerativeRichTextResultSnippetModel(0);
    v18 = v17[9];
    LOBYTE(v29) = 5;
    sub_24FEDC9E4();
    sub_24FE79B04(&qword_27F3A51C8, MEMORY[0x277CC9260]);
    sub_24FEDE7D4();
    v29 = *(v3 + v17[10]);
    v35 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5820, &qword_24FEE2BC0);
    sub_24FE7A344(&qword_27F3A5828);
    sub_24FEDE804();
    v19 = (v3 + v17[11]);
    v20 = v19[1];
    v21 = v19[2];
    v22 = v19[3];
    v23 = v19[4];
    v24 = v19[5];
    v29 = *v19;
    v30 = v20;
    v31 = v21;
    v32 = v22;
    v33 = v23;
    v34 = v24;
    v35 = 7;
    sub_24FE63DA4(v29, v20);
    sub_24FE63DF4();
    sub_24FEDE7D4();
    sub_24FE63E48(v29, v30);
    v25 = (v3 + v17[12]);
    v26 = v25[1];
    v29 = *v25;
    v30 = v26;
    v35 = 8;
    sub_24FE62C80(v29, v26);
    sub_24FE666C0();
    sub_24FEDE7D4();
    sub_24FE62CE8(v29, v30);
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_24FE79A90()
{
  result = qword_27F3A5800;
  if (!qword_27F3A5800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5800);
  }

  return result;
}

uint64_t sub_24FE79B04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t GenerativeRichTextResultSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5830, &qword_24FEE2BC8);
  v9 = *(v8 - 8);
  v37 = v8;
  v38 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for GenerativeRichTextResultSnippetModel(0);
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v17 = a1[4];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_24FE79A90();
  v19 = v12;
  sub_24FEDE934();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v20 = v7;
  v35 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5808, &unk_24FEE2BB0);
  v43 = 0;
  sub_24FE7A2A8(&qword_27F3A5838, &qword_27F3A5840);
  v21 = v37;
  v22 = v19;
  sub_24FEDE774();
  v23 = v35;
  *v35 = v40;
  LOBYTE(v40) = 1;
  v23[1] = sub_24FEDE754();
  v23[2] = v24;
  v34 = v24;
  LOBYTE(v40) = 2;
  v23[3] = sub_24FEDE724();
  v23[4] = v25;
  LOBYTE(v40) = 3;
  v23[5] = sub_24FEDE754();
  v23[6] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5768, &qword_24FEE2800);
  v43 = 4;
  sub_24FE78284(&qword_27F3A5788, sub_24FE782FC);
  sub_24FEDE774();
  v27 = v35;
  v35[7] = v40;
  sub_24FEDC9E4();
  LOBYTE(v40) = 5;
  sub_24FE79B04(&qword_27F3A51F8, MEMORY[0x277CC9260]);
  sub_24FEDE744();
  sub_24FE77904(v20, v27 + v13[9]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5820, &qword_24FEE2BC0);
  v43 = 6;
  sub_24FE7A344(&qword_27F3A5848);
  sub_24FEDE774();
  *(v27 + v13[10]) = v40;
  v43 = 7;
  sub_24FE641D8();
  sub_24FEDE744();
  v28 = v38;
  v29 = (v27 + v13[11]);
  v30 = v41;
  *v29 = v40;
  v29[1] = v30;
  v29[2] = v42;
  v43 = 8;
  sub_24FE66AE0();
  sub_24FEDE744();
  (*(v28 + 8))(v22, v21);
  v32 = v35;
  v31 = v36;
  *(v35 + v13[12]) = v40;
  sub_24FE7AF54(v32, v31, type metadata accessor for GenerativeRichTextResultSnippetModel);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return sub_24FE7A3B0(v32);
}

uint64_t sub_24FE7A2A8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5808, &unk_24FEE2BB0);
    sub_24FE79B04(a2, type metadata accessor for RichContentResultSegment);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24FE7A344(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5820, &qword_24FEE2BC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24FE7A3B0(uint64_t a1)
{
  v2 = type metadata accessor for GenerativeRichTextResultSnippetModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24FE7A43C()
{
  v1 = 0x7461446567616D69;
  if (*v0 != 1)
  {
    v1 = 0x61746144656C6966;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E69727473;
  }
}

uint64_t sub_24FE7A498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24FE7D400(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24FE7A4C0(uint64_t a1)
{
  v2 = sub_24FE7AF00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE7A4FC(uint64_t a1)
{
  v2 = sub_24FE7AF00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24FE7A538()
{
  v1 = 7107189;
  v2 = 0x656D614E656C6966;
  if (*v0 != 2)
  {
    v2 = 1702521203;
  }

  if (*v0)
  {
    v1 = 0x65707954656D696DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24FE7A5A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24FE7D51C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24FE7A5D8(uint64_t a1)
{
  v2 = sub_24FE7AFBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE7A614(uint64_t a1)
{
  v2 = sub_24FE7AFBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24FE7A650(uint64_t a1)
{
  v2 = sub_24FE7B010();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE7A68C(uint64_t a1)
{
  v2 = sub_24FE7B010();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24FE7A6C8(uint64_t a1)
{
  v2 = sub_24FE7B064();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE7A704(uint64_t a1)
{
  v2 = sub_24FE7B064();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RichContentResultSegment.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5850, &qword_24FEE2BD0);
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  MEMORY[0x28223BE20](v2);
  v55 = &v51 - v4;
  v5 = sub_24FEDC9E4();
  v59 = *(v5 - 8);
  v60 = v5;
  v6 = *(v59 + 64);
  MEMORY[0x28223BE20](v5);
  v58 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5858, &qword_24FEE2BD8);
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = *(v53 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5860, &qword_24FEE2BE0);
  v52 = *(v12 - 8);
  v13 = *(v52 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v51 - v14;
  v16 = type metadata accessor for RichContentResultSegment(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5868, &unk_24FEE2BE8);
  v64 = *(v67 - 8);
  v20 = *(v64 + 64);
  MEMORY[0x28223BE20](v67);
  v22 = &v51 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE7AF00();
  v63 = v22;
  sub_24FEDE944();
  sub_24FE7AF54(v61, v19, type metadata accessor for RichContentResultSegment);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v25 = *v19;
      v26 = v19[1];
      LOBYTE(v65) = 1;
      sub_24FE7B010();
      v27 = v67;
      v28 = v63;
      sub_24FEDE7A4();
      v65 = v25;
      v66 = v26;
      sub_24FE666C0();
      v29 = v54;
      sub_24FEDE804();
      (*(v53 + 8))(v11, v29);
      (*(v64 + 8))(v28, v27);
      return sub_24FE62CFC(v25, v26);
    }

    else
    {
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A53A0, &qword_24FEE1C50);
      v36 = (v19 + v35[12]);
      v37 = *v36;
      v61 = v36[1];
      v38 = (v19 + v35[16]);
      v39 = v38[1];
      v53 = *v38;
      v54 = v37;
      v52 = *(v19 + v35[20]);
      v41 = v58;
      v40 = v59;
      v42 = v60;
      (*(v59 + 32))(v58, v19, v60);
      LOBYTE(v65) = 2;
      sub_24FE7AFBC();
      v43 = v55;
      v44 = v67;
      v45 = v63;
      sub_24FEDE7A4();
      LOBYTE(v65) = 0;
      sub_24FE79B04(&qword_27F3A51C8, MEMORY[0x277CC9260]);
      v46 = v57;
      v47 = v62;
      sub_24FEDE804();
      if (v47)
      {

        (*(v56 + 8))(v43, v46);
        (*(v40 + 8))(v41, v42);
      }

      else
      {
        LOBYTE(v65) = 1;
        sub_24FEDE7E4();

        LOBYTE(v65) = 2;
        sub_24FEDE7E4();
        v48 = v58;
        v49 = v59;

        LOBYTE(v65) = 3;
        sub_24FEDE814();
        v50 = v60;
        (*(v56 + 8))(v43, v46);
        (*(v49 + 8))(v48, v50);
      }

      return (*(v64 + 8))(v45, v44);
    }
  }

  else
  {
    v31 = *v19;
    v32 = v19[1];
    LOBYTE(v65) = 0;
    sub_24FE7B064();
    v33 = v67;
    v34 = v63;
    sub_24FEDE7A4();
    sub_24FEDE7E4();

    (*(v52 + 8))(v15, v12);
    return (*(v64 + 8))(v34, v33);
  }
}

unint64_t sub_24FE7AF00()
{
  result = qword_27F3A5870;
  if (!qword_27F3A5870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5870);
  }

  return result;
}

uint64_t sub_24FE7AF54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24FE7AFBC()
{
  result = qword_27F3A5878;
  if (!qword_27F3A5878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5878);
  }

  return result;
}

unint64_t sub_24FE7B010()
{
  result = qword_27F3A5880;
  if (!qword_27F3A5880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5880);
  }

  return result;
}

unint64_t sub_24FE7B064()
{
  result = qword_27F3A5888;
  if (!qword_27F3A5888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5888);
  }

  return result;
}

uint64_t RichContentResultSegment.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5890, &qword_24FEE2BF8);
  v75 = *(v82 - 8);
  v3 = *(v75 + 64);
  MEMORY[0x28223BE20](v82);
  v77 = &v68 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5898, &qword_24FEE2C00);
  v73 = *(v5 - 8);
  v74 = v5;
  v6 = *(v73 + 64);
  MEMORY[0x28223BE20](v5);
  v76 = (&v68 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A58A0, &qword_24FEE2C08);
  v71 = *(v8 - 8);
  v72 = v8;
  v9 = *(v71 + 64);
  MEMORY[0x28223BE20](v8);
  v80 = &v68 - v10;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A58A8, &unk_24FEE2C10);
  v79 = *(v81 - 8);
  v11 = *(v79 + 64);
  MEMORY[0x28223BE20](v81);
  v13 = &v68 - v12;
  v14 = type metadata accessor for RichContentResultSegment(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v68 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = (&v68 - v23);
  MEMORY[0x28223BE20](v22);
  v26 = &v68 - v25;
  v27 = a1[3];
  v28 = a1[4];
  v89 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_24FE7AF00();
  v29 = v83;
  sub_24FEDE934();
  if (!v29)
  {
    v68 = v24;
    v69 = v21;
    v30 = v79;
    v31 = v80;
    v83 = v18;
    v70 = v26;
    v32 = v14;
    v34 = v81;
    v33 = v82;
    v35 = sub_24FEDE794();
    v36 = (2 * *(v35 + 16)) | 1;
    v85 = v35;
    v86 = v35 + 32;
    v87 = 0;
    v88 = v36;
    v37 = sub_24FE5583C();
    if (v37 != 3 && v87 == v88 >> 1)
    {
      if (v37)
      {
        v38 = v78;
        if (v37 == 1)
        {
          LOBYTE(v84) = 1;
          sub_24FE7B010();
          v39 = v76;
          sub_24FEDE704();
          sub_24FE66AE0();
          v40 = v74;
          sub_24FEDE774();
          (*(v73 + 8))(v39, v40);
          (*(v30 + 8))(v13, v34);
          swift_unknownObjectRelease();
          v51 = v69;
          *v69 = v84;
          swift_storeEnumTagMultiPayload();
          v52 = v70;
          sub_24FE7BA8C(v51, v70);
LABEL_12:
          sub_24FE7BA8C(v52, v38);
          return __swift_destroy_boxed_opaque_existential_1(v89);
        }

        LOBYTE(v84) = 2;
        sub_24FE7AFBC();
        v49 = v77;
        sub_24FEDE704();
        v50 = v49;
        v80 = v13;
        sub_24FEDC9E4();
        LOBYTE(v84) = 0;
        sub_24FE79B04(&qword_27F3A51F8, MEMORY[0x277CC9260]);
        sub_24FEDE774();
        LOBYTE(v84) = 1;
        v57 = sub_24FEDE754();
        v59 = v58;
        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A53A0, &qword_24FEE1C50);
        v60 = (v83 + v76[12]);
        *v60 = v57;
        v60[1] = v59;
        LOBYTE(v84) = 2;
        v61 = sub_24FEDE754();
        v62 = v83;
        v63 = (v83 + v76[16]);
        *v63 = v61;
        v63[1] = v64;
        v74 = v64;
        LOBYTE(v84) = 3;
        v65 = sub_24FEDE784();
        v66 = v76[20];
        v67 = v65;
        (*(v75 + 8))(v50, v33);
        (*(v30 + 8))(v80, v34);
        swift_unknownObjectRelease();
        *(v62 + v66) = v67;
        swift_storeEnumTagMultiPayload();
        v56 = v62;
      }

      else
      {
        LOBYTE(v84) = 0;
        sub_24FE7B064();
        sub_24FEDE704();
        v47 = v13;
        v48 = v72;
        v83 = sub_24FEDE754();
        v54 = v53;
        (*(v71 + 8))(v31, v48);
        (*(v30 + 8))(v47, v34);
        swift_unknownObjectRelease();
        v55 = v68;
        *v68 = v83;
        v55[1] = v54;
        swift_storeEnumTagMultiPayload();
        v56 = v55;
      }

      v52 = v70;
      sub_24FE7BA8C(v56, v70);
      v38 = v78;
      goto LABEL_12;
    }

    v41 = sub_24FEDE664();
    swift_allocError();
    v43 = v42;
    v44 = v13;
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A47E0, &qword_24FEDFBE0) + 48);
    *v43 = v32;
    sub_24FEDE714();
    sub_24FEDE654();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D84160], v41);
    swift_willThrow();
    (*(v30 + 8))(v44, v34);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v89);
}

uint64_t sub_24FE7BA8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RichContentResultSegment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void __swiftcall ModelDisclaimer.init(message:displayUrl:url:)(GenerativeAssistantUI::ModelDisclaimer *__return_ptr retstr, Swift::String message, Swift::String displayUrl, Swift::String url)
{
  retstr->message = message;
  retstr->displayUrl = displayUrl;
  retstr->url = url;
}

uint64_t sub_24FE7BB30()
{
  v1 = 0x5579616C70736964;
  if (*v0 != 1)
  {
    v1 = 7107189;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6567617373656DLL;
  }
}

uint64_t sub_24FE7BB88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24FE7D680(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24FE7BBB0(uint64_t a1)
{
  v2 = sub_24FE7BDEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE7BBEC(uint64_t a1)
{
  v2 = sub_24FE7BDEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ModelDisclaimer.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A58B0, &qword_24FEE2C20);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE7BDEC();
  sub_24FEDE944();
  v18 = 0;
  v13 = v15[5];
  sub_24FEDE7E4();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_24FEDE7E4();
  v16 = 2;
  sub_24FEDE7E4();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_24FE7BDEC()
{
  result = qword_27F3A58B8;
  if (!qword_27F3A58B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A58B8);
  }

  return result;
}

uint64_t ModelDisclaimer.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A58C0, &qword_24FEE2C28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE7BDEC();
  sub_24FEDE934();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v11 = sub_24FEDE754();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_24FEDE754();
  v23 = v14;
  v25 = 2;
  v15 = sub_24FEDE754();
  v17 = v16;
  v18 = v15;
  (*(v6 + 8))(v9, v5);
  v19 = v23;
  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v19;
  a2[4] = v18;
  a2[5] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24FE7C18C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_24FE7C25C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24FE7C30C()
{
  sub_24FE7C520(319, &qword_27F3A58D8, type metadata accessor for RichContentResultSegment, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_24FE7C584(319, &qword_27F3A4A60, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24FE7C584(319, &qword_27F3A57C0, &type metadata for Attribution, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_24FE7C520(319, &qword_27F3A4A70, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_24FE7C584(319, &qword_27F3A58E0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            sub_24FE7C584(319, &qword_27F3A58E8, &type metadata for ModelDisclaimer, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_24FE7C584(319, &qword_27F3A58F0, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
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

void sub_24FE7C520(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24FE7C584(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_24FE7C5D4()
{
  sub_24FE7C648();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_24FE7C648()
{
  if (!qword_27F3A5908)
  {
    MEMORY[0x28223BE20](0);
    sub_24FEDC9E4();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27F3A5908);
    }
  }
}

uint64_t sub_24FE7C740(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_24FE7C788(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RichContentResultSegment.FileDataCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RichContentResultSegment.FileDataCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenerativeRichTextResultSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GenerativeRichTextResultSnippetModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24FE7CAD0()
{
  result = qword_27F3A5910;
  if (!qword_27F3A5910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5910);
  }

  return result;
}

unint64_t sub_24FE7CB28()
{
  result = qword_27F3A5918;
  if (!qword_27F3A5918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5918);
  }

  return result;
}

unint64_t sub_24FE7CB80()
{
  result = qword_27F3A5920;
  if (!qword_27F3A5920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5920);
  }

  return result;
}

unint64_t sub_24FE7CBD8()
{
  result = qword_27F3A5928;
  if (!qword_27F3A5928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5928);
  }

  return result;
}

unint64_t sub_24FE7CC30()
{
  result = qword_27F3A5930;
  if (!qword_27F3A5930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5930);
  }

  return result;
}

unint64_t sub_24FE7CC88()
{
  result = qword_27F3A5938;
  if (!qword_27F3A5938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5938);
  }

  return result;
}

unint64_t sub_24FE7CCE0()
{
  result = qword_27F3A5940;
  if (!qword_27F3A5940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5940);
  }

  return result;
}

unint64_t sub_24FE7CD38()
{
  result = qword_27F3A5948;
  if (!qword_27F3A5948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5948);
  }

  return result;
}

unint64_t sub_24FE7CD90()
{
  result = qword_27F3A5950;
  if (!qword_27F3A5950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5950);
  }

  return result;
}

unint64_t sub_24FE7CDE8()
{
  result = qword_27F3A5958;
  if (!qword_27F3A5958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5958);
  }

  return result;
}

unint64_t sub_24FE7CE40()
{
  result = qword_27F3A5960;
  if (!qword_27F3A5960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5960);
  }

  return result;
}

unint64_t sub_24FE7CE98()
{
  result = qword_27F3A5968;
  if (!qword_27F3A5968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5968);
  }

  return result;
}

unint64_t sub_24FE7CEF0()
{
  result = qword_27F3A5970;
  if (!qword_27F3A5970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5970);
  }

  return result;
}

unint64_t sub_24FE7CF48()
{
  result = qword_27F3A5978;
  if (!qword_27F3A5978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5978);
  }

  return result;
}

unint64_t sub_24FE7CFA0()
{
  result = qword_27F3A5980;
  if (!qword_27F3A5980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5980);
  }

  return result;
}

unint64_t sub_24FE7CFF8()
{
  result = qword_27F3A5988;
  if (!qword_27F3A5988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5988);
  }

  return result;
}

unint64_t sub_24FE7D050()
{
  result = qword_27F3A5990;
  if (!qword_27F3A5990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5990);
  }

  return result;
}

unint64_t sub_24FE7D0A8()
{
  result = qword_27F3A5998;
  if (!qword_27F3A5998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5998);
  }

  return result;
}

uint64_t sub_24FE7D0FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746C75736572 && a2 == 0xE700000000000000;
  if (v4 || (sub_24FEDE844() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656469766F7270 && a2 == 0xE800000000000000 || (sub_24FEDE844() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E6E6F6369 && a2 == 0xE800000000000000 || (sub_24FEDE844() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D69616C63736964 && a2 == 0xEA00000000007265 || (sub_24FEDE844() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEC000000736E6F69 || (sub_24FEDE844() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74754F68636E7570 && a2 == 0xEB000000004C5255 || (sub_24FEDE844() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FEE9A80 == a2 || (sub_24FEDE844() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7369446C65646F6DLL && a2 == 0xEF72656D69616C63 || (sub_24FEDE844() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024FEE9AA0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_24FEDE844();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_24FE7D400(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
  if (v4 || (sub_24FEDE844() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461446567616D69 && a2 == 0xE900000000000061 || (sub_24FEDE844() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61746144656C6966 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24FEDE844();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24FE7D51C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_24FEDE844() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65707954656D696DLL && a2 == 0xE800000000000000 || (sub_24FEDE844() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000 || (sub_24FEDE844() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24FEDE844();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_24FE7D680(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_24FEDE844() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5579616C70736964 && a2 == 0xEA00000000006C72 || (sub_24FEDE844() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24FEDE844();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t type metadata accessor for GeneratedText()
{
  result = qword_27F3A5A10;
  if (!qword_27F3A5A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24FE7D840()
{
  v0 = sub_24FEDC414();
  __swift_allocate_value_buffer(v0, qword_27F3B30E8);
  __swift_project_value_buffer(v0, qword_27F3B30E8);
  return sub_24FEDC404();
}

uint64_t sub_24FE7D8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24FEDC3D4();
  v4 = *(a1 + 24);
  v5 = (a2 + *(a1 + 20));
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  return sub_24FEDC764();
}

uint64_t sub_24FE7DA38(uint64_t a1)
{
  v2 = sub_24FE7E854(&qword_27F3A5A58, type metadata accessor for GeneratedText);

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_24FE7DC1C()
{
  sub_24FE7E854(&qword_27F3A5A58, type metadata accessor for GeneratedText);

  return _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
}

uint64_t sub_24FE7DC9C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F3A46A8 != -1)
  {
    swift_once();
  }

  v2 = sub_24FEDC414();
  v3 = __swift_project_value_buffer(v2, qword_27F3B30E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24FE7DD88(uint64_t a1)
{
  v2 = sub_24FE7E854(&qword_27F3A59A0, type metadata accessor for GeneratedText);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_24FE7DE4C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24FEDC3E4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_24FE7DEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CBA470] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_24FE7DF78;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_24FE7DF78()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24FE7E06C(uint64_t a1)
{
  v2 = sub_24FE7E854(&qword_27F3A59E8, type metadata accessor for GeneratedText);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_24FE7E104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for GeneratedText() + 24);
  v5 = sub_24FEDC774();
  return (*(*(v5 - 8) + 16))(a2, a1 + v4, v5);
}

uint64_t sub_24FE7E180@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for GeneratedText() + 20));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_24FE7E1D0@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5A30, &qword_24FEE3770);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v18 - v3;
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5A38, &qword_24FEE3778);
  v5 = *(v18[0] - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v18[0]);
  v8 = v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5A40, &unk_24FEE3780);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v18 - v12;
  sub_24FEDC774();
  sub_24FE7E854(&qword_27F3A5A48, MEMORY[0x277CC8C40]);
  sub_24FEDCCC4();
  sub_24FE7E800();
  sub_24FEDCCC4();
  v14 = *(v1 + 48);
  (*(v10 + 16))(v4, v13, v9);
  v15 = &v4[v14];
  v16 = v18[0];
  (*(v5 + 16))(v15, v8, v18[0]);
  sub_24FEDCCD4();
  (*(v5 + 8))(v8, v16);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_24FE7E4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FEDC3E4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_24FEDC774();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24FE7E608(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24FEDC3E4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_24FEDC774();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_24FE7E730()
{
  result = sub_24FEDC3E4();
  if (v1 <= 0x3F)
  {
    result = sub_24FEDC774();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24FE7E800()
{
  result = qword_27F3A5A50;
  if (!qword_27F3A5A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5A50);
  }

  return result;
}

uint64_t sub_24FE7E854(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for GeneratedImage()
{
  result = qword_27F3A5AC8;
  if (!qword_27F3A5AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24FE7E938()
{
  v0 = sub_24FEDC414();
  __swift_allocate_value_buffer(v0, qword_27F3B3100);
  __swift_project_value_buffer(v0, qword_27F3B3100);
  return sub_24FEDC404();
}

double sub_24FE7E9A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24FEDC3D4();
  result = 0.0;
  *(a2 + *(a1 + 20)) = xmmword_24FEE3790;
  return result;
}

uint64_t sub_24FE7EB1C(uint64_t a1)
{
  v2 = sub_24FE7F390(&qword_27F3A5AE8, type metadata accessor for GeneratedImage);

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_24FE7ED00()
{
  sub_24FE7F390(&qword_27F3A5AE8, type metadata accessor for GeneratedImage);

  return _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
}

uint64_t sub_24FE7ED7C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F3A46B0 != -1)
  {
    swift_once();
  }

  v2 = sub_24FEDC414();
  v3 = __swift_project_value_buffer(v2, qword_27F3B3100);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24FE7EE68(uint64_t a1)
{
  v2 = sub_24FE7F390(&qword_27F3A5A60, type metadata accessor for GeneratedImage);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_24FE7EF2C(uint64_t a1)
{
  v2 = sub_24FE7F390(&qword_27F3A5AA8, type metadata accessor for GeneratedImage);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_24FE7EFE4()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for GeneratedImage() + 20));
  v4 = *v2;
  v3 = v2[1];
  sub_24FE62C94(*v2, v3);
  v5 = *(v0 + 8);

  return v5(v4, v3);
}

uint64_t sub_24FE7F06C()
{
  v0 = sub_24FEDCE94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_24FEDCE74();
  return sub_24FEDCCB4();
}

uint64_t sub_24FE7F12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FEDC3E4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24FE7F210(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24FEDC3E4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_24FE7F2D8()
{
  result = sub_24FEDC3E4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24FE7F390(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for GeneratedContent()
{
  result = qword_27F3A5B18;
  if (!qword_27F3A5B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24FE7F490()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5B00, &qword_24FEE3AF8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - v3;
  v5 = type metadata accessor for GeneratedContent();
  v6 = sub_24FE7FB7C();
  MEMORY[0x253058640](v6, v5, &type metadata for GeneratedContent.GeneratedTextResolver, v6);
  v7 = sub_24FE7FBD0();
  MEMORY[0x253058640](v7, v5, &type metadata for GeneratedContent.GeneratedImageResolver, v7);
  sub_24FE7FACC(&qword_27F3A5AF0, type metadata accessor for GeneratedContent);
  sub_24FEDC464();
  v9[0] = v6;
  v9[1] = &type metadata for GeneratedContent.GeneratedTextResolver;
  sub_24FEDC454();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_24FE7F63C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24FE7F65C, 0, 0);
}

uint64_t sub_24FE7F65C()
{
  v1 = v0[2];
  sub_24FE7FF10(v0[3], v1, type metadata accessor for GeneratedText);
  v2 = type metadata accessor for GeneratedContent();
  swift_storeEnumTagMultiPayload();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_24FE7F798(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24FE7F7B8, 0, 0);
}

uint64_t sub_24FE7F7B8()
{
  v1 = v0[2];
  sub_24FE7FF10(v0[3], v1, type metadata accessor for GeneratedImage);
  v2 = type metadata accessor for GeneratedContent();
  swift_storeEnumTagMultiPayload();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_24FE7F888()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5AF8, &qword_24FEE3AF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24FEE0830;
  v1 = type metadata accessor for GeneratedText();
  v2 = sub_24FE7FACC(&qword_27F3A59E0, type metadata accessor for GeneratedText);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for GeneratedImage();
  v4 = sub_24FE7FACC(&qword_27F3A5AA0, type metadata accessor for GeneratedImage);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  return v0;
}

uint64_t sub_24FE7F960@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FE7FF10(v5, v7, type metadata accessor for GeneratedContent);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    a2[3] = type metadata accessor for GeneratedImage();
    v8 = sub_24FE7FACC(&qword_27F3A5AA0, type metadata accessor for GeneratedImage);
    v9 = type metadata accessor for GeneratedImage;
  }

  else
  {
    a2[3] = type metadata accessor for GeneratedText();
    v8 = sub_24FE7FACC(&qword_27F3A59E0, type metadata accessor for GeneratedText);
    v9 = type metadata accessor for GeneratedText;
  }

  v10 = v9;
  a2[4] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_24FE7FB14(v7, boxed_opaque_existential_1, v10);
}

uint64_t sub_24FE7FACC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24FE7FB14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24FE7FB7C()
{
  result = qword_27F3A5B08;
  if (!qword_27F3A5B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5B08);
  }

  return result;
}

unint64_t sub_24FE7FBD0()
{
  result = qword_27F3A5B10;
  if (!qword_27F3A5B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5B10);
  }

  return result;
}

uint64_t sub_24FE7FC44()
{
  result = type metadata accessor for GeneratedText();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for GeneratedImage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24FE7FCBC()
{
  result = qword_27F3A5B28;
  if (!qword_27F3A5B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5B30, &qword_24FEE3B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5B28);
  }

  return result;
}

unint64_t sub_24FE7FD24()
{
  result = qword_27F3A5B38;
  if (!qword_27F3A5B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5B38);
  }

  return result;
}

unint64_t sub_24FE7FD7C()
{
  result = qword_27F3A5B40;
  if (!qword_27F3A5B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5B40);
  }

  return result;
}

unint64_t sub_24FE7FDD4()
{
  result = qword_27F3A5B48;
  if (!qword_27F3A5B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5B48);
  }

  return result;
}

unint64_t sub_24FE7FE74()
{
  result = qword_27F3A5B50;
  if (!qword_27F3A5B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5B50);
  }

  return result;
}

uint64_t sub_24FE7FF10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double variable initialization expression of MarkdownFont.$__lazy_storage_$_currentConfiguration@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t variable initialization expression of ShareButton.foregroundColor()
{
  sub_24FEDDC74();
  v0 = sub_24FEDDC64();

  return v0;
}

uint64_t _s16MarkdownDocument0B4ViewV17_laTeXMathTracker33_1F3B118046804018F521221474E12D47LL7SwiftUI14ObservedObjectVyAA02LaefG0CGvpfi_0()
{
  if (qword_27F3A5B88 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_24FE8011C()
{
  sub_24FEDE134();
  sub_24FE807FC(&qword_27F3A5C08, MEMORY[0x277D63F60]);

  return sub_24FEDD2C4();
}

uint64_t sub_24FE80194@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v36 = a6;
    v37 = a7;
    v38 = v8;
    v35 = sub_24FEDD214();
    v17 = *(v35 - 8);
    v18 = *(v17 + 64);
    MEMORY[0x28223BE20](v35);
    v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a1)
    {
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      sub_24FEDE624();

      strcpy(v40, "View.task @ ");
      BYTE5(v40[1]) = 0;
      HIWORD(v40[1]) = -5120;
      MEMORY[0x25305A470](a3, a4);
      MEMORY[0x25305A470](58, 0xE100000000000000);
      v39 = a5;
      v27 = sub_24FEDE824();
      MEMORY[0x25305A470](v27);
    }

    v28 = sub_24FEDE414();
    v29 = *(*(v28 - 8) + 64);
    MEMORY[0x28223BE20](v28);
    (*(v31 + 16))(&v34 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), a2);

    sub_24FEDD204();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C20, &unk_24FEE3E10);
    (*(*(v32 - 8) + 16))(a8, v38, v32);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C28, &unk_24FEE60B0);
    return (*(v17 + 32))(a8 + *(v33 + 36), v20, v35);
  }

  else
  {
    v21 = (a8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C30, &qword_24FEE3E20) + 36));
    v22 = *(sub_24FEDD174() + 20);
    v23 = sub_24FEDE414();
    (*(*(v23 - 8) + 16))(&v21[v22], a2, v23);
    *v21 = a6;
    *(v21 + 1) = a7;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C20, &unk_24FEE3E10);
    v25 = *(*(v24 - 8) + 16);

    return v25(a8, v8, v24);
  }
}

double sub_24FE80580@<D0>(_OWORD *a1@<X8>)
{
  sub_24FE81030();
  sub_24FEDD3F4();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_24FE805D0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_24FE81030();

  return sub_24FEDD404();
}

uint64_t sub_24FE80654(uint64_t *a1)
{
  v1 = *a1;
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_24FEDD214();
  }

  else
  {
    sub_24FEDD174();
  }

  return sub_24FEDD254();
}

uint64_t sub_24FE806BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_24FEDD214();
    sub_24FEDD254();
    sub_24FE807B0();
  }

  else
  {
    sub_24FEDD174();
    sub_24FEDD254();
    sub_24FE807FC(&qword_27F3A5C18, MEMORY[0x277CDD8B0]);
  }

  return swift_getWitnessTable();
}

unint64_t sub_24FE807B0()
{
  result = qword_27F3A5C10;
  if (!qword_27F3A5C10)
  {
    sub_24FEDD214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5C10);
  }

  return result;
}

uint64_t sub_24FE807FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24FE808B4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);

  return swift_storeEnumTagMultiPayload();
}

uint64_t variable initialization expression of MarkdownParser.defaultDocumentElementParsers()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C38, "Lr");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24FEE3D40;
  v1 = sub_24FE80C7C();
  *(v0 + 32) = &type metadata for DocumentElementCapsuleParser;
  *(v0 + 40) = v1;
  v2 = sub_24FE80CD0();
  *(v0 + 48) = &type metadata for DocumentElementListImageParser;
  *(v0 + 56) = v2;
  v3 = sub_24FE80D24();
  *(v0 + 64) = &type metadata for DocumentElementOutlineParser;
  *(v0 + 72) = v3;
  v4 = sub_24FE80D78();
  *(v0 + 80) = &type metadata for DocumentElementHeadingParser;
  *(v0 + 88) = v4;
  v5 = sub_24FE80DCC();
  *(v0 + 96) = &type metadata for DocumentElementEmbeddedVideoParser;
  *(v0 + 104) = v5;
  v6 = sub_24FE80E20();
  *(v0 + 112) = &type metadata for DocumentElementBreakParser;
  *(v0 + 120) = v6;
  v7 = sub_24FE80E74();
  *(v0 + 128) = &type metadata for DocumentElementTableParser;
  *(v0 + 136) = v7;
  v8 = sub_24FE80EC8();
  *(v0 + 144) = &type metadata for DocumentElementBlockQuoteParser;
  *(v0 + 152) = v8;
  v9 = sub_24FE80F1C();
  *(v0 + 160) = &type metadata for DocumentElementCodeBlockParser;
  *(v0 + 168) = v9;
  v10 = sub_24FE80F70();
  *(v0 + 176) = &type metadata for DocumentElementParagraphParser;
  *(v0 + 184) = v10;
  return v0;
}

double variable initialization expression of MarkdownParser.defaultInlineParsers()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C90, &qword_24FEE3E80);
  v0 = swift_allocObject();
  *&result = 2;
  *(v0 + 16) = xmmword_24FEE0830;
  *(v0 + 32) = &type metadata for InlineElementGlossaryLinkParser;
  *(v0 + 40) = &protocol witness table for InlineElementGlossaryLinkParser;
  *(v0 + 48) = &type metadata for InlineElementTextColorParser;
  *(v0 + 56) = &protocol witness table for InlineElementTextColorParser;
  return result;
}

uint64_t sub_24FE80AF8(uint64_t a1)
{
  v2 = sub_24FE807FC(&qword_27F3A5D50, _s3__C3KeyVMa_0);
  v3 = sub_24FE807FC(&qword_27F3A5D58, _s3__C3KeyVMa_0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24FE80BB8(uint64_t a1)
{
  v2 = sub_24FE807FC(&qword_27F3A5D60, type metadata accessor for URLResourceKey);
  v3 = sub_24FE807FC(&qword_27F3A5D68, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_24FE80C7C()
{
  result = qword_27F3A5C40;
  if (!qword_27F3A5C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5C40);
  }

  return result;
}

unint64_t sub_24FE80CD0()
{
  result = qword_27F3A5C48;
  if (!qword_27F3A5C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5C48);
  }

  return result;
}

unint64_t sub_24FE80D24()
{
  result = qword_27F3A5C50;
  if (!qword_27F3A5C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5C50);
  }

  return result;
}

unint64_t sub_24FE80D78()
{
  result = qword_27F3A5C58;
  if (!qword_27F3A5C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5C58);
  }

  return result;
}

unint64_t sub_24FE80DCC()
{
  result = qword_27F3A5C60;
  if (!qword_27F3A5C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5C60);
  }

  return result;
}

unint64_t sub_24FE80E20()
{
  result = qword_27F3A5C68;
  if (!qword_27F3A5C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5C68);
  }

  return result;
}

unint64_t sub_24FE80E74()
{
  result = qword_27F3A5C70;
  if (!qword_27F3A5C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5C70);
  }

  return result;
}

unint64_t sub_24FE80EC8()
{
  result = qword_27F3A5C78;
  if (!qword_27F3A5C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5C78);
  }

  return result;
}

unint64_t sub_24FE80F1C()
{
  result = qword_27F3A5C80;
  if (!qword_27F3A5C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5C80);
  }

  return result;
}

unint64_t sub_24FE80F70()
{
  result = qword_27F3A5C88;
  if (!qword_27F3A5C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5C88);
  }

  return result;
}

__n128 __swift_memcpy16_8_0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24FE80FD4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24FE80FF4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

unint64_t sub_24FE81030()
{
  result = qword_27F3A5CA0;
  if (!qword_27F3A5CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5CA0);
  }

  return result;
}

void sub_24FE810C0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_24FE8130C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v26 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_24FEDD254();
  v28 = *(v10 - 8);
  v11 = *(v28 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v27 = sub_24FEDD254();
  v14 = *(*(v27 - 8) + 64);
  v15 = (MEMORY[0x28223BE20])(v27);
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v25 - v18;
  (*(a3 + 72))(a2, a3, a4, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(v26, AssociatedTypeWitness, AssociatedConformanceWitness);
  v21 = swift_getAssociatedConformanceWitness();
  sub_24FEDDBB4();
  v31 = v21;
  v32 = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  sub_24FEDDBF4();
  (*(v28 + 8))(v13, v10);
  v29 = WitnessTable;
  v30 = MEMORY[0x277CDFC48];
  swift_getWitnessTable();
  v23 = sub_24FEDDE14();
  (*(v16 + 8))(v19, AssociatedTypeWitness);
  return v23;
}

double sub_24FE81640@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DocumentDataImageElement();
  v4 = (v1 + v3[5]);
  v5 = *(v1 + v3[6]);
  v6 = *v4;
  v7 = v4[1];
  v8 = *(v1 + v3[7]);
  v9 = objc_allocWithZone(MEMORY[0x277D755B8]);
  sub_24FE62C94(v6, v7);
  sub_24FE62C94(v6, v7);
  v10 = sub_24FEDCA04();
  v11 = [v9 initWithData_];

  sub_24FE62CFC(v6, v7);
  result = 210.0;
  *a1 = xmmword_24FEE3D50;
  *(a1 + 16) = v11;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v5;
  *(a1 + 41) = v8;
  return result;
}

uint64_t sub_24FE81728@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 20));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

double sub_24FE81768(uint64_t a1)
{
  v2 = type metadata accessor for DocumentCodeBlockElement();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FE81980(a1, &v7);
  if (v8)
  {
    sub_24FE71ADC(&v7, v9);
    sub_24FE71ADC(v9, &v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5DE0, &unk_24FEE7BE0);
    if (swift_dynamicCast())
    {
      sub_24FE819F0(v5);
      return 16.0;
    }

    else
    {
      return 10.0;
    }
  }

  else
  {
    sub_24FE58B7C(&v7, &qword_27F3A5DD8, &unk_24FEE42C0);
    return 0.0;
  }
}

double DocumentElementView.topPadding(previousElement:)(uint64_t a1)
{
  v2 = type metadata accessor for DocumentCodeBlockElement();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FE81980(a1, &v7);
  if (v8)
  {
    sub_24FE71ADC(&v7, v9);
    sub_24FE71ADC(v9, &v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5DE0, &unk_24FEE7BE0);
    if (swift_dynamicCast())
    {
      sub_24FE819F0(v5);
      return 16.0;
    }

    else
    {
      return 10.0;
    }
  }

  else
  {
    sub_24FE58B7C(&v7, &qword_27F3A5DD8, &unk_24FEE42C0);
    return 0.0;
  }
}

uint64_t sub_24FE81980(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5DD8, &unk_24FEE42C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE819F0(uint64_t a1)
{
  v2 = type metadata accessor for DocumentCodeBlockElement();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24FE81A4C()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_27F3A5DD0 = v1 == 1;
}

uint64_t sub_24FE81B34(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  if (qword_27F3A5B60 != -1)
  {
    v4 = a1;
    v5 = a2;
    swift_once();
    a1 = v4;
    a2 = v5;
  }

  if (byte_27F3A5DD0 == 1)
  {

    return a1();
  }

  else
  {

    return a2();
  }
}

uint64_t static MarkdownFontConfiguration.Defaults.inlineCodeFont.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5DE8, &qword_24FEE42D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9 - v2;
  if (qword_27F3A5B60 != -1)
  {
    swift_once();
  }

  sub_24FEDD814();
  v4 = *MEMORY[0x277CE0980];
  v5 = sub_24FEDD7F4();
  v6 = *(v5 - 8);
  (*(v6 + 104))(v3, v4, v5);
  (*(v6 + 56))(v3, 0, 1, v5);
  v7 = sub_24FEDD834();
  sub_24FE58B7C(v3, &qword_27F3A5DE8, &qword_24FEE42D0);
  return v7;
}

uint64_t static MarkdownFontConfiguration.Defaults.inlineCodeMajorHeadingFont.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5DE8, &qword_24FEE42D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9 - v2;
  if (qword_27F3A5B60 != -1)
  {
    swift_once();
  }

  sub_24FEDD814();
  v4 = *MEMORY[0x277CE0980];
  v5 = sub_24FEDD7F4();
  v6 = *(v5 - 8);
  (*(v6 + 104))(v3, v4, v5);
  (*(v6 + 56))(v3, 0, 1, v5);
  v7 = sub_24FEDD834();
  sub_24FE58B7C(v3, &qword_27F3A5DE8, &qword_24FEE42D0);
  return v7;
}

uint64_t static MarkdownFontConfiguration.Defaults.codeBlockFont.getter()
{
  sub_24FEDD7C4();
  v0 = sub_24FEDD7B4();

  return v0;
}

uint64_t MarkdownFontConfiguration.init(majorFont:regularFont:bulletFont:inlineCodeFont:inlineCodeMajorHeadingFont:codeBlockFont:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_24FE81F30()
{
  type metadata accessor for MarkdownFont();
  result = swift_initStaticObject();
  static MarkdownFont.shared = result;
  return result;
}

uint64_t *MarkdownFont.shared.unsafeMutableAddressor()
{
  if (qword_27F3A5B68 != -1)
  {
    swift_once();
  }

  return &static MarkdownFont.shared;
}

uint64_t static MarkdownFont.shared.getter()
{
  type metadata accessor for MarkdownFont();

  return swift_initStaticObject();
}

uint64_t sub_24FE82000@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5DE8, &qword_24FEE42D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v34 - v5;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = v1[7];
  if (v7)
  {
    v13 = v1[2];
    v14 = v8;
    v15 = v9;
    v16 = v10;
    v17 = v11;
    v18 = v12;
  }

  else
  {
    v39 = v1[7];
    v40 = v11;
    v41 = v10;
    v42 = v9;
    v43 = v8;
    v44 = 0;
    if (qword_27F3A5B60 != -1)
    {
      swift_once();
    }

    if (byte_27F3A5DD0 == 1)
    {
      v19 = sub_24FEDD854();
    }

    else
    {
      v19 = sub_24FEDD844();
    }

    v38 = v19;
    if (byte_27F3A5DD0 == 1)
    {
      v20 = sub_24FEDD7E4();
    }

    else
    {
      v20 = sub_24FEDD854();
    }

    v37 = v20;
    if (byte_27F3A5DD0 == 1)
    {
      v21 = sub_24FEDD894();
    }

    else
    {
      v21 = sub_24FEDD884();
    }

    v36 = v21;
    sub_24FEDD814();
    v22 = *MEMORY[0x277CE0980];
    v23 = sub_24FEDD7F4();
    v24 = *(v23 - 8);
    (*(v24 + 104))(v6, v22, v23);
    (*(v24 + 56))(v6, 0, 1, v23);
    v16 = sub_24FEDD834();
    sub_24FE58B7C(v6, &qword_27F3A5DE8, &qword_24FEE42D0);
    sub_24FEDD814();
    v25 = sub_24FEDD7F4();
    v26 = *(v25 - 8);
    (*(v26 + 104))(v6, v22, v25);
    (*(v26 + 56))(v6, 0, 1, v25);
    v17 = sub_24FEDD834();
    sub_24FE58B7C(v6, &qword_27F3A5DE8, &qword_24FEE42D0);
    sub_24FEDD7C4();
    v18 = sub_24FEDD7B4();

    v27 = v1[2];
    v28 = v1[3];
    v30 = v1[4];
    v29 = v1[5];
    v31 = v1[7];
    v34[1] = v1[6];
    v35 = v27;
    v34[0] = v31;
    v14 = v37;
    v32 = v38;
    v1[2] = v38;
    v1[3] = v14;
    v15 = v36;
    v1[4] = v36;
    v1[5] = v16;
    v1[6] = v17;
    v1[7] = v18;
    v13 = v32;

    sub_24FE708C4(v35);
    v7 = v44;
  }

  result = sub_24FE71B04(v7);
  *a1 = v13;
  a1[1] = v14;
  a1[2] = v15;
  a1[3] = v16;
  a1[4] = v17;
  a1[5] = v18;
  return result;
}

uint64_t MarkdownFont.apply(configuration:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[5];
  v12 = v1[6];
  v13 = v1[7];
  v1[2] = *a1;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v1[7] = v7;
  v20 = v3;
  v21 = v2;
  v18 = v5;
  v19 = v4;
  v16 = v7;
  v17 = v6;
  sub_24FE82458(&v21, v15);
  sub_24FE82458(&v20, v15);
  sub_24FE82458(&v19, v15);
  sub_24FE82458(&v18, v15);
  sub_24FE82458(&v17, v15);
  sub_24FE82458(&v16, v15);
  return sub_24FE708C4(v8);
}

uint64_t *MarkdownFont.deinit()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  sub_24FE708C4(v0[2]);
  return v0;
}

uint64_t MarkdownFont.__deallocating_deinit()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  sub_24FE708C4(v0[2]);

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy48_8_0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t property wrapper backing initializer of DocumentView.viewModel(uint64_t *a1)
{
  v1 = *a1;
  sub_24FE86F30(&qword_27F3A5DF0, type metadata accessor for DocumentViewModel);

  return sub_24FEDD1B4();
}

uint64_t property wrapper backing initializer of DocumentView.laTeXMathTracker()
{
  type metadata accessor for LaTeXMathTracker();
  sub_24FE86F30(&qword_27F3A5DF8, type metadata accessor for LaTeXMathTracker);

  return sub_24FEDD1B4();
}

uint64_t DocumentView.init(viewModel:linkTapped:contentsToShare:forceOffsetFirstElement:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X8>)
{
  if (qword_27F3A5B88 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  type metadata accessor for LaTeXMathTracker();
  sub_24FE86F30(&qword_27F3A5DF8, type metadata accessor for LaTeXMathTracker);

  *(a5 + 16) = sub_24FEDD1B4();
  *(a5 + 24) = v10;
  v11 = *(type metadata accessor for DocumentView() + 36);
  sub_24FE85C8C();
  sub_24FEDD0B4();
  type metadata accessor for DocumentViewModel();
  sub_24FE86F30(&qword_27F3A5DF0, type metadata accessor for DocumentViewModel);

  *a5 = sub_24FEDD1B4();
  *(a5 + 8) = v12;
  *(a5 + 48) = a1;
  *(a5 + 56) = a2;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4 & 1;
  sub_24FE82880();
}

uint64_t sub_24FE82880()
{
  v1 = type metadata accessor for DocumentFileElement();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24FEDCFE4();

  v6 = *(v19[0] + 16);
  if (v6)
  {
    v17[0] = v19[0];
    v17[1] = v5;
    v7 = v19[0] + 32;
    v8 = MEMORY[0x277D84F90];
    v9 = MEMORY[0x277D84F90];
    do
    {
      sub_24FE72D1C(v7, v19);
      sub_24FE72D1C(v19, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5DE0, &unk_24FEE7BE0);
      if (swift_dynamicCast())
      {
        sub_24FE86F78(v4, type metadata accessor for DocumentFileElement);
        sub_24FE72D1C(v19, v18);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_24FEBAFF8(0, v9[2] + 1, 1, v9);
        }

        v12 = v9[2];
        v11 = v9[3];
        if (v12 >= v11 >> 1)
        {
          v9 = sub_24FEBAFF8((v11 > 1), v12 + 1, 1, v9);
        }

        __swift_destroy_boxed_opaque_existential_1(v19);
        v9[2] = v12 + 1;
        v10 = &v9[5 * v12];
      }

      else
      {
        sub_24FE72D1C(v19, v18);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_24FEBAFF8(0, v8[2] + 1, 1, v8);
        }

        v14 = v8[2];
        v13 = v8[3];
        if (v14 >= v13 >> 1)
        {
          v8 = sub_24FEBAFF8((v13 > 1), v14 + 1, 1, v8);
        }

        __swift_destroy_boxed_opaque_existential_1(v19);
        v8[2] = v14 + 1;
        v10 = &v8[5 * v14];
      }

      sub_24FE71ADC(v18, (v10 + 4));
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
    v9 = MEMORY[0x277D84F90];
  }

  v19[0] = v8;

  sub_24FEDA074(v9);
  v15 = v19[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v19[0] = v15;
  return sub_24FEDCFF4();
}

uint64_t DocumentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DocumentView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  *a1 = sub_24FEDD514();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E08, &qword_24FEE43A0) + 44);
  v16 = v1;
  v17 = v6;
  v7 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24FEDCFE4();

  v15[2] = swift_getKeyPath();
  sub_24FE86E60(v1, v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DocumentView);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_24FE86EC8(v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for DocumentView);
  v15[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E18, &qword_24FEE4420);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E20, &qword_24FEE4428);
  sub_24FE58928(&qword_27F3A5E28, &qword_27F3A5E18, &qword_24FEE4420);
  sub_24FE86F30(&qword_27F3A5E30, MEMORY[0x277CC95F0]);
  sub_24FE85DF4(&qword_27F3A5E38, &qword_27F3A5E20, &qword_24FEE4428, sub_24FE85DC4);
  sub_24FEDDE94();
  KeyPath = swift_getKeyPath();
  sub_24FE86E60(v16, v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DocumentView);
  v11 = swift_allocObject();
  sub_24FE86EC8(v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v8, type metadata accessor for DocumentView);
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E80, &qword_24FEE4480) + 36));
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A5E88, &qword_24FEE4488) + 28);
  result = sub_24FEDD154();
  *v12 = KeyPath;
  return result;
}

uint64_t sub_24FE82EA8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a3;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F30, &qword_24FEE4578);
  v5 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v58 = (&v48 - v6);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E78, &qword_24FEE4448);
  v7 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v49 = (&v48 - v8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F38, &qword_24FEE4580);
  v9 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v52 = &v48 - v10;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E68, &qword_24FEE4440);
  v11 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v48 = (&v48 - v12);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E58, &qword_24FEE4438);
  v13 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v53 = &v48 - v14;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E48, &qword_24FEE4430);
  v15 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v17 = &v48 - v16;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F40, &unk_24FEE4588);
  v18 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v20 = (&v48 - v19);
  v55 = a2;
  v21 = *(a2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24FEDCFE4();

  v62 = a1;
  v22 = *(v63 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = (v63 + 32);
    while (1)
    {
      v25 = sub_24FE86C94(v24);
      if (v25)
      {
        break;
      }

      ++v23;
      v24 += 5;
      if (v22 == v23)
      {
        v23 = 0;
        break;
      }
    }

    v26 = v25 ^ 1;
  }

  else
  {
    v23 = 0;
    v26 = 1;
  }

  v27 = v26 & 1;

  if (v27)
  {
    v28 = a1[3];
    v29 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v28);
    v65 = 0;
    v63 = 0u;
    v64 = 0u;
    v30 = sub_24FE8130C(&v63, v28, v29, 0.0, 0.0);
    sub_24FE58B7C(&v63, &qword_27F3A5DD8, &unk_24FEE42C0);
    *v20 = v30;
    swift_storeEnumTagMultiPayload();
    sub_24FE85DC4();
    return sub_24FEDD5F4();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24FEDCFE4();

  v32 = v23 - 1;
  if (__OFSUB__(v23, 1))
  {
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24FEDCFE4();

    v33 = *(v63 + 16);

    if ((v32 & 0x8000000000000000) != 0 || v32 >= v33)
    {
      v65 = 0;
      v63 = 0u;
      v64 = 0u;
      if (v23)
      {
        goto LABEL_17;
      }

LABEL_18:
      if (*(*(v55 + 32) + 16) || *(v55 + 40) == 1)
      {
        v37 = a1[3];
        v38 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v37);
        if ((*(v38 + 56))(v37, v38))
        {
          v39 = sub_24FEDDF24();
          v40 = v48;
          *v48 = v39;
          *(v40 + 8) = v41;
          v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F50, &qword_24FEE45A0);
          sub_24FE8391C(a1, &v63, v55, (v40 + *(v42 + 44)));
          v43 = &qword_27F3A5E68;
          v44 = &qword_24FEE4440;
          sub_24FE58B14(v40, v52, &qword_27F3A5E68, &qword_24FEE4440);
        }

        else
        {
          v45 = sub_24FEDD424();
          v40 = v49;
          *v49 = v45;
          *(v40 + 8) = 0;
          *(v40 + 16) = 1;
          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F48, &qword_24FEE4598);
          sub_24FE847F4(a1, &v63, v55, v40 + *(v46 + 44));
          v43 = &qword_27F3A5E78;
          v44 = &qword_24FEE4448;
          sub_24FE58B14(v40, v52, &qword_27F3A5E78, &qword_24FEE4448);
        }

        swift_storeEnumTagMultiPayload();
        sub_24FE58928(&qword_27F3A5E60, &qword_27F3A5E68, &qword_24FEE4440);
        sub_24FE58928(&qword_27F3A5E70, &qword_27F3A5E78, &qword_24FEE4448);
        v47 = v53;
        sub_24FEDD5F4();
        sub_24FE58B7C(v40, v43, v44);
        sub_24FE58B14(v47, v58, &qword_27F3A5E58, &qword_24FEE4438);
        swift_storeEnumTagMultiPayload();
        sub_24FE85E78();
        sub_24FEDD5F4();
        sub_24FE58B7C(v47, &qword_27F3A5E58, &qword_24FEE4438);
        goto LABEL_24;
      }

LABEL_17:
      v34 = a1[3];
      v35 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v34);
      v36 = sub_24FE8130C(&v63, v34, v35, 0.0, 0.0);
      *v58 = v36;
      swift_storeEnumTagMultiPayload();
      sub_24FE85E78();
      sub_24FEDD5F4();
LABEL_24:
      sub_24FE58B14(v17, v20, &qword_27F3A5E48, &qword_24FEE4430);
      swift_storeEnumTagMultiPayload();
      sub_24FE85DC4();
      sub_24FEDD5F4();
      sub_24FE58B7C(v17, &qword_27F3A5E48, &qword_24FEE4430);
      return sub_24FE58B7C(&v63, &qword_27F3A5DD8, &unk_24FEE42C0);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_24FEDCFE4();

    if (v32 < *(v63 + 16))
    {
      sub_24FE72D1C(v63 + 40 * v32 + 32, &v63);

      if (v23)
      {
        goto LABEL_17;
      }

      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24FE8378C(void *a1, void *a2)
{
  v4 = sub_24FEDCA64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v18 - v10;
  v12 = a2[3];
  v13 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v12);
  (*(v13 + 48))(v12, v13);
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  (*(v15 + 48))(v14, v15);
  LOBYTE(a2) = _s16MarkdownDocument0B12BreakElementV23__derived_struct_equalsySbAC_ACtFZ_0();
  v16 = *(v5 + 8);
  v16(v8, v4);
  v16(v11, v4);
  return a2 & 1;
}

uint64_t sub_24FE8391C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v119 = a4;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F58, &qword_24FEE45A8);
  v7 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v114 = v94 - v8;
  v106 = sub_24FEDCE94();
  v109 = *(v106 - 8);
  v9 = *(v109 + 64);
  MEMORY[0x28223BE20](v106);
  v98 = v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F60, &unk_24FEE45B0);
  v11 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v104 = v94 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F68, &qword_24FEE5350);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v99 = v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v107 = v94 - v17;
  MEMORY[0x28223BE20](v18);
  v108 = v94 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F70, &qword_24FEE45C0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v100 = v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v110 = v94 - v24;
  v25 = type metadata accessor for ShareButton();
  v26 = *(*(v25 - 1) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29);
  v103 = v94 - v30;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F78, &qword_24FEE45C8);
  v31 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112);
  v102 = v94 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v105 = v94 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F80, &qword_24FEE45D0);
  v116 = *(v35 - 8);
  v117 = v35;
  v36 = *(v116 + 64);
  MEMORY[0x28223BE20](v35);
  v111 = v94 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F88, &qword_24FEE45D8);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v118 = v94 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v115 = v94 - v42;
  v44 = a1[3];
  v43 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v44);
  v45 = *(type metadata accessor for DocumentView() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
  sub_24FEDD0C4();
  v46 = v123;
  sub_24FEDD0C4();
  v47 = sub_24FE8130C(a2, v44, v43, v46, v123);
  v48 = *(a3 + 32);
  if (*(v48 + 16))
  {
    if (qword_27F3A5B88 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24FEDCFE4();

    if (v121 != 1)
    {
      v120 = 0;

      sub_24FEDDD34();
      v69 = v121;
      v70 = v122;
      v120 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6370, &qword_24FEE4E80);
      sub_24FEDDD54();
      v71 = v114;
      *v114 = 0;
      v71[8] = v69;
      *(v71 + 2) = v70;
      *(v71 + 3) = v48;
      *(v71 + 2) = xmmword_24FEE3D60;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F90, &qword_24FEE4630);
      sub_24FE86CBC();
      sub_24FE86D78();
      v72 = v111;
      sub_24FEDD5F4();
LABEL_19:
      v68 = v115;
      sub_24FE6315C(v72, v115, &qword_27F3A5F80, &qword_24FEE45D0);
      v67 = 0;
      goto LABEL_20;
    }

    v97 = v47;
    v96 = *(a3 + 8);
    v49 = type metadata accessor for ShareSheetMetadata();
    v50 = *(v49 - 8);
    v51 = v110;
    (*(v50 + 56))(v110, 1, 1, v49);
    *v28 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);
    swift_storeEnumTagMultiPayload();
    v52 = v25[5];
    v121 = 0x403C000000000000;
    sub_24FE85C8C();

    sub_24FEDD0B4();
    v53 = v25[6];
    sub_24FEDDC74();
    v54 = sub_24FEDDC64();

    v95 = v53;
    v94[1] = v54;
    *(v28 + v53) = v54;
    v94[0] = v25[7];
    *(v28 + v94[0]) = 0;
    *(v28 + v25[8]) = 0;
    v55 = (v28 + v25[9]);
    sub_24FEDE134();
    sub_24FE86F30(&qword_27F3A5C08, MEMORY[0x277D63F60]);
    *v55 = sub_24FEDD2C4();
    v55[1] = v56;
    v57 = (v28 + v25[10]);
    type metadata accessor for LaTeXMathTracker();
    sub_24FE86F30(&qword_27F3A5DF8, type metadata accessor for LaTeXMathTracker);

    *v57 = sub_24FEDD1B4();
    v57[1] = v58;
    v59 = v28 + v25[11];
    v120 = 0;
    sub_24FEDDD34();
    v60 = v122;
    *v59 = v121;
    *(v59 + 1) = v60;
    *(v28 + v25[12]) = v96;
    *(v28 + v25[13]) = v48;
    sub_24FE58B14(v51, v28 + v25[14], &qword_27F3A5F70, &qword_24FEE45C0);
    *(v28 + v25[15]) = 0;
    v61 = v100;
    sub_24FE58B14(v51, v100, &qword_27F3A5F70, &qword_24FEE45C0);
    if ((*(v50 + 48))(v61, 1, v49) == 1)
    {
      sub_24FE58B7C(v61, &qword_27F3A5F70, &qword_24FEE45C0);
      v62 = 1;
      v63 = v106;
      v64 = v104;
      v66 = v108;
      v65 = v109;
    }

    else
    {
      v66 = v108;
      v65 = v109;
      v63 = v106;
      (*(v109 + 16))(v108, v61 + *(v49 + 24), v106);
      sub_24FE86F78(v61, type metadata accessor for ShareSheetMetadata);
      v62 = 0;
      v64 = v104;
    }

    v73 = v107;
    v74 = *(v65 + 56);
    v74(v66, v62, 1, v63);
    sub_24FEDCE64();
    v74(v73, 0, 1, v63);
    v75 = *(v101 + 48);
    sub_24FE58B14(v66, v64, &qword_27F3A5F68, &qword_24FEE5350);
    sub_24FE58B14(v73, v64 + v75, &qword_27F3A5F68, &qword_24FEE5350);
    v76 = v66;
    v77 = *(v65 + 48);
    v78 = v77(v64, 1, v63);
    v47 = v97;
    if (v78 == 1)
    {
      sub_24FE58B7C(v73, &qword_27F3A5F68, &qword_24FEE5350);
      sub_24FE58B7C(v76, &qword_27F3A5F68, &qword_24FEE5350);
      v79 = v77(v64 + v75, 1, v63);
      v72 = v111;
      if (v79 == 1)
      {
        sub_24FE58B7C(v64, &qword_27F3A5F68, &qword_24FEE5350);
LABEL_17:
        v85 = sub_24FEDDC54();

        *(v28 + v95) = v85;
        *(v28 + v94[0]) = 1;
        goto LABEL_18;
      }
    }

    else
    {
      v80 = v99;
      sub_24FE58B14(v64, v99, &qword_27F3A5F68, &qword_24FEE5350);
      if (v77(v64 + v75, 1, v63) != 1)
      {
        v81 = v109;
        v82 = v98;
        (*(v109 + 32))(v98, v64 + v75, v63);
        sub_24FE86F30(&qword_27F3A5FC0, MEMORY[0x277D85578]);
        v83 = sub_24FEDE194();
        v84 = *(v81 + 8);
        v84(v82, v63);
        sub_24FE58B7C(v107, &qword_27F3A5F68, &qword_24FEE5350);
        sub_24FE58B7C(v108, &qword_27F3A5F68, &qword_24FEE5350);
        v84(v80, v63);
        sub_24FE58B7C(v64, &qword_27F3A5F68, &qword_24FEE5350);
        v72 = v111;
        if (v83)
        {
          goto LABEL_17;
        }

LABEL_18:
        v86 = v103;
        sub_24FE86E60(v28, v103, type metadata accessor for ShareButton);
        sub_24FE58B7C(v110, &qword_27F3A5F70, &qword_24FEE45C0);
        sub_24FE86F78(v28, type metadata accessor for ShareButton);
        v87 = v86;
        v88 = v102;
        sub_24FE86EC8(v87, v102, type metadata accessor for ShareButton);
        *(v88 + *(v112 + 36)) = xmmword_24FEE3D60;
        v89 = v105;
        sub_24FE6315C(v88, v105, &qword_27F3A5F78, &qword_24FEE45C8);
        sub_24FE58B14(v89, v114, &qword_27F3A5F78, &qword_24FEE45C8);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F90, &qword_24FEE4630);
        sub_24FE86CBC();
        sub_24FE86D78();
        sub_24FEDD5F4();
        sub_24FE58B7C(v89, &qword_27F3A5F78, &qword_24FEE45C8);
        goto LABEL_19;
      }

      sub_24FE58B7C(v107, &qword_27F3A5F68, &qword_24FEE5350);
      sub_24FE58B7C(v108, &qword_27F3A5F68, &qword_24FEE5350);
      (*(v109 + 8))(v80, v63);
      v72 = v111;
    }

    sub_24FE58B7C(v64, &qword_27F3A5F60, &unk_24FEE45B0);
    goto LABEL_18;
  }

  v67 = 1;
  v68 = v115;
LABEL_20:
  (*(v116 + 56))(v68, v67, 1, v117);
  v90 = v118;
  sub_24FE58B14(v68, v118, &qword_27F3A5F88, &qword_24FEE45D8);
  v91 = v119;
  *v119 = v47;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5FB8, &qword_24FEE4638);
  sub_24FE58B14(v90, v91 + *(v92 + 48), &qword_27F3A5F88, &qword_24FEE45D8);

  sub_24FE58B7C(v68, &qword_27F3A5F88, &qword_24FEE45D8);
  sub_24FE58B7C(v90, &qword_27F3A5F88, &qword_24FEE45D8);
}

uint64_t sub_24FE847F4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F58, &qword_24FEE45A8);
  v8 = *(*(v111 - 8) + 64);
  MEMORY[0x28223BE20](v111);
  v112 = &v88 - v9;
  v103 = sub_24FEDCE94();
  v10 = *(v103 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v103);
  v95 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F60, &unk_24FEE45B0);
  v13 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v101 = &v88 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F68, &qword_24FEE5350);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v96 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v104 = &v88 - v19;
  MEMORY[0x28223BE20](v20);
  v105 = &v88 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F70, &qword_24FEE45C0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v98 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v106 = &v88 - v26;
  v27 = type metadata accessor for ShareButton();
  v28 = *(*(v27 - 1) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = (&v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31);
  v33 = &v88 - v32;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F78, &qword_24FEE45C8);
  v34 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107);
  v100 = &v88 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v102 = &v88 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F80, &qword_24FEE45D0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v110 = &v88 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v109 = &v88 - v42;
  v43 = a1[3];
  v44 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v43);
  v108 = sub_24FE8130C(a2, v43, v44, 0.0, 0.0);
  if (qword_27F3A5B88 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24FEDCFE4();

  if (v114 == 1)
  {
    v93 = v33;
    v97 = v10;
    v94 = a4;
    v45 = *(a3 + 8);
    v92 = *(a3 + 32);
    v46 = type metadata accessor for ShareSheetMetadata();
    v47 = *(v46 - 8);
    v48 = v106;
    (*(v47 + 56))(v106, 1, 1, v46);
    *v30 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);
    swift_storeEnumTagMultiPayload();
    v49 = v27[5];
    v114 = 0x403C000000000000;
    sub_24FE85C8C();

    sub_24FEDD0B4();
    v50 = v27[6];
    sub_24FEDDC74();
    v51 = sub_24FEDDC64();

    v91 = v50;
    v90 = v51;
    *(v30 + v50) = v51;
    v89 = v27[7];
    *(v30 + v89) = 0;
    *(v30 + v27[8]) = 0;
    v52 = (v30 + v27[9]);
    sub_24FEDE134();
    sub_24FE86F30(&qword_27F3A5C08, MEMORY[0x277D63F60]);
    *v52 = sub_24FEDD2C4();
    v52[1] = v53;
    v54 = (v30 + v27[10]);
    type metadata accessor for LaTeXMathTracker();
    sub_24FE86F30(&qword_27F3A5DF8, type metadata accessor for LaTeXMathTracker);

    *v54 = sub_24FEDD1B4();
    v54[1] = v55;
    v56 = v30 + v27[11];
    v113 = 0;
    sub_24FEDDD34();
    v57 = v115;
    *v56 = v114;
    *(v56 + 1) = v57;
    *(v30 + v27[12]) = v45;
    *(v30 + v27[13]) = v92;
    sub_24FE58B14(v48, v30 + v27[14], &qword_27F3A5F70, &qword_24FEE45C0);
    *(v30 + v27[15]) = 0;
    v58 = v98;
    sub_24FE58B14(v48, v98, &qword_27F3A5F70, &qword_24FEE45C0);
    if ((*(v47 + 48))(v58, 1, v46) == 1)
    {
      sub_24FE58B7C(v58, &qword_27F3A5F70, &qword_24FEE45C0);
      v59 = 1;
      v60 = v103;
      v61 = v97;
      v62 = v105;
    }

    else
    {
      v61 = v97;
      v62 = v105;
      v60 = v103;
      (*(v97 + 16))(v105, v58 + *(v46 + 24), v103);
      sub_24FE86F78(v58, type metadata accessor for ShareSheetMetadata);
      v59 = 0;
    }

    v68 = v104;
    v69 = *(v61 + 56);
    v69(v62, v59, 1, v60);
    sub_24FEDCE64();
    v69(v68, 0, 1, v60);
    v70 = v61;
    v71 = *(v99 + 48);
    v72 = v101;
    sub_24FE58B14(v62, v101, &qword_27F3A5F68, &qword_24FEE5350);
    sub_24FE58B14(v68, v72 + v71, &qword_27F3A5F68, &qword_24FEE5350);
    v73 = *(v70 + 48);
    v74 = v73(v72, 1, v60) == 1;
    v75 = v68;
    v67 = v109;
    if (v74)
    {
      sub_24FE58B7C(v75, &qword_27F3A5F68, &qword_24FEE5350);
      sub_24FE58B7C(v62, &qword_27F3A5F68, &qword_24FEE5350);
      v76 = v73(v72 + v71, 1, v60);
      a4 = v94;
      if (v76 != 1)
      {
LABEL_14:
        sub_24FE58B7C(v72, &qword_27F3A5F60, &unk_24FEE45B0);
LABEL_17:
        v82 = v93;
        sub_24FE86E60(v30, v93, type metadata accessor for ShareButton);
        sub_24FE58B7C(v106, &qword_27F3A5F70, &qword_24FEE45C0);
        sub_24FE86F78(v30, type metadata accessor for ShareButton);
        v83 = v100;
        sub_24FE86EC8(v82, v100, type metadata accessor for ShareButton);
        *(v83 + *(v107 + 36)) = xmmword_24FEE3D60;
        v84 = v102;
        sub_24FE6315C(v83, v102, &qword_27F3A5F78, &qword_24FEE45C8);
        sub_24FE58B14(v84, v112, &qword_27F3A5F78, &qword_24FEE45C8);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F90, &qword_24FEE4630);
        sub_24FE86CBC();
        sub_24FE86D78();
        sub_24FEDD5F4();
        sub_24FE58B7C(v84, &qword_27F3A5F78, &qword_24FEE45C8);
        goto LABEL_18;
      }

      sub_24FE58B7C(v72, &qword_27F3A5F68, &qword_24FEE5350);
    }

    else
    {
      v77 = v96;
      sub_24FE58B14(v72, v96, &qword_27F3A5F68, &qword_24FEE5350);
      if (v73(v72 + v71, 1, v60) == 1)
      {
        sub_24FE58B7C(v104, &qword_27F3A5F68, &qword_24FEE5350);
        sub_24FE58B7C(v105, &qword_27F3A5F68, &qword_24FEE5350);
        (*(v97 + 8))(v77, v60);
        a4 = v94;
        goto LABEL_14;
      }

      v78 = v97;
      v79 = v95;
      (*(v97 + 32))(v95, v72 + v71, v60);
      sub_24FE86F30(&qword_27F3A5FC0, MEMORY[0x277D85578]);
      LODWORD(v103) = sub_24FEDE194();
      v80 = *(v78 + 8);
      v80(v79, v60);
      sub_24FE58B7C(v104, &qword_27F3A5F68, &qword_24FEE5350);
      sub_24FE58B7C(v105, &qword_27F3A5F68, &qword_24FEE5350);
      v80(v77, v60);
      sub_24FE58B7C(v72, &qword_27F3A5F68, &qword_24FEE5350);
      a4 = v94;
      if ((v103 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v81 = sub_24FEDDC54();

    *(v30 + v91) = v81;
    *(v30 + v89) = 1;
    goto LABEL_17;
  }

  v63 = *(a3 + 32);
  v113 = 0;

  sub_24FEDDD34();
  v64 = v114;
  v65 = v115;
  v113 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6370, &qword_24FEE4E80);
  sub_24FEDDD54();
  v66 = v112;
  *v112 = 0;
  v66[8] = v64;
  *(v66 + 2) = v65;
  *(v66 + 3) = v63;
  *(v66 + 2) = xmmword_24FEE3D60;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F90, &qword_24FEE4630);
  sub_24FE86CBC();
  sub_24FE86D78();
  v67 = v109;
  sub_24FEDD5F4();
LABEL_18:
  v85 = v110;
  sub_24FE58B14(v67, v110, &qword_27F3A5F80, &qword_24FEE45D0);
  *a4 = v108;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5FC8, &qword_24FEE4678);
  sub_24FE58B14(v85, a4 + *(v86 + 64), &qword_27F3A5F80, &qword_24FEE45D0);

  sub_24FE58B7C(v67, &qword_27F3A5F80, &qword_24FEE45D0);
  sub_24FE58B7C(v85, &qword_27F3A5F80, &qword_24FEE45D0);
}