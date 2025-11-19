uint64_t sub_25860C2F8()
{
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_21();

  return MEMORY[0x2821FE8E8]();
}

uint64_t sub_25860C338()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2821FE8E8]();
}

uint64_t sub_25860C36C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_21();

  return MEMORY[0x2821FE8E8]();
}

uint64_t sub_25860C3AC()
{
  sub_258611EA4();
  OUTLINED_FUNCTION_3_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = sub_258620AB4();
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v7))
  {
    OUTLINED_FUNCTION_10_0(v7);
    (*(v8 + 8))(v0 + v4, v7);
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v3 | 7);
}

uint64_t sub_25860C490()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  v1 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25860C4D8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_25860C584()
{
  v1 = sub_258620E34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_25860C964@<X0>(uint64_t *a1@<X8>)
{
  result = RepeatMode.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25860CCC8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25860CD88()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_25860CE08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = MRContentItem._metadata.getter();
  *a2 = result;
  return result;
}

id sub_25860CEF4(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) hasITunesStoreIdentifier];
  *v1 = result;
  return result;
}

id sub_25860CF38(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) iTunesStoreIdentifier];
  *v1 = result;
  return result;
}

id sub_25860CF7C(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) hasITunesStoreSubscriptionIdentifier];
  *v1 = result;
  return result;
}

id sub_25860CFC0(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) iTunesStoreSubscriptionIdentifier];
  *v1 = result;
  return result;
}

id sub_25860D084(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) hasLegacyUniqueIdentifier];
  *v1 = result;
  return result;
}

id sub_25860D0C8(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) legacyUniqueIdentifier];
  *v1 = result;
  return result;
}

id sub_25860D10C(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) hasAlwaysLive];
  *v1 = result;
  return result;
}

id sub_25860D150(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) isAlwaysLive];
  *v1 = result;
  return result;
}

id sub_25860D194(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) hasLoading];
  *v1 = result;
  return result;
}

id sub_25860D1D8(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) hasElapsedTime];
  *v1 = result;
  return result;
}

id sub_25860D21C(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) playbackRate];
  *v1 = v3;
  return result;
}

id sub_25860D260(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) calculatedPlaybackPosition];
  *v1 = v3;
  return result;
}

id sub_25860D290(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) hasDuration];
  *v1 = result;
  return result;
}

id sub_25860D2D4(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) duration];
  *v1 = v3;
  return result;
}

id sub_25860D318(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) hasPlaybackRate];
  *v1 = result;
  return result;
}

id sub_25860D35C(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) hasDefaultPlaybackRate];
  *v1 = result;
  return result;
}

id sub_25860D3A0(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) defaultPlaybackRate];
  *v1 = v3;
  return result;
}

id sub_25860D3E4(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) hasStartTime];
  *v1 = result;
  return result;
}

id sub_25860D428(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) startTime];
  *v1 = v3;
  return result;
}

id sub_25860D4EC(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) hasMediaType];
  *v1 = result;
  return result;
}

id sub_25860D530(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) mediaType];
  *v1 = result;
  return result;
}

id sub_25860D57C(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) hasMediaSubType];
  *v1 = result;
  return result;
}

id sub_25860D5C0(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) mediaSubType];
  *v1 = result;
  return result;
}

id sub_25860D60C(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) hasExplicitItem];
  *v1 = result;
  return result;
}

id sub_25860D650(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) isExplicitItem];
  *v1 = result;
  return result;
}

id sub_25860D694(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) hasAdvertisement];
  *v1 = result;
  return result;
}

id sub_25860D6D8(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) isAdvertisement];
  *v1 = result;
  return result;
}

id sub_25860D8A8(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) hasDiscNumber];
  *v1 = result;
  return result;
}

id sub_25860D8EC(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) discNumber];
  *v1 = result;
  return result;
}

id sub_25860D930(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) hasTotalDiscCount];
  *v1 = result;
  return result;
}

id sub_25860D974(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) totalDiscCount];
  *v1 = result;
  return result;
}

id sub_25860D9B8(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) hasTrackNumber];
  *v1 = result;
  return result;
}

id sub_25860D9FC(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) trackNumber];
  *v1 = result;
  return result;
}

id sub_25860DA40(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) hasTotalTrackCount];
  *v1 = result;
  return result;
}

id sub_25860DA84(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) totalTrackCount];
  *v1 = result;
  return result;
}

id sub_25860DB08(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) hasEpisodeType];
  *v1 = result;
  return result;
}

id sub_25860DB4C(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) episodeType];
  *v1 = result;
  return result;
}

id sub_25860DBD8(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) hasEpisodeNumber];
  *v1 = result;
  return result;
}

id sub_25860DC1C(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) episodeNumber];
  *v1 = result;
  return result;
}

id sub_25860DC60(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) hasSeasonNumber];
  *v1 = result;
  return result;
}

id sub_25860DCA4(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) seasonNumber];
  *v1 = result;
  return result;
}

id sub_25860DE28(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) hasRadioStationIdentifier];
  *v1 = result;
  return result;
}

id sub_25860DE6C(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) radioStationIdentifier];
  *v1 = result;
  return result;
}

id sub_25860DF70(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) hasPlaylistType];
  *v1 = result;
  return result;
}

id sub_25860DFB4(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) playlistType];
  *v1 = result;
  return result;
}

id sub_25860E000(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) hasRadioStationType];
  *v1 = result;
  return result;
}

id sub_25860E044(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_2(a1) radioStationType];
  *v1 = result;
  return result;
}

uint64_t sub_25860E31C()
{
  sub_25861EBD8();
  OUTLINED_FUNCTION_8_2(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25860E3E4()
{
  v1 = sub_258620FE4();
  OUTLINED_FUNCTION_1_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = sub_258621004();
  OUTLINED_FUNCTION_1_0(v8);
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v5 + v7 + v13) & ~v13;
  v15 = v4 | v13;
  v16 = (*(v12 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);
  (*(v10 + 8))(v0 + v14, v8);

  return MEMORY[0x2821FE8E8](v0, v16 + 16, v15 | 7);
}

_OWORD *sub_25860E530(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_25860E550(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 62;
  v4 = result;
  v5 = 0;
  switch(a3 >> 62)
  {
    case 1uLL:
      LODWORD(v5) = HIDWORD(a2) - a2;
      if (__OFSUB__(HIDWORD(a2), a2))
      {
        goto LABEL_42;
      }

      v5 = v5;
      goto LABEL_6;
    case 2uLL:
      v7 = *(a2 + 16);
      v6 = *(a2 + 24);
      v8 = __OFSUB__(v6, v7);
      v5 = v6 - v7;
      if (!v8)
      {
        goto LABEL_6;
      }

      goto LABEL_43;
    case 3uLL:
      goto LABEL_6;
    default:
      v5 = BYTE6(a3);
LABEL_6:
      if (!result)
      {
        goto LABEL_40;
      }

      if (v5 == 0x8000000000000000 && result == -1)
      {
        goto LABEL_41;
      }

      v24 = BYTE6(a3);
      result = sub_2586102A0(0, (v5 / result) & ~((v5 / result) >> 63), 0, MEMORY[0x277D84F90]);
      v10 = result;
      v11 = 0;
      v13 = v24;
      v12 = a2;
      v14 = 0;
      switch(v3)
      {
        case 1:
          v14 = a2;
          v11 = a2 >> 32;
          break;
        case 2:
          v14 = *(a2 + 16);
          v11 = *(a2 + 24);
          break;
        case 3:
          break;
        default:
          v14 = 0;
          v11 = v24;
          break;
      }

      v15 = 0;
      break;
  }

  while (1)
  {
    v16 = v11 >= v14;
    if (v4 > 0)
    {
      v16 = v14 >= v11;
    }

    if (v16)
    {
      break;
    }

    v17 = v14 + v4;
    if (__OFADD__(v14, v4))
    {
      v18 = ((v14 + v4) >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v18 = v14 + v4;
    }

    if (__OFADD__(v14, v4))
    {
      goto LABEL_38;
    }

LABEL_26:
    v19 = 0;
    switch(v3)
    {
      case 1:
        v19 = a2 >> 32;
        break;
      case 2:
        v19 = *(v12 + 24);
        break;
      case 3:
        break;
      default:
        v19 = v13;
        break;
    }

    if (v19 >= v17)
    {
      v20 = v17;
    }

    else
    {
      v20 = v19;
    }

    if (v20 < v14)
    {
      goto LABEL_39;
    }

    v22 = *(v10 + 16);
    v21 = *(v10 + 24);
    if (v22 >= v21 >> 1)
    {
      result = sub_2586102A0((v21 > 1), v22 + 1, 1, v10);
      v13 = v24;
      v12 = a2;
      v10 = result;
    }

    *(v10 + 16) = v22 + 1;
    v23 = v10 + 16 * v22;
    *(v23 + 32) = v14;
    *(v23 + 40) = v20;
    v14 = v18;
  }

  if ((v14 != v11) | v15 & 1)
  {
    return v10;
  }

  v17 = v14 + v4;
  if (!__OFADD__(v14, v4))
  {
    v15 = 1;
    v18 = v14;
    goto LABEL_26;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t RandomAccessCollection<>.chunkRanges(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v77 = a1;
  v7 = *(*(a3 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_2();
  v68 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_11();
  v74 = v12;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20]();
  v75 = &v65 - v13;
  v14 = *(a4 + 8);
  OUTLINED_FUNCTION_8();
  v80 = v15;
  v16 = sub_258620E14();
  v17 = *(*(v16 - 8) + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_6();
  v73 = v18;
  OUTLINED_FUNCTION_8();
  v19 = *(*(sub_258620EA4() - 8) + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_6();
  v89 = v20;
  OUTLINED_FUNCTION_2();
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_11();
  v79 = v25;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20]();
  v78 = &v65 - v26;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20]();
  v82 = &v65 - v27;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20]();
  v29 = &v65 - v28;
  OUTLINED_FUNCTION_8();
  v70 = sub_258620F84();
  v30 = *(*(v70 - 1) + 8);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_6();
  v69 = v31;
  OUTLINED_FUNCTION_8();
  v86 = sub_258621094();
  OUTLINED_FUNCTION_2();
  v65 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_6();
  v88 = v35;
  v36 = swift_getAssociatedTypeWitness();
  v37 = *(*(sub_258620EA4() - 8) + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20]();
  v39 = &v65 - v38;
  v67 = v36;
  v66 = *(v36 - 8);
  v40 = *(v66 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_6();
  v87 = v41;
  v81 = v16;
  v91 = sub_258620B34();
  v84 = a2;
  v85 = v4;
  v42 = v77;
  v83 = v7;
  result = sub_258620DE4();
  if (!v42)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (result == 0x8000000000000000 && v42 == -1)
  {
    goto LABEL_14;
  }

  v72 = sub_258620D14();
  sub_258620CD4();
  v90 = v42;
  v45 = v67;
  v46 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_25860EF88();
  sub_258620DC4();
  result = __swift_getEnumTagSinglePayload(v39, 1, v45);
  if (result != 1)
  {
    (*(v66 + 32))(v87, v39, v45);
    sub_258620DD4();
    v47 = v82;
    sub_258620DF4();
    v77 = a4;
    sub_258621194();
    v50 = *(v22 + 8);
    v49 = v22 + 8;
    v48 = v50;
    v50(v47, AssociatedTypeWitness);
    v50(v29, AssociatedTypeWitness);
    sub_258620F74();
    v51 = (v49 + 24);
    v70 = (v49 + 8);
    v69 = v68 + 2;
    v68 += 4;
    v71 = v29;
    while (1)
    {
      v52 = v89;
      sub_258621084();
      if (__swift_getEnumTagSinglePayload(v52, 1, AssociatedTypeWitness) == 1)
      {
        (*(v65 + 8))(v88, v86);
        (*(v66 + 8))(v87, v67);
        return v91;
      }

      v53 = *v51;
      (*v51)(v29, v89, AssociatedTypeWitness);
      v54 = v78;
      sub_258620EC4();
      v55 = v79;
      sub_258620DF4();
      v56 = v82;
      sub_258621104();
      v48(v55, AssociatedTypeWitness);
      v48(v54, AssociatedTypeWitness);
      result = sub_258620B84();
      if ((result & 1) == 0)
      {
        break;
      }

      v57 = v75;
      (*v70)(v75, v29, AssociatedTypeWitness);
      v58 = TupleTypeMetadata2;
      v53(&v57[*(TupleTypeMetadata2 + 48)], v56, AssociatedTypeWitness);
      v59 = v49;
      v60 = v74;
      (*v69)(v74, v57, v58);
      v61 = *(v58 + 48);
      v62 = v73;
      v53(v73, v60, AssociatedTypeWitness);
      v48(v60 + v61, AssociatedTypeWitness);
      (*v68)(v60, v57, v58);
      v63 = *(v58 + 48);
      v29 = v71;
      v53(&v62[*(v81 + 36)], v60 + v63, AssociatedTypeWitness);
      v64 = v60;
      v49 = v59;
      v48(v64, AssociatedTypeWitness);
      sub_258620CF4();
      v48(v29, AssociatedTypeWitness);
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_25860EF88()
{
  result = qword_281549030;
  if (!qword_281549030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281549030);
  }

  return result;
}

uint64_t Sequence.chunked(by:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2();
  v35 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20]();
  v12 = &v31 - v11;
  v13 = *(*(sub_258620EA4() - 8) + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20]();
  v15 = &v31 - v14;
  OUTLINED_FUNCTION_2();
  v34 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20]();
  v33 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2();
  v21 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20]();
  v25 = &v31 - v24;
  sub_258620D14();
  v40 = sub_258620B34();
  v36 = v3;
  result = sub_258620C84();
  if (!a1)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if (result == 0x8000000000000000 && a1 == -1)
  {
    goto LABEL_15;
  }

  v31 = a3;
  v32 = v21;
  sub_258620D14();
  sub_258620CD4();
  v39 = sub_258620B34();
  sub_258620CD4();
  (*(v34 + 16))(v33, v36, a2);
  sub_258620C74();
  swift_getAssociatedConformanceWitness();
  v28 = (v35 + 32);
  while (1)
  {
    sub_258620EB4();
    if (__swift_getEnumTagSinglePayload(v15, 1, AssociatedTypeWitness) == 1)
    {
      break;
    }

    (*v28)(v12, v15, AssociatedTypeWitness);
    sub_258620CF4();
    v29 = v39;
    if (sub_258620CE4() == a1)
    {
      v38 = v29;

      sub_258620CF4();
      sub_258620D04();
    }
  }

  (*(v32 + 8))(v25, v37);
  v30 = v39;
  v38 = v39;
  swift_getWitnessTable();
  if (sub_258620E04())
  {
  }

  else
  {
    v38 = v30;
    sub_258620CF4();
  }

  return v40;
}

uint64_t static Data.printableCharacter(for:)(unsigned __int8 a1)
{
  if (!isprint(a1))
  {
    return 46;
  }

  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_4();
  return sub_258620C04();
}

uint64_t Data.chunked(by:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = sub_25860E550(a1, a2, a3);
  v4 = *(v3 + 16);
  if (v4)
  {
    v17 = MEMORY[0x277D84F90];
    sub_258610714(0, v4, 0);
    v5 = v17;
    v6 = (v3 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v9 = sub_258620A94();
      v11 = v10;
      v13 = *(v17 + 16);
      v12 = *(v17 + 24);
      if (v13 >= v12 >> 1)
      {
        v15 = OUTLINED_FUNCTION_9(v12);
        sub_258610714(v15, v13 + 1, 1);
      }

      v6 += 2;
      *(v17 + 16) = v13 + 1;
      v14 = v17 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
      --v4;
    }

    while (v4);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v5;
}

uint64_t Data.HexDumpLine.offset.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Data.HexDumpLine.offset.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Data.HexDumpLine.hex.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Data.HexDumpLine.hex.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Data.HexDumpLine.text.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t Data.HexDumpLine.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void Data.HexDumpLine.line.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v9 = v0[2];
  v10 = v0[3];
  if (v5 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else if (!__OFADD__(2 * v5, 8))
  {
    sub_258610734();
    v6 = sub_258620EE4();
    v8 = v7;

    MEMORY[0x259C847B0](8250, 0xE200000000000000);
    MEMORY[0x259C847B0](v6, v8);

    MEMORY[0x259C847B0](32, 0xE100000000000000);
    MEMORY[0x259C847B0](v3, v4);
    return;
  }

  __break(1u);
}

char *Data.hexDump(bytesPerRow:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v127 = *MEMORY[0x277D85DE8];
  v3 = Data.chunked(by:)(a1, a2, a3);
  v98 = *(v3 + 16);
  if (!v98)
  {

    v104 = MEMORY[0x277D84F90];
    goto LABEL_106;
  }

  v103 = 0;
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  v100 = v3 + 32;
  v104 = MEMORY[0x277D84F90];
  v97 = v3;
LABEL_3:
  if (v4 >= *(v3 + 16))
  {
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
  }

  v105 = v4;
  v6 = (v100 + 16 * v4);
  v7 = *v6;
  v8 = v6[1];
  sub_258611118(0, &qword_27F954A10, &qword_27F954A18);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2586216B0;
  *(v9 + 56) = MEMORY[0x277D83B88];
  *(v9 + 64) = MEMORY[0x277D83C10];
  *(v9 + 32) = v103;
  sub_258610788(v7, v8);
  v10 = sub_258620BB4();
  v101 = v11;
  v102 = v10;
  v110 = v8;
  v111 = v7;
  v12 = Data.chunked(by:)(2, v7, v8);
  v13 = *(v12 + 16);
  if (!v13)
  {

    v15 = v5;
    goto LABEL_49;
  }

  v126 = v5;
  sub_258610800(0, v13, 0);
  v14 = 0;
  v15 = v126;
  v108 = v12;
  v109 = v12 + 32;
  v107 = v13;
  while (1)
  {
    if (v14 >= *(v12 + 16))
    {
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
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
      goto LABEL_128;
    }

    v112 = v14 + 1;
    v113 = v15;
    v16 = (v109 + 16 * v14);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    v20 = HIDWORD(*v16);
    switch(v17 >> 62)
    {
      case 1uLL:
        if (__OFSUB__(v20, v18))
        {
          goto LABEL_126;
        }

        v21 = v20 - v18;
LABEL_12:
        sub_258610788(v18, v17);
LABEL_13:
        v5 = MEMORY[0x277D84F90];
        if (!v21)
        {
          goto LABEL_44;
        }

        v125 = MEMORY[0x277D84F90];
        sub_258610800(0, v21 & ~(v21 >> 63), 0);
        if (v19)
        {
          if (v19 == 2)
          {
            v24 = *(v18 + 16);
          }

          else
          {
            v24 = v18;
          }
        }

        else
        {
          v24 = 0;
        }

        v120 = v24;
        if (v21 < 0)
        {
          goto LABEL_119;
        }

        v115 = v20;
        v25 = 0;
        v5 = v125;
        v114 = &v122 + v24;
        v119 = v21;
        break;
      case 2uLL:
        v23 = *(v18 + 16);
        v22 = *(v18 + 24);
        v21 = v22 - v23;
        if (!__OFSUB__(v22, v23))
        {
          goto LABEL_12;
        }

        goto LABEL_127;
      case 3uLL:
        goto LABEL_44;
      default:
        v21 = BYTE6(v17);
        goto LABEL_13;
    }

LABEL_21:
    if (v25 >= v21)
    {
      break;
    }

    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      goto LABEL_108;
    }

    v27 = v120 + v25;
    if (v19 == 2)
    {
      if (v27 < *(v18 + 16))
      {
        goto LABEL_110;
      }

      if (v27 >= *(v18 + 24))
      {
        goto LABEL_112;
      }

      v33 = sub_2586209F4();
      if (!v33)
      {
        goto LABEL_136;
      }

      v30 = v33;
      v34 = sub_258620A14();
      v32 = v27 - v34;
      if (__OFSUB__(v27, v34))
      {
        goto LABEL_114;
      }

      goto LABEL_38;
    }

    if (v19 == 1)
    {
      if (v27 < v18 || v27 >= v18 >> 32)
      {
        goto LABEL_111;
      }

      v29 = sub_2586209F4();
      if (!v29)
      {
        goto LABEL_135;
      }

      v30 = v29;
      v31 = sub_258620A14();
      v32 = v27 - v31;
      if (__OFSUB__(v27, v31))
      {
        goto LABEL_113;
      }

LABEL_38:
      v35 = *(v30 + v32);
      goto LABEL_41;
    }

    if (v27 >= BYTE6(v17))
    {
      goto LABEL_109;
    }

    LOWORD(v122) = v18;
    BYTE2(v122) = BYTE2(v18);
    BYTE3(v122) = BYTE3(v18);
    BYTE4(v122) = v115;
    BYTE5(v122) = BYTE5(v18);
    BYTE6(v122) = BYTE6(v18);
    HIBYTE(v122) = HIBYTE(v18);
    LOWORD(v123) = v17;
    BYTE2(v123) = BYTE2(v17);
    HIBYTE(v123) = BYTE3(v17);
    LOBYTE(v124) = BYTE4(v17);
    HIBYTE(v124) = BYTE5(v17);
    v35 = v114[v25];
LABEL_41:
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_2586216B0;
    *(v36 + 56) = MEMORY[0x277D84B78];
    *(v36 + 64) = MEMORY[0x277D84BC0];
    *(v36 + 32) = v35;
    v19 = sub_258620BB4();
    v38 = v37;
    v125 = v5;
    v40 = *(v5 + 16);
    v39 = *(v5 + 24);
    if (v40 >= v39 >> 1)
    {
      v42 = OUTLINED_FUNCTION_9(v39);
      sub_258610800(v42, v40 + 1, 1);
      v5 = v125;
    }

    *(v5 + 16) = v40 + 1;
    v41 = v5 + 16 * v40;
    *(v41 + 32) = v19;
    *(v41 + 40) = v38;
    ++v25;
    v21 = v119;
    LODWORD(v19) = v17 >> 62;
    if (v26 != v119)
    {
      goto LABEL_21;
    }

LABEL_44:
    v122 = v5;
    OUTLINED_FUNCTION_0();
    sub_25861137C(0, &qword_27F954A20, MEMORY[0x277D837D0], v43);
    OUTLINED_FUNCTION_3();
    sub_258610878(&qword_281549018);
    v44 = sub_258620B74();
    v46 = v45;
    sub_258610820(v18, v17);

    v15 = v113;
    v126 = v113;
    v48 = *(v113 + 16);
    v47 = *(v113 + 24);
    if (v48 >= v47 >> 1)
    {
      v50 = OUTLINED_FUNCTION_9(v47);
      sub_258610800(v50, v48 + 1, 1);
      v15 = v126;
    }

    *(v15 + 16) = v48 + 1;
    v49 = v15 + 16 * v48;
    *(v49 + 32) = v44;
    *(v49 + 40) = v46;
    v14 = v112;
    v12 = v108;
    v5 = MEMORY[0x277D84F90];
    if (v112 == v107)
    {

LABEL_49:
      v106 = v105 + 1;
      v122 = v15;
      OUTLINED_FUNCTION_0();
      sub_25861137C(0, &qword_27F954A20, MEMORY[0x277D837D0], v51);
      OUTLINED_FUNCTION_3();
      sub_258610878(&qword_281549018);
      v52 = sub_258620B74();
      v116 = v53;
      v117 = v52;

      v54 = v110 >> 62;
      v55 = v5;
      v56 = BYTE6(v110);
      switch(v110 >> 62)
      {
        case 1uLL:
          if (__OFSUB__(HIDWORD(v111), v111))
          {
            goto LABEL_131;
          }

          v57 = HIDWORD(v111) - v111;
LABEL_54:
          if (!v57)
          {
            v5 = MEMORY[0x277D84F90];
            v55 = MEMORY[0x277D84F90];
            goto LABEL_90;
          }

          v126 = MEMORY[0x277D84F90];
          sub_2586107E0(0, v57 & ~(v57 >> 63), 0);
          v60 = v111;
          if (v54)
          {
            if (v54 == 2)
            {
              v61 = *(v111 + 16);
            }

            else
            {
              v61 = v111;
            }
          }

          else
          {
            v61 = 0;
          }

          v121 = v61;
          if (v57 < 0)
          {
            goto LABEL_130;
          }

          v62 = 0;
          v55 = v126;
          v118 = &v122 + v61;
          break;
        case 2uLL:
          v59 = *(v111 + 16);
          v58 = *(v111 + 24);
          v57 = v58 - v59;
          if (!__OFSUB__(v58, v59))
          {
            goto LABEL_54;
          }

          goto LABEL_132;
        case 3uLL:
          goto LABEL_90;
        default:
          v57 = BYTE6(v110);
          goto LABEL_54;
      }

      while (2)
      {
        if (v62 >= v57)
        {
          goto LABEL_117;
        }

        v63 = v62 + 1;
        if (__OFADD__(v62, 1))
        {
          goto LABEL_118;
        }

        v64 = v121 + v62;
        if (v54 == 2)
        {
          if (v64 < *(v60 + 16))
          {
            goto LABEL_121;
          }

          if (v64 >= *(v60 + 24))
          {
            goto LABEL_123;
          }

          v70 = sub_2586209F4();
          if (!v70)
          {
            goto LABEL_138;
          }

          v67 = v70;
          v71 = sub_258620A14();
          v69 = v64 - v71;
          if (__OFSUB__(v64, v71))
          {
            goto LABEL_125;
          }

LABEL_80:
          v72 = *(v67 + v69);
        }

        else
        {
          if (v54 == 1)
          {
            if (v64 < v111 || v64 >= v111 >> 32)
            {
              goto LABEL_122;
            }

            v66 = sub_2586209F4();
            if (!v66)
            {
              goto LABEL_137;
            }

            v67 = v66;
            v68 = sub_258620A14();
            v69 = v64 - v68;
            if (__OFSUB__(v64, v68))
            {
              goto LABEL_124;
            }

            goto LABEL_80;
          }

          if (v64 >= BYTE6(v110))
          {
            goto LABEL_120;
          }

          LOWORD(v122) = v60;
          BYTE2(v122) = BYTE2(v60);
          BYTE3(v122) = BYTE3(v60);
          BYTE4(v122) = BYTE4(v111);
          BYTE5(v122) = BYTE5(v60);
          BYTE6(v122) = BYTE6(v60);
          HIBYTE(v122) = HIBYTE(v60);
          v123 = v110;
          v124 = WORD2(v110);
          v72 = v118[v62];
        }

        if (isprint(v72))
        {
          OUTLINED_FUNCTION_12();
          OUTLINED_FUNCTION_4();
          v122 = v73;
          v74 = sub_258620C04();
          v76 = v75;
        }

        else
        {
          v76 = 0xE100000000000000;
          v74 = 46;
        }

        v126 = v55;
        v78 = *(v55 + 16);
        v77 = *(v55 + 24);
        v60 = v111;
        if (v78 >= v77 >> 1)
        {
          v80 = OUTLINED_FUNCTION_9(v77);
          sub_2586107E0(v80, v78 + 1, 1);
          v60 = v111;
          v55 = v126;
        }

        *(v55 + 16) = v78 + 1;
        v79 = v55 + 16 * v78;
        *(v79 + 32) = v74;
        *(v79 + 40) = v76;
        ++v62;
        if (v63 == v57)
        {
          v5 = MEMORY[0x277D84F90];
          v56 = BYTE6(v110);
LABEL_90:
          v122 = v55;
          OUTLINED_FUNCTION_0();
          sub_25861137C(0, &qword_27F954A28, MEMORY[0x277D835B0], v81);
          sub_258610878(&qword_27F954A30);
          v82 = sub_258620C64();
          v84 = v83;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v104 = sub_2586103B0(0, *(v104 + 2) + 1, 1, v104);
          }

          v86 = *(v104 + 2);
          v85 = *(v104 + 3);
          v88 = v110;
          v87 = v111;
          if (v86 >= v85 >> 1)
          {
            v94 = OUTLINED_FUNCTION_9(v85);
            v104 = sub_2586103B0(v94, v86 + 1, 1, v104);
            v88 = v110;
            v87 = v111;
          }

          *(v104 + 2) = v86 + 1;
          v89 = &v104[56 * v86];
          *(v89 + 4) = v102;
          *(v89 + 5) = v101;
          *(v89 + 6) = v117;
          *(v89 + 7) = v116;
          *(v89 + 8) = v82;
          *(v89 + 9) = v84;
          *(v89 + 10) = a1;
          switch(v54)
          {
            case 1:
              v92 = v87;
              sub_258610820(v87, v88);
              if (__OFSUB__(HIDWORD(v111), v92))
              {
                goto LABEL_133;
              }

              v56 = HIDWORD(v111) - v92;
LABEL_102:
              v93 = __OFADD__(v103, v56);
              v103 += v56;
              v3 = v97;
              v4 = v106;
              if (v93)
              {
                goto LABEL_129;
              }

              if (v106 == v98)
              {
                goto LABEL_115;
              }

              goto LABEL_3;
            case 2:
              v91 = *(v87 + 16);
              v90 = *(v87 + 24);
              sub_258610820(v87, v88);
              v56 = v90 - v91;
              if (!__OFSUB__(v90, v91))
              {
                goto LABEL_102;
              }

              goto LABEL_134;
            case 3:
              sub_258610820(v87, v88);
              v56 = 0;
              goto LABEL_102;
            default:
              sub_258610820(v87, v88);
              goto LABEL_102;
          }
        }

        continue;
      }
    }
  }

  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:

LABEL_106:
  v95 = *MEMORY[0x277D85DE8];
  return v104;
}

char *sub_2586102A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2586111C4(0, &qword_27F954AD0, sub_2586112FC);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

char *sub_2586103B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_25861137C(0, &qword_27F954AB8, &type metadata for Data.HexDumpLine, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[56 * v8] <= v12)
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2586104E0(uint64_t result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_2586111C4(0, &qword_27F954A98, sub_258611218);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    OUTLINED_FUNCTION_7(v11);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 32)
    {
      memmove((v10 + 32), a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2586112B4();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_258610604(char *result, int64_t a2, char a3, char *a4)
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
    sub_25861137C(0, &qword_27F954A90, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    OUTLINED_FUNCTION_7(v11);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_258610714(char *a1, int64_t a2, char a3)
{
  result = sub_258610B48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_258610734()
{
  result = qword_27F954A08;
  if (!qword_27F954A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F954A08);
  }

  return result;
}

uint64_t sub_258610788(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

char *sub_2586107E0(char *a1, int64_t a2, char a3)
{
  result = sub_258610C68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258610800(char *a1, int64_t a2, char a3)
{
  result = sub_258610D88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_258610820(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_258610878(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_0();
    sub_25861137C(255, v3, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2586108DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_25861091C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_258610B08(void *a1, int64_t a2, char a3)
{
  result = sub_258610EA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258610B28(char *a1, int64_t a2, char a3)
{
  result = sub_258610FE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258610B48(char *result, int64_t a2, char a3, char *a4)
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
    sub_25861137C(0, &qword_27F954AC8, MEMORY[0x277CC9318], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_258610C68(char *result, int64_t a2, char a3, char *a4)
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
    sub_25861137C(0, &qword_27F954AC0, MEMORY[0x277D835B0], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_258610D88(char *result, int64_t a2, char a3, char *a4)
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
    sub_25861137C(0, &qword_27F954A90, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_258610EA8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_258611118(0, &qword_281549000, &qword_281548FF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_258611170(0, &qword_281548FF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_258610FE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_25861137C(0, &qword_27F954A88, &type metadata for MediaRemoteCommand.Option, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_258611118(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_258611170(255, a3);
    v4 = sub_2586210B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_258611170(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_2586111C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2586210B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_258611218()
{
  result = qword_27F954AA0;
  if (!qword_27F954AA0)
  {
    sub_258611270();
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_27F954AA0);
  }

  return result;
}

unint64_t sub_258611270()
{
  result = qword_27F954AA8;
  if (!qword_27F954AA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F954AA8);
  }

  return result;
}

unint64_t sub_2586112B4()
{
  result = qword_27F954AB0;
  if (!qword_27F954AB0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F954AB0);
  }

  return result;
}

void sub_2586112FC()
{
  if (!qword_27F954AD8)
  {
    v0 = sub_258620E14();
    if (!v1)
    {
      atomic_store(v0, &qword_27F954AD8);
    }
  }
}

void sub_25861137C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t OUTLINED_FUNCTION_7(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / 16);
  return result;
}

uint64_t sub_2586114D0(int64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || a1 > v3[3] >> 1)
  {
    if (v3[2] <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = v3[2];
    }

    result = sub_2586104E0(result, v5, 0, v3);
    v3 = result;
  }

  *v1 = v3;
  return result;
}

void MSVSQLStatement.bindNull(to:)(uint64_t *a1)
{
  v2 = *a1;
  if (*(a1 + 16) == 1)
  {
    v3 = a1[1];
    v4 = *a1;
    v5 = sub_258620B94();
    [v1 bindNullValueToParameterNamed_];
  }

  else
  {

    [v1 bindNullValueToParameterAtIndex_];
  }
}

void MSVSQLStatement.bind(_:to:)(uint64_t a1, char a2, uint64_t a3)
{
  sub_258611604(a1, a2, a3, MSVSQLStatement.bind(_:to:));
}

{
  sub_258611664(a1, a2, a3, &selRef_bindInt64Value_toParameterNamed_, &selRef_bindInt64Value_toParameterAtIndex_);
}

{
  sub_258611604(a1, a2, a3, MSVSQLStatement.bind(_:to:));
}

{
  sub_258611664(a1, a2, a3, &selRef_bindUInt64Value_toParameterNamed_, &selRef_bindUInt64Value_toParameterAtIndex_);
}

{
  v6 = *a3;
  v5 = *(a3 + 8);
  v7 = *(a3 + 16);
  if (a2)
  {
    v12[0] = *a3;
    v12[1] = v5;
    v13 = v7;
    MSVSQLStatement.bindNull(to:)(v12);
  }

  else if (*(a3 + 16))
  {
    v9 = *a3;
    v11 = sub_258620B94();
    [v3 bindDoubleValue:v11 toParameterNamed:*&a1];
  }

  else
  {
    v10 = *a3;

    [v3 bindDoubleValue:v10 toParameterAtIndex:*&a1];
  }
}

void sub_258611604(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, void, void *))
{
  v5 = *a3;
  v4 = *(a3 + 8);
  v6 = *(a3 + 16);
  if (a2)
  {
    OUTLINED_FUNCTION_17(v6, v7, *a3, v4, v9);
  }

  else
  {
    v8[0] = *a3;
    v8[1] = v4;
    v9 = v6;
    a4(a1, 0, v8);
  }
}

void sub_258611664(uint64_t a1, char a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *a3;
  v7 = *(a3 + 8);
  v9 = *(a3 + 16);
  if (a2)
  {
    v18[0] = *a3;
    v18[1] = v7;
    v19 = v9;
    MSVSQLStatement.bindNull(to:)(v18);
  }

  else if (*(a3 + 16))
  {
    v10 = *a3;
    sub_258620B94();
    OUTLINED_FUNCTION_18();
    v11 = *a4;
    v12 = OUTLINED_FUNCTION_22();
    [v12 v13];
  }

  else
  {
    v14 = *a5;
    v15 = OUTLINED_FUNCTION_22();

    [v15 v16];
  }
}

void MSVSQLStatement.bind(_:to:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if ((a1 & 0x100000000) != 0)
  {
    OUTLINED_FUNCTION_17(v7, v10, v6, v5, v12);
  }

  else
  {
    v8 = a1;
    if (v7)
    {
      v11 = sub_258620B94();
      LODWORD(v9) = v8;
      [v3 bindFloatValue:v11 toParameterNamed:v9];
    }

    else
    {
      LODWORD(a3) = a1;

      [v3 bindFloatValue:v6 toParameterAtIndex:a3];
    }
  }
}

void MSVSQLStatement.bind(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a3;
  if (a2)
  {
    if (*(a3 + 16))
    {
      v5 = sub_258620B94();
      sub_258620B94();
      OUTLINED_FUNCTION_18();
      [v3 bindStringValue:v5 toParameterNamed:?];
    }

    else
    {
      v6 = sub_258620B94();
      [v3 bindStringValue:v6 toParameterAtIndex:v4];
    }
  }

  else
  {
    OUTLINED_FUNCTION_17(*(a3 + 16), v6, *a3, *(a3 + 8), v7);
  }
}

void MSVSQLStatement.bind<A>(_:to:)()
{
  OUTLINED_FUNCTION_27();
  v5 = OUTLINED_FUNCTION_12_0();
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_24();
  v11 = *(v2 + 16);
  v12 = OUTLINED_FUNCTION_23(v8);
  v13(v12);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v1);
  if (EnumTagSinglePayload == 1)
  {
    (*(v8 + 8))(v0, v5);
    v15 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_13();
    sub_258620C94();
    v15 = v17[0];
    OUTLINED_FUNCTION_10_0(v1);
    (*(v16 + 8))(v0, v1);
  }

  v17[0] = v3;
  v17[1] = v4;
  v18 = v11;
  MSVSQLStatement.bind(_:to:)(v15, EnumTagSinglePayload == 1, v17);
  OUTLINED_FUNCTION_26();
}

{
  OUTLINED_FUNCTION_27();
  v5 = OUTLINED_FUNCTION_12_0();
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_24();
  v11 = *(v2 + 16);
  v12 = OUTLINED_FUNCTION_23(v8);
  v13(v12);
  if (__swift_getEnumTagSinglePayload(v0, 1, v1) == 1)
  {
    (*(v8 + 8))(v0, v5);
    v14 = 0;
    v15 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_13();
    sub_258620C94();
    v14 = v17;
    v15 = v18;
    OUTLINED_FUNCTION_10_0(v1);
    (*(v16 + 8))(v0, v1);
  }

  v17 = v3;
  v18 = v4;
  v19 = v11;
  MSVSQLStatement.bind(_:to:)(v14, v15, &v17);

  OUTLINED_FUNCTION_26();
}

void MSVSQLStatement.bind(_:to:)(char a1, uint64_t a2)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (a1 == 2)
  {
    OUTLINED_FUNCTION_17(v6, v8, v5, v4, v9);
  }

  else if (v6)
  {
    sub_258620B94();
    OUTLINED_FUNCTION_18();
    [v2 bindBoolValue:a1 & 1 toParameterNamed:?];
  }

  else
  {

    [v2 bindBoolValue:a1 & 1 toParameterAtIndex:v5];
  }
}

void MSVSQLStatement.bind(_:to:)()
{
  OUTLINED_FUNCTION_27();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_258611EA4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258620AB4();
  v11 = OUTLINED_FUNCTION_1_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v25[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v3;
  v19 = *(v3 + 8);
  v20 = *(v3 + 16);
  OUTLINED_FUNCTION_5_0();
  sub_2586120A0(v5, v9, v21);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_258612158(v9, sub_258611EA4);
    v25[0] = v18;
    v25[1] = v19;
    v26 = v20;
    MSVSQLStatement.bindNull(to:)(v25);
  }

  else
  {
    (*(v13 + 32))(v17, v9, v10);
    if (v20)
    {
      v22 = sub_258620AA4();
      v23 = sub_258620B94();
      [v1 bindDateValue:v22 toParameterNamed:v23];
    }

    else
    {
      v23 = sub_258620AA4();
      [v1 bindDateValue:v23 toParameterAtIndex:v18];
    }

    (*(v13 + 8))(v17, v10);
  }

  OUTLINED_FUNCTION_26();
}

void sub_258611EA4()
{
  if (!qword_27F954AE8)
  {
    sub_258620AB4();
    v0 = sub_258620EA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F954AE8);
    }
  }
}

void MSVSQLStatement.bind(json:to:)(uint64_t a1, uint64_t *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  OUTLINED_FUNCTION_4_0();
  sub_2586120A0(v6, &v17, v7);
  if (v18)
  {
    sub_25860E530(&v17, &v19);
    if (v5)
    {
      __swift_project_boxed_opaque_existential_0(&v19, v21);
      v8 = sub_2586210D4();
      OUTLINED_FUNCTION_8_0();
      v9 = sub_258620B94();
      *&v17 = 0;
      v10 = [v2 bindJSONValue:v8 toParameterNamed:v9 error:&v17];
      swift_unknownObjectRelease();

      v11 = v17;
      if ((v10 & 1) == 0)
      {
LABEL_4:
        v12 = v11;
        sub_258620A44();

        swift_willThrow();
LABEL_8:
        __swift_destroy_boxed_opaque_existential_0(&v19);
        goto LABEL_9;
      }
    }

    else
    {
      __swift_project_boxed_opaque_existential_0(&v19, v21);
      v13 = sub_2586210D4();
      *&v17 = 0;
      v14 = [v2 bindJSONValue:v13 toParameterAtIndex:v3 error:&v17];
      swift_unknownObjectRelease();
      v11 = v17;
      if (!v14)
      {
        goto LABEL_4;
      }
    }

    v15 = v11;
    goto LABEL_8;
  }

  sub_258612158(&v17, sub_258612104);
  *&v19 = v3;
  *(&v19 + 1) = v4;
  v20 = v5;
  MSVSQLStatement.bindNull(to:)(&v19);
LABEL_9:
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2586120A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_10_0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

void sub_258612104()
{
  if (!qword_27F954AF0)
  {
    v0 = sub_258620EA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F954AF0);
    }
  }
}

uint64_t sub_258612158(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_10_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void MSVSQLStatement.bind(functionContext:to:)(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (a1)
  {
    if (*(a2 + 16))
    {
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_13();
      sub_258620B94();
      OUTLINED_FUNCTION_18();
      v3 = OUTLINED_FUNCTION_22();
      [v3 v4];
      swift_unknownObjectRelease();
    }

    else
    {
      v5 = OUTLINED_FUNCTION_22();

      [v5 v6];
    }
  }

  else
  {
    OUTLINED_FUNCTION_17(*(a2 + 16), v7, *a2, *(a2 + 8), v8);
  }
}

uint64_t MSVSQLDatabase.StatementInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)@<X0>(uint64_t result@<X0>, int64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0xE000000000000000;
  a3[2] = MEMORY[0x277D84F90];
  v3 = *MEMORY[0x277D27EC8] + 1;
  if (__OFADD__(*MEMORY[0x277D27EC8], 1))
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = a2 * v3;
  if ((a2 * v3) >> 64 != (a2 * v3) >> 63)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = __OFADD__(result, v5);
  result += v5;
  if (!v6)
  {
    MEMORY[0x259C84760](result);
    return sub_2586114D0(a2);
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_25861245C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v9 = OUTLINED_FUNCTION_9_0();
  sub_258620BA4();

  v10 = OUTLINED_FUNCTION_20();
  MEMORY[0x259C847B0](v10);

  v11 = OUTLINED_FUNCTION_20();
  MEMORY[0x259C847B0](v11);
  OUTLINED_FUNCTION_21();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2 & 1;
  *(v12 + 32) = v15;
  *(v12 + 40) = v16;
  sub_25861321C();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_19();
  *(v13 + 32) = a4;
  *(v13 + 40) = v12;
  *(v6 + 16) = v14;
}

uint64_t sub_258612528(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, void, void *))
{
  v11 = *a1;
  v13[0] = a4;
  v13[1] = a5;
  v14 = 1;

  a6(a2, a3 & 1, v13);

  return sub_258613920(a4, a5, 1);
}

Swift::Void __swiftcall MSVSQLDatabase.StatementInterpolation.StringInterpolation.appendInterpolation(_:)(Swift::Float_optional *a1)
{
  v5 = OUTLINED_FUNCTION_7_0();
  sub_258620BA4();
  OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_8_0();
  MEMORY[0x259C847B0](v6);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_14();
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 20) = BYTE4(v2) & 1;
  *(v7 + 24) = v3;
  *(v7 + 32) = v4;
  sub_25861321C();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  *(v8 + 32) = sub_258613330;
  *(v8 + 40) = v7;
  *(v1 + 16) = v9;
}

uint64_t sub_258612668(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v10[0] = a3;
  v10[1] = a4;
  v11 = 1;

  MSVSQLStatement.bind(_:to:)(a2 | ((HIDWORD(a2) & 1) << 32), v10, v8);

  return sub_258613920(a3, a4, 1);
}

Swift::Void __swiftcall MSVSQLDatabase.StatementInterpolation.StringInterpolation.appendInterpolation(_:)(Swift::String_optional a1)
{
  v2 = v1;
  object = a1.value._object;
  countAndFlagsBits = a1.value._countAndFlagsBits;
  v5 = OUTLINED_FUNCTION_9_0();
  v6 = sub_258620BA4();
  v8 = v7;

  MEMORY[0x259C847B0](v6, v8);

  MEMORY[0x259C847B0]();
  OUTLINED_FUNCTION_21();
  v9 = swift_allocObject();
  v9[2] = countAndFlagsBits;
  v9[3] = object;
  v9[4] = v12;
  v9[5] = v13;

  sub_25861321C();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  *(v10 + 32) = sub_258613354;
  *(v10 + 40) = v9;
  *(v2 + 16) = v11;
}

uint64_t sub_2586127C8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v11[0] = a4;
  v11[1] = a5;
  v12 = 1;

  MSVSQLStatement.bind(_:to:)(a2, a3, v11);

  return sub_258613920(a4, a5, 1);
}

void MSVSQLDatabase.StatementInterpolation.StringInterpolation.appendInterpolation<A>(_:)()
{
  sub_258612890();
}

{
  sub_258612890();
}

void sub_258612890()
{
  OUTLINED_FUNCTION_27();
  v29 = v1;
  v30 = v2;
  v28[1] = v3;
  v4 = v0;
  v6 = v5;
  v8 = v7;
  v9 = sub_258620EA4();
  v10 = OUTLINED_FUNCTION_1_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = v28 - v15;
  v31 = 64;
  v32 = 0xE100000000000000;
  v17 = MSVNanoIDCreateTaggedPointer();
  sub_258620BA4();

  v18 = OUTLINED_FUNCTION_13();
  MEMORY[0x259C847B0](v18);

  v19 = v31;
  v20 = v32;
  v21 = OUTLINED_FUNCTION_13();
  MEMORY[0x259C847B0](v21);
  (*(v12 + 16))(v16, v8, v9);
  v22 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v23 = swift_allocObject();
  v24 = v29;
  *(v23 + 16) = v6;
  *(v23 + 24) = v24;
  (*(v12 + 32))(v23 + v22, v16, v9);
  v25 = (v23 + ((v14 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = v19;
  v25[1] = v20;
  sub_25861321C();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  *(v26 + 32) = v30;
  *(v26 + 40) = v23;
  *(v4 + 16) = v27;
  OUTLINED_FUNCTION_26();
}

uint64_t sub_258612A28(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, void *, uint64_t, uint64_t))
{
  v13 = *a1;
  v15[0] = a3;
  v15[1] = a4;
  v16 = 1;

  a7(a2, v15, a5, a6);

  return sub_258613920(a3, a4, 1);
}

Swift::Void __swiftcall MSVSQLDatabase.StatementInterpolation.StringInterpolation.appendInterpolation(_:)(Swift::Bool_optional a1)
{
  v5 = OUTLINED_FUNCTION_9_0();
  sub_258620BA4();
  OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_8_0();
  MEMORY[0x259C847B0](v6);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_14();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = v2;
  *(v7 + 32) = v3;
  sub_25861321C();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  *(v8 + 32) = sub_258613518;
  *(v8 + 40) = v7;
  *(v1 + 16) = v9;
}

uint64_t sub_258612B78(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v9[0] = a3;
  v9[1] = a4;
  v10 = 1;

  MSVSQLStatement.bind(_:to:)(a2, v9);

  return sub_258613920(a3, a4, 1);
}

void MSVSQLDatabase.StatementInterpolation.StringInterpolation.appendInterpolation(_:)(uint64_t a1)
{
  v2 = v1;
  sub_258611EA4();
  v5 = OUTLINED_FUNCTION_3_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v21 = 64;
  v22 = 0xE100000000000000;
  v10 = MSVNanoIDCreateTaggedPointer();
  sub_258620BA4();

  v11 = OUTLINED_FUNCTION_20();
  MEMORY[0x259C847B0](v11);

  v12 = v21;
  v13 = v22;
  v14 = OUTLINED_FUNCTION_20();
  MEMORY[0x259C847B0](v14);
  OUTLINED_FUNCTION_5_0();
  sub_2586120A0(a1, &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_258613524(&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v18 = (v17 + ((v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = v12;
  v18[1] = v13;
  sub_25861321C();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  *(v19 + 32) = sub_258613588;
  *(v19 + 40) = v17;
  *(v2 + 16) = v20;
}

uint64_t sub_258612D68(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;

  MSVSQLStatement.bind(_:to:)();

  return sub_258613920(a3, a4, 1);
}

void MSVSQLDatabase.StatementInterpolation.StringInterpolation.appendInterpolation(json:)()
{
  v4 = OUTLINED_FUNCTION_7_0();
  sub_258620BA4();
  OUTLINED_FUNCTION_28();
  v5 = OUTLINED_FUNCTION_8_0();
  MEMORY[0x259C847B0](v5);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_0();
  sub_2586120A0(v1, v11, v6);
  v7 = swift_allocObject();
  v8 = v11[1];
  *(v7 + 16) = v11[0];
  *(v7 + 32) = v8;
  *(v7 + 48) = v2;
  *(v7 + 56) = v3;
  sub_25861321C();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_19();
  *(v9 + 32) = sub_25861361C;
  *(v9 + 40) = v7;
  *(v0 + 16) = v10;
}

uint64_t sub_258612EA0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v9[0] = a3;
  v9[1] = a4;
  v10 = 1;

  MSVSQLStatement.bind(json:to:)(a2, v9);
  return sub_258613920(a3, a4, 1);
}

void MSVSQLDatabase.StatementInterpolation.StringInterpolation.appendInterpolation(functionContext:)()
{
  v4 = OUTLINED_FUNCTION_7_0();
  sub_258620BA4();
  OUTLINED_FUNCTION_28();
  v5 = OUTLINED_FUNCTION_8_0();
  MEMORY[0x259C847B0](v5);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_14();
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  swift_unknownObjectRetain();
  sub_25861321C();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  *(v7 + 32) = sub_258613628;
  *(v7 + 40) = v6;
  *(v0 + 16) = v8;
}

uint64_t sub_258612FE4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v9[0] = a3;
  v9[1] = a4;
  v10 = 1;

  MSVSQLStatement.bind(functionContext:to:)(a2, v9);

  return sub_258613920(a3, a4, 1);
}

uint64_t MSVSQLDatabase.StatementInterpolation.init(stringLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_258620C24();
  MEMORY[0x259C84760](v6);
  v7 = sub_2586104E0(0, 0, 0, MEMORY[0x277D84F90]);

  a3[1] = a2;
  a3[2] = v7;
  *a3 = a1;
  return result;
}

__n128 MSVSQLDatabase.StatementInterpolation.init(stringInterpolation:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

id MSVSQLDatabase.statement(_:)(uint64_t *a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = sub_258620B94();
  v16[0] = 0;
  v6 = [v1 statementWithString:v5 error:v16];

  if (v6)
  {
    v7 = *(v4 + 16);
    if (v7)
    {
      v8 = v16[0];
      v9 = (v4 + 40);
      do
      {
        v11 = *(v9 - 1);
        v10 = *v9;
        v16[0] = v6;

        v11(v16);

        v9 += 2;
        --v7;
      }

      while (v7);
    }

    else
    {
      v13 = v16[0];
    }
  }

  else
  {
    v12 = v16[0];
    sub_258620A44();

    swift_willThrow();
  }

  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_25861321C()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_2586104E0(result, v1[2] + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

uint64_t sub_258613268(uint64_t result)
{
  v2 = *(*v1 + 24);
  if (result + 1 > (v2 >> 1))
  {
    result = sub_2586104E0(v2 > 1, result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

uint64_t objectdestroy_20Tm()
{
  v1 = *(v0 + 16);
  v2 = sub_258620EA4();
  OUTLINED_FUNCTION_3_0(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  if (!__swift_getEnumTagSinglePayload(v0 + v5, 1, v1))
  {
    OUTLINED_FUNCTION_10_0(v1);
    (*(v8 + 8))(v0 + v5, v1);
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2821FE8E8](v0, v1 + 16, v4 | 7);
}

uint64_t sub_258613470(uint64_t *a1, void (*a2)(uint64_t, void *, uint64_t, uint64_t))
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = sub_258620EA4();
  OUTLINED_FUNCTION_3_0(v7);
  v9 = v8;
  v11 = v10;
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = *(v11 + 64);
  OUTLINED_FUNCTION_11_0(v12);
  return sub_258612A28(a1, v14, v15, v16, v5, v6, a2);
}

uint64_t sub_258613524(uint64_t a1, uint64_t a2)
{
  sub_258611EA4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258613588(uint64_t *a1)
{
  sub_258611EA4();
  OUTLINED_FUNCTION_3_0(v2);
  v4 = v3;
  v6 = v5;
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = *(v6 + 64);
  OUTLINED_FUNCTION_11_0(v7);

  return sub_258612D68(a1, v9, v10, v11);
}

unint64_t sub_258613644()
{
  result = qword_27F954AF8;
  if (!qword_27F954AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F954AF8);
  }

  return result;
}

unint64_t sub_25861369C()
{
  result = qword_27F954B00;
  if (!qword_27F954B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F954B00);
  }

  return result;
}

unint64_t sub_2586136F4()
{
  result = qword_27F954B08;
  if (!qword_27F954B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F954B08);
  }

  return result;
}

unint64_t sub_25861374C()
{
  result = qword_27F954B10;
  if (!qword_27F954B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F954B10);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2586137D8(uint64_t a1, unsigned int a2)
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

uint64_t sub_258613818(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_258613894(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2586138D4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_258613920(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_0()
{
  v2 = *(*(v0 + 16) + 16);

  return sub_258613268(v2);
}

void OUTLINED_FUNCTION_6_0()
{

  JUMPOUT(0x259C847B0);
}

uint64_t OUTLINED_FUNCTION_7_0()
{

  return MSVNanoIDCreateTaggedPointer();
}

uint64_t OUTLINED_FUNCTION_9_0()
{

  return MSVNanoIDCreateTaggedPointer();
}

void OUTLINED_FUNCTION_11_0(uint64_t a1@<X8>)
{
  v3 = (v2 + ((v1 + a1 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];
}

uint64_t OUTLINED_FUNCTION_12_0()
{

  return sub_258620EA4();
}

uint64_t OUTLINED_FUNCTION_15()
{
  v4 = *(v0 + ((v2 + v1 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

void OUTLINED_FUNCTION_17(char a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  a5 = a1;

  MSVSQLStatement.bindNull(to:)(&a3);
}

uint64_t OUTLINED_FUNCTION_25()
{
  v2 = *(*(v0 + 16) + 16);

  return sub_258613268(v2);
}

void OUTLINED_FUNCTION_28()
{
}

void sub_258613C04(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = objc_opt_self();
  v3 = sub_258620B94();
  sub_258620C94();
  v4 = sub_258620A34();
  sub_258614170();
  v5 = sub_258620CA4();
  v6 = sub_258620B44();
  v7 = sub_258620B94();
  v8 = [v2 _msv_errorWithDomain_code_underlyingError_underlyingErrors_userInfo_debugDescriptionFormat_arguments_];

  *a2 = v8;
}

uint64_t sub_258613D80(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  sub_258621034();
  v4 = swift_allocObject();
  v4[2] = 8;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 32);
    do
    {
      v7 = v6[4];
      __swift_project_boxed_opaque_existential_0(v6, v6[3]);
      sub_2586211A4();
      sub_258621014();

      v6 += 5;
      --v5;
    }

    while (v5);
  }

  v8 = sub_258621024();
  a2(&v10, v8);

  return v10;
}

void sub_258613EB8(uint64_t a1@<X0>, uint64_t a2@<X5>, void *a3@<X6>, void *a4@<X8>)
{
  v6 = sub_258620B94();
  sub_258620C94();
  if (!a2)
  {
    v7 = 0;
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = sub_258620A34();
  if (a3)
  {
LABEL_3:
    sub_258614058(a3);
    sub_258614170();
    a3 = sub_258620CA4();
  }

LABEL_4:
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = sub_258620B44();
  v10 = sub_258620B94();
  v11 = [ObjCClassFromMetadata _msv_errorWithDomain_code_underlyingError_underlyingErrors_userInfo_debugDescriptionFormat_arguments_];

  *a4 = v11;
}

void sub_258614028()
{
  OUTLINED_FUNCTION_0_1();
  v5 = *(v0 + 88);
  sub_258613EB8(v1, v2, v3, v4);
}

void *sub_258614058(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_258621064();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v10 = MEMORY[0x277D84F90];
  result = sub_258610B08(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v10;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x259C84AC0](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v9 = *(v10 + 16);
      v8 = *(v10 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_258610B08((v8 > 1), v9 + 1, 1);
      }

      ++v5;
      *(v10 + 16) = v9 + 1;
      *(v10 + 8 * v9 + 32) = v7;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_258614170()
{
  result = qword_281548FF8;
  if (!qword_281548FF8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281548FF8);
  }

  return result;
}

void OUTLINED_FUNCTION_0_1()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[10];
}

uint64_t NSURLSession.dataProgress(for:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  sub_25861469C();
  v4 = *(*(v3 - 8) + 64) + 15;
  v0[2] = swift_task_alloc();
  v5 = sub_258620E34();
  v0[3] = v5;
  v6 = *(v5 - 8);
  v0[4] = v6;
  v0[5] = *(v6 + 64);
  v0[6] = swift_task_alloc();
  v7 = swift_task_alloc();
  v0[7] = v7;
  v8 = *(MEMORY[0x277CC9D30] + 4);
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_25861432C;

  return MEMORY[0x28211ED10](v7, v2, 0);
}

uint64_t sub_25861432C()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v3;
  }

  OUTLINED_FUNCTION_1_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_258614444()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v7 = v0[3];
  v19 = v6;
  v8 = [objc_allocWithZone(MEMORY[0x277CCAC48]) init];
  v9 = [v1 expectedContentLength];
  [v8 setTotalUnitCount_];
  v10 = sub_258620D84();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v10);
  (*(v5 + 16))(v2, v3, v7);
  v11 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v12 = (v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = v9;
  (*(v5 + 32))(&v13[v11], v2, v7);
  *&v13[v12] = v8;
  v14 = v8;
  v15 = sub_258615624(0, 0, v19, &unk_258621AF0, v13);
  (*(v5 + 8))(v3, v7);

  v16 = v0[1];
  v17 = v0[10];

  return v16(v14, v17, v15);
}

uint64_t sub_25861462C()
{
  OUTLINED_FUNCTION_6_1();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[2];

  OUTLINED_FUNCTION_3_1();
  v5 = v0[9];

  return v4();
}

void sub_25861469C()
{
  if (!qword_27F954B18)
  {
    sub_258620D84();
    v0 = sub_258620EA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F954B18);
    }
  }
}

uint64_t sub_25861471C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *MEMORY[0x277D85DE8];
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a1;
  v6[22] = a4;
  v7 = sub_258620E34();
  v6[25] = v7;
  v8 = *(v7 - 8);
  v6[26] = v8;
  v9 = *(v8 + 64) + 15;
  v6[27] = swift_task_alloc();
  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_25861480C, 0, 0);
}

uint64_t sub_25861480C()
{
  OUTLINED_FUNCTION_7_1();
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v6 = [objc_allocWithZone(MEMORY[0x277CBEB78]) initToMemory];
  *(v0 + 224) = v6;
  [v6 open];
  *(v0 + 144) = xmmword_258621AD0;
  sub_258620A84();
  v7 = *(v2 + 16);
  v8 = OUTLINED_FUNCTION_2_1();
  v9(v8);
  *(v0 + 120) = sub_258620E24();
  *(v0 + 128) = v10;
  *(v0 + 136) = v11;
  OUTLINED_FUNCTION_0_2();
  v12 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_258614924()
{
  OUTLINED_FUNCTION_6_1();
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 128);
  if (v1 == *(v0 + 136))
  {
    v6 = *(MEMORY[0x277CC8CB8] + 4);
    v7 = swift_task_alloc();
    *(v0 + 240) = v7;
    *v7 = v0;
    v7[1] = sub_258614A44;
    v8 = *MEMORY[0x277D85DE8];

    return MEMORY[0x28211C470]();
  }

  else
  {
    *(v0 + 259) = *v1;
    *(v0 + 128) = v1 + 1;
    v2 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_1_1();

    return MEMORY[0x2822009F8](v3, v4, v5);
  }
}

uint64_t sub_258614A44()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v12 = *MEMORY[0x277D85DE8];
  v5 = *(*v1 + 240);
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v4;
  *(v4 + 248) = v0;

  if (!v0)
  {
    *(v4 + 256) = v3;
  }

  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_258614B84()
{
  OUTLINED_FUNCTION_7_1();
  v29 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 259);
  v2 = *(v0 + 232);
  sub_258620DB4();
  if (v2)
  {
    v3 = *(v0 + 120);
    swift_unknownObjectRelease();
    sub_258610820(*(v0 + 144), *(v0 + 152));
    v4 = *(v0 + 224);
    [v4 close];

    OUTLINED_FUNCTION_3_1();
    v6 = *MEMORY[0x277D85DE8];

    return v5();
  }

  switch(*(v0 + 152) >> 62)
  {
    case 2:
      v8 = *(*(v0 + 144) + 24);
      break;
    default:
      break;
  }

  sub_258615E78();
  v10 = v9;
  *(v0 + 40) = v9;
  *(v0 + 48) = sub_258615EC8();
  *(v0 + 16) = v1;
  v11 = __swift_project_boxed_opaque_existential_0((v0 + 16), v10);
  OUTLINED_FUNCTION_4_1(v11);
  v12 = __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v13 = *(v0 + 144);
  v14 = *(v0 + 152) >> 62;
  switch(v14)
  {
    case 1:
      LODWORD(v15) = HIDWORD(v13) - v13;
      if (__OFSUB__(HIDWORD(v13), v13))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v15 = v15;
LABEL_11:
      if (v15 != 4096)
      {
        goto LABEL_18;
      }

      v19 = [*(v0 + 192) completedUnitCount];
      if (__OFADD__(v19, 4096))
      {
        goto LABEL_23;
      }

      v20 = *(v0 + 224);
      [*(v0 + 192) setCompletedUnitCount_];
      v21 = OUTLINED_FUNCTION_2_1();
      NSOutputStream.write(_:)(v21, v22);
      if (v14 == 2)
      {
        v23 = *(v13 + 16);
        v24 = *(v13 + 24);
      }

      else
      {
        v23 = v13;
        v24 = v13 >> 32;
      }

      if (v24 < v23)
      {
LABEL_24:
        __break(1u);
      }

      v12 = sub_258620A74();
LABEL_18:
      OUTLINED_FUNCTION_0_2(v12);
      v25 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_1_1();

      return MEMORY[0x2822009F8](v26, v27, v28);
    case 2:
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      v18 = __OFSUB__(v16, v17);
      v15 = v16 - v17;
      if (!v18)
      {
        goto LABEL_11;
      }

      goto LABEL_22;
    default:
      goto LABEL_18;
  }
}

uint64_t sub_258614DF4()
{
  OUTLINED_FUNCTION_6_1();
  v6 = *MEMORY[0x277D85DE8];
  *(v0 + 160) = *(v0 + 248);
  sub_258614170();
  swift_willThrowTypedImpl();
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_258614EA0()
{
  OUTLINED_FUNCTION_8_1();
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[15];
  swift_unknownObjectRelease();
  sub_258610820(v0[18], v0[19]);
  v2 = v0[31];
  v3 = v0[28];
  [v3 close];

  OUTLINED_FUNCTION_3_1();
  v5 = *MEMORY[0x277D85DE8];

  return v4();
}

uint64_t sub_258614F58()
{
  OUTLINED_FUNCTION_7_1();
  v48 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 256);
  if ((v1 & 0x100) != 0)
  {
    v6 = *(v0 + 120);
    swift_unknownObjectRelease();
    v7 = *(v0 + 144);
    v8 = *(v0 + 152);
    switch(v8 >> 62)
    {
      case 1uLL:
        v10 = v7;
        v11 = v7 >> 32;
        goto LABEL_10;
      case 2uLL:
        v10 = *(v7 + 16);
        v11 = *(v7 + 24);
LABEL_10:
        if (v10 != v11)
        {
          goto LABEL_11;
        }

        goto LABEL_14;
      case 3uLL:
        goto LABEL_14;
      default:
        if ((v8 & 0xFF000000000000) == 0)
        {
          goto LABEL_14;
        }

LABEL_11:
        v12 = *(v0 + 248);
        v13 = *(v0 + 224);
        v14 = OUTLINED_FUNCTION_2_1();
        NSOutputStream.write(_:)(v14, v15);
        if (v12)
        {
          v4 = OUTLINED_FUNCTION_2_1();
          goto LABEL_13;
        }

LABEL_14:
        v19 = *(v0 + 224);
        [*(v0 + 192) setCompletedUnitCount_];
        v20 = [v19 propertyForKey_];
        if (v20)
        {
          v24 = *(v0 + 216);
          v23 = *(v0 + 224);
          v25 = *(v0 + 168);
          sub_258620F04();
          swift_unknownObjectRelease();
          sub_25860E530((v0 + 88), (v0 + 56));
          swift_dynamicCast();
          v26 = OUTLINED_FUNCTION_2_1();
          sub_258610820(v26, v27);
          [v23 close];

          OUTLINED_FUNCTION_3_1();
          v28 = *MEMORY[0x277D85DE8];
          goto LABEL_16;
        }

        __break(1u);
        break;
    }

    return MEMORY[0x2822009F8](v20, v21, v22);
  }

  v2 = *(v0 + 248);
  sub_258620DB4();
  if (!v2)
  {
    v9 = v1;
    switch(*(v0 + 152) >> 62)
    {
      case 2:
        v30 = *(*(v0 + 144) + 24);
        break;
      default:
        break;
    }

    sub_258615E78();
    v32 = v31;
    *(v0 + 40) = v31;
    *(v0 + 48) = sub_258615EC8();
    *(v0 + 16) = v9;
    v33 = __swift_project_boxed_opaque_existential_0((v0 + 16), v32);
    OUTLINED_FUNCTION_4_1(v33);
    v34 = __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v35 = *(v0 + 144);
    v36 = *(v0 + 152) >> 62;
    switch(v36)
    {
      case 1:
        LODWORD(v37) = HIDWORD(v35) - v35;
        if (__OFSUB__(HIDWORD(v35), v35))
        {
          __break(1u);
LABEL_35:
          __break(1u);
        }

        else
        {
          v37 = v37;
LABEL_24:
          if (v37 != 4096)
          {
            goto LABEL_31;
          }

          v41 = [*(v0 + 192) completedUnitCount];
          if (!__OFADD__(v41, 4096))
          {
            v42 = *(v0 + 224);
            [*(v0 + 192) setCompletedUnitCount_];
            v43 = OUTLINED_FUNCTION_2_1();
            NSOutputStream.write(_:)(v43, v44);
            if (v36 == 2)
            {
              v45 = *(v35 + 16);
              v46 = *(v35 + 24);
            }

            else
            {
              v45 = v35;
              v46 = v35 >> 32;
            }

            if (v46 >= v45)
            {
              v34 = sub_258620A74();
LABEL_31:
              OUTLINED_FUNCTION_0_2(v34);
              v47 = *MEMORY[0x277D85DE8];
              OUTLINED_FUNCTION_1_1();

              return MEMORY[0x2822009F8](v20, v21, v22);
            }

LABEL_37:
            __break(1u);
          }
        }

        __break(1u);
        goto LABEL_37;
      case 2:
        v39 = *(v35 + 16);
        v38 = *(v35 + 24);
        v40 = __OFSUB__(v38, v39);
        v37 = v38 - v39;
        if (!v40)
        {
          goto LABEL_24;
        }

        goto LABEL_35;
      default:
        goto LABEL_31;
    }
  }

  v3 = *(v0 + 120);
  swift_unknownObjectRelease();
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
LABEL_13:
  sub_258610820(v4, v5);
  v16 = *(v0 + 224);
  [v16 close];

  OUTLINED_FUNCTION_3_1();
  v18 = *MEMORY[0x277D85DE8];
LABEL_16:

  return v17();
}

uint64_t sub_258615334()
{
  OUTLINED_FUNCTION_7_1();
  v3 = v2;
  v4 = *(sub_258620E34() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_258615460;

  return sub_25861471C(v3, v6, v7, v8, v0 + v5, v9);
}

uint64_t sub_258615460()
{
  OUTLINED_FUNCTION_6_1();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;

  OUTLINED_FUNCTION_3_1();

  return v4();
}

void NSOutputStream.write(_:)(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v14 = a1 >> 32;
      if (a1 >> 32 >= a1)
      {
        v15 = a1;
        v10 = v2;
        v11 = a2 & 0x3FFFFFFFFFFFFFFFLL;
        v12 = v15;
        v13 = v14;
        goto LABEL_8;
      }

      __break(1u);
      break;
    case 2uLL:
      v9 = *(a1 + 16);
      v8 = *(a1 + 24);
      v10 = v2;
      v11 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v12 = v9;
      v13 = v8;
LABEL_8:
      sub_258615ADC(v12, v13, v11, v10);
      break;
    case 3uLL:
      v5 = v2;
      v7 = 0;
      v6 = 0;
      goto LABEL_5;
    default:
      v5 = v2;
      v6 = a2 & 0xFFFFFFFFFFFFFFLL;
      v7 = a1;
LABEL_5:
      sub_2586159F4(v7, v6, v5);
      break;
  }
}

uint64_t sub_258615624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_25861469C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258615D64(a3, v11);
  v12 = sub_258620D84();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_258615DC8(v11);
  }

  else
  {
    sub_258620D74();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_258620D24();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23[0] = a2;
      v19 = sub_258620BD4() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_258615DC8(a3);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_258615DC8(a3);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t NSOutputStream.OutputStreamError.hashValue.getter()
{
  v1 = *v0;
  sub_258621164();
  MEMORY[0x259C84CE0](v1);
  return sub_258621184();
}

uint64_t sub_258615904()
{
  v1 = *v0;
  sub_258621164();
  MEMORY[0x259C84CE0](v1);
  return sub_258621184();
}

uint64_t sub_258615948(uint64_t result, uint64_t a2, id a3)
{
  if (result)
  {
    v4 = result;
    v5 = a2 - result;
    while (v5 >= 1)
    {
      result = [a3 write:v4 maxLength:v5];
      if (result < 0)
      {
        v6 = 1;
        goto LABEL_8;
      }

      v5 -= result;
      v4 += result;
    }
  }

  else
  {
    v6 = 0;
LABEL_8:
    sub_258615E24();
    swift_allocError();
    *v7 = v6;
    return swift_willThrow();
  }

  return result;
}

void sub_2586159F4(uint64_t a1, uint64_t a2, id a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = BYTE6(a2);
  v9 = a1;
  v11 = WORD2(a2);
  v10 = a2;
  v5 = &v9;
  while (v4 >= 1)
  {
    v6 = [a3 write:v5 maxLength:v4];
    if (v6 < 0)
    {
      sub_258615E24();
      swift_allocError();
      *v7 = 1;
      swift_willThrow();
      break;
    }

    v4 -= v6;
    v5 = (v5 + v6);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_258615ADC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_2586209F4();
  if (v7)
  {
    v8 = sub_258620A14();
    if (__OFSUB__(a1, v8))
    {
LABEL_13:
      __break(1u);
      return;
    }

    v7 += a1 - v8;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_258620A04();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + v7;
  if (v7)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  sub_258615948(v7, v14, a4);
}

unint64_t sub_258615B90()
{
  result = qword_27F954B20;
  if (!qword_27F954B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F954B20);
  }

  return result;
}

uint64_t _s17OutputStreamErrorOwet(unsigned __int8 *a1, unsigned int a2)
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
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s17OutputStreamErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_258615D64(uint64_t a1, uint64_t a2)
{
  sub_25861469C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258615DC8(uint64_t a1)
{
  sub_25861469C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_258615E24()
{
  result = qword_27F954B28;
  if (!qword_27F954B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F954B28);
  }

  return result;
}

void sub_258615E78()
{
  if (!qword_27F954B30)
  {
    v0 = sub_258620F94();
    if (!v1)
    {
      atomic_store(v0, &qword_27F954B30);
    }
  }
}

unint64_t sub_258615EC8()
{
  result = qword_27F954B38;
  if (!qword_27F954B38)
  {
    sub_258615E78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F954B38);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_1()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_1(_BYTE *a1)
{
  *(v1 + 258) = *a1;

  return sub_258620A74();
}

uint64_t sub_258615FB8(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_258621064();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_258615FE0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = &type metadata for RepeatMode;
  *(a2 + 32) = &protocol witness table for RepeatMode;
  *a2 = result;
  return result;
}

uint64_t sub_258615FFC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = &type metadata for ShuffleMode;
  *(a2 + 32) = &protocol witness table for ShuffleMode;
  *a2 = result;
  return result;
}

void sub_258616018(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for MRContentItemMediaType();
  a2[3] = v4;
  a2[4] = &protocol witness table for MRContentItemMediaType;
  *a2 = a1;
}

void sub_258616054(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for MRContentItemMediaSubType();
  a2[3] = v4;
  a2[4] = &protocol witness table for MRContentItemMediaSubType;
  *a2 = a1;
}

void sub_258616090(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for MRContentItemEpisodeType();
  a2[3] = v4;
  a2[4] = &protocol witness table for MRContentItemEpisodeType;
  *a2 = a1;
}

void sub_2586160CC(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for MRContentItemPlaylistType();
  a2[3] = v4;
  a2[4] = &protocol witness table for MRContentItemPlaylistType;
  *a2 = a1;
}

void sub_258616108(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for MRContentItemRadioStationType();
  a2[3] = v4;
  a2[4] = &protocol witness table for MRContentItemRadioStationType;
  *a2 = a1;
}

uint64_t sub_258616144@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = &type metadata for SystemAppPlaybackQueueInsertionPosition;
  *(a2 + 32) = &protocol witness table for SystemAppPlaybackQueueInsertionPosition;
  *a2 = result;
  return result;
}

void sub_258616160(int a1@<W0>, uint64_t a2@<X8>)
{
  type metadata accessor for MRMediaRemoteCommandHandlerStatus();
  *(a2 + 24) = v4;
  *(a2 + 32) = &protocol witness table for MRMediaRemoteCommandHandlerStatus;
  *a2 = a1;
}

void sub_25861619C(int a1@<W0>, uint64_t a2@<X8>)
{
  type metadata accessor for MRQueueEndAction();
  *(a2 + 24) = v4;
  *(a2 + 32) = &protocol witness table for MRQueueEndAction;
  *a2 = a1;
}

void sub_2586161D8(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for MRContentItemMetadataAudioRouteType();
  a2[3] = v4;
  a2[4] = &protocol witness table for MRContentItemMetadataAudioRouteType;
  *a2 = a1;
}

void sub_258616214(int a1@<W0>, uint64_t a2@<X8>)
{
  type metadata accessor for MRDisabledReason();
  *(a2 + 24) = v4;
  *(a2 + 32) = &protocol witness table for MRDisabledReason;
  *a2 = a1;
}

void sub_258616250(int a1@<W0>, uint64_t a2@<X8>)
{
  type metadata accessor for MRPlaybackState();
  *(a2 + 24) = v4;
  *(a2 + 32) = &protocol witness table for MRPlaybackState;
  *a2 = a1;
}

uint64_t NamedEnum._namedEnum.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(boxed_opaque_existential_1, v3, a1);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

id MRPlayerPath.init(_:)(void *a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = a1;
  v4 = [v3 origin];
  v5 = [v3 client];
  v6 = [v3 player];
  v7 = [v2 initWithOrigin:v4 client:v5 player:v6];

  return v7;
}

uint64_t MRPlayerPath.Error.hashValue.getter()
{
  OUTLINED_FUNCTION_33();
  MEMORY[0x259C84CE0](0);
  return sub_258621184();
}

uint64_t sub_2586164D4()
{
  OUTLINED_FUNCTION_6_1();
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  sub_25861EE98(0, &qword_27F954B48, 0x277D279E8);
  *v4 = v0;
  v4[1] = sub_2586165D0;
  OUTLINED_FUNCTION_1_1();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_2586165D0()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(*v1 + 40);
  v2 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v4 = v2;
  *(v2 + 48) = v0;

  if (!v0)
  {
    v5 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2586166DC()
{
  OUTLINED_FUNCTION_6_1();
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

void sub_25861673C(uint64_t a1)
{
  sub_25861ECB8(0, &unk_27F954C90);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = aBlock - v6;
  v8 = sub_258620B04();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25861EE98(0, &qword_281549010, 0x277D85C78);
  (*(v9 + 104))(v12, *MEMORY[0x277D851C8], v8);
  v13 = sub_258620E54();
  (*(v9 + 8))(v12, v8);
  (*(v4 + 16))(v7, a1, v3);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  (*(v4 + 32))(v15 + v14, v7, v3);
  aBlock[4] = sub_25861EDB0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_258616B38;
  aBlock[3] = &block_descriptor_401;
  v16 = _Block_copy(aBlock);

  MRMediaRemoteNowPlayingResolvePlayerPath();
  _Block_release(v16);
}

uint64_t sub_2586169E8(void *a1, void *a2)
{
  if (!a2 || (type metadata accessor for CFError(), sub_25861EE98(0, &qword_27F954CA0, 0x277CCA9B8), v4 = a2, (swift_dynamicCast() & 1) == 0))
  {
    if (a1)
    {
      sub_25861EE98(0, &qword_27F954B48, 0x277D279E8);
      MRPlayerPath.init(_:)(a1);
      sub_25861ECB8(0, &unk_27F954C90);
      return sub_258620D44();
    }

    sub_25861EE44();
    swift_allocError();
  }

  sub_25861ECB8(0, &unk_27F954C90);
  return sub_258620D34();
}

void sub_258616B38(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t static MROrigin.available.getter()
{
  OUTLINED_FUNCTION_6_1();
  v1 = *(MEMORY[0x277D859E0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  sub_25861E390(0, &unk_27F954B50);
  *v2 = v0;
  v2[1] = sub_258616C9C;
  OUTLINED_FUNCTION_1_1();

  return MEMORY[0x2822007B8]();
}

uint64_t sub_258616C9C()
{
  OUTLINED_FUNCTION_6_1();
  v1 = *(*v0 + 24);
  v2 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;

  OUTLINED_FUNCTION_1_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_258616D88(uint64_t a1)
{
  sub_25861EBD8();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = sub_258620B04();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25861EE98(0, &qword_281549010, 0x277D85C78);
  (*(v7 + 104))(v10, *MEMORY[0x277D851C8], v6);
  v11 = sub_258620E54();
  (*(v7 + 8))(v10, v6);
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  (*(v4 + 32))(v13 + v12, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  aBlock[4] = sub_25861EC58;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25861F064;
  aBlock[3] = &block_descriptor_395;
  v14 = _Block_copy(aBlock);

  MRMediaRemoteGetAvailableOrigins();
  _Block_release(v14);
}

uint64_t sub_25861700C(uint64_t a1)
{
  if (a1)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_25861EE98(0, &qword_27F954B58, 0x277D279D0);
      sub_258620CB4();
    }
  }

  sub_25861EBD8();
  return sub_258620D44();
}

uint64_t MediaRemoteCommand.name.getter()
{
  v1 = *v0;
  v2 = dlsym(0xFFFFFFFFFFFFFFFELL, "MPCRemoteCommandDescriptionCopy");
  v3 = v2(dword_258623CB4[v1]);
  sub_258620BA4();
  OUTLINED_FUNCTION_21_0();

  return OUTLINED_FUNCTION_22_0();
}

uint64_t sub_258617150()
{
  OUTLINED_FUNCTION_33();
  MEMORY[0x259C84CE0](0);
  return sub_258621184();
}

uint64_t sub_258617194()
{
  sub_258621164();
  MEMORY[0x259C84CE0](0);
  return sub_258621184();
}

uint64_t MediaRemoteCommand.send(_:sendOptions:to:)(uint64_t a1, int a2, uint64_t a3)
{
  *(v4 + 64) = a2;
  *(v4 + 24) = a1;
  *(v4 + 32) = a3;
  *(v4 + 68) = *v3;
  return OUTLINED_FUNCTION_6_2();
}

uint64_t sub_2586171F4()
{
  v1 = *(v0 + 68);
  v2 = *(v0 + 64);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v4;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  sub_25861EE98(0, &qword_27F954B60, 0x277D27968);
  *v7 = v0;
  v7[1] = sub_258617314;
  OUTLINED_FUNCTION_1_1();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_258617314()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(*v1 + 48);
  v2 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v4 = v2;
  *(v2 + 56) = v0;

  if (!v0)
  {
    v5 = *(v2 + 40);
  }

  OUTLINED_FUNCTION_1_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_25861743C()
{
  OUTLINED_FUNCTION_6_1();
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

void sub_25861749C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, int a5)
{
  v27 = a5;
  v25 = a1;
  v26 = a4;
  sub_25861ECB8(0, &unk_27F954C68);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v24 - v11;
  v13 = sub_258620B04();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = dword_258623CB4[a2];
  sub_2586177B0(a3);
  v19 = sub_258620B44();

  sub_25861EE98(0, &qword_281549010, 0x277D85C78);
  (*(v14 + 104))(v17, *MEMORY[0x277D851C8], v13);
  v20 = sub_258620E54();
  (*(v14 + 8))(v17, v13);
  (*(v9 + 16))(v12, v25, v8);
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v22 = swift_allocObject();
  (*(v9 + 32))(v22 + v21, v12, v8);
  aBlock[4] = sub_25861E9E8;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25861F064;
  aBlock[3] = &block_descriptor;
  v23 = _Block_copy(aBlock);

  MRMediaRemoteSendCommandToPlayerWithResult();
  _Block_release(v23);
}

uint64_t sub_2586177B0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_25861EACC(0, &qword_27F954C78, MEMORY[0x277D84030], MEMORY[0x277D84038], MEMORY[0x277D84460]);
    v2 = sub_258621074();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_25861EB2C(*(a1 + 56) + 32 * v11, v36);
    *&v35 = v14;
    *(&v35 + 1) = v13;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];

    swift_dynamicCast();
    sub_25860E530(v34, v33);
    sub_25861EB88();
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_25860E530(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_25860E530(v32, v33);
    v15 = *(v2 + 40);
    result = sub_258620F24();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v2 + 48) + 40 * v19;
    *v24 = v25;
    *(v24 + 16) = v26;
    *(v24 + 32) = v27;
    result = sub_25860E530(v33, (*(v2 + 56) + 32 * v19));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_258617ABC(void *a1)
{
  if (a1)
  {
    sub_25861ECB8(0, &unk_27F954C68);
    v2 = a1;
    return sub_258620D44();
  }

  else
  {
    sub_25861EA78();
    swift_allocError();
    sub_25861ECB8(0, &unk_27F954C68);
    return sub_258620D34();
  }
}

void sub_258617B7C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

MediaFoundation::MediaRemoteCommand_optional __swiftcall MediaRemoteCommand.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 54;
  switch(rawValue)
  {
    case 0:
      goto LABEL_73;
    case 1:
      v2 = 1;
      goto LABEL_73;
    case 2:
      v2 = 2;
      goto LABEL_73;
    case 3:
      v2 = 3;
      goto LABEL_73;
    case 4:
      v2 = 4;
      goto LABEL_73;
    case 5:
      v2 = 5;
      goto LABEL_73;
    case 6:
      v2 = 6;
      goto LABEL_73;
    case 7:
      v2 = 7;
      goto LABEL_73;
    case 8:
      v2 = 8;
      goto LABEL_73;
    case 9:
      v2 = 9;
      goto LABEL_73;
    case 10:
      v2 = 10;
      goto LABEL_73;
    case 11:
      v2 = 11;
      goto LABEL_73;
    case 12:
    case 13:
    case 14:
    case 15:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 141:
      goto LABEL_8;
    case 16:
      v2 = 12;
      goto LABEL_73;
    case 17:
      v2 = 13;
      goto LABEL_73;
    case 18:
      v2 = 14;
      goto LABEL_73;
    case 19:
      v2 = 15;
      goto LABEL_73;
    case 20:
      v2 = 16;
      goto LABEL_73;
    case 21:
      v2 = 17;
      goto LABEL_73;
    case 22:
      v2 = 18;
      goto LABEL_73;
    case 23:
      v2 = 19;
      goto LABEL_73;
    case 24:
      v2 = 20;
      goto LABEL_73;
    case 25:
      v2 = 21;
      goto LABEL_73;
    case 26:
      v2 = 22;
      goto LABEL_73;
    case 27:
      v2 = 23;
      goto LABEL_73;
    case 28:
      v2 = 24;
      goto LABEL_73;
    case 100:
      v2 = 25;
      goto LABEL_73;
    case 101:
      v2 = 26;
      goto LABEL_73;
    case 102:
      v2 = 27;
      goto LABEL_73;
    case 103:
      v2 = 28;
      goto LABEL_73;
    case 104:
      v2 = 29;
      goto LABEL_73;
    case 105:
      v2 = 30;
      goto LABEL_73;
    case 106:
      v3 = 63;
      break;
    case 107:
      v3 = 64;
      break;
    case 108:
      v3 = 65;
      break;
    case 109:
      v2 = 31;
      goto LABEL_73;
    case 110:
      v2 = 32;
      goto LABEL_73;
    case 111:
      v2 = 33;
      goto LABEL_73;
    case 112:
      v2 = 34;
      goto LABEL_73;
    case 113:
      v2 = 35;
      goto LABEL_73;
    case 114:
      v2 = 36;
      goto LABEL_73;
    case 115:
      v2 = 37;
      goto LABEL_73;
    case 116:
      v2 = 38;
      goto LABEL_73;
    case 117:
      v2 = 39;
      goto LABEL_73;
    case 118:
      v2 = 40;
      goto LABEL_73;
    case 119:
      v2 = 41;
      goto LABEL_73;
    case 120:
      v2 = 42;
      goto LABEL_73;
    case 121:
      v2 = 43;
      goto LABEL_73;
    case 122:
      v2 = 44;
      goto LABEL_73;
    case 123:
      v2 = 45;
      goto LABEL_73;
    case 124:
      v2 = 46;
      goto LABEL_73;
    case 125:
      v2 = 47;
      goto LABEL_73;
    case 126:
      v2 = 48;
      goto LABEL_73;
    case 127:
      v3 = 66;
      break;
    case 128:
      v3 = 67;
      break;
    case 129:
      v2 = 49;
      goto LABEL_73;
    case 130:
      v2 = 50;
      goto LABEL_73;
    case 131:
      v2 = 51;
      goto LABEL_73;
    case 132:
      v2 = 52;
      goto LABEL_73;
    case 133:
      v2 = 53;
LABEL_73:
      v3 = v2;
      break;
    case 134:
      break;
    case 135:
      v3 = 55;
      break;
    case 136:
      v3 = 56;
      break;
    case 137:
      v3 = 57;
      break;
    case 138:
      v3 = 58;
      break;
    case 139:
      v3 = 59;
      break;
    case 140:
      v3 = 60;
      break;
    case 142:
      v3 = 61;
      break;
    case 143:
      v3 = 62;
      break;
    default:
      switch(rawValue)
      {
        case 25001:
          v3 = 68;
          break;
        case 25010:
          v3 = 69;
          break;
        case 25020:
          v3 = 70;
          break;
        case 99990:
          v3 = 71;
          break;
        default:
LABEL_8:
          v3 = 72;
          break;
      }

      break;
  }

  *v1 = v3;
  return rawValue;
}

uint64_t sub_258617E98(char a1)
{
  sub_258621164();
  MEMORY[0x259C84CE0](qword_258623DD8[a1]);
  return sub_258621184();
}

uint64_t sub_258617EEC(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_33();
  MEMORY[0x259C84CE0](a1);
  return sub_258621184();
}

uint64_t sub_258617F70(uint64_t a1, char a2)
{
  sub_258621164();
  MEMORY[0x259C84CE0](qword_258623DD8[a2]);
  return sub_258621184();
}

uint64_t sub_258617FC0(uint64_t a1, unsigned __int8 a2)
{
  sub_258621164();
  MEMORY[0x259C84CE0](a2);
  return sub_258621184();
}

uint64_t sub_25861800C@<X0>(uint64_t *a1@<X8>)
{
  result = MediaRemoteCommand.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t RepeatMode.name.getter()
{
  result = 0x6E776F6E6B6E55;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_14_0();
      break;
    case 2:
      result = 6647375;
      break;
    case 3:
      result = 7105601;
      break;
    default:
      return result;
  }

  return result;
}

MediaFoundation::RepeatMode_optional __swiftcall RepeatMode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ShuffleMode.name.getter()
{
  result = 0x6E776F6E6B6E55;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_14_0();
      break;
    case 2:
      result = 0x736D75626C41;
      break;
    case 3:
      result = 0x73676E6F53;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t MRQueueEndAction.name.getter(int a1)
{
  result = 0x7261656C43;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 1701736270;
      break;
    case 2:
      result = 0x7465736552;
      break;
    case 3:
      result = 0x79616C706F747541;
      break;
    default:
      sub_2586210A4();
      OUTLINED_FUNCTION_19_0();

      result = 0x206E776F6E6B6E55;
      break;
  }

  return result;
}

void *MRCommandInfo._options.getter()
{
  v1 = sub_25861D3C8(v0, &selRef_options);
  if (!v1 || (v0 = sub_2586183F4(v1), , !v0))
  {
    sub_258620B64();
    OUTLINED_FUNCTION_29();
  }

  result = *MEMORY[0x277D27A80];
  if (*MEMORY[0x277D27A80])
  {
    v3 = sub_258620BA4();
    v5 = sub_25861CB70(v3, v4);
    if (v6)
    {
      v7 = v5;
      swift_isUniquelyReferenced_nonNull_native();
      v8 = v0[3];
      sub_25861EACC(0, &qword_27F954B68, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D843B8]);
      sub_258621044();
      v9 = *(v0[6] + 16 * v7 + 8);

      sub_25860E530((v0[7] + 32 * v7), v10);
      sub_258621054();
    }

    else
    {
      memset(v10, 0, sizeof(v10));
    }

    sub_25861CD60(v10);
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2586183F4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_25861EACC(0, &qword_27F954C58, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D84460]);
    v2 = sub_258621074();
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
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_25861E8C8(*(a1 + 48) + 40 * v10, __src);
    sub_25861EB2C(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_25861E8C8(__dst, v21);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_25861EB2C(&__dst[40], v22);
    sub_25861E924(__dst);
    v23 = v20;
    sub_25860E530(v22, v24);
    v11 = v23;
    sub_25860E530(v24, v25);
    sub_25860E530(v25, &v23);
    result = sub_25861CB70(v11, *(&v11 + 1));
    v12 = result;
    if (v13)
    {
      v14 = v2[6] + 16 * result;
      v15 = *(v14 + 8);
      *v14 = v11;

      v16 = (v2[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_0(v16);
      result = sub_25860E530(&v23, v16);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v11;
      result = sub_25860E530(&v23, (v2[7] + 32 * result));
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_23;
      }

      v2[2] = v19;
      v8 = v9;
    }
  }

  sub_25861E924(__dst);

  return 0;
}

unint64_t MRCommandInfo.disabledReason.getter()
{
  v1 = [v0 isEnabled];
  if (v1)
  {
    goto LABEL_9;
  }

  v2 = sub_25861D3C8(v0, &selRef_options);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = sub_2586183F4(v2);

  if (!v3)
  {
    goto LABEL_9;
  }

  result = *MEMORY[0x277D27A80];
  if (*MEMORY[0x277D27A80])
  {
    v5 = sub_258620BA4();
    sub_2586187A4(v5, v6, v3, &v9);

    if (v10)
    {
      if (swift_dynamicCast())
      {
        v7 = v8;
LABEL_10:
        LOBYTE(v9) = v1;
        return v7 | (v1 << 32);
      }
    }

    else
    {
      sub_25861CD60(&v9);
    }

LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

double sub_2586187A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_25861CB70(a1, a2), (v7 & 1) != 0))
  {
    sub_25861EB2C(*(a3 + 56) + 32 * v6, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

double sub_2586187F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_25861CB2C(a1), (v6 & 1) != 0))
  {
    sub_25861EB2C(*(a2 + 56) + 32 * v5, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t MRContentItemMetadataAudioRouteType.name.getter(uint64_t a1)
{
  result = 0x6E776F6E6B6E55;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x5320656369766544;
      break;
    case 2:
      result = 0x74754F20656E694CLL;
      break;
    case 3:
    case 4:
      result = 0x6E6F687064616548;
      break;
    case 5:
      result = 0x72656B61657053;
      break;
    case 6:
      v3 = 541217621;
      goto LABEL_9;
    case 7:
      v3 = 544366915;
LABEL_9:
      result = v3 | 0x6964754100000000;
      break;
    case 8:
      result = 1229800520;
      break;
    case 9:
      result = 0x79616C50726941;
      break;
    default:
      sub_2586210A4();
      OUTLINED_FUNCTION_19_0();

      result = 0x206E776F6E6B6E55;
      break;
  }

  return result;
}

uint64_t MRContentItem._identifier.getter()
{
  result = sub_25861CDE4(v0);
  if (!v2)
  {
    return 0x5F4C4C554E5FLL;
  }

  return result;
}

id MRContentItem._metadata.getter()
{
  result = [v0 metadata];
  if (!result)
  {
    v2 = objc_allocWithZone(MEMORY[0x277D27978]);

    return [v2 init];
  }

  return result;
}

uint64_t MRContentItem.playPerformance.getter()
{
  v0 = MRContentItem._metadata.getter();
  v1 = sub_25861CE48(v0);
  if (!v1)
  {
    v8 = 0u;
    v9 = 0u;
    goto LABEL_6;
  }

  v2 = v1;
  sub_258620F44();
  sub_2586187F4(v7, v2, &v8);

  sub_25861CEC0(v7);
  if (!*(&v9 + 1))
  {
LABEL_6:
    sub_25861CD60(&v8);
    return 0;
  }

  sub_25861EE98(0, &qword_27F954B70, 0x277CCABB0);
  if (swift_dynamicCast())
  {
    v3 = v7[0];
    [v7[0] doubleValue];
    v5 = v4;

    return v5;
  }

  return 0;
}

uint64_t MRContentItem.title.getter()
{
  v0 = MRContentItem._metadata.getter();
  result = sub_25861CF90(v0, &selRef_localizedTitle);
  if (!v2)
  {
    v3 = MRContentItem._metadata.getter();
    result = sub_25861CF90(v3, &selRef_title);
    if (!v4)
    {
      return 0x9480E29480E2;
    }
  }

  return result;
}

uint64_t MRContentItem.subtitle.getter()
{
  v0 = MRContentItem._metadata.getter();
  v1 = sub_25861CF90(v0, &selRef_subtitle);
  if (v2)
  {
    return v1;
  }

  sub_25861CF14();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258621BE0;
  v5 = MRContentItem._metadata.getter();
  *(inited + 32) = sub_25861CF90(v5, &selRef_trackArtistName);
  *(inited + 40) = v6;
  v7 = MRContentItem._metadata.getter();
  v8 = 0;
  *(inited + 48) = sub_25861CF90(v7, &selRef_albumName);
  *(inited + 56) = v9;
  v10 = MEMORY[0x277D84F90];
LABEL_4:
  v11 = (inited + 40 + 16 * v8);
  while (++v8 != 3)
  {
    v12 = v11 + 2;
    v13 = *v11;
    v11 += 2;
    if (v13)
    {
      v14 = *(v12 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_258610604(0, *(v10 + 2) + 1, 1, v10);
      }

      v16 = *(v10 + 2);
      v15 = *(v10 + 3);
      if (v16 >= v15 >> 1)
      {
        v10 = sub_258610604((v15 > 1), v16 + 1, 1, v10);
      }

      *(v10 + 2) = v16 + 1;
      v17 = &v10[16 * v16];
      *(v17 + 4) = v14;
      *(v17 + 5) = v13;
      goto LABEL_4;
    }
  }

  swift_setDeallocating();
  v18 = sub_25861CA84();
  if (*(v10 + 2))
  {
    OUTLINED_FUNCTION_7_2(v18, &qword_27F954A20, MEMORY[0x277D837D0]);
    sub_25861CFF4();
    v3 = sub_258620B74();
  }

  else
  {

    return 0x9380E29380E2;
  }

  return v3;
}

uint64_t MRContentItem.MetadataOutline.BoolType.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_33();
  MEMORY[0x259C84CE0](v1);
  return sub_258621184();
}

uint64_t MRContentItem.MetadataOutline.hasValue(in:)(void *a1)
{
  OUTLINED_FUNCTION_5_2();
  sub_25861D070(0, v3);
  v5 = OUTLINED_FUNCTION_23_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v56 - v8;
  OUTLINED_FUNCTION_4_2();
  sub_25861D070(0, v10);
  v12 = OUTLINED_FUNCTION_23_0(v11);
  v14 = *(v13 + 64);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v56 - v16;
  v18 = *v1;
  v19 = v1[5];
  switch(v19 >> 60)
  {
    case 1uLL:
    case 7uLL:
      v65 = a1;
      v54 = a1;
      swift_getAtKeyPath();

      v21 = v60 != 0;
      if (v60)
      {
      }

      return v21;
    case 2uLL:
      v59 = a1;
      v25 = a1;
      swift_getAtKeyPath();

      v26 = sub_258620A64();
      v21 = __swift_getEnumTagSinglePayload(v17, 1, v26) != 1;
      OUTLINED_FUNCTION_4_2();
      v28 = v17;
      goto LABEL_7;
    case 3uLL:
      v59 = a1;
      v29 = a1;
      swift_getAtKeyPath();

      v30 = sub_258620AB4();
      v21 = __swift_getEnumTagSinglePayload(v9, 1, v30) != 1;
      OUTLINED_FUNCTION_5_2();
      v28 = v9;
LABEL_7:
      sub_25861D154(v28, v27);
      return v21;
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
      v59 = a1;
      v20 = a1;
      OUTLINED_FUNCTION_9_1();
      swift_getAtKeyPath();

      return v65;
    case 0xCuLL:
      v59 = a1;
      v22 = a1;
      OUTLINED_FUNCTION_9_1();
      swift_getAtKeyPath();

      v23 = v65;
      if (v65)
      {
        goto LABEL_4;
      }

      return 0;
    case 0xDuLL:
      if (v19 != 0xD000000000000000 || v1[3] | v1[2] | v18 | v1[4] | v1[1])
      {
        v55 = MRContentItem._metadata.getter();
        v23 = sub_25861D0C0(v55);
        if (v23)
        {
LABEL_4:
          v24 = *(v23 + 16);

          return v24 != 0;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v53 = MRContentItem._metadata.getter();
        v21 = [v53 hasArtworkAvailable];
      }

      return v21;
    default:
      v31 = *(v18 + 32);
      v58 = -*(v31 + 16);
      v56 = a1;
      v57 = v31;
      v32 = (v31 + 40);
      v33 = -1;
      break;
  }

  while (1)
  {
    v21 = v58 + v33 != -1;
    if (v58 + v33 == -1)
    {
      return v21;
    }

    if (++v33 >= *(v57 + 16))
    {
      break;
    }

    v34 = v32 + 6;
    v36 = v32[3];
    v35 = v32[4];
    v38 = v32[1];
    v37 = v32[2];
    v39 = *v32;
    v59 = *(v32 - 1);
    v60 = v39;
    v61 = v38;
    v62 = v37;
    v63 = v36;
    v64 = v35;
    v40 = OUTLINED_FUNCTION_13_0();
    sub_25861D1A4(v40, v41, v42, v43, v44, v45);
    v46 = MRContentItem.MetadataOutline.hasValue(in:)(v56);
    v47 = OUTLINED_FUNCTION_13_0();
    result = sub_25861D28C(v47, v48, v49, v50, v51, v52);
    v32 = v34;
    if (v46)
    {
      return v21;
    }
  }

  __break(1u);
  return result;
}

double sub_25861918C()
{
  sub_25861E444(0, &qword_27F954C50, &type metadata for MRContentItem.MetadataOutline, MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_258621BF0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xD000000000000000;
  v1 = swift_allocObject();
  v1[2] = 0x696669746E656449;
  v1[3] = 0xEB00000000737265;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_258621C00;
  KeyPath = swift_getKeyPath();
  *(v2 + 32) = xmmword_258621C10;
  *(v2 + 48) = KeyPath;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0x1000000000000000;
  v4 = swift_getKeyPath();
  *(v2 + 80) = xmmword_258621C20;
  *(v2 + 96) = v4;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0x1000000000000000;
  v5 = swift_getKeyPath();
  *(v2 + 128) = xmmword_258621C30;
  *(v2 + 144) = v5;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0x1000000000000000;
  v6 = swift_getKeyPath();
  *(v2 + 176) = xmmword_258621C40;
  *(v2 + 192) = v6;
  *(v2 + 200) = 0u;
  *(v2 + 216) = 0x1000000000000000;
  v7 = swift_getKeyPath();
  v8 = swift_getKeyPath();
  *(v2 + 224) = xmmword_258621C50;
  *(v2 + 240) = v7;
  *(v2 + 248) = v8;
  *(v2 + 256) = xmmword_258621C60;
  v9 = swift_getKeyPath();
  v10 = swift_getKeyPath();
  *(v2 + 272) = xmmword_258621C70;
  *(v2 + 288) = v9;
  *(v2 + 296) = v10;
  *(v2 + 304) = xmmword_258621C60;
  v11 = swift_getKeyPath();
  *(v2 + 320) = xmmword_258621C80;
  *(v2 + 336) = v11;
  *(v2 + 344) = 0u;
  *(v2 + 360) = 0x1000000000000000;
  v12 = swift_getKeyPath();
  *(v2 + 368) = xmmword_258621C90;
  *(v2 + 384) = v12;
  *(v2 + 392) = 0u;
  *(v2 + 408) = 0x1000000000000000;
  v13 = swift_getKeyPath();
  v14 = swift_getKeyPath();
  *(v2 + 416) = xmmword_258621CA0;
  *(v2 + 432) = v13;
  *(v2 + 440) = v14;
  *(v2 + 448) = xmmword_258621C60;
  v1[4] = v2;
  *(v0 + 80) = v1;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0;
  v15 = swift_allocObject();
  v15[2] = 0x6B63616279616C50;
  v15[3] = 0xE800000000000000;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_258621CB0;
  v17 = swift_getKeyPath();
  v18 = swift_getKeyPath();
  *(v16 + 32) = xmmword_258621CC0;
  *(v16 + 48) = 2;
  *(v16 + 56) = v17;
  *(v16 + 64) = v18;
  *(v16 + 72) = 0xB000000000000000;
  v19 = swift_getKeyPath();
  v20 = swift_getKeyPath();
  *(v16 + 80) = xmmword_258621CD0;
  *(v16 + 96) = 2;
  *(v16 + 104) = v19;
  *(v16 + 112) = v20;
  *(v16 + 120) = 0xB000000000000000;
  v21 = swift_getKeyPath();
  v22 = swift_getKeyPath();
  v23 = swift_getKeyPath();
  *(v16 + 128) = xmmword_258621CE0;
  *(v16 + 144) = v21;
  *(v16 + 152) = v22;
  *(v16 + 160) = v23;
  *(v16 + 168) = 0xA000000000000000;
  v24 = swift_getKeyPath();
  v25 = swift_getKeyPath();
  *(v16 + 176) = xmmword_258621CF0;
  *(v16 + 192) = v24;
  *(v16 + 200) = v25;
  *(v16 + 208) = xmmword_258621D00;
  v26 = swift_getKeyPath();
  v27 = swift_getKeyPath();
  *(v16 + 224) = xmmword_258621D10;
  *(v16 + 240) = xmmword_258621D20;
  *(v16 + 256) = v26;
  *(v16 + 264) = v27 | 0x6000000000000000;
  v28 = swift_getKeyPath();
  v29 = swift_getKeyPath();
  *(v16 + 272) = xmmword_258621D30;
  *(v16 + 288) = xmmword_258621D20;
  *(v16 + 304) = v28;
  *(v16 + 312) = v29 | 0x6000000000000000;
  v30 = swift_getKeyPath();
  v31 = swift_getKeyPath();
  *(v16 + 320) = xmmword_258621D40;
  *(v16 + 336) = v30;
  *(v16 + 344) = v31;
  *(v16 + 352) = xmmword_258621D00;
  v15[4] = v16;
  *(v0 + 128) = v15;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  v32 = swift_allocObject();
  v32[2] = 0x617461646174654DLL;
  v32[3] = 0xE800000000000000;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_258621D50;
  v34 = swift_getKeyPath();
  *(v33 + 32) = xmmword_258621D60;
  *(v33 + 48) = v34;
  *(v33 + 56) = 0u;
  *(v33 + 72) = 0x1000000000000000;
  v35 = swift_getKeyPath();
  *(v33 + 80) = xmmword_258621D70;
  *(v33 + 96) = v35;
  *(v33 + 104) = 0u;
  *(v33 + 120) = 0x1000000000000000;
  v36 = swift_getKeyPath();
  v37 = swift_getKeyPath();
  *(v33 + 128) = xmmword_258621D80;
  *(v33 + 144) = v36;
  *(v33 + 152) = v37;
  *(v33 + 160) = xmmword_258621D90;
  v38 = swift_getKeyPath();
  v39 = swift_getKeyPath();
  *(v33 + 176) = xmmword_258621DA0;
  *(v33 + 192) = v38;
  *(v33 + 200) = v39;
  *(v33 + 208) = xmmword_258621D90;
  v40 = swift_getKeyPath();
  v41 = swift_getKeyPath();
  *(v33 + 224) = xmmword_258621DB0;
  *(v33 + 240) = 2;
  *(v33 + 248) = v40;
  *(v33 + 256) = v41;
  *(v33 + 264) = 0xB000000000000000;
  v42 = swift_getKeyPath();
  v43 = swift_getKeyPath();
  *(v33 + 272) = xmmword_258621DC0;
  *(v33 + 288) = 2;
  *(v33 + 296) = v42;
  *(v33 + 304) = v43;
  *(v33 + 312) = 0xB000000000000000;
  v44 = swift_getKeyPath();
  *(v33 + 320) = xmmword_258621DD0;
  *(v33 + 336) = v44;
  *(v33 + 344) = 0u;
  *(v33 + 360) = 0x3000000000000000;
  v45 = swift_getKeyPath();
  *(v33 + 368) = xmmword_258621DE0;
  *(v33 + 384) = v45;
  *(v33 + 392) = 0u;
  *(v33 + 408) = 0x1000000000000000;
  v46 = swift_getKeyPath();
  *(v33 + 416) = xmmword_258621DF0;
  *(v33 + 432) = v46;
  *(v33 + 440) = 0u;
  *(v33 + 456) = 0x1000000000000000;
  v47 = swift_getKeyPath();
  *(v33 + 464) = xmmword_258621E00;
  *(v33 + 480) = v47;
  *(v33 + 488) = 0u;
  *(v33 + 504) = 0x1000000000000000;
  v48 = swift_getKeyPath();
  *(v33 + 512) = xmmword_258621E10;
  *(v33 + 528) = v48;
  *(v33 + 536) = 0u;
  *(v33 + 552) = 0x1000000000000000;
  v49 = swift_getKeyPath();
  *(v33 + 560) = xmmword_258621E20;
  *(v33 + 576) = v49;
  *(v33 + 584) = 0u;
  *(v33 + 600) = 0x1000000000000000;
  v50 = swift_getKeyPath();
  v51 = swift_getKeyPath();
  *(v33 + 608) = xmmword_258621E30;
  *(v33 + 624) = v50;
  *(v33 + 632) = v51;
  *(v33 + 640) = xmmword_258621E40;
  v52 = swift_getKeyPath();
  v53 = swift_getKeyPath();
  *(v33 + 656) = xmmword_258621E50;
  *(v33 + 672) = v52;
  *(v33 + 680) = v53;
  *(v33 + 688) = xmmword_258621E40;
  v54 = swift_getKeyPath();
  v55 = swift_getKeyPath();
  *(v33 + 704) = xmmword_258621E60;
  *(v33 + 720) = v54;
  *(v33 + 728) = v55;
  *(v33 + 736) = xmmword_258621E40;
  v56 = swift_getKeyPath();
  v57 = swift_getKeyPath();
  *(v33 + 752) = xmmword_258621E70;
  *(v33 + 768) = v56;
  *(v33 + 776) = v57;
  *(v33 + 784) = xmmword_258621E40;
  v58 = swift_getKeyPath();
  *(v33 + 800) = xmmword_258621E80;
  *(v33 + 816) = v58;
  *(v33 + 824) = 0u;
  *(v33 + 840) = 0x1000000000000000;
  v59 = swift_getKeyPath();
  v60 = swift_getKeyPath();
  *(v33 + 848) = xmmword_258621E90;
  *(v33 + 864) = v59;
  *(v33 + 872) = v60;
  *(v33 + 880) = xmmword_258621D90;
  v61 = swift_getKeyPath();
  *(v33 + 896) = xmmword_258621EA0;
  *(v33 + 912) = v61;
  *(v33 + 920) = 0;
  *(v33 + 928) = 0;
  *(v33 + 936) = 0x1000000000000000;
  v62 = swift_getKeyPath();
  v63 = swift_getKeyPath();
  *(v33 + 944) = xmmword_258621EB0;
  *(v33 + 960) = v62;
  *(v33 + 968) = v63;
  *(v33 + 976) = xmmword_258621E40;
  v64 = swift_getKeyPath();
  v65 = swift_getKeyPath();
  *(v33 + 992) = xmmword_258621EC0;
  *(v33 + 1008) = v64;
  *(v33 + 1016) = v65;
  *(v33 + 1024) = xmmword_258621E40;
  v32[4] = v33;
  *(v0 + 176) = v32;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0;
  v66 = swift_allocObject();
  v66[2] = 0x7069636974726150;
  v66[3] = 0xEB00000000746E61;
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_258621BE0;
  v68 = swift_getKeyPath();
  *(v67 + 32) = xmmword_258621ED0;
  *(v67 + 48) = v68;
  *(v67 + 56) = 0;
  *(v67 + 64) = 0;
  *(v67 + 72) = 0x1000000000000000;
  v69 = swift_getKeyPath();
  *(v67 + 80) = xmmword_258621EE0;
  *(v67 + 96) = v69;
  *(v67 + 104) = 0;
  *(v67 + 112) = 0;
  *(v67 + 120) = 0x1000000000000000;
  v66[4] = v67;
  *(v0 + 224) = v66;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0u;
  *(v0 + 264) = 0;
  v70 = swift_allocObject();
  v70[2] = 1868983881;
  v70[3] = 0xE400000000000000;
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_2586216B0;
  *(v71 + 32) = swift_getKeyPath();
  *(v71 + 40) = 0u;
  *(v71 + 56) = 0u;
  *(v71 + 72) = 0x7000000000000000;
  v70[4] = v71;
  *(v0 + 272) = v70;
  *(v0 + 280) = 0u;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0;
  v72 = swift_allocObject();
  v72[2] = 0x656E6961746E6F43;
  v72[3] = 0xE900000000000072;
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_258621EF0;
  v74 = swift_allocObject();
  v74[2] = 0x696669746E656449;
  v74[3] = 0xEB00000000737265;
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_258621EF0;
  v76 = swift_getKeyPath();
  *(v75 + 32) = xmmword_258621F00;
  *(v75 + 48) = v76;
  *(v75 + 56) = 0;
  *(v75 + 64) = 0;
  *(v75 + 72) = 0x1000000000000000;
  v77 = swift_getKeyPath();
  *(v75 + 80) = xmmword_258621F10;
  *(v75 + 96) = v77;
  *(v75 + 104) = 0;
  *(v75 + 112) = 0;
  *(v75 + 120) = 0x1000000000000000;
  v78 = swift_getKeyPath();
  v79 = swift_getKeyPath();
  *(v75 + 128) = xmmword_258621F10;
  *(v75 + 144) = v78;
  *(v75 + 152) = v79;
  *(v75 + 160) = xmmword_258621C60;
  v74[4] = v75;
  *(v73 + 32) = v74;
  *(v73 + 40) = 0u;
  *(v73 + 56) = 0u;
  *(v73 + 72) = 0;
  v80 = swift_allocObject();
  v80[2] = 0x617461646174654DLL;
  v80[3] = 0xE800000000000000;
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_258621F20;
  v82 = swift_getKeyPath();
  *(v81 + 32) = xmmword_258621F30;
  *(v81 + 48) = v82;
  *(v81 + 56) = 0;
  *(v81 + 64) = 0;
  *(v81 + 72) = 0x1000000000000000;
  v83 = swift_getKeyPath();
  *(v81 + 80) = xmmword_258621F40;
  *(v81 + 96) = v83;
  *(v81 + 104) = 0;
  *(v81 + 112) = 0;
  *(v81 + 120) = 0x1000000000000000;
  v84 = swift_getKeyPath();
  *(v81 + 128) = xmmword_258621F50;
  *(v81 + 144) = v84;
  *(v81 + 152) = 0;
  *(v81 + 160) = 0;
  *(v81 + 168) = 0x1000000000000000;
  v85 = swift_getKeyPath();
  v86 = swift_getKeyPath();
  *(v81 + 176) = xmmword_258621F60;
  *(v81 + 192) = v85;
  *(v81 + 200) = v86;
  *(v81 + 208) = xmmword_258621D90;
  v87 = swift_getKeyPath();
  v88 = swift_getKeyPath();
  *(v81 + 224) = 0xD000000000000012;
  *(v81 + 232) = 0x8000000258624460;
  *(v81 + 240) = v87;
  *(v81 + 248) = v88;
  *(v81 + 256) = xmmword_258621D90;
  v89 = swift_getKeyPath();
  *(v81 + 272) = xmmword_258621F70;
  *(v81 + 288) = v89;
  *(v81 + 296) = 0;
  *(v81 + 304) = 0;
  *(v81 + 312) = 0x1000000000000000;
  v80[4] = v81;
  *(v73 + 80) = v80;
  *(v73 + 88) = 0u;
  *(v73 + 104) = 0u;
  *(v73 + 120) = 0;
  v90 = swift_allocObject();
  v90[2] = 1868983881;
  v90[3] = 0xE400000000000000;
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_2586216B0;
  *(v91 + 32) = swift_getKeyPath();
  *(v91 + 40) = 0u;
  *(v91 + 56) = 0u;
  *(v91 + 72) = 0xC000000000000000;
  v90[4] = v91;
  *(v73 + 128) = v90;
  *(v73 + 136) = 0u;
  *(v73 + 152) = 0u;
  *(v73 + 168) = 0;
  v72[4] = v73;
  *(v0 + 320) = v72;
  *(v0 + 328) = 0u;
  *(v0 + 344) = 0u;
  *(v0 + 360) = 0;
  v92 = swift_allocObject();
  v92[2] = 0x737465737341;
  v92[3] = 0xE600000000000000;
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_258621BE0;
  v94 = swift_getKeyPath();
  *(v93 + 32) = xmmword_258621F80;
  *(v93 + 48) = v94;
  *(v93 + 56) = 0;
  *(v93 + 64) = 0;
  *(v93 + 72) = 0x2000000000000000;
  v95 = swift_getKeyPath();
  *(v93 + 80) = xmmword_258621F90;
  *(v93 + 96) = v95;
  *(v93 + 104) = 0;
  *(v93 + 112) = 0;
  *(v93 + 120) = 0x2000000000000000;
  v92[4] = v93;
  *(v0 + 368) = v92;
  *(v0 + 376) = 0u;
  *(v0 + 392) = 0u;
  *(v0 + 408) = 0;
  v96 = swift_allocObject();
  v96[2] = 0x6B726F77747241;
  v96[3] = 0xE700000000000000;
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_258621FA0;
  v98 = swift_getKeyPath();
  *(v97 + 32) = xmmword_258621ED0;
  *(v97 + 48) = v98;
  *(v97 + 56) = 0;
  *(v97 + 64) = 0;
  *(v97 + 72) = 0x1000000000000000;
  v99 = swift_getKeyPath();
  *(v97 + 80) = xmmword_258621FB0;
  *(v97 + 96) = v99;
  *(v97 + 104) = 0;
  *(v97 + 112) = 0;
  *(v97 + 120) = 0x2000000000000000;
  v100 = swift_getKeyPath();
  *(v97 + 128) = xmmword_258621FC0;
  *(v97 + 144) = v100;
  *(v97 + 152) = 0;
  *(v97 + 160) = 0;
  *(v97 + 168) = 0x2000000000000000;
  v101 = swift_getKeyPath();
  *(v97 + 176) = xmmword_258621FD0;
  *(v97 + 192) = v101;
  *(v97 + 200) = 0;
  *(v97 + 208) = 0;
  *(v97 + 216) = xmmword_258621FE0;
  *(v97 + 232) = 0u;
  *(v97 + 248) = 0u;
  *(v97 + 264) = 0xD000000000000000;
  v96[4] = v97;
  *(v0 + 416) = v96;
  *(v0 + 424) = 0u;
  *(v0 + 440) = 0u;
  *(v0 + 456) = 0;
  v102 = swift_allocObject();
  v102[2] = 0x666E492072657355;
  v102[3] = 0xE90000000000006FLL;
  v103 = swift_allocObject();
  *(v103 + 16) = xmmword_2586216B0;
  *(v103 + 32) = swift_getKeyPath();
  *(v103 + 40) = 0u;
  *(v103 + 56) = 0u;
  *(v103 + 72) = 0xC000000000000000;
  v102[4] = v103;
  *(v0 + 464) = v102;
  *(v0 + 472) = 0u;
  *(v0 + 488) = 0u;
  *(v0 + 504) = 0;
  v104 = swift_allocObject();
  v104[2] = 0xD000000000000010;
  v104[3] = 0x8000000258624480;
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_2586216B0;
  *(v105 + 32) = swift_getKeyPath();
  result = 0.0;
  *(v105 + 40) = 0u;
  *(v105 + 56) = 0u;
  *(v105 + 72) = 0xC000000000000000;
  v104[4] = v105;
  *(v0 + 512) = v104;
  *(v0 + 520) = 0u;
  *(v0 + 536) = 0u;
  *(v0 + 552) = 0;
  qword_27F954B40 = v0;
  return result;
}

id sub_25861A1BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = MRContentItem._metadata.getter();
  *a2 = result;
  return result;
}

void sub_25861A1E8(uint64_t a1, void **a2)
{
  sub_25861D070(0, &qword_27F954AE8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_25861E860(a1, &v11 - v6);
  v8 = *a2;
  v9 = sub_258620AB4();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_258620AA4();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setReleaseDate_];
}

void sub_25861A314(uint64_t a1, void **a2)
{
  sub_25861D070(0, &unk_27F954B88);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_25861E860(a1, &v11 - v6);
  v8 = *a2;
  v9 = sub_258620A64();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_258620A54();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setAssetURL_];
}

void sub_25861A440(uint64_t a1, void **a2)
{
  sub_25861D070(0, &unk_27F954B88);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_25861E860(a1, &v11 - v6);
  v8 = *a2;
  v9 = sub_258620A64();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_258620A54();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setLyricsURL_];
}

void sub_25861A56C(uint64_t a1, void **a2)
{
  sub_25861D070(0, &unk_27F954B88);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_25861E860(a1, &v11 - v6);
  v8 = *a2;
  v9 = sub_258620A64();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_258620A54();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setArtworkURL_];
}

uint64_t sub_25861A698@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);

  return __swift_storeEnumTagSinglePayload(a5, v10, 1, v11);
}

void sub_25861A72C(uint64_t a1, void **a2)
{
  sub_25861D070(0, &unk_27F954B88);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_25861E860(a1, &v11 - v6);
  v8 = *a2;
  v9 = sub_258620A64();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_258620A54();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setArtworkFileURL_];
}

void sub_25861A858(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_3_2(a1);
  v6 = [v4 *v5];
  if (v6)
  {
    v7 = v6;
    sub_258620BA4();
    OUTLINED_FUNCTION_21_0();
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  *v1 = v2;
  v1[1] = v3;
}

void sub_25861A8B4(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = *a1;
    v8 = sub_258620B94();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v6 *a5];
}

void sub_25861A924(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_3_2(a1);
  v4 = [v2 *v3];
  if (v4)
  {
    v5 = v4;
    v6 = sub_258620B54();
  }

  else
  {
    v6 = 0;
  }

  *v1 = v6;
}

void sub_25861A998(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (*a1)
  {
    v7 = sub_258620B44();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

uint64_t static MRContentItem.metadataOutline.getter()
{
  if (qword_27F954A00 != -1)
  {
    swift_once();
  }
}

char *MRContentItemMetadata.identifiers.getter()
{
  sub_25861CF14();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258621BE0;
  v1 = MRContentItemMetadata.subscriptionAdamID.getter();
  if (!v2)
  {
    v1 = MRContentItemMetadata.adamID.getter();
  }

  *(inited + 40) = v2;
  *(inited + 32) = v1;
  v3 = 0;
  *(inited + 48) = MRContentItemMetadata.univeralLibraryID.getter();
  *(inited + 56) = v4;
  v5 = MEMORY[0x277D84F90];
LABEL_4:
  v6 = (inited + 40 + 16 * v3);
  while (++v3 != 3)
  {
    v7 = v6 + 2;
    v8 = *v6;
    v6 += 2;
    if (v8)
    {
      v9 = *(v7 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_258610604(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_258610604((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      v12 = &v5[16 * v11];
      *(v12 + 4) = v9;
      *(v12 + 5) = v8;
      goto LABEL_4;
    }
  }

  swift_setDeallocating();
  sub_25861CA84();
  return v5;
}

uint64_t sub_25861ABC4(SEL *a1)
{
  if ([v1 *a1] < 1)
  {
    return 0;
  }

  [v1 *a1];
  sub_25861D374();
  return sub_258620EF4();
}

uint64_t MRContentItemMetadata.univeralLibraryID.getter()
{
  v1 = sub_25861D3C8(v0, &selRef_deviceSpecificUserInfo);
  if (!v1)
  {
    v5 = 0u;
    v6 = 0u;
    goto LABEL_8;
  }

  v2 = v1;
  *&v5 = 1684630645;
  *(&v5 + 1) = 0xE400000000000000;
  sub_258620F44();
  sub_2586187F4(&v4, v2, &v5);

  sub_25861CEC0(&v4);
  if (!*(&v6 + 1))
  {
LABEL_8:
    sub_25861CD60(&v5);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t MRContentItemMetadata.allAudioFormats.getter()
{
  v1 = MEMORY[0x277D84F90];
  v4 = MEMORY[0x277D84F90];
  v2 = sub_25861D430(v0);
  if (v2)
  {
    sub_25861AD60(v2);
    return v4;
  }

  return v1;
}

uint64_t sub_25861AD60(unint64_t a1)
{
  v3 = sub_258615FB8(a1);
  v4 = sub_258615FB8(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_25861C9E4(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_25861E21C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t MRContentItemMediaType.name.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 1701736270;
    case 2:
      v1 = 1701079382;
      return v1 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
    case 1:
      v1 = 1768191297;
      return v1 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
  }

  OUTLINED_FUNCTION_11_1();
  sub_2586210A4();
  OUTLINED_FUNCTION_19_0();

  return v3;
}

unint64_t MRContentItemEpisodeType.name.getter(uint64_t a1)
{
  result = 0x6E776F6E6B6E55;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x65646F73697045;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x6569767265746E49;
      break;
    case 5:
      result = 0x72656C69617254;
      break;
    case 6:
      result = 0x6172747845;
      break;
    default:
      sub_2586210A4();
      OUTLINED_FUNCTION_19_0();

      result = 0x206E776F6E6B6E55;
      break;
  }

  return result;
}

uint64_t MRContentItemPlaylistType.name.getter(uint64_t a1)
{
  result = 0x72616C75676552;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x7375696E6547;
      break;
    case 2:
      result = 0x7472616D53;
      break;
    case 3:
      result = 0x7265646C6F46;
      break;
    case 4:
      result = 0x4D207375696E6547;
      break;
    default:
      sub_2586210A4();
      OUTLINED_FUNCTION_19_0();

      result = 0x206E776F6E6B6E55;
      break;
  }

  return result;
}

uint64_t MRContentItemRadioStationType.name.getter(uint64_t a1)
{
  if (!a1)
  {
    return 0x65727574616546;
  }

  if (a1 == 1)
  {
    return 0x6C616E6F73726550;
  }

  OUTLINED_FUNCTION_11_1();
  sub_2586210A4();
  OUTLINED_FUNCTION_19_0();

  return v2;
}

uint64_t MRContentItemMediaSubType.name.getter(uint64_t a1)
{
  result = 1701736270;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x636973754DLL;
      break;
    case 2:
      result = 0x776F6853205654;
      break;
    case 3:
      result = 0x6569766F4DLL;
      break;
    case 4:
      result = 0x74736163646F50;
      break;
    case 5:
      result = 0x6F6F626F69647541;
      break;
    case 6:
      result = 0x552073656E755469;
      break;
    case 7:
      result = 0x64654D20656D6F48;
      break;
    default:
      sub_2586210A4();
      OUTLINED_FUNCTION_19_0();

      result = 0x206E776F6E6B6E55;
      break;
  }

  return result;
}

unint64_t MRDisabledReason.name.getter(int a1)
{
  result = 0x64656C6261736944;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x20676E6979616C50;
      break;
    case 2:
      result = 0x6D694C2070696B53;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x65776F5020776F4CLL;
      break;
    case 6:
      result = 0x6672655020776F4CLL;
      break;
    default:
      sub_2586210A4();
      OUTLINED_FUNCTION_19_0();

      MEMORY[0x259C847B0](93, 0xE100000000000000);
      result = 0x64656C6261736944;
      break;
  }

  return result;
}

uint64_t SystemAppPlaybackQueueInsertionPosition.name.getter()
{
  v1 = *v0;
  result = MRMediaRemoteCopyPlaybackQueueInsertionPositionDescription();
  if (result)
  {
    v3 = result;
    sub_258620BA4();
    OUTLINED_FUNCTION_21_0();

    return OUTLINED_FUNCTION_22_0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25861B508(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2();
  if (result)
  {
    v3 = result;
    sub_258620BA4();
    OUTLINED_FUNCTION_21_0();

    return OUTLINED_FUNCTION_22_0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MRContentItem.MetadataOutline.id.getter()
{
  v1 = *v0;
  v2 = v0[5];
  switch(v2 >> 60)
  {
    case 1uLL:
      v19 = v0[2];
      sub_25861D4A0();
      goto LABEL_25;
    case 2uLL:
      v16 = v0[2];
      v6 = &unk_27F954C00;
      goto LABEL_9;
    case 3uLL:
      v17 = v0[2];
      v6 = &unk_27F954B98;
LABEL_9:
      sub_25861D6A8(0, v6);
      goto LABEL_25;
    case 4uLL:
      v13 = v0[3];
      v5 = &unk_27F954BF8;
      goto LABEL_23;
    case 5uLL:
      v20 = v0[3];
      v5 = &unk_27F954BD0;
      goto LABEL_23;
    case 6uLL:
      sub_25861D53C(0, &qword_27F954BC8);

      goto LABEL_26;
    case 7uLL:
      v18 = *v0;
      sub_25861D4A0();
      goto LABEL_11;
    case 8uLL:
      v22 = v0[3];
      sub_25861D6A8(0, &unk_27F954BB0);
      goto LABEL_25;
    case 9uLL:
      v15 = v0[3];
      v5 = &unk_27F954BA8;
      goto LABEL_23;
    case 0xAuLL:
      v21 = v0[4];
      v5 = &unk_27F954BA8;
      goto LABEL_23;
    case 0xBuLL:
      v12 = v0[4];
      v5 = &unk_27F954BF0;
LABEL_23:
      sub_25861D53C(0, v5);
LABEL_25:

LABEL_26:
      v8 = sub_258620BC4();
      v10 = v9;

      MEMORY[0x259C847B0](v8, v10);

      v3 = v1;
      break;
    case 0xCuLL:
      v14 = *v0;
      sub_25861D5AC();
LABEL_11:

      v3 = sub_258620BC4();
      break;
    case 0xDuLL:
      if (v0[2] | v0[1] | v1 | v0[3] | v0[4])
      {
        v7 = 0;
      }

      else
      {
        v7 = v2 == 0xD000000000000000;
      }

      if (v7)
      {
        v3 = 0x6B726F77747261;
      }

      else
      {
        v3 = 0xD000000000000010;
      }

      break;
    default:
      v3 = *(v1 + 16);
      v4 = *(v1 + 24);

      break;
  }

  return v3;
}

uint64_t sub_25861B840@<X0>(uint64_t *a1@<X8>)
{
  result = MRContentItem.MetadataOutline.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t RepeatMode.symbol.getter()
{
  v1 = *v0;
  result = qword_258624258[v1];
  v3 = qword_258624298[v1];
  return result;
}

uint64_t ShuffleMode.symbol.getter()
{
  v1 = *v0;
  result = qword_258624278[v1];
  v3 = qword_258624298[v1];
  return result;
}

void MRQueueEndAction.symbol.getter(unsigned int a1)
{
  if (a1 <= 3)
  {
    v1 = qword_2586242B8[a1];
    OUTLINED_FUNCTION_24_0();
  }
}

uint64_t MediaRemoteCommand.Option.id.getter(uint64_t a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  if (*(v1 + 32) >> 5 == 4)
  {
    v5 = *(v3 + 16);
    v6 = *(v5 + 16);
    if (v6)
    {
      v19 = MEMORY[0x277D84F90];

      v7 = sub_258610800(0, v6, 0);
      v8 = (v5 + 64);
      do
      {
        v16 = *(v8 - 2);
        v17 = *(v8 - 1);
        v18 = *v8;
        v7 = MediaRemoteCommand.Option.id.getter(v7);
        v9 = v7;
        v11 = v10;
        v13 = *(v19 + 16);
        v12 = *(v19 + 24);
        if (v13 >= v12 >> 1)
        {
          v7 = sub_258610800((v12 > 1), v13 + 1, 1);
        }

        *(v19 + 16) = v13 + 1;
        v14 = v19 + 16 * v13;
        *(v14 + 32) = v9;
        *(v14 + 40) = v11;
        v8 += 40;
        --v6;
      }

      while (v6);
    }

    OUTLINED_FUNCTION_7_2(a1, &qword_27F954A20, MEMORY[0x277D837D0]);
    sub_25861CFF4();
    v3 = sub_258620B74();
  }

  else
  {
    v4 = *(v1 + 8);
  }

  return v3;
}

uint64_t MediaRemoteCommand.Option.isRequired.getter()
{
  result = 1;
  switch(v0[32] >> 5)
  {
    case 1:
    case 2:
      result = 0;
      break;
    case 4:
      v2 = *(*v0 + 16);
      v3 = *(v2 + 16);

      v4 = 0;
      v5 = v2 + 64;
      v29 = MEMORY[0x277D84F90];
LABEL_4:
      for (i = (v5 + 40 * v4); ; i += 40)
      {
        if (v3 == v4)
        {

          v28 = *(v29 + 16);

          return v28 != 0;
        }

        if (v4 >= *(v2 + 16))
        {
          break;
        }

        v7 = *(i - 4);
        v8 = *(i - 3);
        v9 = *(i - 2);
        v10 = *(i - 1);
        v11 = *i;
        v12 = OUTLINED_FUNCTION_20_0();
        v17 = sub_25861D73C(v12, v13, v14, v15, v16);
        if (MediaRemoteCommand.Option.isRequired.getter(v17))
        {
          v23 = v29;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_258610B28(0, *(v29 + 16) + 1, 1);
            v23 = v29;
          }

          v25 = *(v23 + 16);
          v24 = *(v23 + 24);
          v26 = v25 + 1;
          if (v25 >= v24 >> 1)
          {
            result = sub_258610B28((v24 > 1), v25 + 1, 1);
            v26 = v25 + 1;
            v23 = v29;
          }

          ++v4;
          *(v23 + 16) = v26;
          v29 = v23;
          v27 = v23 + 40 * v25;
          *(v27 + 32) = v7;
          *(v27 + 40) = v8;
          *(v27 + 48) = v9;
          *(v27 + 56) = v10;
          *(v27 + 64) = v11;
          v5 = v2 + 64;
          goto LABEL_4;
        }

        v18 = OUTLINED_FUNCTION_20_0();
        result = sub_25861D7D4(v18, v19, v20, v21, v22);
        ++v4;
      }

      __break(1u);
      break;
    default:
      return result;
  }

  return result;
}

unint64_t MediaRemoteCommand.Option.name.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = *(v1 + 32);
  v34 = *v1;
  v35 = v3;
  v36 = v4;
  v37 = v5;
  v38 = v6;
  v7 = MediaRemoteCommand.Option.id.getter(a1);
  v9 = v8;
  v10 = v7 == 1869828432 && v8 == 0xE400000000000000;
  if (v10 || (v11 = v7, (OUTLINED_FUNCTION_31() & 1) != 0))
  {

    return 0xD000000000000022;
  }

  else
  {
    v12 = 0x496563616C706552;
    if (v11 == 1769099600 && v9 == 0xE400000000000000)
    {
    }

    else
    {
      v15 = OUTLINED_FUNCTION_31();

      if ((v15 & 1) == 0)
      {
        v29 = v2;
        v30 = v3;
        v31 = v4;
        v32 = v5;
        v33 = v6;
        v27 = MediaRemoteCommand.Option.id.getter(v16);
        v28 = v17;
        v25 = 0xD000000000000014;
        v26 = 0x80000002586243F0;
        v24[0] = 0;
        v24[1] = 0xE000000000000000;
        sub_258610734();
        v18 = OUTLINED_FUNCTION_18_0(&v25, v24);
        v20 = v19;

        v29 = v18;
        v30 = v20;
        v27 = 0xD000000000000019;
        v28 = 0x8000000258624410;
        v25 = 0;
        v26 = 0xE000000000000000;
        v21 = OUTLINED_FUNCTION_18_0(&v27, &v25);
        v23 = v22;

        v29 = v21;
        v30 = v23;

        LOBYTE(v21) = sub_258620C54();

        if (v21)
        {
          sub_25861BEAC(3);
        }

        return v29;
      }
    }
  }

  return v12;
}

uint64_t sub_25861BEAC(uint64_t result)
{
  if (result)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v2 = v1[1];
      if ((v2 & 0x2000000000000000) != 0)
      {
        v3 = HIBYTE(v2) & 0xF;
      }

      else
      {
        v3 = *v1 & 0xFFFFFFFFFFFFLL;
      }

      *v1;
      v4 = sub_258620C34();
      if (v5)
      {
        goto LABEL_14;
      }

      if (4 * v3 >= v4 >> 14)
      {

        return MEMORY[0x2821FBD18]();
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2821FBD18]();
  }

  return result;
}

uint64_t sub_25861BF5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = MediaRemoteCommand.Option.id.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t MediaRemoteCommand.options.getter(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  switch(*v1)
  {
    case 4:
    case 5:
      OUTLINED_FUNCTION_0_3(a1, &qword_27F954A88, &type metadata for MediaRemoteCommand.Option);
      v2 = OUTLINED_FUNCTION_17_0();
      *(v2 + 16) = xmmword_258621BE0;
      result = *MEMORY[0x277D27D00];
      if (!*MEMORY[0x277D27D00])
      {
        __break(1u);
        goto LABEL_80;
      }

      v4 = sub_258620BA4();
      OUTLINED_FUNCTION_28_0(v4, v5);
      a1 = *MEMORY[0x277D27DD0];
      if (*MEMORY[0x277D27DD0])
      {
        goto LABEL_76;
      }

      __break(1u);
      goto LABEL_6;
    case 6:
    case 7:
LABEL_6:
      OUTLINED_FUNCTION_0_3(a1, &qword_27F954A88, &type metadata for MediaRemoteCommand.Option);
      v2 = OUTLINED_FUNCTION_15_0();
      *(v2 + 16) = xmmword_2586216B0;
      a1 = *MEMORY[0x277D27AA0];
      if (*MEMORY[0x277D27AA0])
      {
        goto LABEL_70;
      }

      __break(1u);
LABEL_8:
      OUTLINED_FUNCTION_0_3(a1, &qword_27F954A88, &type metadata for MediaRemoteCommand.Option);
      v2 = OUTLINED_FUNCTION_17_0();
      *(v2 + 16) = xmmword_258621BE0;
      result = *MEMORY[0x277D27D48];
      if (*MEMORY[0x277D27D48])
      {
        v6 = sub_258620BA4();
        OUTLINED_FUNCTION_2_2(v6, v7);
        a1 = *MEMORY[0x277D27CE0];
        if (*MEMORY[0x277D27CE0])
        {
LABEL_27:
          v31 = sub_258620BA4();
          OUTLINED_FUNCTION_12_1(v31, v32);
          *(v2 + 104) = 0;
          return v2;
        }

        __break(1u);
LABEL_11:
        OUTLINED_FUNCTION_0_3(a1, &qword_27F954A88, &type metadata for MediaRemoteCommand.Option);
        v2 = OUTLINED_FUNCTION_15_0();
        *(v2 + 16) = xmmword_2586216B0;
        result = *MEMORY[0x277D27DF8];
        if (*MEMORY[0x277D27DF8])
        {
          v9 = sub_258620BA4();
          result = *MEMORY[0x277D27A88];
          if (*MEMORY[0x277D27A88])
          {
            v10 = v8;
            v11 = sub_258620BA4();
            *(v2 + 32) = v9;
            *(v2 + 40) = v10;
            *(v2 + 48) = v11;
            *(v2 + 56) = v12;
            v13 = 32;
            goto LABEL_71;
          }

LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }
      }

      else
      {
LABEL_80:
        __break(1u);
      }

      __break(1u);
      goto LABEL_82;
    case 0xD:
    case 0xE:
      goto LABEL_11;
    case 0xF:
      goto LABEL_32;
    case 0x10:
      goto LABEL_30;
    case 0x11:
      OUTLINED_FUNCTION_0_3(a1, &qword_27F954A88, &type metadata for MediaRemoteCommand.Option);
      v2 = OUTLINED_FUNCTION_15_0();
      *(v2 + 16) = xmmword_2586216B0;
      a1 = *MEMORY[0x277D27D40];
      if (*MEMORY[0x277D27D40])
      {
        goto LABEL_70;
      }

      __break(1u);
LABEL_30:
      OUTLINED_FUNCTION_0_3(a1, &qword_27F954A88, &type metadata for MediaRemoteCommand.Option);
      v2 = OUTLINED_FUNCTION_15_0();
      *(v2 + 16) = xmmword_2586216B0;
      a1 = *MEMORY[0x277D27DB8];
      if (*MEMORY[0x277D27DB8])
      {
        goto LABEL_78;
      }

      __break(1u);
LABEL_32:
      OUTLINED_FUNCTION_0_3(a1, &qword_27F954A88, &type metadata for MediaRemoteCommand.Option);
      v2 = OUTLINED_FUNCTION_15_0();
      *(v2 + 16) = xmmword_2586216B0;
      a1 = *MEMORY[0x277D27D60];
      if (*MEMORY[0x277D27D60])
      {
        goto LABEL_78;
      }

      __break(1u);
LABEL_34:
      OUTLINED_FUNCTION_0_3(a1, &qword_27F954A88, &type metadata for MediaRemoteCommand.Option);
      v2 = OUTLINED_FUNCTION_15_0();
      *(v2 + 16) = xmmword_2586216B0;
      a1 = *MEMORY[0x277D27D00];
      if (*MEMORY[0x277D27D00])
      {
LABEL_78:
        v76 = sub_258620BA4();
        OUTLINED_FUNCTION_2_2(v76, v77);
        return v2;
      }

      __break(1u);
LABEL_36:
      OUTLINED_FUNCTION_0_3(a1, &qword_27F954A88, &type metadata for MediaRemoteCommand.Option);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_258621FF0;
      result = *MEMORY[0x277D27D68];
      if (!*MEMORY[0x277D27D68])
      {
        goto LABEL_86;
      }

      v33 = sub_258620BA4();
      OUTLINED_FUNCTION_2_2(v33, v34);
      result = *MEMORY[0x277D27D78];
      if (!*MEMORY[0x277D27D78])
      {
        goto LABEL_97;
      }

      v35 = sub_258620BA4();
      OUTLINED_FUNCTION_12_1(v35, v36);
      *(v2 + 104) = 0;
      result = *MEMORY[0x277D27D90];
      if (!*MEMORY[0x277D27D90])
      {
        goto LABEL_104;
      }

      v37 = sub_258620BA4();
      OUTLINED_FUNCTION_27_0(v37, v38);
      *(v2 + 144) = 0;
      result = *MEMORY[0x277D27D88];
      if (!*MEMORY[0x277D27D88])
      {
        goto LABEL_110;
      }

      v39 = sub_258620BA4();
      OUTLINED_FUNCTION_26_0(v39, v40);
      *(v2 + 184) = 0;
      return v2;
    case 0x12:
      goto LABEL_44;
    case 0x14:
      OUTLINED_FUNCTION_0_3(a1, &qword_27F954A88, &type metadata for MediaRemoteCommand.Option);
      v2 = OUTLINED_FUNCTION_15_0();
      *(v2 + 16) = xmmword_2586216B0;
      result = *MEMORY[0x277D27D50];
      if (*MEMORY[0x277D27D50])
      {
        goto LABEL_78;
      }

      goto LABEL_94;
    case 0x15:
      OUTLINED_FUNCTION_0_3(a1, &qword_27F954A88, &type metadata for MediaRemoteCommand.Option);
      v2 = OUTLINED_FUNCTION_17_0();
      *(v2 + 16) = xmmword_258621BE0;
      result = *MEMORY[0x277D27DC8];
      if (!*MEMORY[0x277D27DC8])
      {
        goto LABEL_84;
      }

      v27 = sub_258620BA4();
      OUTLINED_FUNCTION_2_2(v27, v28);
      a1 = *MEMORY[0x277D27A98];
      if (*MEMORY[0x277D27A98])
      {
        goto LABEL_51;
      }

      __break(1u);
LABEL_25:
      OUTLINED_FUNCTION_0_3(a1, &qword_27F954A88, &type metadata for MediaRemoteCommand.Option);
      v2 = OUTLINED_FUNCTION_17_0();
      *(v2 + 16) = xmmword_258621BE0;
      result = *MEMORY[0x277D27D18];
      if (!*MEMORY[0x277D27D18])
      {
        goto LABEL_85;
      }

      v29 = sub_258620BA4();
      OUTLINED_FUNCTION_2_2(v29, v30);
      result = *MEMORY[0x277D27D20];
      if (*MEMORY[0x277D27D20])
      {
        goto LABEL_27;
      }

      goto LABEL_96;
    case 0x16:
      OUTLINED_FUNCTION_0_3(a1, &qword_27F954A88, &type metadata for MediaRemoteCommand.Option);
      v2 = OUTLINED_FUNCTION_17_0();
      *(v2 + 16) = xmmword_258621BE0;
      result = *MEMORY[0x277D27DE8];
      if (!*MEMORY[0x277D27DE8])
      {
        goto LABEL_87;
      }

      v41 = sub_258620BA4();
      OUTLINED_FUNCTION_2_2(v41, v42);
      a1 = *MEMORY[0x277D27AA0];
      if (*MEMORY[0x277D27AA0])
      {
        goto LABEL_51;
      }

      __break(1u);
LABEL_44:
      OUTLINED_FUNCTION_0_3(a1, &qword_27F954A88, &type metadata for MediaRemoteCommand.Option);
      v2 = OUTLINED_FUNCTION_15_0();
      *(v2 + 16) = xmmword_2586216B0;
      a1 = *MEMORY[0x277D27D40];
      if (*MEMORY[0x277D27D40])
      {
        goto LABEL_70;
      }

      __break(1u);
LABEL_46:
      OUTLINED_FUNCTION_0_3(a1, &qword_27F954A88, &type metadata for MediaRemoteCommand.Option);
      v2 = OUTLINED_FUNCTION_15_0();
      *(v2 + 16) = xmmword_2586216B0;
      a1 = *MEMORY[0x277D27DD8];
      if (*MEMORY[0x277D27DD8])
      {
LABEL_70:
        *(v2 + 32) = sub_258620BA4();
        *(v2 + 40) = v71;
        *(v2 + 48) = 0;
        *(v2 + 56) = 0;
        v13 = 64;
LABEL_71:
        *(v2 + 64) = v13;
        return v2;
      }

      __break(1u);
LABEL_48:
      OUTLINED_FUNCTION_0_3(a1, &qword_27F954A88, &type metadata for MediaRemoteCommand.Option);
      v2 = OUTLINED_FUNCTION_17_0();
      *(v2 + 16) = xmmword_258621BE0;
      result = *MEMORY[0x277D27DB0];
      if (!*MEMORY[0x277D27DB0])
      {
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
        goto LABEL_105;
      }

      v44 = sub_258620BA4();
      result = *MEMORY[0x277D27AD0];
      if (!*MEMORY[0x277D27AD0])
      {
        goto LABEL_98;
      }

      v45 = v43;
      v46 = sub_258620BA4();
      *(v2 + 32) = v44;
      *(v2 + 40) = v45;
      *(v2 + 48) = v46;
      *(v2 + 56) = v47;
      *(v2 + 64) = 97;
      result = *MEMORY[0x277D27A90];
      if (*MEMORY[0x277D27A90])
      {
LABEL_51:
        v48 = sub_258620BA4();
        OUTLINED_FUNCTION_12_1(v48, v49);
        v50 = 64;
LABEL_63:
        *(v2 + 104) = v50;
        return v2;
      }

LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
      return result;
    case 0x17:
    case 0x18:
      goto LABEL_8;
    case 0x2B:
      goto LABEL_74;
    case 0x2C:
      OUTLINED_FUNCTION_0_3(a1, &qword_27F954A88, &type metadata for MediaRemoteCommand.Option);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_258621FF0;
      result = *MEMORY[0x277D27E08];
      if (!*MEMORY[0x277D27E08])
      {
        goto LABEL_89;
      }

      v51 = sub_258620BA4();
      OUTLINED_FUNCTION_2_2(v51, v52);
      result = *MEMORY[0x277D27DA8];
      if (!*MEMORY[0x277D27DA8])
      {
        goto LABEL_99;
      }

      v53 = sub_258620BA4();
      OUTLINED_FUNCTION_12_1(v53, v54);
      *(v2 + 104) = 64;
      result = *MEMORY[0x277D27EA0];
      if (!*MEMORY[0x277D27EA0])
      {
        goto LABEL_106;
      }

      v55 = sub_258620BA4();
      OUTLINED_FUNCTION_27_0(v55, v56);
      *(v2 + 144) = 64;
      result = *MEMORY[0x277D27E98];
      if (*MEMORY[0x277D27E98])
      {
        goto LABEL_56;
      }

      goto LABEL_111;
    case 0x2F:
      OUTLINED_FUNCTION_0_3(a1, &qword_27F954A88, &type metadata for MediaRemoteCommand.Option);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_258621FF0;
      result = *MEMORY[0x277D27D58];
      if (!*MEMORY[0x277D27D58])
      {
        goto LABEL_91;
      }

      v65 = sub_258620BA4();
      OUTLINED_FUNCTION_2_2(v65, v66);
      result = *MEMORY[0x277D27E08];
      if (!*MEMORY[0x277D27E08])
      {
        goto LABEL_101;
      }

      v67 = sub_258620BA4();
      OUTLINED_FUNCTION_12_1(v67, v68);
      *(v2 + 104) = 0;
      result = *MEMORY[0x277D27DA8];
      if (!*MEMORY[0x277D27DA8])
      {
        goto LABEL_108;
      }

      v69 = sub_258620BA4();
      OUTLINED_FUNCTION_27_0(v69, v70);
      *(v2 + 144) = 64;
      result = *MEMORY[0x277D27D28];
      if (!*MEMORY[0x277D27D28])
      {
        goto LABEL_112;
      }

LABEL_56:
      v57 = sub_258620BA4();
      OUTLINED_FUNCTION_26_0(v57, v58);
      *(v2 + 184) = 64;
      return v2;
    case 0x31:
      OUTLINED_FUNCTION_0_3(a1, &qword_27F954A88, &type metadata for MediaRemoteCommand.Option);
      v2 = OUTLINED_FUNCTION_15_0();
      *(v2 + 16) = xmmword_2586216B0;
      a1 = *MEMORY[0x277D27D00];
      if (*MEMORY[0x277D27D00])
      {
        goto LABEL_78;
      }

      __break(1u);
LABEL_74:
      OUTLINED_FUNCTION_0_3(a1, &qword_27F954A88, &type metadata for MediaRemoteCommand.Option);
      v2 = OUTLINED_FUNCTION_17_0();
      *(v2 + 16) = xmmword_258621BE0;
      result = *MEMORY[0x277D27E00];
      if (!*MEMORY[0x277D27E00])
      {
        goto LABEL_93;
      }

      v72 = sub_258620BA4();
      OUTLINED_FUNCTION_28_0(v72, v73);
      result = *MEMORY[0x277D27DE0];
      if (!*MEMORY[0x277D27DE0])
      {
        goto LABEL_102;
      }

LABEL_76:
      v74 = sub_258620BA4();
      OUTLINED_FUNCTION_12_1(v74, v75);
      *(v2 + 104) = v1;
      return v2;
    case 0x32:
      goto LABEL_59;
    case 0x33:
      OUTLINED_FUNCTION_0_3(a1, &qword_27F954A88, &type metadata for MediaRemoteCommand.Option);
      v2 = OUTLINED_FUNCTION_15_0();
      *(v2 + 16) = xmmword_2586216B0;
      a1 = *MEMORY[0x277D27D00];
      if (*MEMORY[0x277D27D00])
      {
        goto LABEL_78;
      }

      __break(1u);
LABEL_59:
      OUTLINED_FUNCTION_0_3(a1, &qword_27F954A88, &type metadata for MediaRemoteCommand.Option);
      v2 = OUTLINED_FUNCTION_17_0();
      *(v2 + 16) = xmmword_258621BE0;
      result = *MEMORY[0x277D27D00];
      if (!*MEMORY[0x277D27D00])
      {
        goto LABEL_90;
      }

      v59 = sub_258620BA4();
      OUTLINED_FUNCTION_2_2(v59, v60);
      v61 = OUTLINED_FUNCTION_17_0();
      *(v61 + 16) = xmmword_258621BE0;
      result = *MEMORY[0x277D27D28];
      if (!*MEMORY[0x277D27D28])
      {
        goto LABEL_100;
      }

      result = sub_258620BA4();
      *(v61 + 32) = result;
      *(v61 + 40) = v62;
      *(v61 + 48) = 0;
      *(v61 + 56) = 0;
      *(v61 + 64) = 0;
      if (!*MEMORY[0x277D27D30])
      {
        goto LABEL_107;
      }

      v63 = swift_allocObject();
      *(v61 + 72) = sub_258620BA4();
      *(v61 + 80) = v64;
      *(v61 + 88) = 0;
      *(v61 + 96) = 0;
      *(v61 + 104) = 0;
      *(v63 + 16) = v61;
      *(v2 + 72) = v63;
      *(v2 + 80) = 0;
      *(v2 + 88) = 0;
      *(v2 + 96) = 0;
      v50 = 0x80;
      goto LABEL_63;
    case 0x34:
      OUTLINED_FUNCTION_0_3(a1, &qword_27F954A88, &type metadata for MediaRemoteCommand.Option);
      v2 = OUTLINED_FUNCTION_15_0();
      *(v2 + 16) = xmmword_2586216B0;
      result = *MEMORY[0x277D27E18];
      if (*MEMORY[0x277D27E18])
      {
        goto LABEL_70;
      }

      goto LABEL_92;
    case 0x35:
      goto LABEL_36;
    case 0x37:
      goto LABEL_48;
    case 0x38:
      OUTLINED_FUNCTION_0_3(a1, &qword_27F954A88, &type metadata for MediaRemoteCommand.Option);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_258621F20;
      result = *MEMORY[0x277D27D78];
      if (!*MEMORY[0x277D27D78])
      {
        goto LABEL_83;
      }

      v14 = sub_258620BA4();
      OUTLINED_FUNCTION_2_2(v14, v15);
      result = *MEMORY[0x277D27D98];
      if (!*MEMORY[0x277D27D98])
      {
        goto LABEL_95;
      }

      v17 = sub_258620BA4();
      result = *MEMORY[0x277D27AC8];
      if (!*MEMORY[0x277D27AC8])
      {
        goto LABEL_103;
      }

      v18 = v16;
      v19 = sub_258620BA4();
      *(v2 + 72) = v17;
      *(v2 + 80) = v18;
      *(v2 + 88) = v19;
      *(v2 + 96) = v20;
      *(v2 + 104) = 97;
      result = *MEMORY[0x277D27D88];
      if (!*MEMORY[0x277D27D88])
      {
        goto LABEL_109;
      }

      v21 = sub_258620BA4();
      OUTLINED_FUNCTION_27_0(v21, v22);
      *(v2 + 144) = 0;
      result = *MEMORY[0x277D27D70];
      if (!*MEMORY[0x277D27D70])
      {
        goto LABEL_113;
      }

      v23 = sub_258620BA4();
      OUTLINED_FUNCTION_26_0(v23, v24);
      *(v2 + 184) = 0;
      result = *MEMORY[0x277D27D90];
      if (!*MEMORY[0x277D27D90])
      {
        goto LABEL_114;
      }

      *(v2 + 192) = sub_258620BA4();
      *(v2 + 200) = v25;
      *(v2 + 208) = 0;
      *(v2 + 216) = 0;
      *(v2 + 224) = 0;
      result = *MEMORY[0x277D27D80];
      if (!*MEMORY[0x277D27D80])
      {
        goto LABEL_115;
      }

      *(v2 + 232) = sub_258620BA4();
      *(v2 + 240) = v26;
      *(v2 + 248) = 0;
      *(v2 + 256) = 0;
      *(v2 + 264) = 0;
      return v2;
    case 0x3B:
      goto LABEL_46;
    case 0x3C:
      goto LABEL_25;
    case 0x43:
      goto LABEL_34;
    default:
      return v2;
  }
}

uint64_t sub_25861C9E4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_258621064();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_258620F64();
  *v1 = result;
  return result;
}

uint64_t sub_25861CA84()
{
  v1 = *(v0 + 16);
  sub_25861E444(0, &qword_27F954B80, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t sub_25861CB08(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_25861CB2C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_258620F24();

  return sub_25861CBE8(a1, v5);
}

unint64_t sub_25861CB70(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_258621164();
  sub_258620C14();
  v6 = sub_258621184();

  return sub_25861CCAC(a1, a2, v6);
}

unint64_t sub_25861CBE8(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_25861E8C8(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x259C84AA0](v8, a1);
    sub_25861CEC0(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_25861CCAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2586210E4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_25861CD60(uint64_t a1)
{
  sub_25861E444(0, &qword_27F954AF0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25861CDE4(void *a1)
{
  v1 = [a1 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_258620BA4();

  return v3;
}

uint64_t sub_25861CE48(void *a1)
{
  v2 = [a1 userInfo];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_258620B54();

  return v3;
}

void sub_25861CF14()
{
  if (!qword_27F954B78)
  {
    sub_25861E444(255, &qword_27F954B80, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    v0 = sub_2586210B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F954B78);
    }
  }
}

uint64_t sub_25861CF90(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    sub_258620BA4();
    OUTLINED_FUNCTION_21_0();
  }

  return OUTLINED_FUNCTION_22_0();
}

unint64_t sub_25861CFF4()
{
  result = qword_281549018;
  if (!qword_281549018)
  {
    sub_25861E444(255, &qword_27F954A20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281549018);
  }

  return result;
}

void sub_25861D070(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_30(a1, a2))
  {
    v4 = v2;
    v3(255);
    v5 = sub_258620EA4();
    if (!v6)
    {
      atomic_store(v5, v4);
    }
  }
}

uint64_t sub_25861D0C0(void *a1)
{
  v2 = [a1 artworkURLTemplates];

  if (!v2)
  {
    return 0;
  }

  sub_25861EACC(0, &qword_27F954BE8, MEMORY[0x277D84030], MEMORY[0x277D84038], MEMORY[0x277D834F8]);
  v3 = sub_258620CC4();

  return v3;
}

uint64_t sub_25861D154(uint64_t a1, uint64_t a2)
{
  sub_25861D070(0, a2);
  OUTLINED_FUNCTION_8_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_25861D1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  switch(a6 >> 60)
  {
    case 0uLL:
    case 7uLL:
    case 0xCuLL:
      goto LABEL_8;
    case 1uLL:
    case 2uLL:
    case 3uLL:

      goto LABEL_8;
    case 4uLL:
    case 5uLL:
    case 8uLL:
    case 9uLL:

      goto LABEL_8;
    case 6uLL:

      goto LABEL_8;
    case 0xAuLL:

      goto LABEL_6;
    case 0xBuLL:

LABEL_6:

LABEL_8:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25861D28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  switch(a6 >> 60)
  {
    case 0uLL:
    case 7uLL:
    case 0xCuLL:
      goto LABEL_8;
    case 1uLL:
    case 2uLL:
    case 3uLL:

      goto LABEL_8;
    case 4uLL:
    case 5uLL:
    case 8uLL:
    case 9uLL:

      goto LABEL_8;
    case 6uLL:

      goto LABEL_8;
    case 0xAuLL:

      goto LABEL_6;
    case 0xBuLL:

LABEL_6:

LABEL_8:

      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_25861D374()
{
  result = qword_27F954B90;
  if (!qword_27F954B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F954B90);
  }

  return result;
}

uint64_t sub_25861D3C8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_258620B54();

  return v4;
}

uint64_t sub_25861D430(void *a1)
{
  v1 = [a1 alternativeFormats];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_25861EE98(0, &qword_27F954C38, 0x277D27980);
  v3 = sub_258620CC4();

  return v3;
}

void sub_25861D4A0()
{
  if (!qword_27F954BC0)
  {
    sub_25861EE98(255, &qword_27F954BA0, 0x277D27970);
    sub_25861E444(255, &qword_27F954B80, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    v0 = sub_2586211B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F954BC0);
    }
  }
}

void sub_25861D53C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_25861EE98(255, &qword_27F954BA0, 0x277D27970);
    v3 = sub_2586211B4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_25861D5AC()
{
  if (!qword_27F954BD8)
  {
    sub_25861EE98(255, &qword_27F954BA0, 0x277D27970);
    sub_25861D624();
    v0 = sub_2586211B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F954BD8);
    }
  }
}

void sub_25861D624()
{
  if (!qword_27F954BE0)
  {
    sub_25861EACC(255, &qword_27F954BE8, MEMORY[0x277D84030], MEMORY[0x277D84038], MEMORY[0x277D834F8]);
    v0 = sub_258620EA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F954BE0);
    }
  }
}

void sub_25861D6A8(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_30(a1, a2))
  {
    v6 = v5;
    v7 = v4;
    v8 = v3;
    v9 = v2;
    sub_25861EE98(255, &qword_27F954BA0, 0x277D27970);
    v6(255, v8, v7);
    v10 = sub_2586211B4();
    if (!v11)
    {
      atomic_store(v10, v9);
    }
  }
}

uint64_t sub_25861D73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  switch(a5 >> 5)
  {
    case 0:
    case 2:
      goto LABEL_3;
    case 1:
    case 3:

LABEL_3:

      break;
    case 4:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25861D7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  switch(a5 >> 5)
  {
    case 0:
    case 2:
      goto LABEL_3;
    case 1:
    case 3:

LABEL_3:

      break;
    case 4:

      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_25861D870()
{
  result = qword_27F954C08;
  if (!qword_27F954C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F954C08);
  }

  return result;
}

unint64_t sub_25861D8C8()
{
  result = qword_27F954C10;
  if (!qword_27F954C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F954C10);
  }

  return result;
}

unint64_t sub_25861D920()
{
  result = qword_27F954C18;
  if (!qword_27F954C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F954C18);
  }

  return result;
}

unint64_t sub_25861D978()
{
  result = qword_27F954C20;
  if (!qword_27F954C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F954C20);
  }

  return result;
}

unint64_t sub_25861D9D0()
{
  result = qword_27F954C28;
  if (!qword_27F954C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F954C28);
  }

  return result;
}

unint64_t sub_25861DA28()
{
  result = qword_27F954C30;
  if (!qword_27F954C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F954C30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaRemoteCommand(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xB9)
  {
    if (a2 + 71 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 71) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 72;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x48;
  v5 = v6 - 72;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MediaRemoteCommand(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 71 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 71) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xB9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xB8)
  {
    v6 = ((a2 - 185) >> 8) + 1;
    *result = a2 + 71;
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
          *result = a2 + 71;
        }

        break;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So13MRContentItemC15MediaFoundationE15MetadataOutlineO(uint64_t a1)
{
  v1 = *(a1 + 40) >> 60;
  if (v1 <= 0xC)
  {
    return v1;
  }

  else
  {
    return (*a1 + 13);
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_25861DC80(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FF3 && *(a1 + 48))
    {
      v2 = *a1 + 16370;
    }

    else
    {
      v2 = ((*(a1 + 40) >> 60) | (16 * ((*(a1 + 32) >> 57) & 0x78 | *(a1 + 32) & 7 | ((*(a1 + 40) & 7) << 7)))) ^ 0x3FFF;
      if (v2 >= 0x3FF2)
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

uint64_t sub_25861DCE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FF2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 16371;
    if (a3 >= 0x3FF3)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FF3)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 0x3FF | ((-a2 & 0x3FFF) << 10);
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 40) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_25861DD78(uint64_t result, uint64_t a2)
{
  if (a2 < 0xD)
  {
    v2 = *(result + 40) & 0xFFFFFFFFFFFFFF8 | (a2 << 60);
    *(result + 32) &= 0xFFFFFFFFFFFFFF8uLL;
    *(result + 40) = v2;
  }

  else
  {
    *result = (a2 - 13);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0xD000000000000000;
  }

  return result;
}

uint64_t _s15MetadataOutlineO8BoolTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s15MetadataOutlineO8BoolTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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