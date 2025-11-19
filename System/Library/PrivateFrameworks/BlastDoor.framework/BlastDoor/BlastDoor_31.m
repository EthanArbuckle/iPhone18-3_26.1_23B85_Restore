uint64_t VideoPreview.FrameConstraints.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D788, &qword_2146F7098);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214326920();
  sub_2146DAA08();
  if (!v2)
  {
    v23 = 0;
    sub_214326A70();
    sub_2146DA1C8();
    v12 = (v6 + 8);
    if (v18)
    {
      v23 = 2;
      sub_214326AC4();
      sub_2146DA1C8();
      (*v12)(v9, v5);
      v13 = v18;
      v14 = v19;
      v15 = v20;
      v16 = v21;
      v17 = v22 | 0x80;
    }

    else
    {
      v23 = 1;
      sub_214326B18();
      sub_2146DA1C8();
      (*v12)(v9, v5);
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v13 = v18;
      v14 = 0uLL;
    }

    *a2 = v13;
    *(a2 + 8) = v14;
    *(a2 + 24) = v15;
    *(a2 + 32) = v16;
    *(a2 + 40) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142CF710(char a1)
{
  result = 0xD000000000000027;
  switch(a1)
  {
    case 1:
    case 8:
    case 23:
      result = 0xD000000000000012;
      break;
    case 2:
    case 6:
    case 15:
      result = 0xD000000000000013;
      break;
    case 3:
    case 31:
      result = 0xD000000000000018;
      break;
    case 4:
    case 14:
    case 25:
      result = 0xD000000000000014;
      break;
    case 5:
    case 7:
    case 13:
      result = 0xD000000000000016;
      break;
    case 9:
    case 12:
    case 24:
      result = 0xD000000000000017;
      break;
    case 10:
    case 33:
    case 34:
      result = 0xD00000000000001CLL;
      break;
    case 11:
    case 26:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0xD000000000000019;
      break;
    case 17:
    case 27:
    case 28:
    case 30:
    case 36:
    case 37:
      result = 0xD00000000000001ALL;
      break;
    case 18:
      result = 0xD000000000000023;
      break;
    case 19:
      result = 0xD000000000000022;
      break;
    case 20:
      result = 0xD000000000000011;
      break;
    case 21:
    case 32:
      result = 0xD00000000000001BLL;
      break;
    case 22:
      result = 0xD000000000000024;
      break;
    case 29:
      result = 0xD00000000000002BLL;
      break;
    case 35:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2142CF9DC(char a1)
{
  result = 0x6174654D676E6F73;
  switch(a1)
  {
    case 1:
      v3 = 0x4D6D75626C61;
      return v3 & 0xFFFFFFFFFFFFLL | 0x7465000000000000;
    case 2:
    case 30:
      return 0xD000000000000012;
    case 3:
      v4 = 0x747369747261;
      goto LABEL_21;
    case 4:
    case 6:
    case 12:
      return 0xD000000000000010;
    case 5:
      v3 = 0x4D6F69646172;
      return v3 & 0xFFFFFFFFFFFFLL | 0x7465000000000000;
    case 7:
      v5 = 1802465122;
      goto LABEL_29;
    case 8:
    case 11:
    case 23:
      return 0xD000000000000011;
    case 9:
    case 32:
    case 33:
      return 0xD000000000000016;
    case 10:
      return 0x4D74736163646F70;
    case 13:
      v4 = 0x776F68537674;
      goto LABEL_21;
    case 14:
      v3 = 0x4D6569766F6DLL;
      return v3 & 0xFFFFFFFFFFFFLL | 0x7465000000000000;
    case 15:
      return 0xD000000000000013;
    case 16:
      return 0xD000000000000014;
    case 17:
      v6 = 9;
      goto LABEL_19;
    case 18:
      return 0xD00000000000001CLL;
    case 19:
      return 0x646174654D70616DLL;
    case 20:
    case 31:
      return 0xD000000000000015;
    case 21:
      v6 = 10;
LABEL_19:
      result = v6 | 0xD000000000000014;
      break;
    case 22:
      v5 = 1701603686;
LABEL_29:
      result = v5 | 0x6174654D00000000;
      break;
    case 24:
      v4 = 0x736B636F7473;
LABEL_21:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x654D000000000000;
      break;
    case 25:
      result = 0x4D5654656C707061;
      break;
    case 26:
      result = 0xD000000000000014;
      break;
    case 27:
      result = 0xD000000000000014;
      break;
    case 28:
      result = 0xD000000000000025;
      break;
    case 29:
      result = 0xD000000000000014;
      break;
    case 34:
      result = 0xD000000000000017;
      break;
    case 35:
      result = 0xD000000000000014;
      break;
    case 36:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2142CFD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21438C768(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142CFDC8(uint64_t a1)
{
  v2 = sub_214326B6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142CFE04(uint64_t a1)
{
  v2 = sub_214326B6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142CFE58(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_2146DA6A8();
  }

  return v12 & 1;
}

uint64_t sub_2142CFF04(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  sub_2146DA958();
  a3(v5);
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142CFF88(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  sub_2146D9698();
}

uint64_t sub_2142CFFF8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  sub_2146DA958();
  a4(v6);
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142D0060@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21438D3C0();
  *a2 = result;
  return result;
}

uint64_t sub_2142D0090@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2142CF9DC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2142D016C(void *a1)
{
  v197 = type metadata accessor for LinkPresentation.SharedObjectMetadata(0);
  v2 = *(*(v197 - 8) + 64);
  MEMORY[0x28223BE20](v197);
  v216 = &v179 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = type metadata accessor for LinkPresentation.WalletPassMetadata(0);
  v4 = *(*(v196 - 8) + 64);
  MEMORY[0x28223BE20](v196);
  v215 = &v179 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = type metadata accessor for LinkPresentation.PhotosMomentMetadata(0);
  v6 = *(*(v195 - 8) + 64);
  MEMORY[0x28223BE20](v195);
  v214 = &v179 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = type metadata accessor for LinkPresentation.FileMetadata(0);
  v8 = *(*(v194 - 8) + 64);
  MEMORY[0x28223BE20](v194);
  v213 = &v179 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for LinkPresentation.MovieBundleMetadata(0);
  v10 = *(*(v193 - 8) + 64);
  MEMORY[0x28223BE20](v193);
  v212 = &v179 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = type metadata accessor for LinkPresentation.MovieMetadata(0);
  v12 = *(*(v192 - 8) + 64);
  MEMORY[0x28223BE20](v192);
  v211 = &v179 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = type metadata accessor for LinkPresentation.TVShowMetadata(0);
  v14 = *(*(v191 - 8) + 64);
  MEMORY[0x28223BE20](v191);
  v210 = &v179 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = type metadata accessor for LinkPresentation.TVSeasonMetadata(0);
  v16 = *(*(v190 - 8) + 64);
  MEMORY[0x28223BE20](v190);
  v209 = &v179 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = type metadata accessor for LinkPresentation.TVEpisodeMetadata(0);
  v18 = *(*(v189 - 8) + 64);
  MEMORY[0x28223BE20](v189);
  v208 = &v179 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = type metadata accessor for LinkPresentation.PodcastMetadata(0);
  v20 = *(*(v188 - 8) + 64);
  MEMORY[0x28223BE20](v188);
  v207 = &v179 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = type metadata accessor for LinkPresentation.PodcastEpisodeMetadata(0);
  v22 = *(*(v187 - 8) + 64);
  MEMORY[0x28223BE20](v187);
  v206 = &v179 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for LinkPresentation.AudioBookMetadata(0);
  v24 = *(*(v186 - 8) + 64);
  MEMORY[0x28223BE20](v186);
  v205 = &v179 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = type metadata accessor for LinkPresentation.BookMetadata(0);
  v26 = *(*(v185 - 8) + 64);
  MEMORY[0x28223BE20](v185);
  v204 = &v179 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = type metadata accessor for LinkPresentation.SoftwareMetadata(0);
  v28 = *(*(v184 - 8) + 64);
  MEMORY[0x28223BE20](v184);
  v203 = &v179 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = type metadata accessor for LinkPresentation.RadioMetadata(0);
  v30 = *(*(v183 - 8) + 64);
  MEMORY[0x28223BE20](v183);
  v202 = &v179 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for LinkPresentation.PlaylistMetadata(0);
  v32 = *(*(v182 - 8) + 64);
  MEMORY[0x28223BE20](v182);
  v201 = &v179 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for LinkPresentation.ArtistMetadata(0);
  v34 = *(*(v181 - 8) + 64);
  MEMORY[0x28223BE20](v181);
  v200 = &v179 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for LinkPresentation.MusicVideoMetadata(0);
  v36 = *(*(v180 - 8) + 64);
  MEMORY[0x28223BE20](v180);
  v199 = &v179 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for LinkPresentation.AlbumMetadata(0);
  v38 = *(*(v179 - 8) + 64);
  MEMORY[0x28223BE20](v179);
  v198 = &v179 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for LinkPresentation.SongMetadata(0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v43 = &v179 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for LinkPresentation.SpecializationMetadata(0);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v47 = (&v179 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D7A8, &qword_2146F70A0);
  v217 = *(v220 - 8);
  v48 = *(v217 + 64);
  MEMORY[0x28223BE20](v220);
  v50 = &v179 - v49;
  v51 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214326B6C();
  v219 = v50;
  sub_2146DAA28();
  sub_2143287C0(v224, v47, type metadata accessor for LinkPresentation.SpecializationMetadata);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v120 = v47;
      v83 = v198;
      sub_214328704(v120, v198, type metadata accessor for LinkPresentation.AlbumMetadata);
      v222[0] = 1;
      LOBYTE(v221[0]) = 0;
      sub_214326BC0();
      v52 = v219;
      v53 = v220;
      v121 = v218;
      sub_2146DA388();
      if (!v121)
      {
        v222[0] = 2;
        sub_214328930(&qword_27C904950, type metadata accessor for LinkPresentation.AlbumMetadata);
        sub_2146DA388();
      }

      v85 = type metadata accessor for LinkPresentation.AlbumMetadata;
      goto LABEL_110;
    case 2u:
      v112 = v47;
      v83 = v199;
      sub_214328704(v112, v199, type metadata accessor for LinkPresentation.MusicVideoMetadata);
      v222[0] = 2;
      LOBYTE(v221[0]) = 0;
      sub_214326BC0();
      v52 = v219;
      v53 = v220;
      v113 = v218;
      sub_2146DA388();
      if (!v113)
      {
        v222[0] = 3;
        sub_214328930(&qword_27C904960, type metadata accessor for LinkPresentation.MusicVideoMetadata);
        sub_2146DA388();
      }

      v85 = type metadata accessor for LinkPresentation.MusicVideoMetadata;
      goto LABEL_110;
    case 3u:
      v116 = v47;
      v83 = v200;
      sub_214328704(v116, v200, type metadata accessor for LinkPresentation.ArtistMetadata);
      v222[0] = 3;
      LOBYTE(v221[0]) = 0;
      sub_214326BC0();
      v52 = v219;
      v53 = v220;
      v117 = v218;
      sub_2146DA388();
      if (!v117)
      {
        v222[0] = 4;
        sub_214328930(&qword_27C904970, type metadata accessor for LinkPresentation.ArtistMetadata);
        sub_2146DA388();
      }

      v85 = type metadata accessor for LinkPresentation.ArtistMetadata;
      goto LABEL_110;
    case 4u:
      v91 = v47;
      v83 = v201;
      sub_214328704(v91, v201, type metadata accessor for LinkPresentation.PlaylistMetadata);
      v222[0] = 4;
      LOBYTE(v221[0]) = 0;
      sub_214326BC0();
      v52 = v219;
      v53 = v220;
      v92 = v218;
      sub_2146DA388();
      if (!v92)
      {
        v222[0] = 5;
        sub_214328930(&qword_27C904980, type metadata accessor for LinkPresentation.PlaylistMetadata);
        sub_2146DA388();
      }

      v85 = type metadata accessor for LinkPresentation.PlaylistMetadata;
      goto LABEL_110;
    case 5u:
      v136 = v47;
      v83 = v202;
      sub_214328704(v136, v202, type metadata accessor for LinkPresentation.RadioMetadata);
      v222[0] = 5;
      LOBYTE(v221[0]) = 0;
      sub_214326BC0();
      v52 = v219;
      v53 = v220;
      v137 = v218;
      sub_2146DA388();
      if (!v137)
      {
        v222[0] = 6;
        sub_214328930(&qword_27C904990, type metadata accessor for LinkPresentation.RadioMetadata);
        sub_2146DA388();
      }

      v85 = type metadata accessor for LinkPresentation.RadioMetadata;
      goto LABEL_110;
    case 6u:
      v147 = v47;
      v83 = v203;
      sub_214328704(v147, v203, type metadata accessor for LinkPresentation.SoftwareMetadata);
      v222[0] = 6;
      LOBYTE(v221[0]) = 0;
      sub_214326BC0();
      v52 = v219;
      v53 = v220;
      v148 = v218;
      sub_2146DA388();
      if (!v148)
      {
        v222[0] = 7;
        sub_214328930(&qword_27C9049A0, type metadata accessor for LinkPresentation.SoftwareMetadata);
        sub_2146DA388();
      }

      v85 = type metadata accessor for LinkPresentation.SoftwareMetadata;
      goto LABEL_110;
    case 7u:
      v118 = v47;
      v83 = v204;
      sub_214328704(v118, v204, type metadata accessor for LinkPresentation.BookMetadata);
      v222[0] = 7;
      LOBYTE(v221[0]) = 0;
      sub_214326BC0();
      v52 = v219;
      v53 = v220;
      v119 = v218;
      sub_2146DA388();
      if (!v119)
      {
        v222[0] = 8;
        sub_214328930(&qword_27C9049B0, type metadata accessor for LinkPresentation.BookMetadata);
        sub_2146DA388();
      }

      v85 = type metadata accessor for LinkPresentation.BookMetadata;
      goto LABEL_110;
    case 8u:
      v154 = v47;
      v83 = v205;
      sub_214328704(v154, v205, type metadata accessor for LinkPresentation.AudioBookMetadata);
      v222[0] = 8;
      LOBYTE(v221[0]) = 0;
      sub_214326BC0();
      v52 = v219;
      v53 = v220;
      v155 = v218;
      sub_2146DA388();
      if (!v155)
      {
        v222[0] = 9;
        sub_214328930(&qword_27C9049C0, type metadata accessor for LinkPresentation.AudioBookMetadata);
        sub_2146DA388();
      }

      v85 = type metadata accessor for LinkPresentation.AudioBookMetadata;
      goto LABEL_110;
    case 9u:
      v95 = v47;
      v83 = v206;
      sub_214328704(v95, v206, type metadata accessor for LinkPresentation.PodcastEpisodeMetadata);
      v222[0] = 9;
      LOBYTE(v221[0]) = 0;
      sub_214326BC0();
      v52 = v219;
      v53 = v220;
      v96 = v218;
      sub_2146DA388();
      if (!v96)
      {
        v222[0] = 10;
        sub_214328930(&qword_27C9049D0, type metadata accessor for LinkPresentation.PodcastEpisodeMetadata);
        sub_2146DA388();
      }

      v85 = type metadata accessor for LinkPresentation.PodcastEpisodeMetadata;
      goto LABEL_110;
    case 0xAu:
      v152 = v47;
      v83 = v207;
      sub_214328704(v152, v207, type metadata accessor for LinkPresentation.PodcastMetadata);
      v222[0] = 10;
      LOBYTE(v221[0]) = 0;
      sub_214326BC0();
      v52 = v219;
      v53 = v220;
      v153 = v218;
      sub_2146DA388();
      if (!v153)
      {
        v222[0] = 11;
        sub_214328930(&qword_27C9049E0, type metadata accessor for LinkPresentation.PodcastMetadata);
        sub_2146DA388();
      }

      v85 = type metadata accessor for LinkPresentation.PodcastMetadata;
      goto LABEL_110;
    case 0xBu:
      v89 = v47;
      v83 = v208;
      sub_214328704(v89, v208, type metadata accessor for LinkPresentation.TVEpisodeMetadata);
      v222[0] = 11;
      LOBYTE(v221[0]) = 0;
      sub_214326BC0();
      v52 = v219;
      v53 = v220;
      v90 = v218;
      sub_2146DA388();
      if (!v90)
      {
        v222[0] = 12;
        sub_214328930(&qword_27C9049F0, type metadata accessor for LinkPresentation.TVEpisodeMetadata);
        sub_2146DA388();
      }

      v85 = type metadata accessor for LinkPresentation.TVEpisodeMetadata;
      goto LABEL_110;
    case 0xCu:
      v93 = v47;
      v83 = v209;
      sub_214328704(v93, v209, type metadata accessor for LinkPresentation.TVSeasonMetadata);
      v222[0] = 12;
      LOBYTE(v221[0]) = 0;
      sub_214326BC0();
      v52 = v219;
      v53 = v220;
      v94 = v218;
      sub_2146DA388();
      if (!v94)
      {
        v222[0] = 13;
        sub_214328930(&qword_27C904A00, type metadata accessor for LinkPresentation.TVSeasonMetadata);
        sub_2146DA388();
      }

      v85 = type metadata accessor for LinkPresentation.TVSeasonMetadata;
      goto LABEL_110;
    case 0xDu:
      v145 = v47;
      v83 = v210;
      sub_214328704(v145, v210, type metadata accessor for LinkPresentation.TVShowMetadata);
      v222[0] = 13;
      LOBYTE(v221[0]) = 0;
      sub_214326BC0();
      v52 = v219;
      v53 = v220;
      v146 = v218;
      sub_2146DA388();
      if (!v146)
      {
        v222[0] = 14;
        sub_214328930(&qword_27C904A10, type metadata accessor for LinkPresentation.TVShowMetadata);
        sub_2146DA388();
      }

      v85 = type metadata accessor for LinkPresentation.TVShowMetadata;
      goto LABEL_110;
    case 0xEu:
      v82 = v47;
      v83 = v211;
      sub_214328704(v82, v211, type metadata accessor for LinkPresentation.MovieMetadata);
      v222[0] = 14;
      LOBYTE(v221[0]) = 0;
      sub_214326BC0();
      v52 = v219;
      v53 = v220;
      v84 = v218;
      sub_2146DA388();
      if (!v84)
      {
        v222[0] = 15;
        sub_214328930(&qword_27C904A20, type metadata accessor for LinkPresentation.MovieMetadata);
        sub_2146DA388();
      }

      v85 = type metadata accessor for LinkPresentation.MovieMetadata;
      goto LABEL_110;
    case 0xFu:
      v114 = v47;
      v83 = v212;
      sub_214328704(v114, v212, type metadata accessor for LinkPresentation.MovieBundleMetadata);
      v222[0] = 15;
      LOBYTE(v221[0]) = 0;
      sub_214326BC0();
      v52 = v219;
      v53 = v220;
      v115 = v218;
      sub_2146DA388();
      if (!v115)
      {
        v222[0] = 16;
        sub_214328930(&qword_27C904A30, type metadata accessor for LinkPresentation.MovieBundleMetadata);
        sub_2146DA388();
      }

      v85 = type metadata accessor for LinkPresentation.MovieBundleMetadata;
      goto LABEL_110;
    case 0x10u:
      memcpy(v222, v47, 0x138uLL);
      LOBYTE(v221[0]) = 16;
      v223 = 0;
      sub_214326BC0();
      v79 = v219;
      v80 = v220;
      v81 = v218;
      sub_2146DA388();
      if (!v81)
      {
        memcpy(v221, v222, 0x138uLL);
        v223 = 17;
        sub_214076584();
        sub_2146DA388();
      }

      (*(v217 + 8))(v79, v80);
      return sub_214326E60(v222);
    case 0x11u:
      v125 = v47[9];
      *&v222[128] = v47[8];
      *&v222[144] = v125;
      *&v222[153] = *(v47 + 153);
      v126 = v47[5];
      *&v222[64] = v47[4];
      *&v222[80] = v126;
      v127 = v47[6];
      *&v222[112] = v47[7];
      *&v222[96] = v127;
      v128 = v47[1];
      *v222 = *v47;
      *&v222[16] = v128;
      v129 = v47[2];
      *&v222[48] = v47[3];
      *&v222[32] = v129;
      LOBYTE(v221[0]) = 17;
      v223 = 0;
      sub_214326BC0();
      v130 = v219;
      v131 = v220;
      v132 = v218;
      sub_2146DA388();
      if (!v132)
      {
        v221[8] = *&v222[128];
        v221[9] = *&v222[144];
        *(&v221[9] + 9) = *&v222[153];
        v221[4] = *&v222[64];
        v221[5] = *&v222[80];
        v221[6] = *&v222[96];
        v221[7] = *&v222[112];
        v221[0] = *v222;
        v221[1] = *&v222[16];
        v221[2] = *&v222[32];
        v221[3] = *&v222[48];
        v223 = 18;
        sub_214076658();
        sub_2146DA388();
      }

      (*(v217 + 8))(v130, v131);
      return sub_214326E0C(v222);
    case 0x12u:
      memcpy(v222, v47, 0x118uLL);
      LOBYTE(v221[0]) = 18;
      v223 = 0;
      sub_214326BC0();
      v149 = v219;
      v150 = v220;
      v151 = v218;
      sub_2146DA388();
      if (!v151)
      {
        memcpy(v221, v222, 0x118uLL);
        v223 = 19;
        sub_21407672C();
        sub_2146DA388();
      }

      (*(v217 + 8))(v149, v150);
      return sub_214326DB8(v222);
    case 0x13u:
      memcpy(v222, v47, sizeof(v222));
      LOBYTE(v221[0]) = 19;
      v223 = 0;
      sub_214326BC0();
      v163 = v219;
      v164 = v220;
      v165 = v218;
      sub_2146DA388();
      if (!v165)
      {
        memcpy(v221, v222, 0x42AuLL);
        v223 = 20;
        sub_2140768D4();
        sub_2146DA388();
      }

      (*(v217 + 8))(v163, v164);
      return sub_214326D64(v222);
    case 0x14u:
      memcpy(v222, v47, 0x229uLL);
      LOBYTE(v221[0]) = 20;
      v223 = 0;
      sub_214326BC0();
      v133 = v219;
      v134 = v220;
      v135 = v218;
      sub_2146DA388();
      if (!v135)
      {
        memcpy(v221, v222, 0x229uLL);
        v223 = 21;
        sub_2140769A8();
        sub_2146DA388();
      }

      (*(v217 + 8))(v133, v134);
      return sub_214326D10(v222);
    case 0x15u:
      v138 = v47[7];
      *&v222[96] = v47[6];
      *&v222[112] = v138;
      *&v222[128] = v47[8];
      v139 = v47[3];
      *&v222[32] = v47[2];
      *&v222[48] = v139;
      v140 = v47[4];
      *&v222[80] = v47[5];
      *&v222[64] = v140;
      v141 = *v47;
      *&v222[16] = v47[1];
      *v222 = v141;
      LOBYTE(v221[0]) = 21;
      v223 = 0;
      sub_214326BC0();
      v142 = v219;
      v143 = v220;
      v144 = v218;
      sub_2146DA388();
      if (!v144)
      {
        v221[6] = *&v222[96];
        v221[7] = *&v222[112];
        v221[8] = *&v222[128];
        v221[2] = *&v222[32];
        v221[3] = *&v222[48];
        v221[4] = *&v222[64];
        v221[5] = *&v222[80];
        v221[0] = *v222;
        v221[1] = *&v222[16];
        v223 = 22;
        sub_214076A7C();
        sub_2146DA388();
      }

      (*(v217 + 8))(v142, v143);
      return sub_214326CBC(v222);
    case 0x16u:
      v161 = v47;
      v83 = v213;
      sub_214328704(v161, v213, type metadata accessor for LinkPresentation.FileMetadata);
      v222[0] = 22;
      LOBYTE(v221[0]) = 0;
      sub_214326BC0();
      v52 = v219;
      v53 = v220;
      v162 = v218;
      sub_2146DA388();
      if (!v162)
      {
        v222[0] = 23;
        sub_214328930(&qword_27C904AC0, type metadata accessor for LinkPresentation.FileMetadata);
        sub_2146DA388();
      }

      v85 = type metadata accessor for LinkPresentation.FileMetadata;
      goto LABEL_110;
    case 0x17u:
      v167 = *v47;
      v166 = *(v47 + 1);
      v222[0] = 23;
      LOBYTE(v221[0]) = 0;
      sub_214326BC0();
      v69 = v219;
      v70 = v220;
      v168 = v218;
      sub_2146DA388();
      if (v168)
      {
        goto LABEL_105;
      }

      *v222 = v167;
      *&v222[8] = v166;
      LOBYTE(v221[0]) = 24;
      sub_214076BD4();
      goto LABEL_104;
    case 0x18u:
      v104 = v47[9];
      *&v222[128] = v47[8];
      *&v222[144] = v104;
      *&v222[160] = v47[10];
      *&v222[169] = *(v47 + 169);
      v105 = v47[5];
      *&v222[64] = v47[4];
      *&v222[80] = v105;
      v106 = v47[7];
      *&v222[96] = v47[6];
      *&v222[112] = v106;
      v107 = v47[1];
      *v222 = *v47;
      *&v222[16] = v107;
      v108 = v47[3];
      *&v222[32] = v47[2];
      *&v222[48] = v108;
      LOBYTE(v221[0]) = 24;
      v223 = 0;
      sub_214326BC0();
      v109 = v219;
      v110 = v220;
      v111 = v218;
      sub_2146DA388();
      if (!v111)
      {
        v221[8] = *&v222[128];
        v221[9] = *&v222[144];
        v221[10] = *&v222[160];
        *(&v221[10] + 9) = *&v222[169];
        v221[4] = *&v222[64];
        v221[5] = *&v222[80];
        v221[6] = *&v222[96];
        v221[7] = *&v222[112];
        v221[0] = *v222;
        v221[1] = *&v222[16];
        v221[2] = *&v222[32];
        v221[3] = *&v222[48];
        v223 = 25;
        sub_214076CA8();
        sub_2146DA388();
      }

      (*(v217 + 8))(v109, v110);
      return sub_214326C68(v222);
    case 0x19u:
      v97 = v47[7];
      *&v222[96] = v47[6];
      *&v222[112] = v97;
      *&v222[128] = v47[8];
      *&v222[137] = *(v47 + 137);
      v98 = v47[3];
      *&v222[32] = v47[2];
      *&v222[48] = v98;
      v99 = v47[5];
      *&v222[64] = v47[4];
      *&v222[80] = v99;
      v100 = v47[1];
      *v222 = *v47;
      *&v222[16] = v100;
      LOBYTE(v221[0]) = 25;
      v223 = 0;
      sub_214326BC0();
      v101 = v219;
      v102 = v220;
      v103 = v218;
      sub_2146DA388();
      if (!v103)
      {
        v221[6] = *&v222[96];
        v221[7] = *&v222[112];
        v221[8] = *&v222[128];
        *(&v221[8] + 9) = *&v222[137];
        v221[2] = *&v222[32];
        v221[3] = *&v222[48];
        v221[4] = *&v222[64];
        v221[5] = *&v222[80];
        v221[0] = *v222;
        v221[1] = *&v222[16];
        v223 = 26;
        sub_214076D7C();
        sub_2146DA388();
      }

      (*(v217 + 8))(v101, v102);
      return sub_214326C14(v222);
    case 0x1Au:
      v177 = v47;
      v83 = v214;
      sub_214328704(v177, v214, type metadata accessor for LinkPresentation.PhotosMomentMetadata);
      v222[0] = 26;
      LOBYTE(v221[0]) = 0;
      sub_214326BC0();
      v52 = v219;
      v53 = v220;
      v178 = v218;
      sub_2146DA388();
      if (!v178)
      {
        v222[0] = 27;
        sub_214328930(&qword_27C904B00, type metadata accessor for LinkPresentation.PhotosMomentMetadata);
        sub_2146DA388();
      }

      v85 = type metadata accessor for LinkPresentation.PhotosMomentMetadata;
      goto LABEL_110;
    case 0x1Bu:
      v68 = *v47;
      v67 = *(v47 + 1);
      v222[0] = 27;
      LOBYTE(v221[0]) = 0;
      sub_214326BC0();
      v69 = v219;
      v70 = v220;
      v71 = v218;
      sub_2146DA388();
      if (v71)
      {
        goto LABEL_105;
      }

      *v222 = v68;
      *&v222[8] = v67;
      LOBYTE(v221[0]) = 28;
      sub_214076ED4();
      goto LABEL_104;
    case 0x1Cu:
      v170 = *v47;
      v169 = *(v47 + 1);
      v172 = *(v47 + 2);
      v171 = *(v47 + 3);
      v222[0] = 28;
      LOBYTE(v221[0]) = 0;
      sub_214326BC0();
      v76 = v219;
      v77 = v220;
      v173 = v218;
      sub_2146DA388();
      if (v173)
      {
        goto LABEL_101;
      }

      *v222 = v170;
      *&v222[8] = v169;
      *&v222[16] = v172;
      *&v222[24] = v171;
      LOBYTE(v221[0]) = 29;
      sub_214076FA8();
      goto LABEL_100;
    case 0x1Du:
      v175 = *v47;
      v174 = *(v47 + 1);
      v222[0] = 29;
      LOBYTE(v221[0]) = 0;
      sub_214326BC0();
      v69 = v219;
      v70 = v220;
      v176 = v218;
      sub_2146DA388();
      if (v176)
      {
        goto LABEL_105;
      }

      *v222 = v175;
      *&v222[8] = v174;
      LOBYTE(v221[0]) = 30;
      sub_21407707C();
      goto LABEL_104;
    case 0x1Eu:
      v156 = v47;
      v83 = v215;
      sub_214328704(v156, v215, type metadata accessor for LinkPresentation.WalletPassMetadata);
      v222[0] = 30;
      LOBYTE(v221[0]) = 0;
      sub_214326BC0();
      v52 = v219;
      v53 = v220;
      v157 = v218;
      sub_2146DA388();
      if (!v157)
      {
        v222[0] = 31;
        sub_214328930(&qword_27C904B40, type metadata accessor for LinkPresentation.WalletPassMetadata);
        sub_2146DA388();
      }

      v85 = type metadata accessor for LinkPresentation.WalletPassMetadata;
LABEL_110:
      v55 = v85;
      v56 = v83;
      goto LABEL_111;
    case 0x1Fu:
      v123 = *v47;
      v122 = *(v47 + 1);
      v222[0] = 31;
      LOBYTE(v221[0]) = 0;
      sub_214326BC0();
      v69 = v219;
      v70 = v220;
      v124 = v218;
      sub_2146DA388();
      if (v124)
      {
        goto LABEL_105;
      }

      *v222 = v123;
      *&v222[8] = v122;
      LOBYTE(v221[0]) = 32;
      sub_2140771D4();
      goto LABEL_104;
    case 0x20u:
      v159 = *v47;
      v158 = *(v47 + 1);
      v222[0] = 32;
      LOBYTE(v221[0]) = 0;
      sub_214326BC0();
      v69 = v219;
      v70 = v220;
      v160 = v218;
      sub_2146DA388();
      if (v160)
      {
        goto LABEL_105;
      }

      *v222 = v159;
      *&v222[8] = v158;
      LOBYTE(v221[0]) = 33;
      sub_2140772A8();
      goto LABEL_104;
    case 0x21u:
      v87 = *v47;
      v86 = *(v47 + 1);
      v222[0] = 33;
      LOBYTE(v221[0]) = 0;
      sub_214326BC0();
      v69 = v219;
      v70 = v220;
      v88 = v218;
      sub_2146DA388();
      if (v88)
      {
        goto LABEL_105;
      }

      *v222 = v87;
      *&v222[8] = v86;
      LOBYTE(v221[0]) = 34;
      sub_214077450();
LABEL_104:
      sub_2146DA388();
LABEL_105:
      (*(v217 + 8))(v69, v70);
      goto LABEL_106;
    case 0x22u:
      v73 = *v47;
      v72 = *(v47 + 1);
      v75 = *(v47 + 2);
      v74 = *(v47 + 3);
      v222[0] = 34;
      LOBYTE(v221[0]) = 0;
      sub_214326BC0();
      v76 = v219;
      v77 = v220;
      v78 = v218;
      sub_2146DA388();
      if (v78)
      {
        goto LABEL_101;
      }

      *v222 = v73;
      *&v222[8] = v72;
      *&v222[16] = v75;
      *&v222[24] = v74;
      LOBYTE(v221[0]) = 35;
      sub_2140775F8();
LABEL_100:
      sub_2146DA388();
LABEL_101:
      (*(v217 + 8))(v76, v77);

LABEL_106:

      break;
    case 0x23u:
      memcpy(v222, v47, 0x149uLL);
      LOBYTE(v221[0]) = 35;
      v223 = 0;
      sub_214326BC0();
      v57 = v219;
      v58 = v220;
      v59 = v218;
      sub_2146DA388();
      if (!v59)
      {
        memcpy(v221, v222, 0x149uLL);
        v223 = 36;
        sub_214077524();
        sub_2146DA388();
      }

      (*(v217 + 8))(v57, v58);
      return sub_214317B18(v222);
    case 0x24u:
      v61 = *v47;
      v62 = swift_projectBox();
      v63 = v216;
      sub_2143287C0(v62, v216, type metadata accessor for LinkPresentation.SharedObjectMetadata);
      v222[0] = 36;
      LOBYTE(v221[0]) = 0;
      sub_214326BC0();
      v64 = v219;
      v65 = v220;
      v66 = v218;
      sub_2146DA388();
      if (!v66)
      {
        v222[0] = 37;
        sub_214328930(&qword_27C904BB0, type metadata accessor for LinkPresentation.SharedObjectMetadata);
        sub_2146DA388();
      }

      sub_21432887C(v63, type metadata accessor for LinkPresentation.SharedObjectMetadata);
      (*(v217 + 8))(v64, v65);

    default:
      sub_214328704(v47, v43, type metadata accessor for LinkPresentation.SongMetadata);
      v222[0] = 0;
      LOBYTE(v221[0]) = 0;
      sub_214326BC0();
      v52 = v219;
      v53 = v220;
      v54 = v218;
      sub_2146DA388();
      if (!v54)
      {
        v222[0] = 1;
        sub_214328930(&qword_27C904940, type metadata accessor for LinkPresentation.SongMetadata);
        sub_2146DA388();
      }

      v55 = type metadata accessor for LinkPresentation.SongMetadata;
      v56 = v43;
LABEL_111:
      sub_21432887C(v56, v55);
      result = (*(v217 + 8))(v52, v53);
      break;
  }

  return result;
}

uint64_t sub_2142D25A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v186 = a2;
  v184 = type metadata accessor for LinkPresentation.SharedObjectMetadata(0);
  v3 = *(*(v184 - 8) + 64);
  MEMORY[0x28223BE20](v184);
  v181 = &v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = type metadata accessor for LinkPresentation.WalletPassMetadata(0);
  v5 = *(*(v183 - 8) + 64);
  MEMORY[0x28223BE20](v183);
  v180 = &v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for LinkPresentation.PhotosMomentMetadata(0);
  v7 = *(*(v182 - 8) + 64);
  MEMORY[0x28223BE20](v182);
  v179 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for LinkPresentation.FileMetadata(0);
  v9 = *(*(v177 - 8) + 64);
  MEMORY[0x28223BE20](v177);
  v178 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for LinkPresentation.MovieBundleMetadata(0);
  v11 = *(*(v175 - 8) + 64);
  MEMORY[0x28223BE20](v175);
  v176 = &v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for LinkPresentation.MovieMetadata(0);
  v13 = *(*(v173 - 8) + 64);
  MEMORY[0x28223BE20](v173);
  v174 = &v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for LinkPresentation.TVShowMetadata(0);
  v15 = *(*(v171 - 8) + 64);
  MEMORY[0x28223BE20](v171);
  v172 = &v142 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for LinkPresentation.TVSeasonMetadata(0);
  v17 = *(*(v169 - 8) + 64);
  MEMORY[0x28223BE20](v169);
  v170 = &v142 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for LinkPresentation.TVEpisodeMetadata(0);
  v19 = *(*(v167 - 8) + 64);
  MEMORY[0x28223BE20](v167);
  v168 = &v142 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for LinkPresentation.PodcastMetadata(0);
  v21 = *(*(v165 - 8) + 64);
  MEMORY[0x28223BE20](v165);
  v166 = &v142 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for LinkPresentation.PodcastEpisodeMetadata(0);
  v23 = *(*(v163 - 8) + 64);
  MEMORY[0x28223BE20](v163);
  v164 = &v142 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for LinkPresentation.AudioBookMetadata(0);
  v25 = *(*(v161 - 8) + 64);
  MEMORY[0x28223BE20](v161);
  v162 = &v142 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for LinkPresentation.BookMetadata(0);
  v27 = *(*(v159 - 8) + 64);
  MEMORY[0x28223BE20](v159);
  v160 = &v142 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for LinkPresentation.SoftwareMetadata(0);
  v29 = *(*(v157 - 8) + 64);
  MEMORY[0x28223BE20](v157);
  v158 = &v142 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for LinkPresentation.RadioMetadata(0);
  v31 = *(*(v155 - 8) + 64);
  MEMORY[0x28223BE20](v155);
  v156 = &v142 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for LinkPresentation.PlaylistMetadata(0);
  v33 = *(*(v153 - 8) + 64);
  MEMORY[0x28223BE20](v153);
  v154 = &v142 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for LinkPresentation.ArtistMetadata(0);
  v35 = *(*(v151 - 8) + 64);
  MEMORY[0x28223BE20](v151);
  v152 = &v142 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for LinkPresentation.MusicVideoMetadata(0);
  v37 = *(*(v149 - 8) + 64);
  MEMORY[0x28223BE20](v149);
  v150 = &v142 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for LinkPresentation.AlbumMetadata(0);
  v39 = *(*(v147 - 8) + 64);
  MEMORY[0x28223BE20](v147);
  v148 = &v142 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for LinkPresentation.SongMetadata(0);
  v41 = *(*(v146 - 8) + 64);
  MEMORY[0x28223BE20](v146);
  v43 = &v142 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D7C0, &qword_2146F70A8);
  v185 = *(v44 - 8);
  v45 = *(v185 + 64);
  MEMORY[0x28223BE20](v44);
  v47 = &v142 - v46;
  v48 = type metadata accessor for LinkPresentation.SpecializationMetadata(0);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v51 = &v142 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a1[3];
  v52 = a1[4];
  v187 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v53);
  sub_214326B6C();
  v54 = v190;
  sub_2146DAA08();
  if (v54)
  {
LABEL_4:
    v59 = v187;
  }

  else
  {
    v144 = v43;
    v145 = v48;
    v55 = v185;
    v190 = v51;
    v56 = v186;
    v189 = 0;
    sub_214326EB4();
    v57 = v47;
    sub_2146DA1C8();
    v58 = v44;
    v143 = 0;
    switch(v188[0])
    {
      case 1:
        v188[0] = 2;
        sub_214328930(&qword_27C904948, type metadata accessor for LinkPresentation.AlbumMetadata);
        v104 = v148;
        v105 = v143;
        sub_2146DA1C8();
        if (v105)
        {
          goto LABEL_3;
        }

        (*(v55 + 8))(v57, v44);
        v63 = v190;
        sub_214328704(v104, v190, type metadata accessor for LinkPresentation.AlbumMetadata);
        goto LABEL_82;
      case 2:
        v188[0] = 3;
        sub_214328930(&qword_27C904958, type metadata accessor for LinkPresentation.MusicVideoMetadata);
        v96 = v150;
        v97 = v143;
        sub_2146DA1C8();
        if (v97)
        {
          goto LABEL_3;
        }

        (*(v55 + 8))(v47, v58);
        v63 = v190;
        sub_214328704(v96, v190, type metadata accessor for LinkPresentation.MusicVideoMetadata);
        goto LABEL_82;
      case 3:
        v188[0] = 4;
        sub_214328930(&qword_27C904968, type metadata accessor for LinkPresentation.ArtistMetadata);
        v100 = v152;
        v101 = v143;
        sub_2146DA1C8();
        if (v101)
        {
          goto LABEL_3;
        }

        (*(v55 + 8))(v57, v44);
        v63 = v190;
        sub_214328704(v100, v190, type metadata accessor for LinkPresentation.ArtistMetadata);
        goto LABEL_82;
      case 4:
        v188[0] = 5;
        sub_214328930(&qword_27C904978, type metadata accessor for LinkPresentation.PlaylistMetadata);
        v79 = v154;
        v80 = v143;
        sub_2146DA1C8();
        if (v80)
        {
          goto LABEL_3;
        }

        (*(v55 + 8))(v57, v44);
        v63 = v190;
        sub_214328704(v79, v190, type metadata accessor for LinkPresentation.PlaylistMetadata);
        goto LABEL_82;
      case 5:
        v188[0] = 6;
        sub_214328930(&qword_27C904988, type metadata accessor for LinkPresentation.RadioMetadata);
        v114 = v156;
        v115 = v143;
        sub_2146DA1C8();
        if (v115)
        {
          goto LABEL_3;
        }

        (*(v55 + 8))(v57, v44);
        v63 = v190;
        sub_214328704(v114, v190, type metadata accessor for LinkPresentation.RadioMetadata);
        goto LABEL_82;
      case 6:
        v188[0] = 7;
        sub_214328930(&qword_27C904998, type metadata accessor for LinkPresentation.SoftwareMetadata);
        v123 = v158;
        v124 = v143;
        sub_2146DA1C8();
        if (v124)
        {
          goto LABEL_3;
        }

        (*(v55 + 8))(v57, v44);
        v63 = v190;
        sub_214328704(v123, v190, type metadata accessor for LinkPresentation.SoftwareMetadata);
        goto LABEL_82;
      case 7:
        v188[0] = 8;
        sub_214328930(&qword_27C9049A8, type metadata accessor for LinkPresentation.BookMetadata);
        v102 = v160;
        v103 = v143;
        sub_2146DA1C8();
        if (v103)
        {
          goto LABEL_3;
        }

        (*(v55 + 8))(v57, v44);
        v63 = v190;
        sub_214328704(v102, v190, type metadata accessor for LinkPresentation.BookMetadata);
        goto LABEL_82;
      case 8:
        v188[0] = 9;
        sub_214328930(&qword_27C9049B8, type metadata accessor for LinkPresentation.AudioBookMetadata);
        v128 = v162;
        v129 = v143;
        sub_2146DA1C8();
        if (v129)
        {
          goto LABEL_3;
        }

        (*(v55 + 8))(v57, v44);
        v63 = v190;
        sub_214328704(v128, v190, type metadata accessor for LinkPresentation.AudioBookMetadata);
        goto LABEL_82;
      case 9:
        v188[0] = 10;
        sub_214328930(&qword_27C9049C8, type metadata accessor for LinkPresentation.PodcastEpisodeMetadata);
        v83 = v164;
        v84 = v143;
        sub_2146DA1C8();
        if (v84)
        {
          goto LABEL_3;
        }

        (*(v55 + 8))(v57, v44);
        v63 = v190;
        sub_214328704(v83, v190, type metadata accessor for LinkPresentation.PodcastEpisodeMetadata);
        goto LABEL_82;
      case 0xA:
        v188[0] = 11;
        sub_214328930(&qword_27C9049D8, type metadata accessor for LinkPresentation.PodcastMetadata);
        v126 = v166;
        v127 = v143;
        sub_2146DA1C8();
        if (v127)
        {
          goto LABEL_3;
        }

        (*(v55 + 8))(v57, v44);
        v63 = v190;
        sub_214328704(v126, v190, type metadata accessor for LinkPresentation.PodcastMetadata);
        goto LABEL_82;
      case 0xB:
        v188[0] = 12;
        sub_214328930(&qword_27C9049E8, type metadata accessor for LinkPresentation.TVEpisodeMetadata);
        v77 = v168;
        v78 = v143;
        sub_2146DA1C8();
        if (v78)
        {
          goto LABEL_3;
        }

        (*(v55 + 8))(v57, v44);
        v63 = v190;
        sub_214328704(v77, v190, type metadata accessor for LinkPresentation.TVEpisodeMetadata);
        goto LABEL_82;
      case 0xC:
        v188[0] = 13;
        sub_214328930(&qword_27C9049F8, type metadata accessor for LinkPresentation.TVSeasonMetadata);
        v81 = v170;
        v82 = v143;
        sub_2146DA1C8();
        if (v82)
        {
          goto LABEL_3;
        }

        (*(v55 + 8))(v57, v44);
        v63 = v190;
        sub_214328704(v81, v190, type metadata accessor for LinkPresentation.TVSeasonMetadata);
        goto LABEL_82;
      case 0xD:
        v188[0] = 14;
        sub_214328930(&qword_27C904A08, type metadata accessor for LinkPresentation.TVShowMetadata);
        v121 = v172;
        v122 = v143;
        sub_2146DA1C8();
        if (v122)
        {
          goto LABEL_3;
        }

        (*(v55 + 8))(v57, v44);
        v63 = v190;
        sub_214328704(v121, v190, type metadata accessor for LinkPresentation.TVShowMetadata);
        goto LABEL_82;
      case 0xE:
        v188[0] = 15;
        sub_214328930(&qword_27C904A18, type metadata accessor for LinkPresentation.MovieMetadata);
        v74 = v174;
        v75 = v143;
        sub_2146DA1C8();
        if (v75)
        {
          goto LABEL_3;
        }

        (*(v55 + 8))(v57, v44);
        v63 = v190;
        sub_214328704(v74, v190, type metadata accessor for LinkPresentation.MovieMetadata);
        goto LABEL_82;
      case 0xF:
        v188[0] = 16;
        sub_214328930(&qword_27C904A28, type metadata accessor for LinkPresentation.MovieBundleMetadata);
        v98 = v176;
        v99 = v143;
        sub_2146DA1C8();
        if (v99)
        {
          goto LABEL_3;
        }

        (*(v55 + 8))(v57, v44);
        v63 = v190;
        sub_214328704(v98, v190, type metadata accessor for LinkPresentation.MovieBundleMetadata);
        goto LABEL_82;
      case 0x10:
        v189 = 17;
        sub_214076530();
        v73 = v143;
        sub_2146DA1C8();
        v65 = (v55 + 8);
        if (v73)
        {
          goto LABEL_72;
        }

        (*v65)(v47, v44);
        v63 = v190;
        memcpy(v190, v188, 0x138uLL);
        goto LABEL_82;
      case 0x11:
        v189 = 18;
        sub_214076604();
        v107 = v143;
        sub_2146DA1C8();
        v65 = (v55 + 8);
        if (v107)
        {
          goto LABEL_72;
        }

        (*v65)(v47, v44);
        v108 = *&v188[144];
        v63 = v190;
        v190[8] = *&v188[128];
        v63[9] = v108;
        *(v63 + 153) = *&v188[153];
        v109 = *&v188[80];
        v63[4] = *&v188[64];
        v63[5] = v109;
        v110 = *&v188[112];
        v63[6] = *&v188[96];
        v63[7] = v110;
        v111 = *&v188[16];
        *v63 = *v188;
        v63[1] = v111;
        v112 = *&v188[48];
        v63[2] = *&v188[32];
        v63[3] = v112;
        goto LABEL_82;
      case 0x12:
        v189 = 19;
        sub_2140766D8();
        v125 = v143;
        sub_2146DA1C8();
        v65 = (v55 + 8);
        if (v125)
        {
          goto LABEL_72;
        }

        (*v65)(v47, v44);
        v63 = v190;
        memcpy(v190, v188, 0x118uLL);
        goto LABEL_82;
      case 0x13:
        v189 = 20;
        sub_214076880();
        v135 = v143;
        sub_2146DA1C8();
        v65 = (v55 + 8);
        if (v135)
        {
          goto LABEL_72;
        }

        (*v65)(v47, v44);
        v63 = v190;
        memcpy(v190, v188, 0x42AuLL);
        goto LABEL_82;
      case 0x14:
        v189 = 21;
        sub_214076954();
        v113 = v143;
        sub_2146DA1C8();
        v65 = (v55 + 8);
        if (v113)
        {
          goto LABEL_72;
        }

        (*v65)(v47, v44);
        v63 = v190;
        memcpy(v190, v188, 0x229uLL);
        goto LABEL_82;
      case 0x15:
        v189 = 22;
        sub_214076A28();
        v116 = v143;
        sub_2146DA1C8();
        v65 = (v55 + 8);
        if (v116)
        {
          goto LABEL_72;
        }

        (*v65)(v47, v44);
        v117 = *&v188[112];
        v63 = v190;
        v190[6] = *&v188[96];
        v63[7] = v117;
        v63[8] = *&v188[128];
        v118 = *&v188[48];
        v63[2] = *&v188[32];
        v63[3] = v118;
        v119 = *&v188[80];
        v63[4] = *&v188[64];
        v63[5] = v119;
        v120 = *&v188[16];
        *v63 = *v188;
        v63[1] = v120;
        goto LABEL_82;
      case 0x16:
        v188[0] = 23;
        sub_214328930(&qword_27C904AB8, type metadata accessor for LinkPresentation.FileMetadata);
        v133 = v178;
        v134 = v143;
        sub_2146DA1C8();
        if (v134)
        {
          goto LABEL_3;
        }

        (*(v55 + 8))(v57, v44);
        v63 = v190;
        sub_214328704(v133, v190, type metadata accessor for LinkPresentation.FileMetadata);
        goto LABEL_82;
      case 0x17:
        v189 = 24;
        sub_214076B80();
        v136 = v143;
        sub_2146DA1C8();
        if (!v136)
        {
          goto LABEL_78;
        }

        goto LABEL_3;
      case 0x18:
        v189 = 25;
        sub_214076C54();
        v90 = v143;
        sub_2146DA1C8();
        v65 = (v55 + 8);
        if (v90)
        {
          goto LABEL_72;
        }

        (*v65)(v47, v44);
        v91 = *&v188[144];
        v63 = v190;
        v190[8] = *&v188[128];
        v63[9] = v91;
        v63[10] = *&v188[160];
        *(v63 + 169) = *&v188[169];
        v92 = *&v188[80];
        v63[4] = *&v188[64];
        v63[5] = v92;
        v93 = *&v188[112];
        v63[6] = *&v188[96];
        v63[7] = v93;
        v94 = *&v188[16];
        *v63 = *v188;
        v63[1] = v94;
        v95 = *&v188[48];
        v63[2] = *&v188[32];
        v63[3] = v95;
        goto LABEL_82;
      case 0x19:
        v189 = 26;
        sub_214076D28();
        v85 = v143;
        sub_2146DA1C8();
        v65 = (v55 + 8);
        if (v85)
        {
          goto LABEL_72;
        }

        (*v65)(v47, v44);
        v86 = *&v188[112];
        v63 = v190;
        v190[6] = *&v188[96];
        v63[7] = v86;
        v63[8] = *&v188[128];
        *(v63 + 137) = *&v188[137];
        v87 = *&v188[48];
        v63[2] = *&v188[32];
        v63[3] = v87;
        v88 = *&v188[80];
        v63[4] = *&v188[64];
        v63[5] = v88;
        v89 = *&v188[16];
        *v63 = *v188;
        v63[1] = v89;
        goto LABEL_82;
      case 0x1A:
        v188[0] = 27;
        sub_214328930(&qword_27C904AF8, type metadata accessor for LinkPresentation.PhotosMomentMetadata);
        v139 = v179;
        v140 = v143;
        sub_2146DA1C8();
        if (v140)
        {
          goto LABEL_3;
        }

        (*(v55 + 8))(v57, v44);
        v63 = v190;
        sub_214328704(v139, v190, type metadata accessor for LinkPresentation.PhotosMomentMetadata);
        goto LABEL_82;
      case 0x1B:
        v189 = 28;
        sub_214076E80();
        v70 = v143;
        sub_2146DA1C8();
        if (!v70)
        {
          goto LABEL_78;
        }

        goto LABEL_3;
      case 0x1C:
        v189 = 29;
        sub_214076F54();
        v137 = v143;
        sub_2146DA1C8();
        if (!v137)
        {
          goto LABEL_16;
        }

        goto LABEL_3;
      case 0x1D:
        v189 = 30;
        sub_214077028();
        v138 = v143;
        sub_2146DA1C8();
        if (!v138)
        {
          goto LABEL_78;
        }

        goto LABEL_3;
      case 0x1E:
        v188[0] = 31;
        sub_214328930(&qword_27C904B38, type metadata accessor for LinkPresentation.WalletPassMetadata);
        v130 = v180;
        v131 = v143;
        sub_2146DA1C8();
        if (v131)
        {
          goto LABEL_3;
        }

        (*(v55 + 8))(v57, v44);
        v63 = v190;
        sub_214328704(v130, v190, type metadata accessor for LinkPresentation.WalletPassMetadata);
        goto LABEL_82;
      case 0x1F:
        v189 = 32;
        sub_214077180();
        v106 = v143;
        sub_2146DA1C8();
        if (!v106)
        {
          goto LABEL_78;
        }

        goto LABEL_3;
      case 0x20:
        v189 = 33;
        sub_214077254();
        v132 = v143;
        sub_2146DA1C8();
        if (!v132)
        {
          goto LABEL_78;
        }

        goto LABEL_3;
      case 0x21:
        v189 = 34;
        sub_2140773FC();
        v76 = v143;
        sub_2146DA1C8();
        if (v76)
        {
          goto LABEL_3;
        }

LABEL_78:
        (*(v55 + 8))(v47, v44);
        v63 = v190;
        *v190 = *v188;
        goto LABEL_82;
      case 0x22:
        v189 = 35;
        sub_2140775A4();
        v71 = v143;
        sub_2146DA1C8();
        if (v71)
        {
          goto LABEL_3;
        }

LABEL_16:
        (*(v55 + 8))(v47, v44);
        v72 = *&v188[16];
        v63 = v190;
        *v190 = *v188;
        v63[1] = v72;
        goto LABEL_82;
      case 0x23:
        v189 = 36;
        sub_2140774D0();
        v64 = v143;
        sub_2146DA1C8();
        v65 = (v55 + 8);
        if (!v64)
        {
          (*v65)(v47, v44);
          v63 = v190;
          memcpy(v190, v188, 0x149uLL);
          goto LABEL_82;
        }

LABEL_72:
        (*v65)(v47, v44);
        goto LABEL_4;
      case 0x24:
        v188[0] = 37;
        sub_214328930(&qword_27C904BA8, type metadata accessor for LinkPresentation.SharedObjectMetadata);
        v66 = v181;
        v67 = v143;
        sub_2146DA1C8();
        if (v67)
        {
          goto LABEL_3;
        }

        (*(v55 + 8))(v47, v44);
        v68 = swift_allocBox();
        sub_214328704(v66, v69, type metadata accessor for LinkPresentation.SharedObjectMetadata);
        v63 = v190;
        *v190 = v68;
        goto LABEL_82;
      default:
        v188[0] = 1;
        sub_214328930(&qword_27C904938, type metadata accessor for LinkPresentation.SongMetadata);
        v61 = v143;
        v62 = v144;
        sub_2146DA1C8();
        if (v61)
        {
LABEL_3:
          (*(v55 + 8))(v57, v58);
          goto LABEL_4;
        }

        (*(v55 + 8))(v57, v44);
        v63 = v190;
        sub_214328704(v62, v190, type metadata accessor for LinkPresentation.SongMetadata);
LABEL_82:
        swift_storeEnumTagMultiPayload();
        v141 = v187;
        sub_214328704(v63, v56, type metadata accessor for LinkPresentation.SpecializationMetadata);
        v59 = v141;
        break;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v59);
}

unint64_t sub_2142D4450()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0xD000000000000021;
  }

  *v0;
  return result;
}

uint64_t sub_2142D448C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000021 && 0x8000000214799320 == a2;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000214799350 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_2142D456C(uint64_t a1)
{
  v2 = sub_214326F08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142D45A8(uint64_t a1)
{
  v2 = sub_214326F08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142D45E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6C6F686563616C70;
  }

  else
  {
    v4 = 1701736302;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xEB00000000726564;
  }

  if (*a2)
  {
    v6 = 0x6C6F686563616C70;
  }

  else
  {
    v6 = 1701736302;
  }

  if (*a2)
  {
    v7 = 0xEB00000000726564;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

uint64_t sub_2142D468C()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142D4710()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142D4780()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142D480C(uint64_t *a1@<X8>)
{
  v2 = 1701736302;
  if (*v1)
  {
    v2 = 0x6C6F686563616C70;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000726564;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2142D48FC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D7D0, &qword_2146F70B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214326F08();
  sub_2146DAA28();
  if (v9)
  {
    v11 = *(v9 + 16);
    v16 = 1;
    v15 = 0;
    sub_214326F5C();
    sub_2146DA388();
    if (!v2)
    {
      v14 = 1;
      sub_2146DA368();
    }
  }

  else
  {
    v17 = 0;
    sub_214326F5C();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2142D4ACC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D7E8, &qword_2146F70B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214326F08();
  sub_2146DAA08();
  if (!v2)
  {
    v16 = 0;
    sub_214326FB0();
    sub_2146DA1C8();
    if (v17 == 1)
    {
      v15 = 1;
      v11 = sub_2146DA1A8();
      (*(v6 + 8))(v9, v5);
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      *a2 = v12;
    }

    else
    {
      (*(v6 + 8))(v9, v5);
      *a2 = 0;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142D4CF0()
{
  if (*v0)
  {
    result = 0x6465696669726576;
  }

  else
  {
    result = 0xD000000000000018;
  }

  *v0;
  return result;
}

uint64_t sub_2142D4D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x8000000214799370 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6465696669726576 && a2 == 0xEE0065756C61565FLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_2142D4E2C(uint64_t a1)
{
  v2 = sub_214327004();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142D4E68(uint64_t a1)
{
  v2 = sub_214327004();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142D4EA4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000016;
  }

  else
  {
    v4 = 0x6465696669726576;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0x80000002147874F0;
  }

  if (*a2)
  {
    v6 = 0xD000000000000016;
  }

  else
  {
    v6 = 0x6465696669726576;
  }

  if (*a2)
  {
    v7 = 0x80000002147874F0;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

uint64_t sub_2142D4F50()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142D4FD8()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142D504C()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142D50DC(unint64_t *a1@<X8>)
{
  v2 = 0x80000002147874F0;
  v3 = 0x6465696669726576;
  if (*v1)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_2142D51D0(void *a1)
{
  v2 = type metadata accessor for Chatbot.VerificationInfo.VerifiedInfo(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v20 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Chatbot.VerificationInfo(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D7F8, &qword_2146F70C0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214327004();
  sub_2146DAA28();
  sub_2143287C0(v21, v9, type metadata accessor for Chatbot.VerificationInfo);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    v26 = 1;
    v25 = 0;
    sub_214327058();
    sub_2146DA388();
  }

  else
  {
    v16 = v20;
    sub_214328704(v9, v20, type metadata accessor for Chatbot.VerificationInfo.VerifiedInfo);
    v24 = 0;
    sub_214327058();
    v17 = v22;
    sub_2146DA388();
    if (v17)
    {
      sub_21432887C(v16, type metadata accessor for Chatbot.VerificationInfo.VerifiedInfo);
      return (*(v11 + 8))(v14, v10);
    }

    v23 = 1;
    sub_214328930(&qword_27C90D810, type metadata accessor for Chatbot.VerificationInfo.VerifiedInfo);
    sub_2146DA388();
    sub_21432887C(v16, type metadata accessor for Chatbot.VerificationInfo.VerifiedInfo);
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_2142D5540@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = type metadata accessor for Chatbot.VerificationInfo.VerifiedInfo(0);
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D818, &qword_2146F70C8);
  v27 = *(v8 - 8);
  v9 = *(v27 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for Chatbot.VerificationInfo(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_214327004();
  sub_2146DAA08();
  if (!v2)
  {
    v19 = v27;
    v18 = v28;
    v25 = v15;
    v31 = 0;
    sub_2143270AC();
    sub_2146DA1C8();
    if (v32)
    {
      (*(v19 + 8))(v11, v8);
      v20 = 1;
      v21 = v18;
      v22 = v25;
    }

    else
    {
      v30 = 1;
      sub_214328930(&qword_27C90D828, type metadata accessor for Chatbot.VerificationInfo.VerifiedInfo);
      sub_2146DA1C8();
      (*(v19 + 8))(v11, v8);
      v21 = v18;
      v22 = v25;
      sub_214328704(v7, v25, type metadata accessor for Chatbot.VerificationInfo.VerifiedInfo);
      v20 = 0;
    }

    (*(v26 + 56))(v22, v20, 1, v4);
    sub_214328704(v22, v21, type metadata accessor for Chatbot.VerificationInfo);
  }

  return __swift_destroy_boxed_opaque_existential_1(v29);
}

unint64_t sub_2142D58CC()
{
  v1 = 0x61565F796C706572;
  if (*v0 != 1)
  {
    v1 = 0x565F6E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_2142D593C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21438D414(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142D5964(uint64_t a1)
{
  v2 = sub_214327100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142D59A0(uint64_t a1)
{
  v2 = sub_214327100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142D5A98(void *a1)
{
  v2 = v1;
  v24 = type metadata accessor for Chatbot.Action(0);
  v4 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Chatbot.MenuL2.Entry(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D830, &qword_2146F70D0);
  v26 = *(v11 - 8);
  v27 = v11;
  v12 = *(v26 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214327100();
  sub_2146DAA28();
  sub_2143287C0(v2, v10, type metadata accessor for Chatbot.MenuL2.Entry);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_214328704(v10, v6, type metadata accessor for Chatbot.Action);
    LOBYTE(v36) = 1;
    LOBYTE(v28) = 0;
    sub_214327154();
    v16 = v27;
    v17 = v25;
    sub_2146DA388();
    if (!v17)
    {
      LOBYTE(v36) = 2;
      sub_214328930(&qword_27C90D848, type metadata accessor for Chatbot.Action);
      sub_2146DA388();
    }

    sub_21432887C(v6, type metadata accessor for Chatbot.Action);
    return (*(v26 + 8))(v14, v16);
  }

  else
  {
    v19 = *(v10 + 5);
    v40 = *(v10 + 4);
    v41 = v19;
    v42 = *(v10 + 6);
    v43 = v10[112];
    v20 = *(v10 + 1);
    v36 = *v10;
    v37 = v20;
    v21 = *(v10 + 3);
    v38 = *(v10 + 2);
    v39 = v21;
    LOBYTE(v28) = 0;
    v44 = 0;
    sub_214327154();
    v22 = v27;
    v23 = v25;
    sub_2146DA388();
    if (!v23)
    {
      v32 = v40;
      v33 = v41;
      v34 = v42;
      v35 = v43;
      v28 = v36;
      v29 = v37;
      v30 = v38;
      v31 = v39;
      v44 = 1;
      sub_2143271FC();
      sub_2146DA388();
    }

    (*(v26 + 8))(v14, v22);
    return sub_2143271A8(&v36);
  }
}

uint64_t sub_2142D5E50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for Chatbot.Action(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D858, &qword_2146F70D8);
  v27 = *(v7 - 8);
  v8 = *(v27 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Chatbot.MenuL2.Entry(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v15 = a1[4];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_214327100();
  v17 = v29;
  sub_2146DAA08();
  if (!v17)
  {
    v29 = v3;
    v26 = v14;
    v18 = v27;
    v19 = v28;
    v39 = 0;
    sub_214327250();
    sub_2146DA1C8();
    if (v31)
    {
      LOBYTE(v31) = 2;
      sub_214328930(&qword_27C90D868, type metadata accessor for Chatbot.Action);
      sub_2146DA1C8();
      (*(v18 + 8))(v10, v7);
      v21 = v26;
      sub_214328704(v6, v26, type metadata accessor for Chatbot.Action);
      swift_storeEnumTagMultiPayload();
      v22 = v19;
    }

    else
    {
      v39 = 1;
      sub_2143272A4();
      sub_2146DA1C8();
      (*(v18 + 8))(v10, v7);
      v22 = v19;
      v23 = v36;
      v21 = v26;
      *(v26 + 4) = v35;
      *(v21 + 80) = v23;
      *(v21 + 96) = v37;
      *(v21 + 112) = v38;
      v24 = v32;
      *v21 = v31;
      *(v21 + 16) = v24;
      v25 = v34;
      *(v21 + 32) = v33;
      *(v21 + 48) = v25;
      swift_storeEnumTagMultiPayload();
    }

    sub_214328704(v21, v22, type metadata accessor for Chatbot.MenuL2.Entry);
  }

  return __swift_destroy_boxed_opaque_existential_1(v30);
}

unint64_t sub_2142D6224()
{
  v1 = 0x61565F796C706572;
  v2 = 0x565F6E6F69746361;
  if (*v0 != 2)
  {
    v2 = 0x565F324C756E656DLL;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000014;
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

uint64_t sub_2142D62BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21438D594(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142D62E4(uint64_t a1)
{
  v2 = sub_2143272F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142D6320(uint64_t a1)
{
  v2 = sub_2143272F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142D635C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E6F69746361;
  if (v2 != 1)
  {
    v3 = 0x324C756E656DLL;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x796C706572;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 0x6E6F69746361;
  if (*a2 != 1)
  {
    v6 = 0x324C756E656DLL;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x796C706572;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

uint64_t sub_2142D644C()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142D64E4()
{
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142D6568()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142D65FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21438D768();
  *a2 = result;
  return result;
}

void sub_2142D662C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6E6F69746361;
  if (v2 != 1)
  {
    v4 = 0x324C756E656DLL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x796C706572;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_2142D6730(void *a1)
{
  v2 = v1;
  *(&v33 + 1) = type metadata accessor for Chatbot.Action(0);
  v4 = *(*(*(&v33 + 1) - 8) + 64);
  MEMORY[0x28223BE20](*(&v33 + 1));
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Chatbot.MenuL1.Entry(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D878, &qword_2146F70E0);
  v35 = *(v11 - 8);
  v36 = v11;
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143272F8();
  sub_2146DAA28();
  sub_2143287C0(v2, v10, type metadata accessor for Chatbot.MenuL1.Entry);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_214328704(v10, v6, type metadata accessor for Chatbot.Action);
      LOBYTE(v45) = 1;
      LOBYTE(v37) = 0;
      sub_21432734C();
      v17 = v36;
      v18 = v34;
      sub_2146DA388();
      if (!v18)
      {
        LOBYTE(v45) = 2;
        sub_214328930(&qword_27C90D848, type metadata accessor for Chatbot.Action);
        sub_2146DA388();
      }

      sub_21432887C(v6, type metadata accessor for Chatbot.Action);
      return (*(v35 + 8))(v14, v17);
    }

    else
    {
      v25 = *(v10 + 1);
      *&v33 = *v10;
      *(&v33 + 1) = v25;
      v27 = *(v10 + 2);
      v26 = *(v10 + 3);
      v28 = v10[32];
      v29 = *(v10 + 5);
      LOBYTE(v45) = 2;
      LOBYTE(v37) = 0;
      sub_21432734C();
      v30 = v36;
      v31 = v34;
      sub_2146DA388();
      if (!v31)
      {
        v45 = v33;
        *&v46 = v27;
        *(&v46 + 1) = v26;
        LOBYTE(v47) = v28;
        *(&v47 + 1) = v29;
        LOBYTE(v37) = 3;
        sub_2143273A0();
        sub_2146DA388();
      }

      (*(v35 + 8))(v14, v30);
    }
  }

  else
  {
    v20 = *(v10 + 5);
    v49 = *(v10 + 4);
    v50 = v20;
    v51 = *(v10 + 6);
    v52 = v10[112];
    v21 = *(v10 + 1);
    v45 = *v10;
    v46 = v21;
    v22 = *(v10 + 3);
    v47 = *(v10 + 2);
    v48 = v22;
    LOBYTE(v37) = 0;
    v53 = 0;
    sub_21432734C();
    v23 = v36;
    v24 = v34;
    sub_2146DA388();
    if (!v24)
    {
      v41 = v49;
      v42 = v50;
      v43 = v51;
      v44 = v52;
      v37 = v45;
      v38 = v46;
      v39 = v47;
      v40 = v48;
      v53 = 1;
      sub_2143271FC();
      sub_2146DA388();
    }

    (*(v35 + 8))(v14, v23);
    return sub_2143271A8(&v45);
  }
}

uint64_t sub_2142D6BC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for Chatbot.Action(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D898, &qword_2146F70E8);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - v9;
  v11 = type metadata accessor for Chatbot.MenuL1.Entry(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v15 = a1[4];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_2143272F8();
  v17 = v32;
  sub_2146DAA08();
  if (!v17)
  {
    v18 = v31;
    v42 = 0;
    sub_2143273F4();
    sub_2146DA1C8();
    if (v34)
    {
      if (v34 != 1)
      {
        v42 = 3;
        sub_214327448();
        sub_2146DA1C8();
        (*(v18 + 8))(v10, v7);
        v25 = v30;
        v26 = v36;
        v27 = *(&v36 + 1);
        v28 = v35;
        v20 = v14;
        *v14 = v34;
        *(v14 + 1) = v28;
        v14[32] = v26;
        *(v14 + 5) = v27;
        v29 = v25;
        swift_storeEnumTagMultiPayload();
        v24 = v29;
        goto LABEL_10;
      }

      LOBYTE(v34) = 2;
      sub_214328930(&qword_27C90D868, type metadata accessor for Chatbot.Action);
      sub_2146DA1C8();
      (*(v18 + 8))(v10, v7);
      v20 = v14;
      sub_214328704(v6, v14, type metadata accessor for Chatbot.Action);
    }

    else
    {
      v42 = 1;
      sub_2143272A4();
      sub_2146DA1C8();
      (*(v18 + 8))(v10, v7);
      v21 = v39;
      v20 = v14;
      *(v14 + 4) = v38;
      *(v14 + 5) = v21;
      *(v14 + 6) = v40;
      v14[112] = v41;
      v22 = v35;
      *v14 = v34;
      *(v14 + 1) = v22;
      v23 = v37;
      *(v14 + 2) = v36;
      *(v14 + 3) = v23;
    }

    swift_storeEnumTagMultiPayload();
    v24 = v30;
LABEL_10:
    sub_214328704(v20, v24, type metadata accessor for Chatbot.MenuL1.Entry);
  }

  return __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t sub_2142D7008()
{
  v1 = 0x5F746F6274616863;
  v2 = 0x565F6E6F69746361;
  if (*v0 != 2)
  {
    v2 = 0x565F314C756E656DLL;
  }

  if (*v0)
  {
    v1 = 0x61565F796C706572;
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

uint64_t sub_2142D70A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21438D7B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142D70D0(uint64_t a1)
{
  v2 = sub_21432749C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142D710C(uint64_t a1)
{
  v2 = sub_21432749C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142D7148(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E6F69746361;
  if (v2 != 1)
  {
    v3 = 0x314C756E656DLL;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x796C706572;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 0x6E6F69746361;
  if (*a2 != 1)
  {
    v6 = 0x314C756E656DLL;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x796C706572;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

uint64_t sub_2142D7238()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142D72D0()
{
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142D7354()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142D73E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21438D9D8();
  *a2 = result;
  return result;
}

void sub_2142D7418(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6E6F69746361;
  if (v2 != 1)
  {
    v4 = 0x314C756E656DLL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x796C706572;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_2142D751C(void *a1)
{
  v2 = v1;
  *(&v33 + 1) = type metadata accessor for Chatbot.Action(0);
  v4 = *(*(*(&v33 + 1) - 8) + 64);
  MEMORY[0x28223BE20](*(&v33 + 1));
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Chatbot.MenuL0(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D8B0, &qword_2146F70F0);
  v35 = *(v11 - 8);
  v36 = v11;
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21432749C();
  sub_2146DAA28();
  sub_2143287C0(v2, v10, type metadata accessor for Chatbot.MenuL0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_214328704(v10, v6, type metadata accessor for Chatbot.Action);
      LOBYTE(v45) = 1;
      LOBYTE(v37) = 0;
      sub_2143274F0();
      v17 = v36;
      v18 = v34;
      sub_2146DA388();
      if (!v18)
      {
        LOBYTE(v45) = 2;
        sub_214328930(&qword_27C90D848, type metadata accessor for Chatbot.Action);
        sub_2146DA388();
      }

      sub_21432887C(v6, type metadata accessor for Chatbot.Action);
      return (*(v35 + 8))(v14, v17);
    }

    else
    {
      v25 = *(v10 + 1);
      *&v33 = *v10;
      *(&v33 + 1) = v25;
      v27 = *(v10 + 2);
      v26 = *(v10 + 3);
      v28 = v10[32];
      v29 = *(v10 + 5);
      LOBYTE(v45) = 2;
      LOBYTE(v37) = 0;
      sub_2143274F0();
      v30 = v36;
      v31 = v34;
      sub_2146DA388();
      if (!v31)
      {
        v45 = v33;
        *&v46 = v27;
        *(&v46 + 1) = v26;
        LOBYTE(v47) = v28;
        *(&v47 + 1) = v29;
        LOBYTE(v37) = 3;
        sub_214327544();
        sub_2146DA388();
      }

      (*(v35 + 8))(v14, v30);
    }
  }

  else
  {
    v20 = *(v10 + 5);
    v49 = *(v10 + 4);
    v50 = v20;
    v51 = *(v10 + 6);
    v52 = v10[112];
    v21 = *(v10 + 1);
    v45 = *v10;
    v46 = v21;
    v22 = *(v10 + 3);
    v47 = *(v10 + 2);
    v48 = v22;
    LOBYTE(v37) = 0;
    v53 = 0;
    sub_2143274F0();
    v23 = v36;
    v24 = v34;
    sub_2146DA388();
    if (!v24)
    {
      v41 = v49;
      v42 = v50;
      v43 = v51;
      v44 = v52;
      v37 = v45;
      v38 = v46;
      v39 = v47;
      v40 = v48;
      v53 = 1;
      sub_2143271FC();
      sub_2146DA388();
    }

    (*(v35 + 8))(v14, v23);
    return sub_2143271A8(&v45);
  }
}

uint64_t sub_2142D79AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for Chatbot.Action(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D8D0, &qword_2146F70F8);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - v9;
  v11 = type metadata accessor for Chatbot.MenuL0(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v15 = a1[4];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_21432749C();
  v17 = v32;
  sub_2146DAA08();
  if (!v17)
  {
    v18 = v31;
    v42 = 0;
    sub_214327598();
    sub_2146DA1C8();
    if (v34)
    {
      if (v34 != 1)
      {
        v42 = 3;
        sub_2143275EC();
        sub_2146DA1C8();
        (*(v18 + 8))(v10, v7);
        v25 = v30;
        v26 = v36;
        v27 = *(&v36 + 1);
        v28 = v35;
        v20 = v14;
        *v14 = v34;
        *(v14 + 1) = v28;
        v14[32] = v26;
        *(v14 + 5) = v27;
        v29 = v25;
        swift_storeEnumTagMultiPayload();
        v24 = v29;
        goto LABEL_10;
      }

      LOBYTE(v34) = 2;
      sub_214328930(&qword_27C90D868, type metadata accessor for Chatbot.Action);
      sub_2146DA1C8();
      (*(v18 + 8))(v10, v7);
      v20 = v14;
      sub_214328704(v6, v14, type metadata accessor for Chatbot.Action);
    }

    else
    {
      v42 = 1;
      sub_2143272A4();
      sub_2146DA1C8();
      (*(v18 + 8))(v10, v7);
      v21 = v39;
      v20 = v14;
      *(v14 + 4) = v38;
      *(v14 + 5) = v21;
      *(v14 + 6) = v40;
      v14[112] = v41;
      v22 = v35;
      *v14 = v34;
      *(v14 + 1) = v22;
      v23 = v37;
      *(v14 + 2) = v36;
      *(v14 + 3) = v23;
    }

    swift_storeEnumTagMultiPayload();
    v24 = v30;
LABEL_10:
    sub_214328704(v20, v24, type metadata accessor for Chatbot.MenuL0);
  }

  return __swift_destroy_boxed_opaque_existential_1(v33);
}

unint64_t sub_2142D7DF4()
{
  if (*v0)
  {
    result = 0x5F4C52556E65706FLL;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_2142D7E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000002147993D0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x5F4C52556E65706FLL && a2 == 0xED000065756C6156)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_2142D7F30(uint64_t a1)
{
  v2 = sub_214327640();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142D7F6C(uint64_t a1)
{
  v2 = sub_214327640();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142D80C8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D8E8, &qword_2146F7100);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = *v1;
  v10 = *(v1 + 2);
  v21 = *(v1 + 3);
  v34 = *(v1 + 32);
  v11 = *(v1 + 33);
  v19 = *(v1 + 34);
  v20 = v11;
  v22 = *(v1 + 40);
  v23 = v9;
  v12 = *(v1 + 7);
  v17 = *(v1 + 8);
  v18 = v12;
  v16 = *(v1 + 72);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214327640();
  sub_2146DAA28();
  LOBYTE(v24) = 0;
  sub_214327694();
  sub_2146DA388();
  if (!v2)
  {
    v24 = v23;
    v25 = v10;
    v26 = v21;
    v27 = v34;
    v28 = v20;
    v29 = v19;
    v30 = v22;
    v31 = v18;
    v32 = v17;
    v33 = v16;
    v35 = 1;
    sub_2143276E8();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2142D82BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D908, &qword_2146F7108);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214327640();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v14) = 0;
    sub_21432773C();
    sub_2146DA1C8();
    v18 = 1;
    sub_214327790();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v12[2] = v16;
    v13[0] = v17[0];
    *(v13 + 9) = *(v17 + 9);
    v12[0] = v14;
    v12[1] = v15;
    sub_2143277E4(v12, a2);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142D84D4()
{
  v1 = 0x6C61436F65646976;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000012;
  }

  v2 = 0xD000000000000014;
  if (*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2142D8564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21438DA24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142D858C(uint64_t a1)
{
  v2 = sub_214327840();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142D85C8(uint64_t a1)
{
  v2 = sub_214327840();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142D8604(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6465686369726E65;
  v4 = 0xEC0000006C6C6143;
  if (v2 != 1)
  {
    v3 = 0x6C61436F65646976;
    v4 = 0xE90000000000006CLL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6D754E656E6F6870;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEB00000000726562;
  }

  v7 = 0x6465686369726E65;
  v8 = 0xEC0000006C6C6143;
  if (*a2 != 1)
  {
    v7 = 0x6C61436F65646976;
    v8 = 0xE90000000000006CLL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6D754E656E6F6870;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEB00000000726562;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2142D8724()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142D87DC()
{
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142D8880()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142D8934@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21438DC40();
  *a2 = result;
  return result;
}

void sub_2142D8964(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000726562;
  v4 = 0xEC0000006C6C6143;
  v5 = 0x6465686369726E65;
  if (v2 != 1)
  {
    v5 = 0x6C61436F65646976;
    v4 = 0xE90000000000006CLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6D754E656E6F6870;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2142D8A88(void *a1)
{
  v30 = type metadata accessor for Chatbot.DialerAction.DialVideoCall(0);
  v2 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v31 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Chatbot.DialerAction.DialEnrichedCall(0);
  v4 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Chatbot.DialerAction.DialPhoneNumber(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Chatbot.DialerAction(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D920, &qword_2146F7110);
  v34 = *(v15 - 8);
  v35 = v15;
  v16 = *(v34 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v29 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214327840();
  sub_2146DAA28();
  sub_2143287C0(v32, v14, type metadata accessor for Chatbot.DialerAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_214328704(v14, v6, type metadata accessor for Chatbot.DialerAction.DialEnrichedCall);
      v40 = 1;
      v39 = 0;
      sub_214327894();
      v21 = v35;
      v22 = v33;
      sub_2146DA388();
      if (!v22)
      {
        v38 = 2;
        sub_214328930(&qword_27C90D940, type metadata accessor for Chatbot.DialerAction.DialEnrichedCall);
        sub_2146DA388();
      }

      v23 = type metadata accessor for Chatbot.DialerAction.DialEnrichedCall;
      v24 = v6;
    }

    else
    {
      v26 = v31;
      sub_214328704(v14, v31, type metadata accessor for Chatbot.DialerAction.DialVideoCall);
      v43 = 2;
      v42 = 0;
      sub_214327894();
      v21 = v35;
      v27 = v33;
      sub_2146DA388();
      if (!v27)
      {
        v41 = 3;
        sub_214328930(&qword_27C90D938, type metadata accessor for Chatbot.DialerAction.DialVideoCall);
        sub_2146DA388();
      }

      v23 = type metadata accessor for Chatbot.DialerAction.DialVideoCall;
      v24 = v26;
    }
  }

  else
  {
    sub_214328704(v14, v10, type metadata accessor for Chatbot.DialerAction.DialPhoneNumber);
    v37 = 0;
    sub_214327894();
    v21 = v35;
    v25 = v33;
    sub_2146DA388();
    if (!v25)
    {
      v36 = 1;
      sub_214328930(&qword_27C90D948, type metadata accessor for Chatbot.DialerAction.DialPhoneNumber);
      sub_2146DA388();
    }

    v23 = type metadata accessor for Chatbot.DialerAction.DialPhoneNumber;
    v24 = v10;
  }

  sub_21432887C(v24, v23);
  return (*(v34 + 8))(v18, v21);
}

uint64_t sub_2142D8FA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v34 = type metadata accessor for Chatbot.DialerAction.DialVideoCall(0);
  v3 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v32 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Chatbot.DialerAction.DialEnrichedCall(0);
  v5 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v33 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Chatbot.DialerAction.DialPhoneNumber(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D950, &qword_2146F7118);
  v36 = *(v11 - 8);
  v12 = *(v36 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - v13;
  v15 = type metadata accessor for Chatbot.DialerAction(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v20 = a1[4];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_214327840();
  v21 = v38;
  sub_2146DAA08();
  if (!v21)
  {
    v31 = v18;
    v38 = v15;
    v22 = v36;
    v23 = v37;
    v43 = 0;
    sub_2143278E8();
    sub_2146DA1C8();
    v25 = v14;
    v26 = (v22 + 8);
    if (v44)
    {
      if (v44 == 1)
      {
        v41 = 2;
        sub_214328930(&qword_27C90D968, type metadata accessor for Chatbot.DialerAction.DialEnrichedCall);
        v27 = v33;
        sub_2146DA1C8();
        (*v26)(v25, v11);
        v28 = v31;
        sub_214328704(v27, v31, type metadata accessor for Chatbot.DialerAction.DialEnrichedCall);
      }

      else
      {
        v42 = 3;
        sub_214328930(&qword_27C90D960, type metadata accessor for Chatbot.DialerAction.DialVideoCall);
        v29 = v32;
        sub_2146DA1C8();
        (*v26)(v25, v11);
        v28 = v31;
        sub_214328704(v29, v31, type metadata accessor for Chatbot.DialerAction.DialVideoCall);
      }
    }

    else
    {
      v40 = 1;
      sub_214328930(&qword_27C90D970, type metadata accessor for Chatbot.DialerAction.DialPhoneNumber);
      sub_2146DA1C8();
      (*v26)(v25, v11);
      v28 = v31;
      sub_214328704(v10, v31, type metadata accessor for Chatbot.DialerAction.DialPhoneNumber);
    }

    swift_storeEnumTagMultiPayload();
    sub_214328704(v28, v23, type metadata accessor for Chatbot.DialerAction);
  }

  return __swift_destroy_boxed_opaque_existential_1(v39);
}

unint64_t sub_2142D94DC()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_2142D9514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000214799450 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000214797870 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_2142D95F8(uint64_t a1)
{
  v2 = sub_21432793C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142D9634(uint64_t a1)
{
  v2 = sub_21432793C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142D9670(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 0x61636F4C776F6873;
  }

  if (v3)
  {
    v5 = 0xEC0000006E6F6974;
  }

  else
  {
    v5 = 0x8000000214787540;
  }

  if (*a2)
  {
    v6 = 0xD000000000000013;
  }

  else
  {
    v6 = 0x61636F4C776F6873;
  }

  if (*a2)
  {
    v7 = 0x8000000214787540;
  }

  else
  {
    v7 = 0xEC0000006E6F6974;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

uint64_t sub_2142D9724()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142D97B4()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142D9830()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142D98C8(unint64_t *a1@<X8>)
{
  v2 = 0x8000000214787540;
  v3 = 0x61636F4C776F6873;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xEC0000006E6F6974;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_2142D99C4(void *a1)
{
  v2 = type metadata accessor for Chatbot.MapAction.ShowLocation(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v20 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Chatbot.MapAction(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D978, &qword_2146F7120);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21432793C();
  sub_2146DAA28();
  sub_2143287C0(v21, v9, type metadata accessor for Chatbot.MapAction);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    v26 = 1;
    v25 = 0;
    sub_214327990();
    sub_2146DA388();
  }

  else
  {
    v16 = v20;
    sub_214328704(v9, v20, type metadata accessor for Chatbot.MapAction.ShowLocation);
    v24 = 0;
    sub_214327990();
    v17 = v22;
    sub_2146DA388();
    if (v17)
    {
      sub_21432887C(v16, type metadata accessor for Chatbot.MapAction.ShowLocation);
      return (*(v11 + 8))(v14, v10);
    }

    v23 = 1;
    sub_214328930(&qword_27C90D990, type metadata accessor for Chatbot.MapAction.ShowLocation);
    sub_2146DA388();
    sub_21432887C(v16, type metadata accessor for Chatbot.MapAction.ShowLocation);
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_2142D9D34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = type metadata accessor for Chatbot.MapAction.ShowLocation(0);
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D998, &qword_2146F7128);
  v27 = *(v8 - 8);
  v9 = *(v27 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for Chatbot.MapAction(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_21432793C();
  sub_2146DAA08();
  if (!v2)
  {
    v19 = v27;
    v18 = v28;
    v25 = v15;
    v31 = 0;
    sub_2143279E4();
    sub_2146DA1C8();
    if (v32)
    {
      (*(v19 + 8))(v11, v8);
      v20 = 1;
      v21 = v18;
      v22 = v25;
    }

    else
    {
      v30 = 1;
      sub_214328930(&qword_27C90D9A8, type metadata accessor for Chatbot.MapAction.ShowLocation);
      sub_2146DA1C8();
      (*(v19 + 8))(v11, v8);
      v21 = v18;
      v22 = v25;
      sub_214328704(v7, v25, type metadata accessor for Chatbot.MapAction.ShowLocation);
      v20 = 0;
    }

    (*(v26 + 56))(v22, v20, 1, v4);
    sub_214328704(v22, v21, type metadata accessor for Chatbot.MapAction);
  }

  return __swift_destroy_boxed_opaque_existential_1(v29);
}

unint64_t sub_2142DA0C0()
{
  v1 = 0x61565F7972657571;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000021;
  }
}

uint64_t sub_2142DA130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21438DC8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142DA158(uint64_t a1)
{
  v2 = sub_214327A38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142DA194(uint64_t a1)
{
  v2 = sub_214327A38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142DA1D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7972657571;
  }

  else
  {
    v4 = 0x616E6964726F6F63;
  }

  if (v3)
  {
    v5 = 0xEB00000000736574;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x7972657571;
  }

  else
  {
    v6 = 0x616E6964726F6F63;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xEB00000000736574;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

uint64_t sub_2142DA27C()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142DA304()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142DA378()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142DA408(uint64_t *a1@<X8>)
{
  v2 = 0x616E6964726F6F63;
  if (*v1)
  {
    v2 = 0x7972657571;
  }

  v3 = 0xEB00000000736574;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2142DA4FC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D9B0, &qword_2146F7130);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = v1[1];
  v18 = *v1;
  v19 = v9;
  v10 = v1[3];
  v20 = v1[2];
  v21 = v10;
  v11 = v1[5];
  v22 = v1[4];
  v16 = v1[6];
  v17 = v11;
  v12 = *(v1 + 28);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214327A38();
  sub_2146DAA28();
  if ((v12 & 0x80) != 0)
  {
    LOBYTE(v23) = 1;
    v31 = 0;
    sub_214327A8C();
    sub_2146DA388();
    if (!v2)
    {
      v23 = v18;
      v24 = v19;
      v25 = v20;
      v26 = v21;
      LOBYTE(v27) = v22;
      v31 = 2;
      sub_214327AE0();
      goto LABEL_6;
    }
  }

  else
  {
    LOBYTE(v23) = 0;
    v31 = 0;
    sub_214327A8C();
    sub_2146DA388();
    if (!v2)
    {
      v23 = v18;
      v24 = v19;
      v25 = v20;
      v26 = v21;
      v27 = v22;
      v28 = v17;
      v29 = v16;
      v30 = v12;
      v31 = 1;
      sub_214327B34();
LABEL_6:
      sub_2146DA388();
    }
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2142DA744@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D9D8, &qword_2146F7138);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214327A38();
  sub_2146DAA08();
  if (!v2)
  {
    v24 = 0;
    sub_214327B88();
    sub_2146DA1C8();
    v12 = (v6 + 8);
    if (v25)
    {
      v23 = 2;
      sub_214327BDC();
      sub_2146DA1C8();
      (*v12)(v9, v5);
      v13 = v18;
      v14 = v19;
      v15 = v20;
      *&v16 = v20;
      v17 = 128;
    }

    else
    {
      v23 = 1;
      sub_214327C30();
      sub_2146DA1C8();
      (*v12)(v9, v5);
      v13 = v18;
      v14 = v19;
      v16 = v20;
      v15 = v21;
      v17 = v22 & 0xFF01;
    }

    *a2 = v13;
    *(a2 + 16) = v14;
    *(a2 + 32) = v16;
    *(a2 + 48) = v15;
    *(a2 + 56) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142DA9D4()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0xD000000000000016;
  }

  *v0;
  return result;
}

uint64_t sub_2142DAA10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000016 && 0x80000002147994C0 == a2;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002147994E0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_2142DAAF0(uint64_t a1)
{
  v2 = sub_214327C84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142DAB2C(uint64_t a1)
{
  v2 = sub_214327C84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142DAB88()
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_2142DAC18()
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_2142DAC70@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2146DA098();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_2142DAD94(void *a1)
{
  v2 = v1;
  v19[0] = type metadata accessor for Chatbot.CalendarAction.CreateEvent(0);
  v4 = *(*(v19[0] - 8) + 64);
  MEMORY[0x28223BE20](v19[0]);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Chatbot.CalendarAction(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D9F8, &qword_2146F7140);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214327C84();
  sub_2146DAA28();
  sub_2143287C0(v2, v10, type metadata accessor for Chatbot.CalendarAction);
  sub_214328704(v10, v6, type metadata accessor for Chatbot.CalendarAction.CreateEvent);
  v21 = 0;
  sub_214327CD8();
  v17 = v19[1];
  sub_2146DA388();
  if (!v17)
  {
    v20 = 1;
    sub_214328930(&qword_27C90DA10, type metadata accessor for Chatbot.CalendarAction.CreateEvent);
    sub_2146DA388();
  }

  sub_21432887C(v6, type metadata accessor for Chatbot.CalendarAction.CreateEvent);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_2142DB034@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  Event = type metadata accessor for Chatbot.CalendarAction.CreateEvent(0);
  v5 = *(*(Event - 8) + 64);
  MEMORY[0x28223BE20](Event);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90DA18, &qword_2146F7148);
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v17);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214327C84();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v8;
    v19 = 0;
    sub_214327D2C();
    v14 = v17;
    sub_2146DA1C8();
    v18 = 1;
    sub_214328930(&qword_27C90DA28, type metadata accessor for Chatbot.CalendarAction.CreateEvent);
    sub_2146DA1C8();
    (*(v13 + 8))(v11, v14);
    sub_214328704(v7, v16, type metadata accessor for Chatbot.CalendarAction.CreateEvent);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142DB2C8()
{
  v1 = 0xD000000000000018;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001DLL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000015;
  }

  *v0;
  return result;
}

uint64_t sub_2142DB320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21438DE5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142DB348(uint64_t a1)
{
  v2 = sub_214327D80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142DB384(uint64_t a1)
{
  v2 = sub_214327D80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142DB3C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000017;
  }

  else
  {
    v4 = 0xD000000000000012;
  }

  if (v3)
  {
    v5 = "query";
  }

  else
  {
    v5 = "composeTextMessage";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000017;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (*a2)
  {
    v8 = "composeTextMessage";
  }

  else
  {
    v8 = "query";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_2146DA6A8();
  }

  return v10 & 1;
}

uint64_t sub_2142DB470()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142DB4F4()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142DB564()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142DB5F0(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000017;
  }

  else
  {
    v2 = 0xD000000000000012;
  }

  if (*v1)
  {
    v3 = "composeTextMessage";
  }

  else
  {
    v3 = "query";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_2142DB6E4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90DA30, &qword_2146F7150);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = v1[1];
  v19 = *v1;
  v20 = v9;
  v10 = v1[3];
  v21 = v1[2];
  v22 = v10;
  v23 = *(v1 + 32);
  v35 = *(v1 + 33);
  v11 = *(v1 + 34) | (*(v1 + 19) << 32);
  v12 = *(v1 + 5);
  v17 = *(v1 + 7);
  v18 = v12;
  v16 = *(v1 + 72);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214327D80();
  sub_2146DAA28();
  if ((v11 & 0x8000000000000000) != 0)
  {
    LOBYTE(v24) = 1;
    v36 = 0;
    sub_214327DD4();
    sub_2146DA388();
    if (!v2)
    {
      v24 = v19;
      v25 = v20;
      v26 = v21;
      v27 = v22;
      v28 = v23;
      v29 = v35 & 1;
      v36 = 2;
      sub_214327E28();
      goto LABEL_6;
    }
  }

  else
  {
    LOBYTE(v24) = 0;
    v36 = 0;
    sub_214327DD4();
    sub_2146DA388();
    if (!v2)
    {
      v24 = v19;
      v25 = v20;
      v26 = v21;
      v27 = v22;
      v28 = v23;
      v29 = v35;
      v31 = WORD2(v11);
      v30 = v11;
      v32 = v18;
      v33 = v17;
      v34 = v16;
      v36 = 1;
      sub_214327E7C();
LABEL_6:
      sub_2146DA388();
    }
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2142DB96C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90DA58, &qword_2146F7158);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214327D80();
  sub_2146DAA08();
  if (!v2)
  {
    v27 = 0;
    sub_214327ED0();
    sub_2146DA1C8();
    v12 = (v6 + 8);
    if (v28)
    {
      v26 = 2;
      sub_214327F24();
      sub_2146DA1C8();
      (*v12)(v9, v5);
      v15 = v20;
      v16 = v21;
      v17 = v22;
      v18 = 0x8000000000000000;
      if (BYTE1(v22))
      {
        v18 = 0x8000000000000100;
      }

      v19 = v18 | v22;
    }

    else
    {
      v26 = 1;
      sub_214327F78();
      sub_2146DA1C8();
      (*v12)(v9, v5);
      v15 = v20;
      v16 = v21;
      v13 = v23;
      v14 = v24;
      v17 = v25;
      v19 = v22 & 0x1FF;
    }

    *a2 = v15;
    *(a2 + 16) = v16;
    *(a2 + 32) = v19;
    *(a2 + 40) = v13;
    *(a2 + 56) = v14;
    *(a2 + 72) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142DBC18()
{
  v1 = *v0;
  v2 = 0x756C61565F6C7275;
  v3 = 0x565F656369766564;
  if (v1 != 6)
  {
    v3 = 0x73676E6974746573;
  }

  v4 = 0x7261646E656C6163;
  if (v1 != 4)
  {
    v4 = 0x5F65736F706D6F63;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x565F72656C616964;
  if (v1 != 2)
  {
    v5 = 0x756C61565F70616DLL;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2142DBD3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21438DFD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142DBD64(uint64_t a1)
{
  v2 = sub_214327FCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142DBDA0(uint64_t a1)
{
  v2 = sub_214327FCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142DBDF4()
{
  *v0;
  *v0;
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142DBEF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21438E2EC();
  *a2 = result;
  return result;
}

void sub_2142DBF20(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7107189;
  v5 = 0xE600000000000000;
  v6 = 0x656369766564;
  v7 = 0xE800000000000000;
  if (v2 != 5)
  {
    v6 = 0x73676E6974746573;
    v5 = 0xE800000000000000;
  }

  v8 = 0x7261646E656C6163;
  if (v2 != 3)
  {
    v8 = 0x65736F706D6F63;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x72656C616964;
  if (v2 != 1)
  {
    v10 = 7364973;
    v9 = 0xE300000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_2142DC094(void *a1)
{
  v37 = type metadata accessor for Chatbot.CalendarAction(0);
  v2 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v38 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Chatbot.MapAction(0);
  v4 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Chatbot.DialerAction(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Chatbot.Action.ActionType(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90DA78, &qword_2146F7160);
  v51 = *(v42 - 8);
  v14 = *(v51 + 64);
  MEMORY[0x28223BE20](v42);
  v16 = &v36 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214327FCC();
  v18 = v16;
  sub_2146DAA28();
  sub_2143287C0(v41, v13, type metadata accessor for Chatbot.Action.ActionType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v22 = v9;
      v20 = v42;
      v21 = v18;
      if (EnumCaseMultiPayload == 1)
      {
        sub_214328704(v13, v22, type metadata accessor for Chatbot.DialerAction);
        LOBYTE(v47) = 1;
        LOBYTE(v44[0]) = 0;
        sub_214328020();
        v25 = v43;
        sub_2146DA388();
        if (!v25)
        {
          LOBYTE(v47) = 2;
          sub_214328930(&qword_27C90DAB8, type metadata accessor for Chatbot.DialerAction);
          sub_2146DA388();
        }

        v24 = type metadata accessor for Chatbot.DialerAction;
      }

      else
      {
        v22 = v39;
        sub_214328704(v13, v39, type metadata accessor for Chatbot.MapAction);
        LOBYTE(v47) = 2;
        LOBYTE(v44[0]) = 0;
        sub_214328020();
        v30 = v43;
        sub_2146DA388();
        if (!v30)
        {
          LOBYTE(v47) = 3;
          sub_214328930(&qword_27C90DAB0, type metadata accessor for Chatbot.MapAction);
          sub_2146DA388();
        }

        v24 = type metadata accessor for Chatbot.MapAction;
      }

      goto LABEL_21;
    }

    sub_2143277E4(v13, &v47);
    LOBYTE(v44[0]) = 0;
    v46 = 0;
    sub_214328020();
    v27 = v42;
    v28 = v43;
    sub_2146DA388();
    if (!v28)
    {
      sub_2143277E4(&v47, v44);
      v46 = 1;
      sub_214328218();
      sub_2146DA388();
    }

    (*(v51 + 8))(v18, v27);
    return sub_2143281C4(&v47);
  }

  else
  {
    if (EnumCaseMultiPayload > 4)
    {
      v20 = v42;
      v21 = v16;
      if (EnumCaseMultiPayload == 5)
      {
        LOBYTE(v47) = 5;
        LOBYTE(v44[0]) = 0;
        sub_214328020();
        v26 = v43;
        sub_2146DA388();
        if (v26)
        {
          return (*(v51 + 8))(v21, v20);
        }

        LOBYTE(v47) = 6;
        sub_2143280C8();
      }

      else
      {
        v34 = *v13;
        LOBYTE(v47) = 6;
        LOBYTE(v44[0]) = 0;
        sub_214328020();
        v35 = v43;
        sub_2146DA388();
        if (v35)
        {
          return (*(v51 + 8))(v21, v20);
        }

        LOBYTE(v47) = v34;
        LOBYTE(v44[0]) = 7;
        sub_214328074();
      }

      sub_2146DA388();
      return (*(v51 + 8))(v21, v20);
    }

    v20 = v42;
    v21 = v16;
    if (EnumCaseMultiPayload == 3)
    {
      v22 = v38;
      sub_214328704(v13, v38, type metadata accessor for Chatbot.CalendarAction);
      LOBYTE(v47) = 3;
      LOBYTE(v44[0]) = 0;
      sub_214328020();
      v23 = v43;
      sub_2146DA388();
      if (!v23)
      {
        LOBYTE(v47) = 4;
        sub_214328930(&qword_27C90DAA8, type metadata accessor for Chatbot.CalendarAction);
        sub_2146DA388();
      }

      v24 = type metadata accessor for Chatbot.CalendarAction;
LABEL_21:
      sub_21432887C(v22, v24);
      return (*(v51 + 8))(v21, v20);
    }

    v31 = *(v13 + 3);
    v49 = *(v13 + 2);
    v50[0] = v31;
    *(v50 + 9) = *(v13 + 57);
    v32 = *(v13 + 1);
    v47 = *v13;
    v48 = v32;
    LOBYTE(v44[0]) = 4;
    v46 = 0;
    sub_214328020();
    v33 = v43;
    sub_2146DA388();
    if (!v33)
    {
      v44[2] = v49;
      *v45 = v50[0];
      *&v45[9] = *(v50 + 9);
      v44[0] = v47;
      v44[1] = v48;
      v46 = 5;
      sub_214328170();
      sub_2146DA388();
    }

    (*(v51 + 8))(v16, v20);
    return sub_21432811C(&v47);
  }
}

uint64_t sub_2142DC87C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v39 = type metadata accessor for Chatbot.CalendarAction(0);
  v3 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v43 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Chatbot.MapAction(0);
  v5 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v42 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Chatbot.DialerAction(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90DAC8, &qword_2146F7168);
  v41 = *(v11 - 8);
  v12 = *(v41 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v37 - v13;
  v15 = type metadata accessor for Chatbot.Action.ActionType(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[3];
  v19 = a1[4];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_214327FCC();
  v21 = v46;
  sub_2146DAA08();
  if (!v21)
  {
    v37[1] = v7;
    v22 = v10;
    v23 = v42;
    v24 = v43;
    v46 = v15;
    v38 = v18;
    v25 = v44;
    v47[0] = 0;
    sub_21432826C();
    v26 = v14;
    sub_2146DA1C8();
    v27 = v11;
    if (LOBYTE(v48[0]) > 2u)
    {
      if (LOBYTE(v48[0]) > 4u)
      {
        v30 = v45;
        v31 = v25;
        v33 = v41;
        if (LOBYTE(v48[0]) == 5)
        {
          LOBYTE(v48[0]) = 6;
          sub_214328314();
          sub_2146DA1C8();
          (*(v33 + 8))(v26, v27);
          v35 = v38;
        }

        else
        {
          v47[0] = 7;
          sub_2143282C0();
          sub_2146DA1C8();
          (*(v33 + 8))(v26, v27);
          v35 = v38;
          *v38 = v48[0];
        }
      }

      else
      {
        v30 = v45;
        v31 = v25;
        v32 = v41;
        if (LOBYTE(v48[0]) == 3)
        {
          LOBYTE(v48[0]) = 4;
          sub_214328930(&qword_27C90DAF0, type metadata accessor for Chatbot.CalendarAction);
          sub_2146DA1C8();
          (*(v32 + 8))(v26, v27);
          v35 = v38;
          sub_214328704(v24, v38, type metadata accessor for Chatbot.CalendarAction);
        }

        else
        {
          v47[0] = 5;
          sub_214328368();
          sub_2146DA1C8();
          (*(v32 + 8))(v26, v27);
          v34 = v49[0];
          v35 = v38;
          v38[2] = v48[2];
          v35[3] = v34;
          *(v35 + 57) = *(v49 + 9);
          v36 = v48[1];
          *v35 = v48[0];
          v35[1] = v36;
        }
      }

      swift_storeEnumTagMultiPayload();
      goto LABEL_20;
    }

    if (LOBYTE(v48[0]))
    {
      if (LOBYTE(v48[0]) != 1)
      {
        LOBYTE(v48[0]) = 3;
        sub_214328930(&qword_27C90DAF8, type metadata accessor for Chatbot.MapAction);
        sub_2146DA1C8();
        (*(v41 + 8))(v14, v11);
        v30 = v45;
        v35 = v38;
        sub_214328704(v23, v38, type metadata accessor for Chatbot.MapAction);
        swift_storeEnumTagMultiPayload();
        v31 = v25;
        goto LABEL_20;
      }

      LOBYTE(v48[0]) = 2;
      sub_214328930(&qword_27C90DB00, type metadata accessor for Chatbot.DialerAction);
      sub_2146DA1C8();
      (*(v41 + 8))(v14, v11);
      v35 = v38;
      sub_214328704(v22, v38, type metadata accessor for Chatbot.DialerAction);
    }

    else
    {
      v50 = 1;
      sub_2143283BC();
      sub_2146DA1C8();
      (*(v41 + 8))(v14, v11);
      sub_2143277E4(v48, v47);
      v35 = v38;
      sub_2143277E4(v47, v38);
    }

    swift_storeEnumTagMultiPayload();
    v30 = v45;
    v31 = v25;
LABEL_20:
    sub_214328704(v35, v31, type metadata accessor for Chatbot.Action.ActionType);
    v28 = v30;
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v28 = v45;
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

unint64_t sub_2142DD0BC()
{
  v1 = 0x6C61636974726576;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000028;
  }
}

uint64_t sub_2142DD130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21438E338(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142DD158(uint64_t a1)
{
  v2 = sub_214328410();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142DD194(uint64_t a1)
{
  v2 = sub_214328410();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142DD1D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x746E6F7A69726F68;
  }

  else
  {
    v4 = 0x6C61636974726576;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xEA00000000006C61;
  }

  if (*a2)
  {
    v6 = 0x746E6F7A69726F68;
  }

  else
  {
    v6 = 0x6C61636974726576;
  }

  if (*a2)
  {
    v7 = 0xEA00000000006C61;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

uint64_t sub_2142DD27C()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142DD304()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142DD378()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142DD408(uint64_t *a1@<X8>)
{
  v2 = 0x6C61636974726576;
  if (*v1)
  {
    v2 = 0x746E6F7A69726F68;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006C61;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2142DD4FC(void *a1)
{
  v24 = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout(0);
  v2 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout(0);
  v5 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90DB10, &qword_2146F7170);
  v27 = *(v12 - 8);
  v13 = *(v27 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214328410();
  sub_2146DAA28();
  sub_2143287C0(v25, v11, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_214328704(v11, v4, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout);
    v32 = 1;
    v31 = 0;
    sub_214328464();
    v17 = v26;
    sub_2146DA388();
    if (!v17)
    {
      v30 = 2;
      sub_214328930(&qword_27C90DB28, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout);
      sub_2146DA388();
    }

    v18 = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout;
    v19 = v4;
  }

  else
  {
    sub_214328704(v11, v7, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout);
    v29 = 0;
    sub_214328464();
    v20 = v26;
    sub_2146DA388();
    if (!v20)
    {
      v28 = 1;
      sub_214328930(&qword_27C90DB30, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout);
      sub_2146DA388();
    }

    v18 = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout;
    v19 = v7;
  }

  sub_21432887C(v19, v18);
  return (*(v27 + 8))(v15, v12);
}

uint64_t sub_2142DD8E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v28 = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout(0);
  v3 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v30 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90DB38, &qword_2146F7178);
  v29 = *(v9 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v27 - v11;
  v13 = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_214328410();
  v19 = v32;
  sub_2146DAA08();
  if (!v19)
  {
    v27[0] = v16;
    v27[1] = v5;
    v21 = v29;
    v20 = v30;
    v32 = v13;
    v22 = v31;
    v36 = 0;
    sub_2143284B8();
    sub_2146DA1C8();
    v23 = v9;
    v25 = (v21 + 8);
    if (v37)
    {
      v35 = 2;
      sub_214328930(&qword_27C90DB48, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout);
      sub_2146DA1C8();
      (*v25)(v12, v23);
      v26 = v27[0];
      sub_214328704(v20, v27[0], type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout);
    }

    else
    {
      v34 = 1;
      sub_214328930(&qword_27C90DB50, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout);
      sub_2146DA1C8();
      (*v25)(v12, v23);
      v26 = v27[0];
      sub_214328704(v8, v27[0], type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout);
    }

    swift_storeEnumTagMultiPayload();
    sub_214328704(v26, v22, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout);
  }

  return __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t sub_2142DDD18()
{
  v1 = 0xD00000000000001FLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000027;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x5F746F6274616863;
  }
}

uint64_t sub_2142DDD84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21438E4B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142DDDAC(uint64_t a1)
{
  v2 = sub_21432850C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142DDDE8(uint64_t a1)
{
  v2 = sub_21432850C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142DDE24(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000021;
  }

  else
  {
    v4 = 0xD000000000000019;
  }

  if (v3)
  {
    v5 = "ap";
  }

  else
  {
    v5 = "generalPurposeCardMessage";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000021;
  }

  else
  {
    v7 = 0xD000000000000019;
  }

  if (*a2)
  {
    v8 = "generalPurposeCardMessage";
  }

  else
  {
    v8 = "ap";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_2146DA6A8();
  }

  return v10 & 1;
}

uint64_t sub_2142DDED0()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142DDF50()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142DDFBC()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142DE044(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000021;
  }

  else
  {
    v2 = 0xD000000000000019;
  }

  if (*v1)
  {
    v3 = "generalPurposeCardMessage";
  }

  else
  {
    v3 = "ap";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_2142DE134(void *a1)
{
  v24 = type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage(0);
  v2 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Chatbot.GeneralPurposeCardMessage(0);
  v5 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Chatbot.Message(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90DB58, &qword_2146F7180);
  v27 = *(v12 - 8);
  v13 = *(v27 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21432850C();
  sub_2146DAA28();
  sub_2143287C0(v25, v11, type metadata accessor for Chatbot.Message);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_214328704(v11, v4, type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage);
    v32 = 1;
    v31 = 0;
    sub_214328560();
    v17 = v26;
    sub_2146DA388();
    if (!v17)
    {
      v30 = 2;
      sub_214328930(&qword_27C90DB70, type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage);
      sub_2146DA388();
    }

    v18 = type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage;
    v19 = v4;
  }

  else
  {
    sub_214328704(v11, v7, type metadata accessor for Chatbot.GeneralPurposeCardMessage);
    v29 = 0;
    sub_214328560();
    v20 = v26;
    sub_2146DA388();
    if (!v20)
    {
      v28 = 1;
      sub_214328930(&qword_27C90DB78, type metadata accessor for Chatbot.GeneralPurposeCardMessage);
      sub_2146DA388();
    }

    v18 = type metadata accessor for Chatbot.GeneralPurposeCardMessage;
    v19 = v7;
  }

  sub_21432887C(v19, v18);
  return (*(v27 + 8))(v15, v12);
}

uint64_t sub_2142DE518@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v28 = type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage(0);
  v3 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v30 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Chatbot.GeneralPurposeCardMessage(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90DB80, &qword_2146F7188);
  v29 = *(v9 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v27 - v11;
  v13 = type metadata accessor for Chatbot.Message(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_21432850C();
  v19 = v32;
  sub_2146DAA08();
  if (!v19)
  {
    v27[0] = v16;
    v27[1] = v5;
    v21 = v29;
    v20 = v30;
    v32 = v13;
    v22 = v31;
    v36 = 0;
    sub_2143285B4();
    sub_2146DA1C8();
    v23 = v9;
    v25 = (v21 + 8);
    if (v37)
    {
      v35 = 2;
      sub_214328930(&qword_27C90DB90, type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage);
      sub_2146DA1C8();
      (*v25)(v12, v23);
      v26 = v27[0];
      sub_214328704(v20, v27[0], type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage);
    }

    else
    {
      v34 = 1;
      sub_214328930(&qword_27C90DB98, type metadata accessor for Chatbot.GeneralPurposeCardMessage);
      sub_2146DA1C8();
      (*v25)(v12, v23);
      v26 = v27[0];
      sub_214328704(v8, v27[0], type metadata accessor for Chatbot.GeneralPurposeCardMessage);
    }

    swift_storeEnumTagMultiPayload();
    sub_214328704(v26, v22, type metadata accessor for Chatbot.Message);
  }

  return __swift_destroy_boxed_opaque_existential_1(v33);
}

unint64_t sub_2142DE950()
{
  v1 = 0x61565F796C706572;
  if (*v0 != 1)
  {
    v1 = 0x565F6E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_2142DE9C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21438E638(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142DE9E8(uint64_t a1)
{
  v2 = sub_214328608();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142DEA24(uint64_t a1)
{
  v2 = sub_214328608();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142DEA60(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6E6F69746361;
  }

  else
  {
    v4 = 0x796C706572;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x6E6F69746361;
  }

  else
  {
    v6 = 0x796C706572;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

uint64_t sub_2142DEB00()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142DEB7C()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142DECB0(void *a1)
{
  v2 = v1;
  v24 = type metadata accessor for Chatbot.Action(0);
  v4 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Chatbot.Suggestion(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90DBA0, &qword_2146F7190);
  v26 = *(v11 - 8);
  v27 = v11;
  v12 = *(v26 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214328608();
  sub_2146DAA28();
  sub_2143287C0(v2, v10, type metadata accessor for Chatbot.Suggestion);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_214328704(v10, v6, type metadata accessor for Chatbot.Action);
    LOBYTE(v36) = 1;
    LOBYTE(v28) = 0;
    sub_21432865C();
    v16 = v27;
    v17 = v25;
    sub_2146DA388();
    if (!v17)
    {
      LOBYTE(v36) = 2;
      sub_214328930(&qword_27C90D848, type metadata accessor for Chatbot.Action);
      sub_2146DA388();
    }

    sub_21432887C(v6, type metadata accessor for Chatbot.Action);
    return (*(v26 + 8))(v14, v16);
  }

  else
  {
    v19 = *(v10 + 5);
    v40 = *(v10 + 4);
    v41 = v19;
    v42 = *(v10 + 6);
    v43 = v10[112];
    v20 = *(v10 + 1);
    v36 = *v10;
    v37 = v20;
    v21 = *(v10 + 3);
    v38 = *(v10 + 2);
    v39 = v21;
    LOBYTE(v28) = 0;
    v44 = 0;
    sub_21432865C();
    v22 = v27;
    v23 = v25;
    sub_2146DA388();
    if (!v23)
    {
      v32 = v40;
      v33 = v41;
      v34 = v42;
      v35 = v43;
      v28 = v36;
      v29 = v37;
      v30 = v38;
      v31 = v39;
      v44 = 1;
      sub_2143271FC();
      sub_2146DA388();
    }

    (*(v26 + 8))(v14, v22);
    return sub_2143271A8(&v36);
  }
}

uint64_t sub_2142DF068@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for Chatbot.Action(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90DBB8, &qword_2146F7198);
  v27 = *(v7 - 8);
  v8 = *(v27 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Chatbot.Suggestion(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v15 = a1[4];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_214328608();
  v17 = v29;
  sub_2146DAA08();
  if (!v17)
  {
    v29 = v3;
    v26 = v14;
    v18 = v27;
    v19 = v28;
    v39 = 0;
    sub_2143286B0();
    sub_2146DA1C8();
    if (v31)
    {
      LOBYTE(v31) = 2;
      sub_214328930(&qword_27C90D868, type metadata accessor for Chatbot.Action);
      sub_2146DA1C8();
      (*(v18 + 8))(v10, v7);
      v21 = v26;
      sub_214328704(v6, v26, type metadata accessor for Chatbot.Action);
      swift_storeEnumTagMultiPayload();
      v22 = v19;
    }

    else
    {
      v39 = 1;
      sub_2143272A4();
      sub_2146DA1C8();
      (*(v18 + 8))(v10, v7);
      v22 = v19;
      v23 = v36;
      v21 = v26;
      *(v26 + 4) = v35;
      *(v21 + 80) = v23;
      *(v21 + 96) = v37;
      *(v21 + 112) = v38;
      v24 = v32;
      *v21 = v31;
      *(v21 + 16) = v24;
      v25 = v34;
      *(v21 + 32) = v33;
      *(v21 + 48) = v25;
      swift_storeEnumTagMultiPayload();
    }

    sub_214328704(v21, v22, type metadata accessor for Chatbot.Suggestion);
  }

  return __swift_destroy_boxed_opaque_existential_1(v30);
}

unint64_t sub_2142DF43C()
{
  v1 = 0x5F6567617373656DLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_2142DF4B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21438E7B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142DF4D8(uint64_t a1)
{
  v2 = sub_21432876C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142DF514(uint64_t a1)
{
  v2 = sub_21432876C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142DF550(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6974736567677573;
  }

  else
  {
    v4 = 0x6567617373656DLL;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xEB00000000736E6FLL;
  }

  if (*a2)
  {
    v6 = 0x6974736567677573;
  }

  else
  {
    v6 = 0x6567617373656DLL;
  }

  if (*a2)
  {
    v7 = 0xEB00000000736E6FLL;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

uint64_t sub_2142DF600()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142DF68C()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142DF704()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142DF798(uint64_t *a1@<X8>)
{
  v2 = 0x6567617373656DLL;
  if (*v1)
  {
    v2 = 0x6974736567677573;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000736E6FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2142DF890(void *a1)
{
  v2 = v1;
  v20 = type metadata accessor for Chatbot.Message(0);
  v4 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Chatbot.RootMessage(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90DBC8, &qword_2146F71A0);
  v22 = *(v11 - 8);
  v12 = *(v22 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21432876C();
  sub_2146DAA28();
  sub_2143287C0(v2, v10, type metadata accessor for Chatbot.RootMessage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v10;
    v28 = 1;
    v27 = 0;
    sub_214328828();
    v17 = v21;
    sub_2146DA388();
    if (!v17)
    {
      v23 = v16;
      v26 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C368, &qword_2146F6BF8);
      sub_21431C77C();
      sub_2146DA388();
    }

    (*(v22 + 8))(v14, v11);
  }

  else
  {
    sub_214328704(v10, v6, type metadata accessor for Chatbot.Message);
    v25 = 0;
    sub_214328828();
    v19 = v21;
    sub_2146DA388();
    if (!v19)
    {
      v24 = 1;
      sub_214328930(&qword_27C90DBE0, type metadata accessor for Chatbot.Message);
      sub_2146DA388();
    }

    sub_21432887C(v6, type metadata accessor for Chatbot.Message);
    return (*(v22 + 8))(v14, v11);
  }
}

uint64_t sub_2142DFC08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for Chatbot.Message(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90DBE8, &qword_2146F71A8);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = type metadata accessor for Chatbot.RootMessage(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_21432876C();
  v17 = v26;
  sub_2146DAA08();
  if (!v17)
  {
    v23 = v14;
    v26 = v11;
    v18 = v24;
    v19 = v25;
    v31 = 0;
    sub_2143288DC();
    sub_2146DA1C8();
    if (v32)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C368, &qword_2146F6BF8);
      v30 = 2;
      sub_21431C39C();
      sub_2146DA1C8();
      (*(v18 + 8))(v10, v7);
      v21 = v19;
      v22 = v23;
      *v23 = v28;
    }

    else
    {
      v29 = 1;
      sub_214328930(qword_27C90DBF8, type metadata accessor for Chatbot.Message);
      sub_2146DA1C8();
      (*(v18 + 8))(v10, v7);
      v22 = v23;
      sub_214328704(v6, v23, type metadata accessor for Chatbot.Message);
      v21 = v19;
    }

    swift_storeEnumTagMultiPayload();
    sub_214328704(v22, v21, type metadata accessor for Chatbot.RootMessage);
  }

  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t sub_2142E091C(unint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!(a1 >> 62))
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_12:

    return MEMORY[0x277D84F90];
  }

  v10 = sub_2146DA028();
  if (!v10)
  {
    goto LABEL_12;
  }

LABEL_3:
  v21 = MEMORY[0x277D84F90];
  result = sub_2146D9FB8();
  if (v10 < 0)
  {
    __break(1u);
  }

  else
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = 0;
      do
      {
        v13 = v12 + 1;
        v14 = MEMORY[0x216054E00]();
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v15 = swift_allocObject();
        *(v15 + 16) = a4;
        *(v15 + 24) = v14;
        sub_2146D9F98();
        v16 = *(v21 + 16);
        sub_2146D9FC8();
        sub_2146D9FD8();
        sub_2146D9FA8();
        v12 = v13;
      }

      while (v10 != v13);
    }

    else
    {
      v17 = 32;
      do
      {
        v18 = *(a1 + v17);
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v19 = swift_allocObject();
        *(v19 + 16) = a5;
        *(v19 + 24) = v18;

        sub_2146D9F98();
        v20 = *(v21 + 16);
        sub_2146D9FC8();
        sub_2146D9FD8();
        sub_2146D9FA8();
        v17 += 8;
        --v10;
      }

      while (v10);
    }

    return v21;
  }

  return result;
}

uint64_t sub_2142E0AD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v1 = swift_allocObject();
  v2 = swift_allocObject();
  v2[2] = sub_2143C945C;
  v2[3] = 0;
  v2[4] = 1;
  v2[5] = sub_21469B540;
  v2[6] = 0;
  *(v1 + 16) = sub_21438F530;
  *(v1 + 24) = v2;
  *(inited + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v3 + 16) = sub_21438F534;
  *(v3 + 24) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21438F680;
  *(v5 + 24) = v3;
  *(inited + 40) = v5;
  v6 = sub_2142E091C(inited, &qword_27C904180, &qword_2146EAAE0, sub_21438F6E0, sub_21438F6E0);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21438F70C;
  *(v7 + 24) = v8;
  return v7;
}

uint64_t sub_2142E0CB4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v1 = swift_allocObject();
  v2 = swift_allocObject();
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = sub_2143C945C;
  v2[5] = sub_21469B540;
  v2[6] = 0;
  *(v1 + 16) = sub_2140597F4;
  *(v1 + 24) = v2;
  *(inited + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v3 + 16) = sub_21438EDCC;
  *(v3 + 24) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21438F680;
  *(v5 + 24) = v3;
  *(inited + 40) = v5;
  v6 = sub_2142E091C(inited, &qword_27C904180, &qword_2146EAAE0, sub_21438F6E0, sub_21438F6E0);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21438EDD4;
  *(v7 + 24) = v8;
  return v7;
}

id sub_2142E0E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2146D9588();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_2146D8838();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_2142E0F88(void *a1, uint64_t a2, unint64_t *a3)
{
  v3 = a1[1];
  if (v3)
  {
    v4 = *a3;
    v9[0] = *a1;
    v9[1] = v3;
    MEMORY[0x28223BE20](a1);
    v7[2] = v9;
    v8 = 2;

    v5 = sub_2140479E4(sub_21438ED20, v7, v4);
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

uint64_t sub_2142E1044(uint64_t *a1, void *a2, char a3)
{
  v3 = *a1;
  v4 = a2[1];
  v9[0] = *a2;
  v9[1] = v4;
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v8 = a3;
  return v5(v9, &v8) & 1;
}

uint64_t sub_2142E1098(void *a1, char *a2, uint64_t *a3)
{
  v3 = a1[1];
  v4 = *a2;
  v5 = *a3;
  v10[0] = *a1;
  v10[1] = v3;
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  v9 = v4;
  return v6(v10, &v9) & 1;
}

unint64_t sub_2142E11A8()
{
  result = qword_280B30D90;
  if (!qword_280B30D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30D90);
  }

  return result;
}

unint64_t sub_2142E11FC()
{
  result = qword_280B2FE38;
  if (!qword_280B2FE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C904798, qword_21473CFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2FE38);
  }

  return result;
}

unint64_t sub_2142E1278()
{
  result = qword_280B30B78;
  if (!qword_280B30B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905680, &unk_2146F3CE0);
    sub_21406116C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30B78);
  }

  return result;
}

unint64_t sub_2142E12FC()
{
  result = qword_280B2FE68;
  if (!qword_280B2FE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C904008, &qword_2146EC050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2FE68);
  }

  return result;
}

unint64_t sub_2142E1378()
{
  result = qword_280B2FE48;
  if (!qword_280B2FE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905688, &qword_2146F3CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2FE48);
  }

  return result;
}

unint64_t sub_2142E13F4()
{
  result = qword_280B2E920;
  if (!qword_280B2E920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905690, &qword_2146F3CF8);
    sub_2142E1478();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2E920);
  }

  return result;
}

unint64_t sub_2142E1478()
{
  result = qword_280B2E930;
  if (!qword_280B2E930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2E930);
  }

  return result;
}

unint64_t sub_2142E14CC()
{
  result = qword_280B2E330;
  if (!qword_280B2E330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905698, &qword_2146F3D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2E330);
  }

  return result;
}

unint64_t sub_2142E1548()
{
  result = qword_280B2FE58;
  if (!qword_280B2FE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C904000, &unk_2146EA780);
    sub_2142E15CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2FE58);
  }

  return result;
}

unint64_t sub_2142E15CC()
{
  result = qword_280B2FE60;
  if (!qword_280B2FE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C904F20, &qword_2146EE8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2FE60);
  }

  return result;
}

unint64_t sub_2142E1648()
{
  result = qword_280B2E478;
  if (!qword_280B2E478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9056A0, &qword_2146F3D08);
    sub_2142E16CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2E478);
  }

  return result;
}

unint64_t sub_2142E16CC()
{
  result = qword_280B30D70;
  if (!qword_280B30D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30D70);
  }

  return result;
}

unint64_t sub_2142E1720()
{
  result = qword_280B2EB40;
  if (!qword_280B2EB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9056A8, &qword_2146F3D10);
    sub_2142E17A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2EB40);
  }

  return result;
}

unint64_t sub_2142E17A4()
{
  result = qword_280B2EB48[0];
  if (!qword_280B2EB48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B2EB48);
  }

  return result;
}

unint64_t sub_2142E17F8()
{
  result = qword_280B2E410;
  if (!qword_280B2E410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9056B0, &qword_2146F3D18);
    sub_2142E187C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2E410);
  }

  return result;
}

unint64_t sub_2142E187C()
{
  result = qword_280B2EA58;
  if (!qword_280B2EA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2EA58);
  }

  return result;
}

unint64_t sub_2142E18D0()
{
  result = qword_280B2FDF8;
  if (!qword_280B2FDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9056B8, &qword_2146F3D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2FDF8);
  }

  return result;
}

unint64_t sub_2142E194C()
{
  result = qword_280B2E3F0;
  if (!qword_280B2E3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9056C0, &qword_2146F3D28);
    sub_2142E19D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2E3F0);
  }

  return result;
}

unint64_t sub_2142E19D0()
{
  result = qword_280B2E950;
  if (!qword_280B2E950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2E950);
  }

  return result;
}

unint64_t sub_2142E1A24()
{
  result = qword_280B2E400;
  if (!qword_280B2E400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9056C8, &qword_2146F3D30);
    sub_2142E1AA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2E400);
  }

  return result;
}

unint64_t sub_2142E1AA8()
{
  result = qword_280B2E990;
  if (!qword_280B2E990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2E990);
  }

  return result;
}

unint64_t sub_2142E1AFC()
{
  result = qword_280B2E3E0;
  if (!qword_280B2E3E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9056D0, &qword_2146F3D38);
    sub_2142E1B80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2E3E0);
  }

  return result;
}

unint64_t sub_2142E1B80()
{
  result = qword_280B2E940;
  if (!qword_280B2E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2E940);
  }

  return result;
}

unint64_t sub_2142E1C30()
{
  result = qword_280B30B90;
  if (!qword_280B30B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C904798, qword_21473CFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30B90);
  }

  return result;
}

unint64_t sub_2142E1CAC()
{
  result = qword_280B30DA0;
  if (!qword_280B30DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905680, &unk_2146F3CE0);
    sub_214061684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30DA0);
  }

  return result;
}

unint64_t sub_2142E1D30()
{
  result = qword_280B2FE50;
  if (!qword_280B2FE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905688, &qword_2146F3CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2FE50);
  }

  return result;
}

unint64_t sub_2142E1DAC()
{
  result = qword_280B2E928;
  if (!qword_280B2E928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905690, &qword_2146F3CF8);
    sub_2142E1E30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2E928);
  }

  return result;
}

unint64_t sub_2142E1E30()
{
  result = qword_280B2E938;
  if (!qword_280B2E938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2E938);
  }

  return result;
}

unint64_t sub_2142E1E84()
{
  result = qword_280B2FE08;
  if (!qword_280B2FE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905698, &qword_2146F3D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2FE08);
  }

  return result;
}

unint64_t sub_2142E1F00()
{
  result = qword_280B30BA0;
  if (!qword_280B30BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C904F20, &qword_2146EE8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30BA0);
  }

  return result;
}

unint64_t sub_2142E1F7C()
{
  result = qword_280B2E480;
  if (!qword_280B2E480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9056A0, &qword_2146F3D08);
    sub_2142E2000();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2E480);
  }

  return result;
}

unint64_t sub_2142E2000()
{
  result = qword_280B30D78;
  if (!qword_280B30D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30D78);
  }

  return result;
}

unint64_t sub_2142E2054()
{
  result = qword_280B301A0;
  if (!qword_280B301A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9056A8, &qword_2146F3D10);
    sub_2142E20D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B301A0);
  }

  return result;
}

unint64_t sub_2142E20D8()
{
  result = qword_280B301A8;
  if (!qword_280B301A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B301A8);
  }

  return result;
}

unint64_t sub_2142E212C()
{
  result = qword_280B2E418;
  if (!qword_280B2E418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9056B0, &qword_2146F3D18);
    sub_2142E21B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2E418);
  }

  return result;
}

unint64_t sub_2142E21B0()
{
  result = qword_280B2EA60;
  if (!qword_280B2EA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2EA60);
  }

  return result;
}

unint64_t sub_2142E2204()
{
  result = qword_280B2FE00;
  if (!qword_280B2FE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9056B8, &qword_2146F3D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2FE00);
  }

  return result;
}

unint64_t sub_2142E2280()
{
  result = qword_280B2E3F8;
  if (!qword_280B2E3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9056C0, &qword_2146F3D28);
    sub_2142E2304();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2E3F8);
  }

  return result;
}

unint64_t sub_2142E2304()
{
  result = qword_280B2E958;
  if (!qword_280B2E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2E958);
  }

  return result;
}

unint64_t sub_2142E2358()
{
  result = qword_280B2E408;
  if (!qword_280B2E408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9056C8, &qword_2146F3D30);
    sub_2142E23DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2E408);
  }

  return result;
}

unint64_t sub_2142E23DC()
{
  result = qword_280B2E998;
  if (!qword_280B2E998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2E998);
  }

  return result;
}

unint64_t sub_2142E2430()
{
  result = qword_280B2E3E8;
  if (!qword_280B2E3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9056D0, &qword_2146F3D38);
    sub_2142E24B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2E3E8);
  }

  return result;
}

unint64_t sub_2142E24B4()
{
  result = qword_280B2E948;
  if (!qword_280B2E948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2E948);
  }

  return result;
}

unint64_t sub_2142E2508()
{
  result = qword_280B30CE8[0];
  if (!qword_280B30CE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B30CE8);
  }

  return result;
}

unint64_t sub_2142E255C()
{
  result = qword_27C9056F8;
  if (!qword_27C9056F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9056F8);
  }

  return result;
}

unint64_t sub_2142E25B0()
{
  result = qword_27C905710;
  if (!qword_27C905710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905710);
  }

  return result;
}

unint64_t sub_2142E2604()
{
  result = qword_27C905728;
  if (!qword_27C905728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905728);
  }

  return result;
}

unint64_t sub_2142E2658()
{
  result = qword_27C905740;
  if (!qword_27C905740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905740);
  }

  return result;
}

unint64_t sub_2142E26AC()
{
  result = qword_27C905758;
  if (!qword_27C905758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905758);
  }

  return result;
}

unint64_t sub_2142E2700()
{
  result = qword_27C905770;
  if (!qword_27C905770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905770);
  }

  return result;
}

unint64_t sub_2142E2754()
{
  result = qword_27C905788;
  if (!qword_27C905788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905788);
  }

  return result;
}

unint64_t sub_2142E27A8()
{
  result = qword_27C905790;
  if (!qword_27C905790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C9131A0, &unk_2146E9D10);
    sub_214328930(&qword_280B2FDD8, MEMORY[0x277CC9260]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905790);
  }

  return result;
}

unint64_t sub_2142E285C()
{
  result = qword_27C905798;
  if (!qword_27C905798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9041D8, &qword_2146ED5C0);
    sub_214328930(&qword_27C9057A0, type metadata accessor for CloudKitSharingToken);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905798);
  }

  return result;
}

unint64_t sub_2142E2910()
{
  result = qword_27C9057B0;
  if (!qword_27C9057B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C9131A0, &unk_2146E9D10);
    sub_214328930(&qword_280B2FDE0, MEMORY[0x277CC9260]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9057B0);
  }

  return result;
}

unint64_t sub_2142E29C4()
{
  result = qword_27C9057B8;
  if (!qword_27C9057B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9041D8, &qword_2146ED5C0);
    sub_214328930(&qword_27C9057C0, type metadata accessor for CloudKitSharingToken);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9057B8);
  }

  return result;
}

unint64_t sub_2142E2A78()
{
  result = qword_27C9057D0;
  if (!qword_27C9057D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9057D0);
  }

  return result;
}

unint64_t sub_2142E2ACC()
{
  result = qword_27C9057E0;
  if (!qword_27C9057E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9057D8, &qword_2146F3DD8);
    sub_214099EE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9057E0);
  }

  return result;
}

unint64_t sub_2142E2B50()
{
  result = qword_27C9057F0;
  if (!qword_27C9057F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9057E8, &qword_2146F3DE0);
    sub_214099FB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9057F0);
  }

  return result;
}

unint64_t sub_2142E2BD4()
{
  result = qword_27C905800;
  if (!qword_27C905800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9057F8, &qword_2146F3DE8);
    sub_21409A0CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905800);
  }

  return result;
}

unint64_t sub_2142E2C58()
{
  result = qword_27C905808;
  if (!qword_27C905808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905280, &qword_2146F1C60);
    sub_214328930(&qword_27C905288, type metadata accessor for AccountsRepresentativeCloudShareInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905808);
  }

  return result;
}

unint64_t sub_2142E2D0C()
{
  result = qword_27C905818;
  if (!qword_27C905818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9057D8, &qword_2146F3DD8);
    sub_214068DE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905818);
  }

  return result;
}

unint64_t sub_2142E2D90()
{
  result = qword_27C905820;
  if (!qword_27C905820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9057E8, &qword_2146F3DE0);
    sub_214068E38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905820);
  }

  return result;
}

unint64_t sub_2142E2E14()
{
  result = qword_27C905828;
  if (!qword_27C905828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9057F8, &qword_2146F3DE8);
    sub_214068E8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905828);
  }

  return result;
}

unint64_t sub_2142E2E98()
{
  result = qword_27C905830;
  if (!qword_27C905830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905280, &qword_2146F1C60);
    sub_214328930(&qword_27C905290, type metadata accessor for AccountsRepresentativeCloudShareInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905830);
  }

  return result;
}

unint64_t sub_2142E2F4C()
{
  result = qword_280B30298;
  if (!qword_280B30298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30298);
  }

  return result;
}

unint64_t sub_2142E2FA0()
{
  result = qword_27C905850;
  if (!qword_27C905850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905850);
  }

  return result;
}

BOOL sub_2142E3004(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911C78, &qword_2147319F8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v7 = *a1;
  v6 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  sub_2146D8DB8();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911C80, &unk_214731A00);
  v9 = (*(*(v8 - 8) + 48))(v5, 1, v8) != 1;
  sub_213FB2DF4(v5, &qword_27C911C78, &qword_2147319F8);
  return v9;
}

uint64_t sub_2142E3134(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = sub_2146D8918();
  if (v5)
  {
    v13[2] = v4;
    v13[3] = v5;
    sub_214069AD8();
    v6 = sub_2146D9DD8();
    v8 = v7;

    v13[0] = v6;
    v13[1] = v8;
    MEMORY[0x28223BE20](v9);
    v12[2] = v13;
    v10 = sub_21441C084(sub_21406D1FC, v12, v3);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

BOOL sub_2142E3214(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v6 = *a1;
  v7 = a1[1];
  sub_2146D8B18();
  v8 = sub_2146D8B88();
  v9 = (*(*(v8 - 8) + 48))(v5, 1, v8) != 1;
  sub_213FB2DF4(v5, &unk_27C904F30, &unk_2146EFA20);
  return v9;
}

uint64_t sub_2142E32F8(uint64_t *a1, char *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a3 + 16);
  v7[0] = *a3;
  v7[1] = v5;
  v8 = *(a3 + 32);
  return sub_2145C62F0(v3, v4, *a2, v7) & 1;
}

unint64_t sub_2142E3370()
{
  result = qword_280B301D0;
  if (!qword_280B301D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B301D0);
  }

  return result;
}

unint64_t sub_2142E3418()
{
  result = qword_27C905878;
  if (!qword_27C905878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905878);
  }

  return result;
}

unint64_t sub_2142E351C()
{
  result = qword_27C905890;
  if (!qword_27C905890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905890);
  }

  return result;
}

unint64_t sub_2142E3570()
{
  result = qword_280B2E338;
  if (!qword_280B2E338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905898, &unk_2146F3E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2E338);
  }

  return result;
}

unint64_t sub_2142E35EC()
{
  result = qword_280B2E3A0;
  if (!qword_280B2E3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9058A0, &unk_2147379A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2E3A0);
  }

  return result;
}

unint64_t sub_2142E3668()
{
  result = qword_27C9058B0;
  if (!qword_27C9058B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9058A8, &qword_2146F3E50);
    sub_214328930(&qword_27C9058B8, type metadata accessor for CGPoint);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9058B0);
  }

  return result;
}

unint64_t sub_2142E3778()
{
  result = qword_280B2E340;
  if (!qword_280B2E340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905898, &unk_2146F3E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2E340);
  }

  return result;
}

unint64_t sub_2142E37F4()
{
  result = qword_280B2E3A8;
  if (!qword_280B2E3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9058A0, &unk_2147379A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2E3A8);
  }

  return result;
}

unint64_t sub_2142E3870()
{
  result = qword_27C9058C8;
  if (!qword_27C9058C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9058A8, &qword_2146F3E50);
    sub_214328930(&qword_27C9058D0, type metadata accessor for CGPoint);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9058C8);
  }

  return result;
}

unint64_t sub_2142E3924()
{
  result = qword_280B304D0;
  if (!qword_280B304D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B304D0);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_2142E39C8()
{
  result = qword_280B2F288;
  if (!qword_280B2F288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2F288);
  }

  return result;
}

unint64_t sub_2142E3A1C()
{
  result = qword_280B302B0;
  if (!qword_280B302B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B302B0);
  }

  return result;
}

void sub_2142E3A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, unsigned __int8 a40)
{
  v41 = a40 >> 5;
  if (v41 <= 1)
  {
    if (!v41)
    {
LABEL_13:

      return;
    }

    sub_213FDC6D0(a28, a29);
  }

  else
  {
    if (v41 != 2)
    {
      if (v41 == 3)
      {
      }

      else
      {
        if (v41 != 4)
        {
          return;
        }

        sub_213FDC6D0(a3, a4);
      }

      goto LABEL_13;
    }

    sub_213FDC6D0(a18, a19);

    a33 = a23;
    a34 = a24;
  }

  sub_213FDC6D0(a33, a34);
}

unint64_t sub_2142E3C9C()
{
  result = qword_280B302B8;
  if (!qword_280B302B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B302B8);
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x216056AC0);
  }

  return result;
}

unint64_t sub_2142E3D40()
{
  result = qword_280B30B60;
  if (!qword_280B30B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30B60);
  }

  return result;
}

unint64_t sub_2142E3D94()
{
  result = qword_280B30B68;
  if (!qword_280B30B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30B68);
  }

  return result;
}

unint64_t sub_2142E3DE8()
{
  result = qword_280B30188;
  if (!qword_280B30188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30188);
  }

  return result;
}

unint64_t sub_2142E3E3C()
{
  result = qword_280B30190;
  if (!qword_280B30190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30190);
  }

  return result;
}

unint64_t sub_2142E3E90()
{
  result = qword_280B301F8;
  if (!qword_280B301F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B301F8);
  }

  return result;
}

unint64_t sub_2142E3EE4()
{
  result = qword_280B30200;
  if (!qword_280B30200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30200);
  }

  return result;
}

unint64_t sub_2142E3F38()
{
  result = qword_280B303A8;
  if (!qword_280B303A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B303A8);
  }

  return result;
}

unint64_t sub_2142E3F8C()
{
  result = qword_280B303B0;
  if (!qword_280B303B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B303B0);
  }

  return result;
}

unint64_t sub_2142E3FE0()
{
  result = qword_280B304F8;
  if (!qword_280B304F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B304F8);
  }

  return result;
}

unint64_t sub_2142E4034()
{
  result = qword_280B30500;
  if (!qword_280B30500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30500);
  }

  return result;
}

unint64_t sub_2142E4088()
{
  result = qword_280B303D0;
  if (!qword_280B303D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B303D0);
  }

  return result;
}

unint64_t sub_2142E40DC()
{
  result = qword_280B303D8;
  if (!qword_280B303D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B303D8);
  }

  return result;
}

unint64_t sub_2142E4130()
{
  result = qword_280B30540;
  if (!qword_280B30540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30540);
  }

  return result;
}

unint64_t sub_2142E4184()
{
  result = qword_280B30548;
  if (!qword_280B30548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30548);
  }

  return result;
}

unint64_t sub_2142E41D8()
{
  result = qword_280B30050;
  if (!qword_280B30050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30050);
  }

  return result;
}

unint64_t sub_2142E422C()
{
  result = qword_280B30058;
  if (!qword_280B30058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30058);
  }

  return result;
}

unint64_t sub_2142E4280()
{
  result = qword_280B2FFA0;
  if (!qword_280B2FFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2FFA0);
  }

  return result;
}

unint64_t sub_2142E42D4()
{
  result = qword_280B2FFA8;
  if (!qword_280B2FFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2FFA8);
  }

  return result;
}

unint64_t sub_2142E4328()
{
  result = qword_280B30358;
  if (!qword_280B30358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30358);
  }

  return result;
}

unint64_t sub_2142E437C()
{
  result = qword_280B30370;
  if (!qword_280B30370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30370);
  }

  return result;
}

unint64_t sub_2142E43D0()
{
  result = qword_280B30078;
  if (!qword_280B30078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30078);
  }

  return result;
}

unint64_t sub_2142E4424()
{
  result = qword_280B30080;
  if (!qword_280B30080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30080);
  }

  return result;
}

unint64_t sub_2142E4478()
{
  result = qword_280B2F290;
  if (!qword_280B2F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2F290);
  }

  return result;
}

unint64_t sub_2142E4520()
{
  result = qword_280B302C0;
  if (!qword_280B302C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B302C0);
  }

  return result;
}

unint64_t sub_2142E4574()
{
  result = qword_280B30B70;
  if (!qword_280B30B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30B70);
  }

  return result;
}

unint64_t sub_2142E45C8()
{
  result = qword_280B30198;
  if (!qword_280B30198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30198);
  }

  return result;
}

unint64_t sub_2142E461C()
{
  result = qword_280B30208[0];
  if (!qword_280B30208[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B30208);
  }

  return result;
}

unint64_t sub_2142E4670()
{
  result = qword_280B303B8;
  if (!qword_280B303B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B303B8);
  }

  return result;
}

unint64_t sub_2142E46C4()
{
  result = qword_280B30508;
  if (!qword_280B30508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30508);
  }

  return result;
}

unint64_t sub_2142E4718()
{
  result = qword_280B303E0;
  if (!qword_280B303E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B303E0);
  }

  return result;
}

unint64_t sub_2142E476C()
{
  result = qword_280B30550;
  if (!qword_280B30550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30550);
  }

  return result;
}

unint64_t sub_2142E47C0()
{
  result = qword_280B30060;
  if (!qword_280B30060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30060);
  }

  return result;
}

unint64_t sub_2142E4814()
{
  result = qword_280B2FFB0[0];
  if (!qword_280B2FFB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B2FFB0);
  }

  return result;
}

unint64_t sub_2142E4868()
{
  result = qword_280B30378;
  if (!qword_280B30378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30378);
  }

  return result;
}

unint64_t sub_2142E48BC()
{
  result = qword_280B30088;
  if (!qword_280B30088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30088);
  }

  return result;
}

unint64_t sub_2142E4964()
{
  result = qword_280B308C0;
  if (!qword_280B308C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B308C0);
  }

  return result;
}

unint64_t sub_2142E49B8()
{
  result = qword_280B2F6C0;
  if (!qword_280B2F6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9058F0, &qword_2146F3E80);
    sub_2142E4A3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2F6C0);
  }

  return result;
}

unint64_t sub_2142E4A3C()
{
  result = qword_280B2F6D0;
  if (!qword_280B2F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2F6D0);
  }

  return result;
}

unint64_t sub_2142E4AEC()
{
  result = qword_280B2F6C8;
  if (!qword_280B2F6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9058F0, &qword_2146F3E80);
    sub_2142E4B70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2F6C8);
  }

  return result;
}

unint64_t sub_2142E4B70()
{
  result = qword_280B2F6D8;
  if (!qword_280B2F6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2F6D8);
  }

  return result;
}

uint64_t sub_2142E4BC4(uint64_t *a1, char *a2, unint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v8 = *a1;
  v6[2] = &v8;
  v7 = v3;
  return sub_2140479E4(sub_21438EDD8, v6, v4) & 1;
}

uint64_t sub_2142E4C28(uint64_t *a1, char *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v8 = *a3;
  v6[2] = &v8;
  v7 = v4;
  return sub_214042458(sub_21438ECC4, v6, v3) & 1;
}

BOOL sub_2142E4CA8(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *a3;
  return v5 >= sub_2146D96A8();
}

uint64_t sub_2142E4CDC(void *a1, uint64_t a2, void *a3)
{
  if (*a1 == *a3 && a1[1] == a3[1])
  {
    return 1;
  }

  else
  {
    return sub_2146DA6A8();
  }
}

unint64_t sub_2142E4DF4()
{
  result = qword_27C905908;
  if (!qword_27C905908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905908);
  }

  return result;
}

unint64_t sub_2142E4E48()
{
  result = qword_27C905920;
  if (!qword_27C905920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905920);
  }

  return result;
}

unint64_t sub_2142E4E9C()
{
  result = qword_280B2E460;
  if (!qword_280B2E460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905928, &qword_2146F3EC0);
    sub_2142E4F20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2E460);
  }

  return result;
}

unint64_t sub_2142E4F20()
{
  result = qword_280B2F6B0;
  if (!qword_280B2F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2F6B0);
  }

  return result;
}

unint64_t sub_2142E4F74()
{
  result = qword_280B2F2D8;
  if (!qword_280B2F2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905930, &qword_2146F3EC8);
    sub_2142E4FF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2F2D8);
  }

  return result;
}

unint64_t sub_2142E4FF8()
{
  result = qword_280B2F2F0;
  if (!qword_280B2F2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2F2F0);
  }

  return result;
}

unint64_t sub_2142E504C()
{
  result = qword_27C905940;
  if (!qword_27C905940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905938, &unk_2146F3ED0);
    sub_2142E50D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905940);
  }

  return result;
}

unint64_t sub_2142E50D0()
{
  result = qword_280B2E380;
  if (!qword_280B2E380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C904770, &qword_2146ED4C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2E380);
  }

  return result;
}

unint64_t sub_2142E514C()
{
  result = qword_27C905948;
  if (!qword_27C905948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905948);
  }

  return result;
}

unint64_t sub_2142E51A0()
{
  result = qword_280B2E468;
  if (!qword_280B2E468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905928, &qword_2146F3EC0);
    sub_2142E5224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2E468);
  }

  return result;
}

unint64_t sub_2142E5224()
{
  result = qword_280B2F6B8;
  if (!qword_280B2F6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2F6B8);
  }

  return result;
}

unint64_t sub_2142E5278()
{
  result = qword_280B2F2E0;
  if (!qword_280B2F2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905930, &qword_2146F3EC8);
    sub_2142E52FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2F2E0);
  }

  return result;
}

unint64_t sub_2142E52FC()
{
  result = qword_280B2F2F8[0];
  if (!qword_280B2F2F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B2F2F8);
  }

  return result;
}

unint64_t sub_2142E5350()
{
  result = qword_27C905958;
  if (!qword_27C905958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905938, &unk_2146F3ED0);
    sub_2142E53D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905958);
  }

  return result;
}

unint64_t sub_2142E53D4()
{
  result = qword_280B2E388;
  if (!qword_280B2E388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C904770, &qword_2146ED4C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2E388);
  }

  return result;
}

unint64_t sub_2142E5450()
{
  result = qword_27C905960;
  if (!qword_27C905960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905960);
  }

  return result;
}

unint64_t sub_2142E54F8()
{
  result = qword_27C905970;
  if (!qword_27C905970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905970);
  }

  return result;
}

unint64_t sub_2142E554C()
{
  result = qword_27C905980;
  if (!qword_27C905980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905978, &qword_2146F3EF0);
    sub_21406116C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905980);
  }

  return result;
}

unint64_t sub_2142E562C()
{
  result = qword_27C905990;
  if (!qword_27C905990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905978, &qword_2146F3EF0);
    sub_214061684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905990);
  }

  return result;
}

BOOL sub_2142E56B0(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v1 + 16);
  return v4 >= sub_2146D96A8();
}

unint64_t sub_2142E5738()
{
  result = qword_27C9059A0;
  if (!qword_27C9059A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9059A0);
  }

  return result;
}

unint64_t sub_2142E578C()
{
  result = qword_27C9059A8;
  if (!qword_27C9059A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9059A8);
  }

  return result;
}

unint64_t sub_2142E57E0()
{
  result = qword_27C9059B8;
  if (!qword_27C9059B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9059B0, &qword_2146F3F08);
    sub_2142E5864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9059B8);
  }

  return result;
}

unint64_t sub_2142E5864()
{
  result = qword_27C9059C0;
  if (!qword_27C9059C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9059C0);
  }

  return result;
}

uint64_t sub_2142E58B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t sub_2142E5928()
{
  result = qword_27C9059D0;
  if (!qword_27C9059D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9059D0);
  }

  return result;
}

uint64_t sub_2142E597C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t sub_2142E5990()
{
  result = qword_27C9059D8;
  if (!qword_27C9059D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9059B0, &qword_2146F3F08);
    sub_2142E5A14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9059D8);
  }

  return result;
}

unint64_t sub_2142E5A14()
{
  result = qword_27C9059E0;
  if (!qword_27C9059E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9059E0);
  }

  return result;
}

uint64_t sub_2142E5A68(uint64_t result)
{
  if (result != 1)
  {
    return sub_214031CA0(result);
  }

  return result;
}

unint64_t sub_2142E5ACC()
{
  result = qword_27C9059F0;
  if (!qword_27C9059F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9059F0);
  }

  return result;
}

unint64_t sub_2142E5BD0()
{
  result = qword_27C905A08;
  if (!qword_27C905A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905A08);
  }

  return result;
}

unint64_t sub_2142E5C24()
{
  result = qword_27C905A10;
  if (!qword_27C905A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905A10);
  }

  return result;
}

unint64_t sub_2142E5CD4()
{
  result = qword_27C905A20;
  if (!qword_27C905A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905A20);
  }

  return result;
}

unint64_t sub_2142E5D28()
{
  result = qword_27C905A30;
  if (!qword_27C905A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905A30);
  }

  return result;
}

unint64_t sub_2142E5D7C()
{
  result = qword_27C905A48;
  if (!qword_27C905A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905A48);
  }

  return result;
}

unint64_t sub_2142E5DD0()
{
  result = qword_27C905A60;
  if (!qword_27C905A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905A60);
  }

  return result;
}

unint64_t sub_2142E5E80()
{
  result = qword_27C905A78;
  if (!qword_27C905A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905A78);
  }

  return result;
}

unint64_t sub_2142E5F28()
{
  result = qword_27C905A90;
  if (!qword_27C905A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905A90);
  }

  return result;
}

unint64_t sub_2142E5F7C()
{
  result = qword_27C905A98;
  if (!qword_27C905A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905A98);
  }

  return result;
}

unint64_t sub_2142E602C()
{
  result = qword_27C905AA8;
  if (!qword_27C905AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905AA8);
  }

  return result;
}

unint64_t sub_2142E60D4()
{
  result = qword_27C905AB8;
  if (!qword_27C905AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905AB8);
  }

  return result;
}

unint64_t sub_2142E6128()
{
  result = qword_27C905AC8;
  if (!qword_27C905AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905AC0, &unk_2146F3F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905AC8);
  }

  return result;
}

unint64_t sub_2142E61A4()
{
  result = qword_27C905AD8;
  if (!qword_27C905AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905AD0, &unk_214759900);
    sub_2142E6228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905AD8);
  }

  return result;
}

unint64_t sub_2142E6228()
{
  result = qword_27C905AE0;
  if (!qword_27C905AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905AE0);
  }

  return result;
}

unint64_t sub_2142E62D8()
{
  result = qword_27C905AF0;
  if (!qword_27C905AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905AC0, &unk_2146F3F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905AF0);
  }

  return result;
}

unint64_t sub_2142E6354()
{
  result = qword_27C905AF8;
  if (!qword_27C905AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905AD0, &unk_214759900);
    sub_2142E63D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905AF8);
  }

  return result;
}

unint64_t sub_2142E63D8()
{
  result = qword_27C905B00;
  if (!qword_27C905B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905B00);
  }

  return result;
}

unint64_t sub_2142E6480()
{
  result = qword_27C905B10;
  if (!qword_27C905B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905B10);
  }

  return result;
}

unint64_t sub_2142E6584()
{
  result = qword_27C905B28;
  if (!qword_27C905B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905B28);
  }

  return result;
}

unint64_t sub_2142E65D8()
{
  result = qword_27C905B38;
  if (!qword_27C905B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905B30, &qword_2146F3FC0);
    sub_2142E665C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905B38);
  }

  return result;
}

unint64_t sub_2142E665C()
{
  result = qword_27C905B40;
  if (!qword_27C905B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905B40);
  }

  return result;
}

unint64_t sub_2142E66B0()
{
  result = qword_27C905B50;
  if (!qword_27C905B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905B48, &qword_2146F3FC8);
    sub_2142E6734();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905B50);
  }

  return result;
}

unint64_t sub_2142E6734()
{
  result = qword_27C905B58;
  if (!qword_27C905B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905B58);
  }

  return result;
}

unint64_t sub_2142E67E4()
{
  result = qword_27C905B68;
  if (!qword_27C905B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905B30, &qword_2146F3FC0);
    sub_2142E6868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905B68);
  }

  return result;
}

unint64_t sub_2142E6868()
{
  result = qword_27C905B70;
  if (!qword_27C905B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905B70);
  }

  return result;
}

unint64_t sub_2142E68BC()
{
  result = qword_27C905B78;
  if (!qword_27C905B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905B48, &qword_2146F3FC8);
    sub_2142E6940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905B78);
  }

  return result;
}

unint64_t sub_2142E6940()
{
  result = qword_27C905B80;
  if (!qword_27C905B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905B80);
  }

  return result;
}

unint64_t sub_2142E69E8()
{
  result = qword_27C905B90;
  if (!qword_27C905B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905B90);
  }

  return result;
}

unint64_t sub_2142E6AEC()
{
  result = qword_27C905BA8;
  if (!qword_27C905BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905BA8);
  }

  return result;
}

unint64_t sub_2142E6B40()
{
  result = qword_27C905BB8;
  if (!qword_27C905BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905BB0, &qword_2146F3FF0);
    sub_2142E6BC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905BB8);
  }

  return result;
}

unint64_t sub_2142E6BC4()
{
  result = qword_27C905BC0;
  if (!qword_27C905BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905BC0);
  }

  return result;
}

unint64_t sub_2142E6C74()
{
  result = qword_27C905BD0;
  if (!qword_27C905BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905BB0, &qword_2146F3FF0);
    sub_2142E6CF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905BD0);
  }

  return result;
}

unint64_t sub_2142E6CF8()
{
  result = qword_27C905BD8;
  if (!qword_27C905BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905BD8);
  }

  return result;
}

unint64_t sub_2142E6DA0()
{
  result = qword_27C905BE8;
  if (!qword_27C905BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905BE8);
  }

  return result;
}

unint64_t sub_2142E6EA4()
{
  result = qword_27C905C00;
  if (!qword_27C905C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905C00);
  }

  return result;
}

unint64_t sub_2142E6EF8()
{
  result = qword_27C905C10;
  if (!qword_27C905C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905C08, &unk_2147738C0);
    sub_2142E6F7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905C10);
  }

  return result;
}

unint64_t sub_2142E6F7C()
{
  result = qword_27C905C18;
  if (!qword_27C905C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905C18);
  }

  return result;
}

unint64_t sub_2142E6FD0()
{
  result = qword_27C905C28;
  if (!qword_27C905C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905C20, &qword_2146F4020);
    sub_2142E7054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905C28);
  }

  return result;
}

unint64_t sub_2142E7054()
{
  result = qword_27C905C30;
  if (!qword_27C905C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905C30);
  }

  return result;
}

unint64_t sub_2142E7104()
{
  result = qword_27C905C40;
  if (!qword_27C905C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905C08, &unk_2147738C0);
    sub_2142E7188();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905C40);
  }

  return result;
}

unint64_t sub_2142E7188()
{
  result = qword_27C905C48;
  if (!qword_27C905C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905C48);
  }

  return result;
}

unint64_t sub_2142E71DC()
{
  result = qword_27C905C50;
  if (!qword_27C905C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905C20, &qword_2146F4020);
    sub_2142E7260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905C50);
  }

  return result;
}

unint64_t sub_2142E7260()
{
  result = qword_27C905C58;
  if (!qword_27C905C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905C58);
  }

  return result;
}

unint64_t sub_2142E7308()
{
  result = qword_27C905C68;
  if (!qword_27C905C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905C68);
  }

  return result;
}

unint64_t sub_2142E735C()
{
  result = qword_27C905C78;
  if (!qword_27C905C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905C70, &unk_214759910);
    sub_2142E73E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905C78);
  }

  return result;
}

unint64_t sub_2142E73E0()
{
  result = qword_27C905C80;
  if (!qword_27C905C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905C80);
  }

  return result;
}

unint64_t sub_2142E7490()
{
  result = qword_27C905C90;
  if (!qword_27C905C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905C70, &unk_214759910);
    sub_2142E7514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905C90);
  }

  return result;
}

unint64_t sub_2142E7514()
{
  result = qword_27C905C98;
  if (!qword_27C905C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905C98);
  }

  return result;
}

unint64_t sub_2142E75BC()
{
  result = qword_27C905CA8;
  if (!qword_27C905CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905CA8);
  }

  return result;
}

unint64_t sub_2142E7610()
{
  result = qword_27C905CB8;
  if (!qword_27C905CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905CB0, &qword_2146F4050);
    sub_2142E6228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905CB8);
  }

  return result;
}

unint64_t sub_2142E76F0()
{
  result = qword_27C905CC8;
  if (!qword_27C905CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905CB0, &qword_2146F4050);
    sub_2142E63D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905CC8);
  }

  return result;
}

unint64_t sub_2142E7774()
{
  result = qword_27C905CD8;
  if (!qword_27C905CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905CD8);
  }

  return result;
}

unint64_t sub_2142E781C()
{
  result = qword_27C905CF0;
  if (!qword_27C905CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905CF0);
  }

  return result;
}

unint64_t sub_2142E7870()
{
  result = qword_27C905D00;
  if (!qword_27C905D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905CF8, &qword_2146F4078);
    sub_2142E78F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905D00);
  }

  return result;
}

unint64_t sub_2142E78F4()
{
  result = qword_27C905D08;
  if (!qword_27C905D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905D08);
  }

  return result;
}

unint64_t sub_2142E7948()
{
  result = qword_27C905D18;
  if (!qword_27C905D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905D10, &qword_2146F4080);
    sub_2142E79CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905D18);
  }

  return result;
}

unint64_t sub_2142E79CC()
{
  result = qword_27C905D20;
  if (!qword_27C905D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905D20);
  }

  return result;
}

unint64_t sub_2142E7A20()
{
  result = qword_27C905D30;
  if (!qword_27C905D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905D28, &qword_2146F4088);
    sub_2142E7AA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905D30);
  }

  return result;
}

unint64_t sub_2142E7AA4()
{
  result = qword_27C905D38;
  if (!qword_27C905D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905D38);
  }

  return result;
}

unint64_t sub_2142E7AF8()
{
  result = qword_27C905D48;
  if (!qword_27C905D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905D40, &qword_2146F4090);
    sub_2142E7B7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905D48);
  }

  return result;
}

unint64_t sub_2142E7B7C()
{
  result = qword_27C905D50;
  if (!qword_27C905D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905D50);
  }

  return result;
}

unint64_t sub_2142E7BD0()
{
  result = qword_27C905D60;
  if (!qword_27C905D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905D58, &qword_2146F4098);
    sub_2142E7C54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905D60);
  }

  return result;
}

unint64_t sub_2142E7C54()
{
  result = qword_27C905D68;
  if (!qword_27C905D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905D68);
  }

  return result;
}

unint64_t sub_2142E7CA8()
{
  result = qword_27C905D78;
  if (!qword_27C905D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905D70, &qword_2146F40A0);
    sub_2142E7D2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905D78);
  }

  return result;
}

unint64_t sub_2142E7D2C()
{
  result = qword_27C905D80;
  if (!qword_27C905D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905D80);
  }

  return result;
}

unint64_t sub_2142E7D80()
{
  result = qword_27C905D90;
  if (!qword_27C905D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905D88, &qword_2146F40A8);
    sub_2142E7E04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905D90);
  }

  return result;
}

unint64_t sub_2142E7E04()
{
  result = qword_27C905D98;
  if (!qword_27C905D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905D98);
  }

  return result;
}

unint64_t sub_2142E7E58()
{
  result = qword_27C905DA8;
  if (!qword_27C905DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905DA0, &unk_2146F40B0);
    sub_2142E7EDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905DA8);
  }

  return result;
}

unint64_t sub_2142E7EDC()
{
  result = qword_27C905DB0;
  if (!qword_27C905DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905DB0);
  }

  return result;
}

unint64_t sub_2142E7F30()
{
  result = qword_27C905DC0;
  if (!qword_27C905DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905DB8, &unk_2147598E0);
    sub_2142E7B7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905DC0);
  }

  return result;
}

unint64_t sub_2142E7FB4()
{
  result = qword_27C905DD0;
  if (!qword_27C905DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905DC8, &qword_2146F40C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905DD0);
  }

  return result;
}

void sub_2142E8030(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  if (a2 >> 60 != 11)
  {
    a5();

    (a5)(a3, a4);
  }
}

unint64_t sub_2142E80F8()
{
  result = qword_27C905DE0;
  if (!qword_27C905DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905CF8, &qword_2146F4078);
    sub_2142E817C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905DE0);
  }

  return result;
}

unint64_t sub_2142E817C()
{
  result = qword_27C905DE8;
  if (!qword_27C905DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905DE8);
  }

  return result;
}

unint64_t sub_2142E81D0()
{
  result = qword_27C905DF0;
  if (!qword_27C905DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905D10, &qword_2146F4080);
    sub_2142E8254();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905DF0);
  }

  return result;
}

unint64_t sub_2142E8254()
{
  result = qword_27C905DF8;
  if (!qword_27C905DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905DF8);
  }

  return result;
}

unint64_t sub_2142E82A8()
{
  result = qword_27C905E00;
  if (!qword_27C905E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905D28, &qword_2146F4088);
    sub_2142E832C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905E00);
  }

  return result;
}

unint64_t sub_2142E832C()
{
  result = qword_27C905E08;
  if (!qword_27C905E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905E08);
  }

  return result;
}

unint64_t sub_2142E8380()
{
  result = qword_27C905E10;
  if (!qword_27C905E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905D40, &qword_2146F4090);
    sub_2142E8404();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905E10);
  }

  return result;
}

unint64_t sub_2142E8404()
{
  result = qword_27C905E18;
  if (!qword_27C905E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905E18);
  }

  return result;
}

unint64_t sub_2142E8458()
{
  result = qword_27C905E20;
  if (!qword_27C905E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905D58, &qword_2146F4098);
    sub_2142E84DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905E20);
  }

  return result;
}

unint64_t sub_2142E84DC()
{
  result = qword_27C905E28;
  if (!qword_27C905E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905E28);
  }

  return result;
}

unint64_t sub_2142E8530()
{
  result = qword_27C905E30;
  if (!qword_27C905E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905D70, &qword_2146F40A0);
    sub_2142E85B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905E30);
  }

  return result;
}

unint64_t sub_2142E85B4()
{
  result = qword_27C905E38;
  if (!qword_27C905E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905E38);
  }

  return result;
}

unint64_t sub_2142E8608()
{
  result = qword_27C905E40;
  if (!qword_27C905E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905D88, &qword_2146F40A8);
    sub_2142E868C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905E40);
  }

  return result;
}

unint64_t sub_2142E868C()
{
  result = qword_27C905E48;
  if (!qword_27C905E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905E48);
  }

  return result;
}

unint64_t sub_2142E86E0()
{
  result = qword_27C905E50;
  if (!qword_27C905E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905DA0, &unk_2146F40B0);
    sub_2142E8764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905E50);
  }

  return result;
}

unint64_t sub_2142E8764()
{
  result = qword_27C905E58;
  if (!qword_27C905E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905E58);
  }

  return result;
}

unint64_t sub_2142E87B8()
{
  result = qword_27C905E60;
  if (!qword_27C905E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905DB8, &unk_2147598E0);
    sub_2142E8404();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905E60);
  }

  return result;
}