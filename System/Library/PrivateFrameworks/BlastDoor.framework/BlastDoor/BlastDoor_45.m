id sub_2143F7CD4()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = *(v0 + 6);
  v7 = *(v0 + 7);
  v10 = *(v0 + 8);
  v9 = *(v0 + 9);
  v11 = *(v0 + 80);
  v13 = *(v0 + 11);
  v12 = *(v0 + 12);
  v15 = *(v0 + 13);
  v14 = *(v0 + 14);
  v24 = *(v0 + 120);
  v16 = [objc_allocWithZone(_BlastDoorLPImageAttachmentSubstitute) init];
  [v16 setIndex_];
  v17 = v16;
  if (v4)
  {
    v18 = sub_2146D9588();
  }

  else
  {
    v18 = 0;
  }

  [v16 setMIMEType_];

  v19 = [objc_allocWithZone(_BlastDoorLPImageProperties) init];
  [v19 setType_];
  if (v6)
  {
    v20 = sub_2146D9588();
  }

  else
  {
    v20 = 0;
  }

  [v19 setAccessibilityText_];

  if (v11)
  {
    v21 = 0;
  }

  else
  {
    v21 = [objc_allocWithZone(_BlastDoorLPPlatformColor) init];
    [v21 setR_];
    [v21 setG_];
    [v21 setB_];
    [v21 setA_];
  }

  [v19 setOverlaidTextColor_];

  if (v24)
  {
    v22 = 0;
  }

  else
  {
    v22 = [objc_allocWithZone(_BlastDoorLPPlatformColor) init];
    [v22 setR_];
    [v22 setG_];
    [v22 setB_];
    [v22 setA_];
  }

  [v19 setDominantColor_];

  [v16 setProperties_];
  return v16;
}

id sub_2143F7F44()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  v6 = [objc_allocWithZone(_BlastDoorLPIconMetadata) init];
  v7 = type metadata accessor for LinkPresentation.IconMetadata(0);
  sub_213FB2E54(v1 + *(v7 + 20), v5, &unk_27C9131A0, &unk_2146E9D10);
  v8 = sub_2146D8958();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v5, 1, v8) != 1)
  {
    v10 = sub_2146D8898();
    (*(v9 + 8))(v5, v8);
  }

  [v6 setURL_];

  v11 = (v1 + *(v7 + 24));
  if (v11[1])
  {
    v12 = *v11;
    v13 = sub_2146D9588();
  }

  else
  {
    v13 = 0;
  }

  [v6 setAccessibilityText_];

  return v6;
}

id sub_2143F80EC()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = [objc_allocWithZone(_BlastDoorLPARAssetAttachmentSubstitute) init];
  [v6 setIndex_];
  v7 = v6;
  if (v3)
  {
    v8 = sub_2146D9588();
  }

  else
  {
    v8 = 0;
  }

  [v6 setMIMEType_];

  v9 = [objc_allocWithZone(_BlastDoorLPARAssetProperties) init];

  v10 = sub_2146D9588();

  [v9 setAccessibilityText_];

  [v6 setProperties_];
  return v6;
}

id sub_2143F8214()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - v7;
  v9 = type metadata accessor for LinkPresentation.Video(0);
  v10 = *(v1 + v9[8]);
  if (v10)
  {
    v11 = *(v10 + 16);
    v12 = [objc_allocWithZone(_BlastDoorLPVideoAttachmentSubstitute) init];
    [v12 setIndex_];
  }

  else
  {
    v12 = [objc_allocWithZone(_BlastDoorLPVideo) init];
  }

  v13 = objc_allocWithZone(_BlastDoorLPVideoProperties);
  v14 = v12;
  v15 = [v13 init];
  v16 = (v1 + v9[9]);
  [v15 setHasAudio_];
  if (*(v16 + 2))
  {
    v17 = *(v16 + 1);
    v18 = *(v16 + 2);
  }

  v19 = sub_2146D9588();

  [v15 setAccessibilityText_];

  v20 = (v1 + v9[6]);
  if (v20[1])
  {
    v21 = *v20;
    v22 = sub_2146D9588();
  }

  else
  {
    v22 = 0;
  }

  [v14 setMIMEType_];

  sub_213FB2E54(v1 + v9[5], v8, &unk_27C9131A0, &unk_2146E9D10);
  v23 = sub_2146D8958();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  v26 = 0;
  if (v25(v8, 1, v23) != 1)
  {
    v26 = sub_2146D8898();
    (*(v24 + 8))(v8, v23);
  }

  [v14 setStreamingURL_];

  sub_213FB2E54(v1, v6, &unk_27C9131A0, &unk_2146E9D10);
  if (v25(v6, 1, v23) == 1)
  {
    v27 = 0;
  }

  else
  {
    v27 = sub_2146D8898();
    (*(v24 + 8))(v6, v23);
  }

  [v14 setYouTubeURL_];

  [v14 setProperties_];
  return v14;
}

id sub_2143F8554(Class *a1, uint64_t (*a2)(void))
{
  v5 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - v8;
  v10 = [objc_allocWithZone(*a1) init];
  v11 = a2(0);
  sub_213FB2E54(v5 + v11[5], v9, &unk_27C9131A0, &unk_2146E9D10);
  v12 = sub_2146D8958();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v9, 1, v12) != 1)
  {
    v14 = sub_2146D8898();
    (*(v13 + 8))(v9, v12);
  }

  [v10 setURL_];

  v15 = (v5 + v11[6]);
  if (v15[1])
  {
    v16 = *v15;
    v17 = sub_2146D9588();
  }

  else
  {
    v17 = 0;
  }

  [v10 setType_];

  [v10 setSize_];
  v18 = (v5 + v11[8]);
  if (v18[1])
  {
    v19 = *v18;
    v20 = sub_2146D9588();
  }

  else
  {
    v20 = 0;
  }

  [v10 setAccessibilityText_];

  return v10;
}

id sub_2143F875C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  v6 = [objc_allocWithZone(_BlastDoorLPAudio) init];
  sub_213FB2E54(v1, v5, &unk_27C9131A0, &unk_2146E9D10);
  v7 = sub_2146D8958();
  v8 = *(v7 - 8);
  v9 = 0;
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    v9 = sub_2146D8898();
    (*(v8 + 8))(v5, v7);
  }

  [v6 setStreamingURL_];

  v10 = (v1 + *(type metadata accessor for LinkPresentation.Audio(0) + 20));
  if (v10[1])
  {
    v11 = *v10;
    v12 = sub_2146D9588();
  }

  else
  {
    v12 = 0;
  }

  [v6 setMIMEType_];

  return v6;
}

id sub_2143F88F4(Class *a1, uint64_t (*a2)(void))
{
  v5 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - v8;
  v10 = [objc_allocWithZone(*a1) init];
  v11 = a2(0);
  sub_213FB2E54(v5 + v11[5], v9, &unk_27C9131A0, &unk_2146E9D10);
  v12 = sub_2146D8958();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v9, 1, v12) != 1)
  {
    v14 = sub_2146D8898();
    (*(v13 + 8))(v9, v12);
  }

  [v10 setURL_];

  v15 = (v5 + v11[6]);
  if (v15[1])
  {
    v16 = *v15;
    v17 = sub_2146D9588();
  }

  else
  {
    v17 = 0;
  }

  [v10 setType_];

  v18 = (v5 + v11[7]);
  if (v18[1])
  {
    v19 = *v18;
    v20 = sub_2146D9588();
  }

  else
  {
    v20 = 0;
  }

  [v10 setAccessibilityText_];

  return v10;
}

void *sub_2143F8AE0()
{
  v672 = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904870, &qword_2146EDB60);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v667 = &v609 - v2;
  v664 = type metadata accessor for LinkPresentation.SharedObjectMetadata(0);
  v3 = *(*(v664 - 8) + 64);
  MEMORY[0x28223BE20](v664);
  v668 = &v609 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v659 = type metadata accessor for LinkPresentation.WalletPassMetadata(0);
  v5 = *(*(v659 - 8) + 64);
  MEMORY[0x28223BE20](v659);
  v662 = &v609 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v665 = type metadata accessor for LinkPresentation.PhotosMomentMetadata(0);
  v7 = *(*(v665 - 8) + 64);
  MEMORY[0x28223BE20](v665);
  v669 = &v609 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v663 = type metadata accessor for LinkPresentation.FileMetadata(0);
  v9 = *(*(v663 - 8) + 64);
  MEMORY[0x28223BE20](v663);
  v666 = &v609 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v676 = sub_2146D8958();
  v673 = *(v676 - 8);
  v11 = v673[8];
  MEMORY[0x28223BE20](v676);
  v674 = &v609 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904230, &qword_2146EAB88);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v675 = &v609 - v15;
  v677 = type metadata accessor for LinkPresentation.EncodedToken(0);
  v610 = *(v677 - 8);
  v16 = *(v610 + 64);
  MEMORY[0x28223BE20](v677);
  v678 = &v609 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v655 = type metadata accessor for LinkPresentation.MovieBundleMetadata(0);
  v18 = *(*(v655 - 8) + 64);
  MEMORY[0x28223BE20](v655);
  v661 = &v609 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v650 = type metadata accessor for LinkPresentation.MovieMetadata(0);
  v20 = *(*(v650 - 8) + 64);
  MEMORY[0x28223BE20](v650);
  v660 = &v609 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v645 = type metadata accessor for LinkPresentation.TVShowMetadata(0);
  v22 = *(*(v645 - 8) + 64);
  MEMORY[0x28223BE20](v645);
  v653 = &v609 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v647 = type metadata accessor for LinkPresentation.TVSeasonMetadata(0);
  v24 = *(*(v647 - 8) + 64);
  MEMORY[0x28223BE20](v647);
  v656 = &v609 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v648 = type metadata accessor for LinkPresentation.TVEpisodeMetadata(0);
  v26 = *(*(v648 - 8) + 64);
  MEMORY[0x28223BE20](v648);
  v658 = &v609 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v649 = type metadata accessor for LinkPresentation.PodcastMetadata(0);
  v28 = *(*(v649 - 8) + 64);
  MEMORY[0x28223BE20](v649);
  v654 = &v609 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v634 = &v609 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v631 = &v609 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  *&v671 = &v609 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v640 = &v609 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v635 = &v609 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v642 = &v609 - v43;
  MEMORY[0x28223BE20](v42);
  v636 = &v609 - v44;
  v651 = type metadata accessor for LinkPresentation.PodcastEpisodeMetadata(0);
  v45 = *(*(v651 - 8) + 64);
  MEMORY[0x28223BE20](v651);
  v657 = &v609 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v641 = type metadata accessor for LinkPresentation.AudioBookMetadata(0);
  v47 = *(*(v641 - 8) + 64);
  MEMORY[0x28223BE20](v641);
  v646 = &v609 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v638 = type metadata accessor for LinkPresentation.BookMetadata(0);
  v49 = *(*(v638 - 8) + 64);
  MEMORY[0x28223BE20](v638);
  v639 = &v609 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904888, &unk_2146EDB80);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51 - 8);
  v643 = &v609 - v53;
  v644 = type metadata accessor for LinkPresentation.SoftwareMetadata(0);
  v54 = *(*(v644 - 8) + 64);
  MEMORY[0x28223BE20](v644);
  v652 = &v609 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v625 = type metadata accessor for LinkPresentation.RadioMetadata(0);
  v56 = *(*(v625 - 8) + 64);
  MEMORY[0x28223BE20](v625);
  v632 = &v609 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v633 = type metadata accessor for LinkPresentation.PlaylistMetadata(0);
  v58 = *(*(v633 - 8) + 64);
  MEMORY[0x28223BE20](v633);
  v637 = &v609 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v623 = type metadata accessor for LinkPresentation.ArtistMetadata(0);
  v60 = *(*(v623 - 8) + 64);
  MEMORY[0x28223BE20](v623);
  v629 = &v609 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v622 = type metadata accessor for LinkPresentation.MusicVideoMetadata(0);
  v62 = *(*(v622 - 8) + 64);
  MEMORY[0x28223BE20](v622);
  v626 = &v609 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v624 = type metadata accessor for LinkPresentation.AlbumMetadata(0);
  v64 = *(*(v624 - 8) + 64);
  MEMORY[0x28223BE20](v624);
  v627 = &v609 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v67 = *(*(v66 - 8) + 64);
  v68 = MEMORY[0x28223BE20](v66 - 8);
  v628 = &v609 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = MEMORY[0x28223BE20](v68);
  v612 = &v609 - v71;
  MEMORY[0x28223BE20](v70);
  v630 = &v609 - v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
  v74 = *(*(v73 - 8) + 64);
  v75 = MEMORY[0x28223BE20](v73 - 8);
  v620 = &v609 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = MEMORY[0x28223BE20](v75);
  v618 = &v609 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v614 = &v609 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v617 = &v609 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v619 = &v609 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v615 = &v609 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v670 = &v609 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v616 = &v609 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v93 = &v609 - v92;
  v94 = MEMORY[0x28223BE20](v91);
  v96 = &v609 - v95;
  v97 = MEMORY[0x28223BE20](v94);
  v621 = &v609 - v98;
  v99 = MEMORY[0x28223BE20](v97);
  v101 = &v609 - v100;
  v102 = MEMORY[0x28223BE20](v99);
  v104 = &v609 - v103;
  v105 = MEMORY[0x28223BE20](v102);
  v107 = &v609 - v106;
  MEMORY[0x28223BE20](v105);
  v613 = &v609 - v108;
  v109 = type metadata accessor for LinkPresentation.SongMetadata(0);
  v110 = *(*(v109 - 1) + 64);
  MEMORY[0x28223BE20](v109);
  v112 = &v609 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for LinkPresentation.SpecializationMetadata(0);
  v611 = *(v113 - 8);
  v114 = *(v611 + 64);
  MEMORY[0x28223BE20](v113);
  v116 = (&v609 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2144009D8(v679, v116, type metadata accessor for LinkPresentation.SpecializationMetadata);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v177 = v116;
      v172 = v627;
      sub_214400A9C(v177, v627, type metadata accessor for LinkPresentation.AlbumMetadata);
      sub_21404A8B8(0, &qword_27C912AE8, off_2781752A8);
      v178 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v172 + 8))
      {
        v179 = *v172;
        v180 = sub_2146D9588();
      }

      else
      {
        v180 = 0;
      }

      [v178 setStoreFrontIdentifier_];

      if (*(v172 + 24))
      {
        v419 = *(v172 + 16);
        v420 = sub_2146D9588();
      }

      else
      {
        v420 = 0;
      }

      [v178 setStoreIdentifier_];

      if (*(v172 + 40))
      {
        v423 = *(v172 + 32);
        v424 = sub_2146D9588();
      }

      else
      {
        v424 = 0;
      }

      [v178 setName_];

      if (*(v172 + 56))
      {
        v427 = *(v172 + 48);
        v428 = sub_2146D9588();
      }

      else
      {
        v428 = 0;
      }

      [v178 setArtist_];

      v431 = *(v172 + 144);
      v708[4] = *(v172 + 128);
      v708[5] = v431;
      v708[6] = *(v172 + 160);
      *(&v708[6] + 9) = *(v172 + 169);
      v432 = *(v172 + 80);
      v708[0] = *(v172 + 64);
      v708[1] = v432;
      v433 = *(v172 + 112);
      v708[2] = *(v172 + 96);
      v708[3] = v433;
      if (sub_2144009B4(v708) == 1)
      {
        v434 = 0;
      }

      else
      {
        v705 = v708[4];
        v706 = v708[5];
        v707[0] = v708[6];
        *(v707 + 9) = *(&v708[6] + 9);
        v702 = v708[0];
        v703 = v708[1];
        v704[0] = v708[2];
        v704[1] = v708[3];
        v434 = sub_2143F7CD4();
      }

      [v178 setArtwork_];

      v435 = v624;
      sub_213FB2E54(v172 + *(v624 + 36), v107, &qword_27C904878, &unk_2146EDB68);
      v436 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      if ((*(*(v436 - 8) + 48))(v107, 1, v436) == 1)
      {
        sub_213FB2DF4(v107, &qword_27C904878, &unk_2146EDB68);
        v437 = 0;
      }

      else
      {
        v437 = sub_2143FFD20();
        sub_214400B04(v107, type metadata accessor for LinkPresentation.ArtworkMetadata);
      }

      v117 = v178;
      [v178 setArtworkMetadata_];

      if (*(v172 + *(v435 + 40)))
      {
        v438 = sub_2146D98E8();
      }

      else
      {
        v438 = 0;
      }

      [v178 setOffers_];

      v400 = type metadata accessor for LinkPresentation.AlbumMetadata;
      goto LABEL_473;
    case 2u:
      v166 = v626;
      sub_214400A9C(v116, v626, type metadata accessor for LinkPresentation.MusicVideoMetadata);
      sub_21404A8B8(0, &qword_27C912AF8, off_2781752D8);
      v117 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v166 + 8))
      {
        v167 = *v166;
        v168 = sub_2146D9588();
      }

      else
      {
        v168 = 0;
      }

      [v117 setStoreFrontIdentifier_];

      if (*(v166 + 24))
      {
        v361 = *(v166 + 16);
        v362 = sub_2146D9588();
      }

      else
      {
        v362 = 0;
      }

      [v117 setStoreIdentifier_];

      if (*(v166 + 40))
      {
        v363 = *(v166 + 32);
        v364 = sub_2146D9588();
      }

      else
      {
        v364 = 0;
      }

      [v117 setName_];

      if (*(v166 + 56))
      {
        v365 = *(v166 + 48);
        v366 = sub_2146D9588();
      }

      else
      {
        v366 = 0;
      }

      [v117 setArtist_];

      v367 = *(v166 + 144);
      v708[4] = *(v166 + 128);
      v708[5] = v367;
      v708[6] = *(v166 + 160);
      *(&v708[6] + 9) = *(v166 + 169);
      v368 = *(v166 + 80);
      v708[0] = *(v166 + 64);
      v708[1] = v368;
      v369 = *(v166 + 112);
      v708[2] = *(v166 + 96);
      v708[3] = v369;
      if (sub_2144009B4(v708) == 1)
      {
        v370 = 0;
      }

      else
      {
        v705 = v708[4];
        v706 = v708[5];
        v707[0] = v708[6];
        *(v707 + 9) = *(&v708[6] + 9);
        v702 = v708[0];
        v703 = v708[1];
        v704[0] = v708[2];
        v704[1] = v708[3];
        v370 = sub_2143F7CD4();
      }

      [v117 setArtwork_];

      sub_213FB2E54(v166 + *(v622 + 36), v104, &qword_27C904878, &unk_2146EDB68);
      v371 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      if ((*(*(v371 - 8) + 48))(v104, 1, v371) == 1)
      {
        sub_213FB2DF4(v104, &qword_27C904878, &unk_2146EDB68);
        v372 = 0;
      }

      else
      {
        v372 = sub_2143FFD20();
        sub_214400B04(v104, type metadata accessor for LinkPresentation.ArtworkMetadata);
      }

      [v117 setArtworkMetadata_];

      v373 = type metadata accessor for LinkPresentation.MusicVideoMetadata;
      goto LABEL_422;
    case 3u:
      v171 = v116;
      v172 = v629;
      sub_214400A9C(v171, v629, type metadata accessor for LinkPresentation.ArtistMetadata);
      sub_21404A8B8(0, &qword_27C912AF0, off_2781752B0);
      v117 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v172 + 8))
      {
        v173 = *v172;
        v174 = sub_2146D9588();
      }

      else
      {
        v174 = 0;
      }

      v387 = v623;
      [v117 setStoreFrontIdentifier_];

      if (*(v172 + 24))
      {
        v388 = *(v172 + 16);
        v389 = sub_2146D9588();
      }

      else
      {
        v389 = 0;
      }

      [v117 setStoreIdentifier_];

      if (*(v172 + 40))
      {
        v390 = *(v172 + 32);
        v391 = sub_2146D9588();
      }

      else
      {
        v391 = 0;
      }

      [v117 setName_];

      if (*(v172 + 56))
      {
        v392 = *(v172 + 48);
        v393 = sub_2146D9588();
      }

      else
      {
        v393 = 0;
      }

      [v117 setGenre_];

      v394 = *(v172 + 144);
      v708[4] = *(v172 + 128);
      v708[5] = v394;
      v708[6] = *(v172 + 160);
      *(&v708[6] + 9) = *(v172 + 169);
      v395 = *(v172 + 80);
      v708[0] = *(v172 + 64);
      v708[1] = v395;
      v396 = *(v172 + 112);
      v708[2] = *(v172 + 96);
      v708[3] = v396;
      if (sub_2144009B4(v708) == 1)
      {
        v397 = 0;
      }

      else
      {
        v705 = v708[4];
        v706 = v708[5];
        v707[0] = v708[6];
        *(v707 + 9) = *(&v708[6] + 9);
        v702 = v708[0];
        v703 = v708[1];
        v704[0] = v708[2];
        v704[1] = v708[3];
        v397 = sub_2143F7CD4();
      }

      [v117 setArtwork_];

      sub_213FB2E54(v172 + *(v387 + 36), v101, &qword_27C904878, &unk_2146EDB68);
      v398 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      if ((*(*(v398 - 8) + 48))(v101, 1, v398) == 1)
      {
        sub_213FB2DF4(v101, &qword_27C904878, &unk_2146EDB68);
        v399 = 0;
      }

      else
      {
        v399 = sub_2143FFD20();
        sub_214400B04(v101, type metadata accessor for LinkPresentation.ArtworkMetadata);
      }

      [v117 setArtworkMetadata_];

      v400 = type metadata accessor for LinkPresentation.ArtistMetadata;
      goto LABEL_473;
    case 4u:
      v112 = v637;
      sub_214400A9C(v116, v637, type metadata accessor for LinkPresentation.PlaylistMetadata);
      sub_21404A8B8(0, &qword_27C912B00, off_2781752E0);
      v117 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v112 + 1))
      {
        v148 = *v112;
        v149 = sub_2146D9588();
      }

      else
      {
        v149 = 0;
      }

      v297 = v676;
      v298 = v673;
      v299 = v633;
      v300 = v612;
      [v117 setStoreFrontIdentifier_];

      if (*(v112 + 3))
      {
        v301 = *(v112 + 2);
        v302 = sub_2146D9588();
      }

      else
      {
        v302 = 0;
      }

      [v117 setStoreIdentifier_];

      if (*(v112 + 5))
      {
        v303 = *(v112 + 4);
        v304 = sub_2146D9588();
      }

      else
      {
        v304 = 0;
      }

      [v117 setName_];

      if (*(v112 + 7))
      {
        v305 = *(v112 + 6);
        v306 = sub_2146D9588();
      }

      else
      {
        v306 = 0;
      }

      [v117 setCurator_];

      sub_213FB2E54(&v112[v299[8]], v300, &unk_27C9131A0, &unk_2146E9D10);
      if ((v298[6])(v300, 1, v297) == 1)
      {
        v307 = 0;
      }

      else
      {
        v307 = sub_2146D8898();
        (v298[1])(v300, v297);
      }

      [v117 setCuratorProfileURL_];

      v308 = &v112[v299[9]];
      if (*(v308 + 1))
      {
        v309 = *v308;
        v310 = sub_2146D9588();
      }

      else
      {
        v310 = 0;
      }

      v311 = v621;
      [v117 setCuratorHandle_];

      v312 = &v112[v299[10]];
      v313 = *(v312 + 5);
      v708[4] = *(v312 + 4);
      v708[5] = v313;
      v708[6] = *(v312 + 6);
      *(&v708[6] + 9) = *(v312 + 105);
      v314 = *(v312 + 1);
      v708[0] = *v312;
      v708[1] = v314;
      v315 = *(v312 + 3);
      v708[2] = *(v312 + 2);
      v708[3] = v315;
      if (sub_2144009B4(v708) == 1)
      {
        v316 = 0;
      }

      else
      {
        v705 = v708[4];
        v706 = v708[5];
        v707[0] = v708[6];
        *(v707 + 9) = *(&v708[6] + 9);
        v702 = v708[0];
        v703 = v708[1];
        v704[0] = v708[2];
        v704[1] = v708[3];
        v316 = sub_2143F7CD4();
      }

      [v117 setArtwork_];

      sub_213FB2E54(&v112[v299[11]], v311, &qword_27C904878, &unk_2146EDB68);
      v317 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      if ((*(*(v317 - 8) + 48))(v311, 1, v317) == 1)
      {
        sub_213FB2DF4(v311, &qword_27C904878, &unk_2146EDB68);
        v318 = 0;
      }

      else
      {
        v318 = sub_2143FFD20();
        sub_214400B04(v311, type metadata accessor for LinkPresentation.ArtworkMetadata);
      }

      [v117 setArtworkMetadata_];

      v319 = type metadata accessor for LinkPresentation.PlaylistMetadata;
      goto LABEL_374;
    case 5u:
      v166 = v632;
      sub_214400A9C(v116, v632, type metadata accessor for LinkPresentation.RadioMetadata);
      sub_21404A8B8(0, &qword_27C912B08, off_2781752F8);
      v117 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v166 + 8))
      {
        v192 = *v166;
        v193 = sub_2146D9588();
      }

      else
      {
        v193 = 0;
      }

      v465 = v625;
      [v117 setStoreFrontIdentifier_];

      if (*(v166 + 24))
      {
        v466 = *(v166 + 16);
        v467 = sub_2146D9588();
      }

      else
      {
        v467 = 0;
      }

      [v117 setStoreIdentifier_];

      if (*(v166 + 40))
      {
        v468 = *(v166 + 32);
        v469 = sub_2146D9588();
      }

      else
      {
        v469 = 0;
      }

      [v117 setName_];

      if (*(v166 + 56))
      {
        v470 = *(v166 + 48);
        v471 = sub_2146D9588();
      }

      else
      {
        v471 = 0;
      }

      [v117 setCurator_];

      v472 = *(v166 + 144);
      v708[4] = *(v166 + 128);
      v708[5] = v472;
      v708[6] = *(v166 + 160);
      *(&v708[6] + 9) = *(v166 + 169);
      v473 = *(v166 + 80);
      v708[0] = *(v166 + 64);
      v708[1] = v473;
      v474 = *(v166 + 112);
      v708[2] = *(v166 + 96);
      v708[3] = v474;
      if (sub_2144009B4(v708) == 1)
      {
        v475 = 0;
      }

      else
      {
        v705 = v708[4];
        v706 = v708[5];
        v707[0] = v708[6];
        *(v707 + 9) = *(&v708[6] + 9);
        v702 = v708[0];
        v703 = v708[1];
        v704[0] = v708[2];
        v704[1] = v708[3];
        v475 = sub_2143F7CD4();
      }

      [v117 setArtwork_];

      sub_213FB2E54(v166 + *(v465 + 36), v96, &qword_27C904878, &unk_2146EDB68);
      v476 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      if ((*(*(v476 - 8) + 48))(v96, 1, v476) == 1)
      {
        sub_213FB2DF4(v96, &qword_27C904878, &unk_2146EDB68);
        v477 = 0;
      }

      else
      {
        v477 = sub_2143FFD20();
        sub_214400B04(v96, type metadata accessor for LinkPresentation.ArtworkMetadata);
      }

      [v117 setArtworkMetadata_];

      v373 = type metadata accessor for LinkPresentation.RadioMetadata;
LABEL_422:
      v455 = v373;
      v456 = v166;
      goto LABEL_619;
    case 6u:
      v201 = v116;
      v172 = v652;
      sub_214400A9C(v201, v652, type metadata accessor for LinkPresentation.SoftwareMetadata);
      sub_21404A8B8(0, &qword_27C912B10, off_278175300);
      v117 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v172 + 8))
      {
        v202 = *v172;
        v203 = sub_2146D9588();
      }

      else
      {
        v203 = 0;
      }

      v491 = v643;
      v490 = v644;
      [v117 setStoreFrontIdentifier_];

      if (*(v172 + 24))
      {
        v492 = *(v172 + 16);
        v493 = sub_2146D9588();
      }

      else
      {
        v493 = 0;
      }

      [v117 setStoreIdentifier_];

      if (*(v172 + 40))
      {
        v494 = *(v172 + 32);
        v495 = sub_2146D9588();
      }

      else
      {
        v495 = 0;
      }

      [v117 setName_];

      if (*(v172 + 56))
      {
        v496 = *(v172 + 48);
        v497 = sub_2146D9588();
      }

      else
      {
        v497 = 0;
      }

      [v117 setSubtitle_];

      if (*(v172 + 72))
      {
        v498 = *(v172 + 64);
        v499 = sub_2146D9588();
      }

      else
      {
        v499 = 0;
      }

      [v117 setGenre_];

      if (*(v172 + 88))
      {
        v500 = *(v172 + 80);
        v501 = sub_2146D9588();
      }

      else
      {
        v501 = 0;
      }

      [v117 setPlatform_];

      v502 = *(v172 + 176);
      v708[4] = *(v172 + 160);
      v708[5] = v502;
      v708[6] = *(v172 + 192);
      *(&v708[6] + 9) = *(v172 + 201);
      v503 = *(v172 + 112);
      v708[0] = *(v172 + 96);
      v708[1] = v503;
      v504 = *(v172 + 144);
      v708[2] = *(v172 + 128);
      v708[3] = v504;
      if (sub_2144009B4(v708) == 1)
      {
        v505 = 0;
      }

      else
      {
        v705 = v708[4];
        v706 = v708[5];
        v707[0] = v708[6];
        *(v707 + 9) = *(&v708[6] + 9);
        v702 = v708[0];
        v703 = v708[1];
        v704[0] = v708[2];
        v704[1] = v708[3];
        v505 = sub_2143F7CD4();
      }

      [v117 setIcon_];

      v506 = *(v172 + 224);
      if (v506)
      {
        sub_2143E341C(v506);
        sub_21404A8B8(0, &qword_27C912A80, off_2781751E0);
        v507 = sub_2146D98E8();
      }

      else
      {
        v507 = 0;
      }

      [v117 setScreenshots_];

      sub_213FB2E54(v172 + v490[12], v491, &qword_27C904888, &unk_2146EDB80);
      v508 = type metadata accessor for LinkPresentation.Video(0);
      if ((*(*(v508 - 8) + 48))(v491, 1, v508) == 1)
      {
        sub_213FB2DF4(v491, &qword_27C904888, &unk_2146EDB80);
        v509 = 0;
      }

      else
      {
        v509 = sub_2143F8214();
        sub_214400B04(v491, type metadata accessor for LinkPresentation.Video);
      }

      [v117 setPreviewVideo_];

      [v117 setIsMessagesOnlyApp_];
      v510 = (v172 + v490[14]);
      v511 = v510[5];
      v705 = v510[4];
      v706 = v511;
      v707[0] = v510[6];
      *(v707 + 9) = *(v510 + 105);
      v512 = v510[1];
      v702 = *v510;
      v703 = v512;
      v513 = v510[3];
      v704[0] = v510[2];
      v704[1] = v513;
      if (sub_2144009B4(&v702) == 1)
      {
        v514 = 0;
      }

      else
      {
        v700 = v706;
        v701[0] = v707[0];
        *(v701 + 9) = *(v707 + 9);
        v695 = v702;
        v696 = v703;
        v697 = v704[0];
        v698 = v704[1];
        v699 = v705;
        v514 = sub_2143F7CD4();
      }

      [v117 setMessagesAppIcon_];

      v400 = type metadata accessor for LinkPresentation.SoftwareMetadata;
LABEL_473:
      v455 = v400;
      v456 = v172;
      goto LABEL_619;
    case 7u:
      v140 = v639;
      sub_214400A9C(v116, v639, type metadata accessor for LinkPresentation.BookMetadata);
      sub_21404A8B8(0, &qword_27C912B18, off_2781752C0);
      v117 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v140 + 8))
      {
        v175 = *v140;
        v176 = sub_2146D9588();
      }

      else
      {
        v176 = 0;
      }

      v401 = v638;
      v402 = v93;
      [v117 setStoreFrontIdentifier_];

      if (*(v140 + 24))
      {
        v403 = *(v140 + 16);
        v404 = sub_2146D9588();
      }

      else
      {
        v404 = 0;
      }

      [v117 setStoreIdentifier_];

      if (*(v140 + 40))
      {
        v405 = *(v140 + 32);
        v406 = sub_2146D9588();
      }

      else
      {
        v406 = 0;
      }

      [v117 setName_];

      if (*(v140 + 56))
      {
        v407 = *(v140 + 48);
        v408 = sub_2146D9588();
      }

      else
      {
        v408 = 0;
      }

      [v117 setAuthor_];

      v409 = *(v140 + 144);
      v708[4] = *(v140 + 128);
      v708[5] = v409;
      v708[6] = *(v140 + 160);
      *(&v708[6] + 9) = *(v140 + 169);
      v410 = *(v140 + 80);
      v708[0] = *(v140 + 64);
      v708[1] = v410;
      v411 = *(v140 + 112);
      v708[2] = *(v140 + 96);
      v708[3] = v411;
      if (sub_2144009B4(v708) == 1)
      {
        v412 = 0;
      }

      else
      {
        v705 = v708[4];
        v706 = v708[5];
        v707[0] = v708[6];
        *(v707 + 9) = *(&v708[6] + 9);
        v702 = v708[0];
        v703 = v708[1];
        v704[0] = v708[2];
        v704[1] = v708[3];
        v412 = sub_2143F7CD4();
      }

      [v117 setArtwork_];

      sub_213FB2E54(v140 + *(v401 + 36), v402, &qword_27C904878, &unk_2146EDB68);
      v413 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      if ((*(*(v413 - 8) + 48))(v402, 1, v413) == 1)
      {
        sub_213FB2DF4(v402, &qword_27C904878, &unk_2146EDB68);
        v414 = 0;
      }

      else
      {
        v414 = sub_2143FFD20();
        sub_214400B04(v402, type metadata accessor for LinkPresentation.ArtworkMetadata);
      }

      [v117 setArtworkMetadata_];

      [v117 setHasSpineOnRight_];
      v281 = type metadata accessor for LinkPresentation.BookMetadata;
      goto LABEL_545;
    case 8u:
      v152 = v646;
      sub_214400A9C(v116, v646, type metadata accessor for LinkPresentation.AudioBookMetadata);
      sub_21404A8B8(0, &qword_27C912B20, off_2781752B8);
      v117 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v152 + 8))
      {
        v207 = *v152;
        v208 = sub_2146D9588();
      }

      else
      {
        v208 = 0;
      }

      v532 = v676;
      v533 = v641;
      v534 = v628;
      [v117 setStoreFrontIdentifier_];

      if (*(v152 + 24))
      {
        v535 = *(v152 + 16);
        v536 = sub_2146D9588();
      }

      else
      {
        v536 = 0;
      }

      v537 = v673;
      [v117 setStoreIdentifier_];

      if (*(v152 + 40))
      {
        v538 = *(v152 + 32);
        v539 = sub_2146D9588();
      }

      else
      {
        v539 = 0;
      }

      [v117 setName_];

      if (*(v152 + 56))
      {
        v540 = *(v152 + 48);
        v541 = sub_2146D9588();
      }

      else
      {
        v541 = 0;
      }

      [v117 setAuthor_];

      if (*(v152 + 72))
      {
        v542 = *(v152 + 64);
        v543 = sub_2146D9588();
      }

      else
      {
        v543 = 0;
      }

      [v117 setNarrator_];

      v544 = *(v152 + 160);
      v708[4] = *(v152 + 144);
      v708[5] = v544;
      v708[6] = *(v152 + 176);
      *(&v708[6] + 9) = *(v152 + 185);
      v545 = *(v152 + 96);
      v708[0] = *(v152 + 80);
      v708[1] = v545;
      v546 = *(v152 + 128);
      v708[2] = *(v152 + 112);
      v708[3] = v546;
      if (sub_2144009B4(v708) == 1)
      {
        v547 = 0;
      }

      else
      {
        v705 = v708[4];
        v706 = v708[5];
        v707[0] = v708[6];
        *(v707 + 9) = *(&v708[6] + 9);
        v702 = v708[0];
        v703 = v708[1];
        v704[0] = v708[2];
        v704[1] = v708[3];
        v547 = sub_2143F7CD4();
      }

      [v117 setArtwork_];

      v548 = v616;
      sub_213FB2E54(v152 + *(v533 + 40), v616, &qword_27C904878, &unk_2146EDB68);
      v549 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      if ((*(*(v549 - 8) + 48))(v548, 1, v549) == 1)
      {
        sub_213FB2DF4(v548, &qword_27C904878, &unk_2146EDB68);
        v550 = 0;
      }

      else
      {
        v550 = sub_2143FFD20();
        sub_214400B04(v548, type metadata accessor for LinkPresentation.ArtworkMetadata);
      }

      [v117 setArtworkMetadata_];

      sub_213FB2E54(v152 + *(v533 + 44), v534, &unk_27C9131A0, &unk_2146E9D10);
      if ((v537[6])(v534, 1, v532) == 1)
      {
        v551 = 0;
      }

      else
      {
        v551 = sub_2146D8898();
        (v537[1])(v534, v532);
      }

      [v117 setPreviewURL_];

      v355 = type metadata accessor for LinkPresentation.AudioBookMetadata;
      goto LABEL_618;
    case 9u:
      v152 = v657;
      sub_214400A9C(v116, v657, type metadata accessor for LinkPresentation.PodcastEpisodeMetadata);
      sub_21404A8B8(0, &qword_27C912B28, off_2781752E8);
      v117 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v152 + 8))
      {
        v153 = *v152;
        v154 = sub_2146D9588();
      }

      else
      {
        v154 = 0;
      }

      v333 = v651;
      v334 = v636;
      [v117 setStoreFrontIdentifier_];

      if (*(v152 + 24))
      {
        v335 = *(v152 + 16);
        v336 = sub_2146D9588();
      }

      else
      {
        v336 = 0;
      }

      [v117 setStoreIdentifier_];

      if (*(v152 + 40))
      {
        v337 = *(v152 + 32);
        v338 = sub_2146D9588();
      }

      else
      {
        v338 = 0;
      }

      [v117 setEpisodeName_];

      if (*(v152 + 56))
      {
        v339 = *(v152 + 48);
        v340 = sub_2146D9588();
      }

      else
      {
        v340 = 0;
      }

      [v117 setPodcastName_];

      if (*(v152 + 72))
      {
        v341 = *(v152 + 64);
        v342 = sub_2146D9588();
      }

      else
      {
        v342 = 0;
      }

      [v117 setArtist_];

      sub_213FB2E54(v152 + v333[9], v334, &qword_27C913090, &unk_2146E9DB0);
      v343 = sub_2146D8B08();
      v344 = *(v343 - 8);
      v345 = 0;
      if ((*(v344 + 48))(v334, 1, v343) != 1)
      {
        v345 = sub_2146D8AD8();
        (*(v344 + 8))(v334, v343);
      }

      [v117 setReleaseDate_];

      v346 = (v152 + v333[10]);
      v347 = v346[5];
      v708[4] = v346[4];
      v708[5] = v347;
      v708[6] = v346[6];
      *(&v708[6] + 9) = *(v346 + 105);
      v348 = v346[1];
      v708[0] = *v346;
      v708[1] = v348;
      v349 = v346[3];
      v708[2] = v346[2];
      v708[3] = v349;
      if (sub_2144009B4(v708) == 1)
      {
        v350 = 0;
      }

      else
      {
        v705 = v708[4];
        v706 = v708[5];
        v707[0] = v708[6];
        *(v707 + 9) = *(&v708[6] + 9);
        v702 = v708[0];
        v703 = v708[1];
        v704[0] = v708[2];
        v704[1] = v708[3];
        v350 = sub_2143F7CD4();
      }

      v351 = v670;
      [v117 setArtwork_];

      sub_213FB2E54(v152 + v333[11], v351, &qword_27C904878, &unk_2146EDB68);
      v352 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      if ((*(*(v352 - 8) + 48))(v351, 1, v352) == 1)
      {
        sub_213FB2DF4(v351, &qword_27C904878, &unk_2146EDB68);
        v353 = 0;
      }

      else
      {
        v353 = sub_2143FFD20();
        sub_214400B04(v351, type metadata accessor for LinkPresentation.ArtworkMetadata);
      }

      [v117 setArtworkMetadata_];

      if (*(v152 + v333[12]))
      {
        v354 = sub_2146D98E8();
      }

      else
      {
        v354 = 0;
      }

      [v117 setOffers_];

      v355 = type metadata accessor for LinkPresentation.PodcastEpisodeMetadata;
      goto LABEL_618;
    case 0xAu:
      v140 = v654;
      sub_214400A9C(v116, v654, type metadata accessor for LinkPresentation.PodcastMetadata);
      sub_21404A8B8(0, &qword_27C912B30, off_2781752F0);
      v117 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v140 + 8))
      {
        v205 = *v140;
        v206 = sub_2146D9588();
      }

      else
      {
        v206 = 0;
      }

      v517 = v649;
      v518 = v615;
      [v117 setStoreFrontIdentifier_];

      if (*(v140 + 24))
      {
        v519 = *(v140 + 16);
        v520 = sub_2146D9588();
      }

      else
      {
        v520 = 0;
      }

      [v117 setStoreIdentifier_];

      if (*(v140 + 40))
      {
        v521 = *(v140 + 32);
        v522 = sub_2146D9588();
      }

      else
      {
        v522 = 0;
      }

      [v117 setName_];

      if (*(v140 + 56))
      {
        v523 = *(v140 + 48);
        v524 = sub_2146D9588();
      }

      else
      {
        v524 = 0;
      }

      [v117 setArtist_];

      v525 = *(v140 + 144);
      v708[4] = *(v140 + 128);
      v708[5] = v525;
      v708[6] = *(v140 + 160);
      *(&v708[6] + 9) = *(v140 + 169);
      v526 = *(v140 + 80);
      v708[0] = *(v140 + 64);
      v708[1] = v526;
      v527 = *(v140 + 112);
      v708[2] = *(v140 + 96);
      v708[3] = v527;
      if (sub_2144009B4(v708) == 1)
      {
        v528 = 0;
      }

      else
      {
        v705 = v708[4];
        v706 = v708[5];
        v707[0] = v708[6];
        *(v707 + 9) = *(&v708[6] + 9);
        v702 = v708[0];
        v703 = v708[1];
        v704[0] = v708[2];
        v704[1] = v708[3];
        v528 = sub_2143F7CD4();
      }

      [v117 setArtwork_];

      sub_213FB2E54(v140 + *(v517 + 36), v518, &qword_27C904878, &unk_2146EDB68);
      v529 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      if ((*(*(v529 - 8) + 48))(v518, 1, v529) == 1)
      {
        sub_213FB2DF4(v518, &qword_27C904878, &unk_2146EDB68);
        v530 = 0;
      }

      else
      {
        v530 = sub_2143FFD20();
        sub_214400B04(v518, type metadata accessor for LinkPresentation.ArtworkMetadata);
      }

      [v117 setArtworkMetadata_];

      if (*(v140 + *(v517 + 40)))
      {
        v531 = sub_2146D98E8();
      }

      else
      {
        v531 = 0;
      }

      [v117 setOffers_];

      v281 = type metadata accessor for LinkPresentation.PodcastMetadata;
      goto LABEL_545;
    case 0xBu:
      v140 = v658;
      sub_214400A9C(v116, v658, type metadata accessor for LinkPresentation.TVEpisodeMetadata);
      sub_21404A8B8(0, &qword_27C912B38, off_278175310);
      v117 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v140 + 8))
      {
        v146 = *v140;
        v147 = sub_2146D9588();
      }

      else
      {
        v147 = 0;
      }

      [v117 setStoreFrontIdentifier_];

      if (*(v140 + 24))
      {
        v282 = *(v140 + 16);
        v283 = sub_2146D9588();
      }

      else
      {
        v283 = 0;
      }

      [v117 setStoreIdentifier_];

      if (*(v140 + 40))
      {
        v284 = *(v140 + 32);
        v285 = sub_2146D9588();
      }

      else
      {
        v285 = 0;
      }

      [v117 setEpisodeName_];

      if (*(v140 + 56))
      {
        v286 = *(v140 + 48);
        v287 = sub_2146D9588();
      }

      else
      {
        v287 = 0;
      }

      [v117 setSeasonName_];

      if (*(v140 + 72))
      {
        v288 = *(v140 + 64);
        v289 = sub_2146D9588();
      }

      else
      {
        v289 = 0;
      }

      [v117 setGenre_];

      v290 = *(v140 + 160);
      v708[4] = *(v140 + 144);
      v708[5] = v290;
      v708[6] = *(v140 + 176);
      *(&v708[6] + 9) = *(v140 + 185);
      v291 = *(v140 + 96);
      v708[0] = *(v140 + 80);
      v708[1] = v291;
      v292 = *(v140 + 128);
      v708[2] = *(v140 + 112);
      v708[3] = v292;
      if (sub_2144009B4(v708) == 1)
      {
        v293 = 0;
      }

      else
      {
        v705 = v708[4];
        v706 = v708[5];
        v707[0] = v708[6];
        *(v707 + 9) = *(&v708[6] + 9);
        v702 = v708[0];
        v703 = v708[1];
        v704[0] = v708[2];
        v704[1] = v708[3];
        v293 = sub_2143F7CD4();
      }

      [v117 setArtwork_];

      v294 = v619;
      sub_213FB2E54(v140 + *(v648 + 40), v619, &qword_27C904878, &unk_2146EDB68);
      v295 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      if ((*(*(v295 - 8) + 48))(v294, 1, v295) == 1)
      {
        sub_213FB2DF4(v294, &qword_27C904878, &unk_2146EDB68);
        v296 = 0;
      }

      else
      {
        v296 = sub_2143FFD20();
        sub_214400B04(v294, type metadata accessor for LinkPresentation.ArtworkMetadata);
      }

      [v117 setArtworkMetadata_];

      v281 = type metadata accessor for LinkPresentation.TVEpisodeMetadata;
      goto LABEL_545;
    case 0xCu:
      v140 = v656;
      sub_214400A9C(v116, v656, type metadata accessor for LinkPresentation.TVSeasonMetadata);
      sub_21404A8B8(0, &qword_27C912B40, off_278175318);
      v117 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v140 + 8))
      {
        v150 = *v140;
        v151 = sub_2146D9588();
      }

      else
      {
        v151 = 0;
      }

      [v117 setStoreFrontIdentifier_];

      if (*(v140 + 24))
      {
        v320 = *(v140 + 16);
        v321 = sub_2146D9588();
      }

      else
      {
        v321 = 0;
      }

      [v117 setStoreIdentifier_];

      if (*(v140 + 40))
      {
        v322 = *(v140 + 32);
        v323 = sub_2146D9588();
      }

      else
      {
        v323 = 0;
      }

      [v117 setName_];

      if (*(v140 + 56))
      {
        v324 = *(v140 + 48);
        v325 = sub_2146D9588();
      }

      else
      {
        v325 = 0;
      }

      [v117 setGenre_];

      v326 = *(v140 + 144);
      v708[4] = *(v140 + 128);
      v708[5] = v326;
      v708[6] = *(v140 + 160);
      *(&v708[6] + 9) = *(v140 + 169);
      v327 = *(v140 + 80);
      v708[0] = *(v140 + 64);
      v708[1] = v327;
      v328 = *(v140 + 112);
      v708[2] = *(v140 + 96);
      v708[3] = v328;
      if (sub_2144009B4(v708) == 1)
      {
        v329 = 0;
      }

      else
      {
        v705 = v708[4];
        v706 = v708[5];
        v707[0] = v708[6];
        *(v707 + 9) = *(&v708[6] + 9);
        v702 = v708[0];
        v703 = v708[1];
        v704[0] = v708[2];
        v704[1] = v708[3];
        v329 = sub_2143F7CD4();
      }

      [v117 setArtwork_];

      v330 = v617;
      sub_213FB2E54(v140 + *(v647 + 36), v617, &qword_27C904878, &unk_2146EDB68);
      v331 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      if ((*(*(v331 - 8) + 48))(v330, 1, v331) == 1)
      {
        sub_213FB2DF4(v330, &qword_27C904878, &unk_2146EDB68);
        v332 = 0;
      }

      else
      {
        v332 = sub_2143FFD20();
        sub_214400B04(v330, type metadata accessor for LinkPresentation.ArtworkMetadata);
      }

      [v117 setArtworkMetadata_];

      v281 = type metadata accessor for LinkPresentation.TVSeasonMetadata;
      goto LABEL_545;
    case 0xDu:
      v140 = v653;
      sub_214400A9C(v116, v653, type metadata accessor for LinkPresentation.TVShowMetadata);
      sub_21404A8B8(0, &qword_27C912B48, off_278175158);
      v117 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v140 + 8))
      {
        v199 = *v140;
        v200 = sub_2146D9588();
      }

      else
      {
        v200 = 0;
      }

      v478 = v645;
      v479 = v614;
      [v117 setStoreFrontIdentifier_];

      if (*(v140 + 24))
      {
        v480 = *(v140 + 16);
        v481 = sub_2146D9588();
      }

      else
      {
        v481 = 0;
      }

      [v117 setStoreIdentifier_];

      if (*(v140 + 40))
      {
        v482 = *(v140 + 32);
        v483 = sub_2146D9588();
      }

      else
      {
        v483 = 0;
      }

      [v117 setName_];

      v484 = *(v140 + 128);
      v708[4] = *(v140 + 112);
      v708[5] = v484;
      v708[6] = *(v140 + 144);
      *(&v708[6] + 9) = *(v140 + 153);
      v485 = *(v140 + 64);
      v708[0] = *(v140 + 48);
      v708[1] = v485;
      v486 = *(v140 + 96);
      v708[2] = *(v140 + 80);
      v708[3] = v486;
      if (sub_2144009B4(v708) == 1)
      {
        v487 = 0;
      }

      else
      {
        v705 = v708[4];
        v706 = v708[5];
        v707[0] = v708[6];
        *(v707 + 9) = *(&v708[6] + 9);
        v702 = v708[0];
        v703 = v708[1];
        v704[0] = v708[2];
        v704[1] = v708[3];
        v487 = sub_2143F7CD4();
      }

      [v117 setArtwork_];

      sub_213FB2E54(v140 + *(v478 + 32), v479, &qword_27C904878, &unk_2146EDB68);
      v488 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      if ((*(*(v488 - 8) + 48))(v479, 1, v488) == 1)
      {
        sub_213FB2DF4(v479, &qword_27C904878, &unk_2146EDB68);
        v489 = 0;
      }

      else
      {
        v489 = sub_2143FFD20();
        sub_214400B04(v479, type metadata accessor for LinkPresentation.ArtworkMetadata);
      }

      [v117 setArtworkMetadata_];

      v281 = type metadata accessor for LinkPresentation.TVShowMetadata;
      goto LABEL_545;
    case 0xEu:
      v140 = v660;
      sub_214400A9C(v116, v660, type metadata accessor for LinkPresentation.MovieMetadata);
      sub_21404A8B8(0, &qword_27C912B50, off_2781752D0);
      v117 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v140 + 8))
      {
        v141 = *v140;
        v142 = sub_2146D9588();
      }

      else
      {
        v142 = 0;
      }

      v267 = v650;
      v268 = v618;
      [v117 setStoreFrontIdentifier_];

      if (*(v140 + 24))
      {
        v269 = *(v140 + 16);
        v270 = sub_2146D9588();
      }

      else
      {
        v270 = 0;
      }

      [v117 setStoreIdentifier_];

      if (*(v140 + 40))
      {
        v271 = *(v140 + 32);
        v272 = sub_2146D9588();
      }

      else
      {
        v272 = 0;
      }

      [v117 setName_];

      if (*(v140 + 56))
      {
        v273 = *(v140 + 48);
        v274 = sub_2146D9588();
      }

      else
      {
        v274 = 0;
      }

      [v117 setGenre_];

      v275 = *(v140 + 144);
      v708[4] = *(v140 + 128);
      v708[5] = v275;
      v708[6] = *(v140 + 160);
      *(&v708[6] + 9) = *(v140 + 169);
      v276 = *(v140 + 80);
      v708[0] = *(v140 + 64);
      v708[1] = v276;
      v277 = *(v140 + 112);
      v708[2] = *(v140 + 96);
      v708[3] = v277;
      if (sub_2144009B4(v708) == 1)
      {
        v278 = 0;
      }

      else
      {
        v705 = v708[4];
        v706 = v708[5];
        v707[0] = v708[6];
        *(v707 + 9) = *(&v708[6] + 9);
        v702 = v708[0];
        v703 = v708[1];
        v704[0] = v708[2];
        v704[1] = v708[3];
        v278 = sub_2143F7CD4();
      }

      [v117 setArtwork_];

      sub_213FB2E54(v140 + *(v267 + 36), v268, &qword_27C904878, &unk_2146EDB68);
      v279 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      if ((*(*(v279 - 8) + 48))(v268, 1, v279) == 1)
      {
        sub_213FB2DF4(v268, &qword_27C904878, &unk_2146EDB68);
        v280 = 0;
      }

      else
      {
        v280 = sub_2143FFD20();
        sub_214400B04(v268, type metadata accessor for LinkPresentation.ArtworkMetadata);
      }

      [v117 setArtworkMetadata_];

      v281 = type metadata accessor for LinkPresentation.MovieMetadata;
      goto LABEL_545;
    case 0xFu:
      v140 = v661;
      sub_214400A9C(v116, v661, type metadata accessor for LinkPresentation.MovieBundleMetadata);
      sub_21404A8B8(0, &qword_27C912B58, off_2781752C8);
      v117 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v140 + 8))
      {
        v169 = *v140;
        v170 = sub_2146D9588();
      }

      else
      {
        v170 = 0;
      }

      [v117 setStoreFrontIdentifier_];

      if (*(v140 + 24))
      {
        v374 = *(v140 + 16);
        v375 = sub_2146D9588();
      }

      else
      {
        v375 = 0;
      }

      [v117 setStoreIdentifier_];

      if (*(v140 + 40))
      {
        v376 = *(v140 + 32);
        v377 = sub_2146D9588();
      }

      else
      {
        v377 = 0;
      }

      [v117 setName_];

      if (*(v140 + 56))
      {
        v378 = *(v140 + 48);
        v379 = sub_2146D9588();
      }

      else
      {
        v379 = 0;
      }

      [v117 setGenre_];

      v380 = *(v140 + 144);
      v708[4] = *(v140 + 128);
      v708[5] = v380;
      v708[6] = *(v140 + 160);
      *(&v708[6] + 9) = *(v140 + 169);
      v381 = *(v140 + 80);
      v708[0] = *(v140 + 64);
      v708[1] = v381;
      v382 = *(v140 + 112);
      v708[2] = *(v140 + 96);
      v708[3] = v382;
      if (sub_2144009B4(v708) == 1)
      {
        v383 = 0;
      }

      else
      {
        v705 = v708[4];
        v706 = v708[5];
        v707[0] = v708[6];
        *(v707 + 9) = *(&v708[6] + 9);
        v702 = v708[0];
        v703 = v708[1];
        v704[0] = v708[2];
        v704[1] = v708[3];
        v383 = sub_2143F7CD4();
      }

      [v117 setArtwork_];

      v384 = v620;
      sub_213FB2E54(v140 + *(v655 + 36), v620, &qword_27C904878, &unk_2146EDB68);
      v385 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      if ((*(*(v385 - 8) + 48))(v384, 1, v385) == 1)
      {
        sub_213FB2DF4(v384, &qword_27C904878, &unk_2146EDB68);
        v386 = 0;
      }

      else
      {
        v386 = sub_2143FFD20();
        sub_214400B04(v384, type metadata accessor for LinkPresentation.ArtworkMetadata);
      }

      [v117 setArtworkMetadata_];

      v281 = type metadata accessor for LinkPresentation.MovieBundleMetadata;
      goto LABEL_545;
    case 0x10u:
      memcpy(v708, v116, 0x138uLL);
      sub_21404A8B8(0, &qword_27C912B60, off_2781752A0);
      v138 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(&v708[0] + 1))
      {

        v139 = sub_2146D9588();
      }

      else
      {
        v139 = 0;
      }

      v236 = v673;
      [v138 setApplication_];

      if (*(&v708[1] + 1))
      {

        v237 = sub_2146D9588();
      }

      else
      {
        v237 = 0;
      }

      [v138 setKind_];

      if (*(&v708[2] + 1))
      {

        v238 = sub_2146D9588();
      }

      else
      {
        v238 = 0;
      }

      [v138 setTitle_];

      v705 = v708[7];
      v706 = v708[8];
      v707[0] = v708[9];
      *(v707 + 9) = *(&v708[9] + 9);
      v702 = v708[3];
      v703 = v708[4];
      v704[0] = v708[5];
      v704[1] = v708[6];
      if (sub_2144009B4(&v702) == 1)
      {
        v239 = 0;
      }

      else
      {
        v700 = v706;
        v701[0] = v707[0];
        *(v701 + 9) = *(v707 + 9);
        v695 = v702;
        v696 = v703;
        v697 = v704[0];
        v698 = v704[1];
        v699 = v705;
        v239 = sub_2143F7CD4();
      }

      v240 = v672;
      v241 = v678;
      v673 = v138;
      [v138 setIcon_];

      v242 = *&v708[19];

      sub_214326E60(v708);
      v244 = *(v242 + 2);
      if (v244)
      {
        v245 = *(v610 + 80);
        v670 = v242;
        v246 = &v242[(v245 + 32) & ~v245];
        v679 = *(v610 + 72);
        v672 = (v236 + 1);
        *&v243 = 138412290;
        v671 = v243;
        v247 = v675;
        do
        {
          sub_2144009D8(v246, v241, type metadata accessor for LinkPresentation.EncodedToken);
          v248 = *(v677 + 20);
          v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904238, &unk_2146EAB90);
          (*(*(v249 - 8) + 56))(v247, 1, 1, v249);
          v250 = sub_2145A8688(v247);
          if (v240)
          {
            sub_213FB2DF4(v247, &qword_27C904230, &qword_2146EAB88);
            v252 = sub_2146D9BA8();
            if (qword_280B35360 != -1)
            {
              swift_once();
            }

            v253 = qword_280B35410;
            if (os_log_type_enabled(qword_280B35410, v252))
            {
              v254 = swift_slowAlloc();
              v255 = swift_slowAlloc();
              *v254 = v671;
              v256 = v240;
              v257 = _swift_stdlib_bridgeErrorToNSError();
              *(v254 + 4) = v257;
              *v255 = v257;
              _os_log_impl(&dword_213FAF000, v253, v252, "Error when attempting to recompose CloudSharingMetadata token: %@", v254, 0xCu);
              sub_213FB2DF4(v255, &qword_27C9041E0, &qword_214736EF0);
              v258 = v255;
              v241 = v678;
              MEMORY[0x216056AC0](v258, -1, -1);
              MEMORY[0x216056AC0](v254, -1, -1);
            }

            v240 = 0;
          }

          else
          {
            v259 = v250;
            v260 = v251;
            sub_213FB2DF4(v247, &qword_27C904230, &qword_2146EAB88);
            v261 = sub_2146D8A38();
            v262 = *v241;
            v263 = v241[1];
            v264 = sub_2146D9588();
            v265 = v674;
            sub_21439ECA8(v674);
            v266 = sub_2146D8898();
            (*v672)(v265, v676);
            [v673 setTokenData:v261 handle:v264 url:v266];
            sub_213FB54FC(v259, v260);

            v247 = v675;
            v241 = v678;
          }

          sub_214400B04(v241, type metadata accessor for LinkPresentation.EncodedToken);
          v246 += v679;
          --v244;
        }

        while (v244);
      }

      return v673;
    case 0x11u:
      v185 = v116[9];
      v708[8] = v116[8];
      v708[9] = v185;
      *(&v708[9] + 9) = *(v116 + 153);
      v186 = v116[5];
      v708[4] = v116[4];
      v708[5] = v186;
      v187 = v116[6];
      v708[7] = v116[7];
      v708[6] = v187;
      v188 = v116[1];
      v708[0] = *v116;
      v708[1] = v188;
      v189 = v116[2];
      v708[3] = v116[3];
      v708[2] = v189;
      sub_21404A8B8(0, &qword_27C912B68, off_278175298);
      v117 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(&v708[0] + 1))
      {

        v190 = sub_2146D9588();
      }

      else
      {
        v190 = 0;
      }

      [v117 setTitle_];

      if (*(&v708[1] + 1))
      {

        v457 = sub_2146D9588();
      }

      else
      {
        v457 = 0;
      }

      [v117 setSubtitle_];

      if (*(&v708[2] + 1))
      {

        v458 = sub_2146D9588();
      }

      else
      {
        v458 = 0;
      }

      [v117 setAction_];

      v705 = v708[7];
      v706 = v708[8];
      v707[0] = v708[9];
      *(v707 + 9) = *(&v708[9] + 9);
      v702 = v708[3];
      v703 = v708[4];
      v704[0] = v708[5];
      v704[1] = v708[6];
      if (sub_2144009B4(&v702) == 1)
      {
        sub_214326E0C(v708);
        v132 = 0;
      }

      else
      {
        v692 = v705;
        v693 = v706;
        v694[0] = v707[0];
        *(v694 + 9) = *(v707 + 9);
        v688 = v702;
        v689 = v703;
        v690 = v704[0];
        v691 = v704[1];
        v697 = v708[5];
        v698 = v708[6];
        v695 = v708[3];
        v696 = v708[4];
        *(v701 + 9) = *(&v708[9] + 9);
        v701[0] = v708[9];
        v700 = v708[8];
        v699 = v708[7];
        sub_214400A40(&v695, &v680);
        v132 = sub_2143F7CD4();
        sub_214326E0C(v708);
        sub_213FB2DF4(&v708[3], &qword_27C904868, &qword_2146EDB58);
      }

      [v117 setImage_];
      goto LABEL_429;
    case 0x12u:
      memcpy(v708, v116, 0x118uLL);
      sub_21404A8B8(0, &qword_27C912B70, off_2781751D0);
      v117 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(&v708[0] + 1))
      {

        v204 = sub_2146D9588();
      }

      else
      {
        v204 = 0;
      }

      [v117 setGame_];

      v705 = v708[5];
      v706 = v708[6];
      v707[0] = v708[7];
      *(v707 + 9) = *(&v708[7] + 9);
      v702 = v708[1];
      v703 = v708[2];
      v704[0] = v708[3];
      v704[1] = v708[4];
      if (sub_2144009B4(&v702) == 1)
      {
        v515 = 0;
      }

      else
      {
        v700 = v706;
        v701[0] = v707[0];
        *(v701 + 9) = *(v707 + 9);
        v695 = v702;
        v696 = v703;
        v697 = v704[0];
        v698 = v704[1];
        v699 = v705;
        v515 = sub_2143F7CD4();
      }

      [v117 setImage_];

      v700 = v708[14];
      v701[0] = v708[15];
      *(v701 + 9) = *(&v708[15] + 9);
      v695 = v708[9];
      v696 = v708[10];
      v697 = v708[11];
      v698 = v708[12];
      v699 = v708[13];
      if (sub_2144009B4(&v695) == 1)
      {
        v516 = 0;
      }

      else
      {
        v692 = v699;
        v693 = v700;
        v694[0] = v701[0];
        *(v694 + 9) = *(v701 + 9);
        v688 = v695;
        v689 = v696;
        v690 = v697;
        v691 = v698;
        v516 = sub_2143F7CD4();
      }

      [v117 setIcon_];

      [v117 setNumberOfPlayers_];
      [v117 setMinimumNumberOfPlayers_];
      [v117 setMaximumNumberOfPlayers_];
      sub_214326DB8(v708);
      return v117;
    case 0x13u:
      memcpy(v708, v116, 0x42AuLL);
      sub_21404A8B8(0, &qword_27C912B78, off_278175220);
      v117 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(&v708[0] + 1))
      {

        v214 = sub_2146D9588();
      }

      else
      {
        v214 = 0;
      }

      [v117 setName_];

      if (*(&v708[1] + 1))
      {

        v576 = sub_2146D9588();
      }

      else
      {
        v576 = 0;
      }

      [v117 setAddress_];

      v705 = v708[6];
      v706 = v708[7];
      v707[0] = v708[8];
      v707[1] = v708[9];
      v702 = v708[2];
      v703 = v708[3];
      v704[0] = v708[4];
      v704[1] = v708[5];
      if (get_enum_tag_for_layout_string_9BlastDoor16LinkPresentationO13PostalAddressVSg_0(&v702) == 1)
      {
        v577 = 0;
      }

      else
      {
        v700 = v706;
        v701[0] = v707[0];
        v701[1] = v707[1];
        v695 = v702;
        v696 = v703;
        v697 = v704[0];
        v698 = v704[1];
        v699 = v705;
        v577 = sub_214400398();
      }

      [v117 setAddressComponents_];

      if (*(&v708[10] + 1))
      {

        v578 = sub_2146D9588();
      }

      else
      {
        v578 = 0;
      }

      [v117 setCategory_];

      v727 = v708[15];
      v728 = v708[16];
      v729[0] = v708[17];
      *(v729 + 9) = *(&v708[17] + 9);
      v723 = v708[11];
      v724 = v708[12];
      v725 = v708[13];
      v726 = v708[14];
      if (sub_2144009B4(&v723) == 1)
      {
        v579 = 0;
      }

      else
      {
        v700 = v728;
        v701[0] = v729[0];
        *(v701 + 9) = *(v729 + 9);
        v695 = v723;
        v696 = v724;
        v697 = v725;
        v698 = v726;
        v699 = v727;
        v579 = sub_2143F7CD4();
      }

      [v117 setCategoryIcon_];

      if (*(&v708[19] + 1))
      {

        v580 = sub_2146D9588();
      }

      else
      {
        v580 = 0;
      }

      [v117 setSearchQuery_];

      if (*(&v708[20] + 1))
      {

        v581 = sub_2146D9588();
      }

      else
      {
        v581 = 0;
      }

      [v117 setDirectionsType_];

      if (BYTE8(v708[21]))
      {
        v582 = 0;
      }

      else
      {
        v583 = *&v708[21];
        sub_21404A8B8(0, &qword_280B2E360, 0x277CCABB0);
        v582 = sub_214400754(v583);
      }

      [v117 setTransportType_];

      if (*(&v708[22] + 1))
      {

        v584 = sub_2146D9588();
      }

      else
      {
        v584 = 0;
      }

      [v117 setDirectionsSourceAddress_];

      v700 = v708[28];
      v701[0] = v708[29];
      v701[1] = v708[30];
      v695 = v708[23];
      v696 = v708[24];
      v697 = v708[25];
      v698 = v708[26];
      v699 = v708[27];
      if (get_enum_tag_for_layout_string_9BlastDoor16LinkPresentationO13PostalAddressVSg_0(&v695) == 1)
      {
        v585 = 0;
      }

      else
      {
        v692 = v699;
        v693 = v700;
        v694[0] = v701[0];
        v694[1] = v701[1];
        v688 = v695;
        v689 = v696;
        v690 = v697;
        v691 = v698;
        v585 = sub_214400398();
      }

      [v117 setDirectionsSourceAddressComponents_];

      if (*(&v708[31] + 1))
      {

        v586 = sub_2146D9588();
      }

      else
      {
        v586 = 0;
      }

      [v117 setDirectionsSourceLocationName_];

      if (*(&v708[32] + 1))
      {

        v587 = sub_2146D9588();
      }

      else
      {
        v587 = 0;
      }

      [v117 setDirectionsDestinationAddress_];

      v692 = v708[37];
      v693 = v708[38];
      v694[0] = v708[39];
      v694[1] = v708[40];
      v688 = v708[33];
      v689 = v708[34];
      v690 = v708[35];
      v691 = v708[36];
      if (get_enum_tag_for_layout_string_9BlastDoor16LinkPresentationO13PostalAddressVSg_0(&v688) == 1)
      {
        v588 = 0;
      }

      else
      {
        v684 = v692;
        v685 = v693;
        v686[0] = v694[0];
        v686[1] = v694[1];
        v680 = v688;
        v681 = v689;
        v682 = v690;
        v683 = v691;
        v588 = sub_214400398();
      }

      [v117 setDirectionsDestinationAddressComponents_];

      if (*(&v708[41] + 1))
      {

        v589 = sub_2146D9588();
      }

      else
      {
        v589 = 0;
      }

      [v117 setDirectionsDestinationLocationName_];

      if (BYTE8(v708[42]))
      {
        v590 = 0;
      }

      else
      {
        v590 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      }

      [v117 setDistance_];

      v684 = v708[47];
      v685 = v708[48];
      v686[0] = v708[49];
      *(v686 + 9) = *(&v708[49] + 9);
      v680 = v708[43];
      v681 = v708[44];
      v682 = v708[45];
      v683 = v708[46];
      if (sub_2144009B4(&v680) == 1)
      {
        v591 = 0;
      }

      else
      {
        v720 = v684;
        v721 = v685;
        v722[0] = v686[0];
        *(v722 + 9) = *(v686 + 9);
        v716 = v680;
        v717 = v681;
        v718 = v682;
        v719 = v683;
        v591 = sub_2143F7CD4();
      }

      [v117 setImage_];

      v720 = v708[55];
      v721 = v708[56];
      v722[0] = v708[57];
      *(v722 + 9) = *(&v708[57] + 9);
      v716 = v708[51];
      v717 = v708[52];
      v718 = v708[53];
      v719 = v708[54];
      if (sub_2144009B4(&v716) == 1)
      {
        v592 = 0;
      }

      else
      {
        v713 = v720;
        v714 = v721;
        v715[0] = v722[0];
        *(v715 + 9) = *(v722 + 9);
        v709 = v716;
        v710 = v717;
        v711 = v718;
        v712 = v719;
        v592 = sub_2143F7CD4();
      }

      [v117 setDarkImage_];

      v713 = v708[63];
      v714 = v708[64];
      v715[0] = v708[65];
      *(v715 + 9) = *(&v708[65] + 9);
      v709 = v708[59];
      v710 = v708[60];
      v711 = v708[61];
      v712 = v708[62];
      if (sub_2144009B4(&v709) == 1)
      {
        v593 = 0;
      }

      else
      {
        v686[6] = v713;
        v686[7] = v714;
        v687[0] = v715[0];
        *(v687 + 9) = *(v715 + 9);
        v686[2] = v709;
        v686[3] = v710;
        v686[4] = v711;
        v686[5] = v712;
        v593 = sub_2143F7CD4();
      }

      [v117 setStoreFrontImage_];

      [v117 setIsPointOfInterest_];
      sub_214326D64(v708);
      return v117;
    case 0x14u:
      memcpy(v708, v116, 0x229uLL);
      sub_21404A8B8(0, &qword_27C912B80, off_278175210);
      v117 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(&v708[0] + 1))
      {

        v191 = sub_2146D9588();
      }

      else
      {
        v191 = 0;
      }

      [v117 setName_];

      [v117 setNumberOfItems_];
      v705 = *(&v708[5] + 8);
      v706 = *(&v708[6] + 8);
      v707[0] = *(&v708[7] + 8);
      *(v707 + 9) = *(&v708[8] + 1);
      v702 = *(&v708[1] + 8);
      v703 = *(&v708[2] + 8);
      v704[0] = *(&v708[3] + 8);
      v704[1] = *(&v708[4] + 8);
      if (sub_2144009B4(&v702) == 1)
      {
        v459 = 0;
      }

      else
      {
        v700 = v706;
        v701[0] = v707[0];
        *(v701 + 9) = *(v707 + 9);
        v695 = v702;
        v696 = v703;
        v697 = v704[0];
        v698 = v704[1];
        v699 = v705;
        v459 = sub_2143F7CD4();
      }

      [v117 setIcon_];

      v700 = *(&v708[14] + 8);
      v701[0] = *(&v708[15] + 8);
      *(v701 + 9) = *(&v708[16] + 1);
      v695 = *(&v708[9] + 8);
      v696 = *(&v708[10] + 8);
      v697 = *(&v708[11] + 8);
      v698 = *(&v708[12] + 8);
      v699 = *(&v708[13] + 8);
      if (sub_2144009B4(&v695) == 1)
      {
        v460 = 0;
      }

      else
      {
        v692 = v699;
        v693 = v700;
        v694[0] = v701[0];
        *(v694 + 9) = *(v701 + 9);
        v688 = v695;
        v689 = v696;
        v690 = v697;
        v691 = v698;
        v460 = sub_2143F7CD4();
      }

      [v117 setImage_];

      v692 = *(&v708[21] + 8);
      v693 = *(&v708[22] + 8);
      v694[0] = *(&v708[23] + 8);
      *(v694 + 9) = *(&v708[24] + 1);
      v688 = *(&v708[17] + 8);
      v689 = *(&v708[18] + 8);
      v690 = *(&v708[19] + 8);
      v691 = *(&v708[20] + 8);
      if (sub_2144009B4(&v688) == 1)
      {
        v461 = 0;
      }

      else
      {
        v684 = v692;
        v685 = v693;
        v686[0] = v694[0];
        *(v686 + 9) = *(v694 + 9);
        v680 = v688;
        v681 = v689;
        v682 = v690;
        v683 = v691;
        v461 = sub_2143F7CD4();
      }

      [v117 setDarkImage_];

      v462 = *(&v708[25] + 1);
      if (*(&v708[25] + 1))
      {

        sub_2143E34EC(v463);

        sub_21404A8B8(0, &qword_27C912C20, 0x277CBDB78);
        v462 = sub_2146D98E8();
      }

      [v117 setAddresses_];

      if (*(&v708[26] + 1))
      {

        v464 = sub_2146D9588();
      }

      else
      {
        v464 = 0;
      }

      [v117 setPublisherName_];

      v684 = v708[31];
      v685 = v708[32];
      v686[0] = v708[33];
      *(v686 + 9) = *(&v708[33] + 9);
      v680 = v708[27];
      v681 = v708[28];
      v682 = v708[29];
      v683 = v708[30];
      if (sub_2144009B4(&v680) == 1)
      {
        sub_214326D10(v708);
        v132 = 0;
      }

      else
      {
        v720 = v684;
        v721 = v685;
        v722[0] = v686[0];
        *(v722 + 9) = *(v686 + 9);
        v716 = v680;
        v717 = v681;
        v718 = v682;
        v719 = v683;
        v725 = v708[29];
        v726 = v708[30];
        v723 = v708[27];
        v724 = v708[28];
        *(v729 + 9) = *(&v708[33] + 9);
        v728 = v708[32];
        v729[0] = v708[33];
        v727 = v708[31];
        sub_214400A40(&v723, &v709);
        v132 = sub_2143F7CD4();
        sub_214326D10(v708);
        sub_213FB2DF4(&v708[27], &qword_27C904868, &qword_2146EDB58);
      }

      [v117 setPublisherIcon_];
      goto LABEL_429;
    case 0x15u:
      v194 = v116[7];
      v708[6] = v116[6];
      v708[7] = v194;
      v708[8] = v116[8];
      v195 = v116[3];
      v708[2] = v116[2];
      v708[3] = v195;
      v196 = v116[4];
      v708[5] = v116[5];
      v708[4] = v196;
      v197 = *v116;
      v708[1] = v116[1];
      v708[0] = v197;
      sub_21404A8B8(0, &qword_27C912B88, off_278175218);
      v117 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(&v708[0] + 1))
      {

        v198 = sub_2146D9588();
      }

      else
      {
        v198 = 0;
      }

      [v117 setName_];

      [v117 setNumberOfPublishedCollections_];
      v705 = v708[5];
      v706 = v708[6];
      v707[0] = v708[7];
      *(v707 + 9) = *(&v708[7] + 9);
      v702 = v708[1];
      v703 = v708[2];
      v704[0] = v708[3];
      v704[1] = v708[4];
      if (sub_2144009B4(&v702) == 1)
      {
        sub_214326CBC(v708);
        v132 = 0;
        goto LABEL_428;
      }

      v692 = v705;
      v693 = v706;
      v694[0] = v707[0];
      *(v694 + 9) = *(v707 + 9);
      v688 = v702;
      v689 = v703;
      v690 = v704[0];
      v691 = v704[1];
      v697 = v708[3];
      v698 = v708[4];
      v695 = v708[1];
      v696 = v708[2];
      *(v701 + 9) = *(&v708[7] + 9);
      v701[0] = v708[7];
      v700 = v708[6];
      v699 = v708[5];
      sub_214400A40(&v695, &v680);
      v132 = sub_2143F7CD4();
      sub_214326CBC(v708);
      v360 = &v708[1];
      goto LABEL_427;
    case 0x16u:
      v140 = v666;
      sub_214400A9C(v116, v666, type metadata accessor for LinkPresentation.FileMetadata);
      sub_21404A8B8(0, &qword_27C912B90, off_2781751C0);
      v117 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v140 + 8))
      {
        v212 = *v140;
        v213 = sub_2146D9588();
      }

      else
      {
        v213 = 0;
      }

      v561 = v663;
      v562 = v642;
      [v117 setName_];

      if (*(v140 + 24))
      {
        v563 = *(v140 + 16);
        v564 = sub_2146D9588();
      }

      else
      {
        v564 = 0;
      }

      [v117 setType_];

      [v117 setSize_];
      v565 = *(v140 + 120);
      v708[4] = *(v140 + 104);
      v708[5] = v565;
      v708[6] = *(v140 + 136);
      *(&v708[6] + 9) = *(v140 + 145);
      v566 = *(v140 + 56);
      v708[0] = *(v140 + 40);
      v708[1] = v566;
      v567 = *(v140 + 88);
      v708[2] = *(v140 + 72);
      v708[3] = v567;
      if (sub_2144009B4(v708) == 1)
      {
        v568 = 0;
      }

      else
      {
        v705 = v708[4];
        v706 = v708[5];
        v707[0] = v708[6];
        *(v707 + 9) = *(&v708[6] + 9);
        v702 = v708[0];
        v703 = v708[1];
        v704[0] = v708[2];
        v704[1] = v708[3];
        v568 = sub_2143F7CD4();
      }

      [v117 setThumbnail_];

      v569 = *(v140 + 248);
      v705 = *(v140 + 232);
      v706 = v569;
      v707[0] = *(v140 + 264);
      *(v707 + 9) = *(v140 + 273);
      v570 = *(v140 + 184);
      v702 = *(v140 + 168);
      v703 = v570;
      v571 = *(v140 + 216);
      v704[0] = *(v140 + 200);
      v704[1] = v571;
      if (sub_2144009B4(&v702) == 1)
      {
        v572 = 0;
      }

      else
      {
        v700 = v706;
        v701[0] = v707[0];
        *(v701 + 9) = *(v707 + 9);
        v695 = v702;
        v696 = v703;
        v697 = v704[0];
        v698 = v704[1];
        v699 = v705;
        v572 = sub_2143F7CD4();
      }

      [v117 setIcon_];

      sub_213FB2E54(v140 + *(v561 + 36), v562, &qword_27C913090, &unk_2146E9DB0);
      v573 = sub_2146D8B08();
      v574 = *(v573 - 8);
      v575 = 0;
      if ((*(v574 + 48))(v562, 1, v573) != 1)
      {
        v575 = sub_2146D8AD8();
        (*(v574 + 8))(v562, v573);
      }

      [v117 setCreationDate_];

      v281 = type metadata accessor for LinkPresentation.FileMetadata;
LABEL_545:
      v455 = v281;
      v456 = v140;
      goto LABEL_619;
    case 0x17u:
      sub_214400B04(v116, type metadata accessor for LinkPresentation.SpecializationMetadata);
      v211 = _BlastDoorLPAppleNewsMetadata;
      return [objc_allocWithZone(v211) init];
    case 0x18u:
      v160 = v116[9];
      v708[8] = v116[8];
      v708[9] = v160;
      v708[10] = v116[10];
      *(&v708[10] + 9) = *(v116 + 169);
      v161 = v116[5];
      v708[4] = v116[4];
      v708[5] = v161;
      v162 = v116[7];
      v708[6] = v116[6];
      v708[7] = v162;
      v163 = v116[1];
      v708[0] = *v116;
      v708[1] = v163;
      v164 = v116[3];
      v708[2] = v116[2];
      v708[3] = v164;
      sub_21404A8B8(0, &qword_27C912BA0, off_278175260);
      v117 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(&v708[0] + 1))
      {

        v165 = sub_2146D9588();
      }

      else
      {
        v165 = 0;
      }

      [v117 setCombinedTitle_];

      if (*(&v708[1] + 1))
      {

        v357 = sub_2146D9588();
      }

      else
      {
        v357 = 0;
      }

      [v117 setTitle_];

      if (*(&v708[2] + 1))
      {

        v358 = sub_2146D9588();
      }

      else
      {
        v358 = 0;
      }

      [v117 setSubtitle_];

      if (*(&v708[3] + 1))
      {

        v359 = sub_2146D9588();
      }

      else
      {
        v359 = 0;
      }

      [v117 setFootnote_];

      v705 = v708[8];
      v706 = v708[9];
      v707[0] = v708[10];
      *(v707 + 9) = *(&v708[10] + 9);
      v702 = v708[4];
      v703 = v708[5];
      v704[0] = v708[6];
      v704[1] = v708[7];
      if (sub_2144009B4(&v702) == 1)
      {
        sub_214326C68(v708);
        v132 = 0;
      }

      else
      {
        v692 = v705;
        v693 = v706;
        v694[0] = v707[0];
        *(v694 + 9) = *(v707 + 9);
        v688 = v702;
        v689 = v703;
        v690 = v704[0];
        v691 = v704[1];
        v697 = v708[6];
        v698 = v708[7];
        v695 = v708[4];
        v696 = v708[5];
        *(v701 + 9) = *(&v708[10] + 9);
        v701[0] = v708[10];
        v700 = v708[9];
        v699 = v708[8];
        sub_214400A40(&v695, &v680);
        v132 = sub_2143F7CD4();
        sub_214326C68(v708);
        v360 = &v708[4];
LABEL_427:
        sub_213FB2DF4(v360, &qword_27C904868, &qword_2146EDB58);
      }

LABEL_428:
      [v117 setIcon_];
      goto LABEL_429;
    case 0x19u:
      v155 = v116[7];
      v708[6] = v116[6];
      v708[7] = v155;
      v708[8] = v116[8];
      *(&v708[8] + 9) = *(v116 + 137);
      v156 = v116[3];
      v708[2] = v116[2];
      v708[3] = v156;
      v157 = v116[5];
      v708[4] = v116[4];
      v708[5] = v157;
      v158 = v116[1];
      v708[0] = *v116;
      v708[1] = v158;
      sub_21404A8B8(0, &qword_27C912BA8, off_278175180);
      v117 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(&v708[0] + 1))
      {

        v159 = sub_2146D9588();
      }

      else
      {
        v159 = 0;
      }

      [v117 setTitle_];

      if (*(&v708[1] + 1))
      {

        v356 = sub_2146D9588();
      }

      else
      {
        v356 = 0;
      }

      [v117 setSubtitle_];

      v705 = v708[6];
      v706 = v708[7];
      v707[0] = v708[8];
      *(v707 + 9) = *(&v708[8] + 9);
      v702 = v708[2];
      v703 = v708[3];
      v704[0] = v708[4];
      v704[1] = v708[5];
      if (sub_2144009B4(&v702) == 1)
      {
        sub_214326C14(v708);
        v132 = 0;
      }

      else
      {
        v692 = v705;
        v693 = v706;
        v694[0] = v707[0];
        *(v694 + 9) = *(v707 + 9);
        v688 = v702;
        v689 = v703;
        v690 = v704[0];
        v691 = v704[1];
        v697 = v708[4];
        v698 = v708[5];
        v695 = v708[2];
        v696 = v708[3];
        *(v701 + 9) = *(&v708[8] + 9);
        v701[0] = v708[8];
        v700 = v708[7];
        v699 = v708[6];
        sub_214400A40(&v695, &v680);
        v132 = sub_2143F7CD4();
        sub_214326C14(v708);
        sub_213FB2DF4(&v708[2], &qword_27C904868, &qword_2146EDB58);
      }

      [v117 setArtwork_];
      goto LABEL_429;
    case 0x1Au:
      v152 = v669;
      sub_214400A9C(v116, v669, type metadata accessor for LinkPresentation.PhotosMomentMetadata);
      sub_21404A8B8(0, &qword_27C912BB0, off_278175168);
      v117 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v152 + 8))
      {
        v221 = *v152;
        v222 = sub_2146D9588();
      }

      else
      {
        v222 = 0;
      }

      v594 = v665;
      v595 = v635;
      [v117 setTitle_];

      [v117 setPhotoCount_];
      [v117 setVideoCount_];
      [v117 setOtherItemCount_];
      v596 = *(v152 + 120);
      v708[4] = *(v152 + 104);
      v708[5] = v596;
      v708[6] = *(v152 + 136);
      *(&v708[6] + 9) = *(v152 + 145);
      v597 = *(v152 + 56);
      v708[0] = *(v152 + 40);
      v708[1] = v597;
      v598 = *(v152 + 88);
      v708[2] = *(v152 + 72);
      v708[3] = v598;
      if (sub_2144009B4(v708) == 1)
      {
        v599 = 0;
      }

      else
      {
        v705 = v708[4];
        v706 = v708[5];
        v707[0] = v708[6];
        *(v707 + 9) = *(&v708[6] + 9);
        v702 = v708[0];
        v703 = v708[1];
        v704[0] = v708[2];
        v704[1] = v708[3];
        v599 = sub_2143F7CD4();
      }

      [v117 setKeyPhoto_];

      sub_213FB2E54(v152 + v594[9], v595, &qword_27C913090, &unk_2146E9DB0);
      v600 = sub_2146D8B08();
      v601 = *(v600 - 8);
      v602 = *(v601 + 48);
      v603 = 0;
      if (v602(v595, 1, v600) != 1)
      {
        v603 = sub_2146D8AD8();
        (*(v601 + 8))(v595, v600);
      }

      [v117 setExpirationDate_];

      v604 = v640;
      sub_213FB2E54(v152 + v594[10], v640, &qword_27C913090, &unk_2146E9DB0);
      if (v602(v604, 1, v600) == 1)
      {
        v605 = 0;
      }

      else
      {
        v605 = sub_2146D8AD8();
        (*(v601 + 8))(v604, v600);
      }

      v606 = v671;
      [v117 setEarliestAssetDate_];

      sub_213FB2E54(v152 + v594[11], v606, &qword_27C913090, &unk_2146E9DB0);
      if (v602(v606, 1, v600) == 1)
      {
        v607 = 0;
      }

      else
      {
        v607 = sub_2146D8AD8();
        (*(v601 + 8))(v606, v600);
      }

      [v117 setLatestAssetDate_];

      v355 = type metadata accessor for LinkPresentation.PhotosMomentMetadata;
      goto LABEL_618;
    case 0x1Bu:
      v130 = *v116;
      v131 = *(v116 + 1);
      sub_21404A8B8(0, &qword_27C912BB8, off_278175178);
      v117 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      sub_21404A8B8(0, &qword_27C912C28, 0x277CCA898);
      v132 = sub_21440079C();
      [v117 setStatus_];
      goto LABEL_429;
    case 0x1Cu:
      v216 = *v116;
      v215 = *(v116 + 1);
      v218 = *(v116 + 2);
      v217 = *(v116 + 3);
      sub_21404A8B8(0, &qword_27C912BC0, off_278175170);
      v117 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (v215)
      {

        v219 = sub_2146D9588();
      }

      else
      {
        v219 = 0;
      }

      [v117 setMessage_];

      if (v217)
      {

        v235 = sub_2146D9588();
        swift_bridgeObjectRelease_n();
      }

      else
      {

        v235 = 0;
      }

      [v117 setOriginatorDisplayName_];
      goto LABEL_604;
    case 0x1Du:
      v220 = *v116;
      v181 = *(v116 + 1);
      v183 = &unk_27C912BC8;
      v184 = off_2781751B0;
      goto LABEL_73;
    case 0x1Eu:
      v152 = v662;
      sub_214400A9C(v116, v662, type metadata accessor for LinkPresentation.WalletPassMetadata);
      sub_21404A8B8(0, &qword_27C912BD0, off_278175290);
      v117 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v152 + 8))
      {
        v209 = *v152;
        v210 = sub_2146D9588();
      }

      else
      {
        v210 = 0;
      }

      v552 = v659;
      v553 = v631;
      [v117 setName_];

      sub_213FB2E54(v152 + *(v552 + 24), v553, &qword_27C913090, &unk_2146E9DB0);
      v554 = sub_2146D8B08();
      v555 = *(v554 - 8);
      v556 = *(v555 + 48);
      v557 = 0;
      if (v556(v553, 1, v554) != 1)
      {
        v557 = sub_2146D8AD8();
        (*(v555 + 8))(v553, v554);
      }

      [v117 setExpirationDate_];

      v558 = v152 + *(v552 + 20);
      v559 = v634;
      sub_213FB2E54(v558, v634, &qword_27C913090, &unk_2146E9DB0);
      if (v556(v559, 1, v554) == 1)
      {
        v560 = 0;
      }

      else
      {
        v560 = sub_2146D8AD8();
        (*(v555 + 8))(v559, v554);
      }

      [v117 setEventDate_];

      v355 = type metadata accessor for LinkPresentation.WalletPassMetadata;
LABEL_618:
      v455 = v355;
      v456 = v152;
      goto LABEL_619;
    case 0x1Fu:
      v182 = *v116;
      v181 = *(v116 + 1);
      v183 = &unk_27C912BD8;
      v184 = off_278175150;
LABEL_73:
      sub_21404A8B8(0, v183, v184);
      v117 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (v181)
      {
        v145 = sub_2146D9588();
      }

      else
      {
        v145 = 0;
      }

      [v117 setSubtitle_];
      goto LABEL_147;
    case 0x20u:
      sub_214400B04(v116, type metadata accessor for LinkPresentation.SpecializationMetadata);
      v211 = _BlastDoorLPSummarizedLinkMetadata;
      return [objc_allocWithZone(v211) init];
    case 0x21u:
      v144 = *v116;
      v143 = *(v116 + 1);
      sub_21404A8B8(0, &qword_27C912BE8, off_2781751B8);
      v117 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (v143)
      {
        v145 = sub_2146D9588();
      }

      else
      {
        v145 = 0;
      }

      [v117 setTitle_];
LABEL_147:

      return v117;
    case 0x22u:
      v134 = *v116;
      v133 = *(v116 + 1);
      v136 = *(v116 + 2);
      v135 = *(v116 + 3);
      sub_21404A8B8(0, &qword_27C912BF0, off_278175230);
      v117 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (v133)
      {

        v137 = sub_2146D9588();
      }

      else
      {
        v137 = 0;
      }

      [v117 setGroupName_];

      if (v135)
      {

        v235 = sub_2146D9588();
        swift_bridgeObjectRelease_n();
      }

      else
      {

        v235 = 0;
      }

      [v117 setUrlParameters_];
LABEL_604:

      return v117;
    case 0x23u:
      memcpy(v708, v116, 0x149uLL);
      sub_21404A8B8(0, &qword_27C912C00, off_2781751C8);
      v117 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v120 = 0;
      v121 = *(&v708[1] + 1);
      if (!*(&v708[1] + 1))
      {
        goto LABEL_7;
      }

      if (*(&v708[1] + 1) == 1)
      {
        goto LABEL_621;
      }

      v122 = *&v708[1];
      sub_213FDC9D0(*&v708[1], *(&v708[1] + 1));
      v120 = sub_2146D9588();
      sub_213FDC6D0(v122, v121);
LABEL_7:
      [v117 setTitle_];

      v123 = *&v708[4];
      if (*&v708[4])
      {
        if (*&v708[4] == 1)
        {
LABEL_621:
          result = sub_2146DA018();
          __break(1u);
          return result;
        }

        v223 = *(&v708[3] + 1);
        sub_213FDC9D0(*(&v708[3] + 1), *&v708[4]);
        v124 = sub_2146D9588();
        sub_213FDC6D0(v223, v123);
      }

      else
      {
        v124 = 0;
      }

      [v117 setSubtitle_];

      v705 = v708[9];
      v706 = v708[10];
      v707[0] = v708[11];
      *(v707 + 9) = *(&v708[11] + 9);
      v702 = v708[5];
      v703 = v708[6];
      v704[0] = v708[7];
      v704[1] = v708[8];
      if (sub_2144009B4(&v702) == 1)
      {
        v224 = 0;
      }

      else
      {
        v700 = v706;
        v701[0] = v707[0];
        *(v701 + 9) = *(v707 + 9);
        v695 = v702;
        v696 = v703;
        v697 = v704[0];
        v698 = v704[1];
        v699 = v705;
        v224 = sub_2143F7CD4();
      }

      [v117 setArtwork_];

      v700 = v708[18];
      v701[0] = v708[19];
      *(v701 + 9) = *(&v708[19] + 9);
      v695 = v708[13];
      v696 = v708[14];
      v697 = v708[15];
      v698 = v708[16];
      v699 = v708[17];
      if (sub_2144009B4(&v695) == 1)
      {
        v132 = 0;
      }

      else
      {
        v692 = v699;
        v693 = v700;
        v694[0] = v701[0];
        *(v694 + 9) = *(v701 + 9);
        v688 = v695;
        v689 = v696;
        v690 = v697;
        v691 = v698;
        v132 = sub_2143F7CD4();
      }

      [v117 setIcon_];
      sub_214317B18(v708);
LABEL_429:

      return v117;
    case 0x24u:
      v125 = *v116;
      v126 = swift_projectBox();
      v127 = v668;
      sub_2144009D8(v126, v668, type metadata accessor for LinkPresentation.SharedObjectMetadata);
      sub_21404A8B8(0, &qword_27C912BF8, off_278175248);
      v117 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v127 + 8))
      {
        v128 = *v127;
        v129 = sub_2146D9588();
      }

      else
      {
        v129 = 0;
      }

      [v117 setTitle_];

      if (*(v127 + 24))
      {
        v225 = *(v127 + 16);
        v226 = sub_2146D9588();
      }

      else
      {
        v226 = 0;
      }

      [v117 setSubtitle_];

      if (*(v127 + 40))
      {
        v227 = *(v127 + 32);
        v228 = sub_2146D9588();
      }

      else
      {
        v228 = 0;
      }

      [v117 setInformation_];

      v229 = *(v127 + 128);
      v708[4] = *(v127 + 112);
      v708[5] = v229;
      v708[6] = *(v127 + 144);
      *(&v708[6] + 9) = *(v127 + 153);
      v230 = *(v127 + 64);
      v708[0] = *(v127 + 48);
      v708[1] = v230;
      v231 = *(v127 + 96);
      v708[2] = *(v127 + 80);
      v708[3] = v231;
      if (sub_2144009B4(v708) == 1)
      {
        v232 = 0;
      }

      else
      {
        v705 = v708[4];
        v706 = v708[5];
        v707[0] = v708[6];
        *(v707 + 9) = *(&v708[6] + 9);
        v702 = v708[0];
        v703 = v708[1];
        v704[0] = v708[2];
        v704[1] = v708[3];
        v232 = sub_2143F7CD4();
      }

      [v117 setIcon_];

      [v117 setIsCollaboration_];
      v233 = v667;
      sub_213FB2E54(v127 + *(v664 + 36), v667, &qword_27C904870, &qword_2146EDB60);
      if ((*(v611 + 48))(v233, 1, v113) == 1)
      {
        sub_213FB2DF4(v233, &qword_27C904870, &qword_2146EDB60);
        v234 = 0;
      }

      else
      {
        v234 = sub_2143F8AE0();
        sub_214400B04(v233, type metadata accessor for LinkPresentation.SpecializationMetadata);
      }

      [v117 setSpecialization_];

      sub_214400B04(v127, type metadata accessor for LinkPresentation.SharedObjectMetadata);

      return v117;
    default:
      sub_214400A9C(v116, v112, type metadata accessor for LinkPresentation.SongMetadata);
      sub_21404A8B8(0, &qword_27C912AE0, off_278175308);
      v117 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v112 + 1))
      {
        v118 = *v112;
        v119 = sub_2146D9588();
      }

      else
      {
        v119 = 0;
      }

      v415 = v676;
      v416 = v630;
      [v117 setStoreFrontIdentifier_];

      if (*(v112 + 3))
      {
        v417 = *(v112 + 2);
        v418 = sub_2146D9588();
      }

      else
      {
        v418 = 0;
      }

      [v117 setStoreIdentifier_];

      if (*(v112 + 5))
      {
        v421 = *(v112 + 4);
        v422 = sub_2146D9588();
      }

      else
      {
        v422 = 0;
      }

      [v117 setName_];

      if (*(v112 + 7))
      {
        v425 = *(v112 + 6);
        v426 = sub_2146D9588();
      }

      else
      {
        v426 = 0;
      }

      [v117 setArtist_];

      if (*(v112 + 9))
      {
        v429 = *(v112 + 8);
        v430 = sub_2146D9588();
      }

      else
      {
        v430 = 0;
      }

      [v117 setAlbum_];

      if (*(v112 + 11))
      {
        v439 = *(v112 + 10);
        v440 = sub_2146D9588();
      }

      else
      {
        v440 = 0;
      }

      [v117 setLyrics_];

      v441 = *(v112 + 11);
      v708[4] = *(v112 + 10);
      v708[5] = v441;
      v708[6] = *(v112 + 12);
      *(&v708[6] + 9) = *(v112 + 201);
      v442 = *(v112 + 7);
      v708[0] = *(v112 + 6);
      v708[1] = v442;
      v443 = *(v112 + 9);
      v708[2] = *(v112 + 8);
      v708[3] = v443;
      if (sub_2144009B4(v708) == 1)
      {
        v444 = 0;
      }

      else
      {
        v705 = v708[4];
        v706 = v708[5];
        v707[0] = v708[6];
        *(v707 + 9) = *(&v708[6] + 9);
        v702 = v708[0];
        v703 = v708[1];
        v704[0] = v708[2];
        v704[1] = v708[3];
        v444 = sub_2143F7CD4();
      }

      [v117 setArtwork_];

      v445 = v613;
      sub_213FB2E54(&v112[v109[11]], v613, &qword_27C904878, &unk_2146EDB68);
      v446 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      if ((*(*(v446 - 8) + 48))(v445, 1, v446) == 1)
      {
        sub_213FB2DF4(v445, &qword_27C904878, &unk_2146EDB68);
        v447 = 0;
      }

      else
      {
        v447 = sub_2143FFD20();
        sub_214400B04(v445, type metadata accessor for LinkPresentation.ArtworkMetadata);
      }

      [v117 setArtworkMetadata_];

      sub_213FB2E54(&v112[v109[12]], v416, &unk_27C9131A0, &unk_2146E9D10);
      v448 = v673;
      if ((v673[6])(v416, 1, v415) == 1)
      {
        v449 = 0;
      }

      else
      {
        v449 = sub_2146D8898();
        (v448[1])(v416, v415);
      }

      [v117 setPreviewURL_];

      if (*&v112[v109[13]])
      {
        v450 = sub_2146D98E8();
      }

      else
      {
        v450 = 0;
      }

      [v117 setOffers_];

      v451 = &v112[v109[14]];
      v452 = *(v451 + 1);
      if (v452 == 1)
      {
        v453 = 0;
      }

      else
      {
        *&v702 = *v451;
        *(&v702 + 1) = v452;
        v454 = *(v451 + 2);
        v703 = *(v451 + 1);
        v704[0] = v454;
        *(v704 + 9) = *(v451 + 41);
        v453 = sub_214400088();
      }

      [v117 setLyricExcerpt_];

      v319 = type metadata accessor for LinkPresentation.SongMetadata;
LABEL_374:
      v455 = v319;
      v456 = v112;
LABEL_619:
      sub_214400B04(v456, v455);
      return v117;
  }
}

id sub_2143FF8F0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[21];
  v7 = v0[22];
  v8 = [objc_allocWithZone(_BlastDoorLPAssociatedApplicationMetadata) init];
  if (v2)
  {
    v9 = sub_2146D9588();
  }

  else
  {
    v9 = 0;
  }

  [v8 setBundleIdentifier_];

  v10 = *(v0 + 6);
  v28 = *(v0 + 5);
  v29 = v10;
  v30[0] = *(v0 + 7);
  *(v30 + 9) = *(v0 + 121);
  v11 = *(v0 + 2);
  v24 = *(v0 + 1);
  v25 = v11;
  v12 = *(v0 + 4);
  v26 = *(v0 + 3);
  v27 = v12;
  if (sub_2144009B4(&v24) == 1)
  {
    v13 = 0;
  }

  else
  {
    v21 = v28;
    v22 = v29;
    *v23 = v30[0];
    *&v23[9] = *(v30 + 9);
    v17 = v24;
    v18 = v25;
    v19 = v26;
    v20 = v27;
    v13 = sub_2143F7CD4();
  }

  [v8 setIcon_];

  if (v4)
  {
    v14 = sub_2146D9588();
  }

  else
  {
    v14 = 0;
  }

  [v8 setCaption_];

  if (v6)
  {
    v15 = sub_2146D9588();
  }

  else
  {
    v15 = 0;
  }

  [v8 setAction_];

  [v8 setClipAction_];
  return v8;
}

uint64_t sub_2143FFAA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v27 = &v26 - v6;
  v7 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v9 + 20);
  v13 = sub_2146D8958();
  v14 = *(*(v13 - 8) + 56);
  v15 = 1;
  v30 = v12;
  v14(a2 + v12, 1, 1, v13);
  v16 = *(v7 + 24);
  v31 = a2;
  *(a2 + v16) = 0;
  v28 = [a1 version];
  v29 = a1;
  v17 = [a1 URL];
  if (v17)
  {
    v18 = v17;
    v19 = v27;
    sub_2146D88E8();

    v15 = 0;
  }

  else
  {
    v19 = v27;
  }

  v14(v19, v15, 1, v13);
  v20 = v29;
  v21 = [v29 colors];
  if (v21)
  {
    v22 = v21;
    v23 = sub_2146D9488();
  }

  else
  {

    v23 = 0;
  }

  *v11 = v28;
  sub_21408AC04(v19, v11 + *(v7 + 20), &unk_27C9131A0, &unk_2146E9D10);
  *(v11 + *(v7 + 24)) = v23;
  v24 = v31;
  sub_213FB2DF4(v31 + v30, &unk_27C9131A0, &unk_2146E9D10);
  return sub_214400A9C(v11, v24, type metadata accessor for LinkPresentation.ArtworkMetadata);
}

id sub_2143FFD20()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  v6 = [objc_allocWithZone(_BlastDoorLPArtworkMetadata) init];
  v7 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
  sub_213FB2E54(v1 + *(v7 + 20), v5, &unk_27C9131A0, &unk_2146E9D10);
  v8 = sub_2146D8958();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v5, 1, v8) != 1)
  {
    v10 = sub_2146D8898();
    (*(v9 + 8))(v5, v8);
  }

  [v6 setURL_];

  if (*(v1 + *(v7 + 24)))
  {
    v11 = sub_2146D9468();
  }

  else
  {
    v11 = 0;
  }

  [v6 setColors_];

  return v6;
}

void sub_2143FFED4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = 1;
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  v24 = 1;
  v25 = 0;
  v26 = 1;
  sub_214400960(v22);
  v4 = [a1 lyrics];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2146D95B8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = [a1 language];
  if (v9)
  {
    v10 = v9;
    v11 = sub_2146D95B8();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = [a1 startTime];
  v15 = v14;
  if (v14)
  {
    [v14 doubleValue];
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = [a1 endTime];
  v19 = v18;
  if (v18)
  {
    [v18 doubleValue];
    v21 = v20;
  }

  else
  {

    v21 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v11;
  *(a2 + 24) = v13;
  *(a2 + 32) = v17;
  *(a2 + 40) = v15 == 0;
  *(a2 + 48) = v21;
  *(a2 + 56) = v19 == 0;
}

id sub_214400088()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v4 = *(v0 + 2);
  v3 = *(v0 + 3);
  v5 = v0[4];
  v6 = *(v0 + 40);
  v7 = v0[6];
  v8 = *(v0 + 56);
  v9 = [objc_allocWithZone(_BlastDoorLPLyricExcerptMetadata) init];
  if (v2)
  {
    v10 = sub_2146D9588();
  }

  else
  {
    v10 = 0;
  }

  [v9 setLyrics_];

  if (v3)
  {
    v11 = sub_2146D9588();
  }

  else
  {
    v11 = 0;
  }

  [v9 setLanguage_];

  if (v6)
  {
    v12 = 0;
  }

  else
  {
    v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  [v9 setStartTime_];

  if (v8)
  {
    v13 = 0;
  }

  else
  {
    v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  [v9 setEndTime_];

  return v9;
}

void sub_2144001E4(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 street];
  v5 = sub_2146D95B8();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
  v8 = [a1 subLocality];
  v9 = sub_2146D95B8();
  v11 = v10;

  a2[2] = v9;
  a2[3] = v11;
  v12 = [a1 city];
  v13 = sub_2146D95B8();
  v15 = v14;

  a2[4] = v13;
  a2[5] = v15;
  v16 = [a1 subAdministrativeArea];
  v17 = sub_2146D95B8();
  v19 = v18;

  a2[6] = v17;
  a2[7] = v19;
  v20 = [a1 state];
  v21 = sub_2146D95B8();
  v23 = v22;

  a2[8] = v21;
  a2[9] = v23;
  v24 = [a1 postalCode];
  v25 = sub_2146D95B8();
  v27 = v26;

  a2[10] = v25;
  a2[11] = v27;
  v28 = [a1 country];
  v29 = sub_2146D95B8();
  v31 = v30;

  a2[12] = v29;
  a2[13] = v31;
  v32 = [a1 ISOCountryCode];
  v33 = sub_2146D95B8();
  v35 = v34;

  a2[14] = v33;
  a2[15] = v35;
}

id sub_214400398()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[5];
  v6 = v0[7];
  v20 = v0[4];
  v21 = v0[6];
  v7 = v0[9];
  v8 = v0[11];
  v22 = v0[8];
  v23 = v0[10];
  v24 = v0[13];
  v25 = v0[12];
  v26 = v0[15];
  v27 = v0[14];
  v9 = objc_allocWithZone(MEMORY[0x277CBDB60]);

  v10 = [v9 init];
  v11 = sub_2146D9588();

  [v10 setStreet_];

  v12 = sub_2146D9588();

  [v10 setSubLocality_];

  v13 = sub_2146D9588();

  [v10 setCity_];

  v14 = sub_2146D9588();

  [v10 setSubAdministrativeArea_];

  v15 = sub_2146D9588();

  [v10 setState_];

  v16 = sub_2146D9588();

  [v10 setPostalCode_];

  v17 = sub_2146D9588();

  [v10 setCountry_];

  v18 = sub_2146D9588();

  [v10 setISOCountryCode_];

  return v10;
}

void sub_214400664(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2143FFED4(*a1, a3);
  if (v3)
  {
    *a2 = v3;
  }
}

uint64_t sub_2144006B4@<X0>(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_2143EE928(*a1, a3);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_214400704(id *a1, void *a2)
{
  result = sub_2143EF3D8(*a1);
  if (v2)
  {
    *a2 = v2;
  }

  return result;
}

id sub_214400754(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithUnsignedInteger_];
}

id sub_21440079C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_2146D9588();

  v2 = [v0 initWithString_];

  return v2;
}

uint64_t sub_214400810(int64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_21409FEAC(result, v5, 0);
  }

  return result;
}

double sub_214400888(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_2146EA720;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  return result;
}

double sub_2144008B4(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return result;
}

uint64_t sub_2144008F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1();

  return sub_2146DAA78();
}

double sub_214400940(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_2146EA720;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  return result;
}

uint64_t sub_2144009B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2144009D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_214400A9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_214400B04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_214400B68(uint64_t a1, uint64_t a2)
{
  v4 = sub_21440520C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_214400BB4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214406CBC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_214400BE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214406CBC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_214400C24(uint64_t a1, uint64_t a2)
{
  v4 = sub_214406280();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_214400C70@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (result == 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_214400C8C()
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

uint64_t sub_214400CB0()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA199B0);
  __swift_project_value_buffer(v0, qword_27CA199B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2146E6980;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "messageType";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_2146D9118();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "sendDate";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "messageData";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "baseColor";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "identifier";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "supportsPlaybackTimeOffsets";
  *(v16 + 1) = 27;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "startDelay";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v7();
  return sub_2146D9128();
}

uint64_t sub_214400FAC()
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          sub_21440116C();
          break;
        case 2:
          v8 = *(type metadata accessor for ETP_Header(0) + 24);
          sub_2146D8FA8();
          break;
        case 3:
          v4 = *(type metadata accessor for ETP_Header(0) + 28);
          sub_2146D8EC8();
          break;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        v7 = *(type metadata accessor for ETP_Header(0) + 40);
        sub_2146D8E98();
      }

      else if (result == 7)
      {
        v5 = *(type metadata accessor for ETP_Header(0) + 44);
        sub_2146D8F28();
      }
    }

    else if (result == 4)
    {
      v6 = *(type metadata accessor for ETP_Header(0) + 32);
      sub_2146D8F88();
    }

    else
    {
      v3 = *(type metadata accessor for ETP_Header(0) + 36);
      sub_2146D8F38();
    }
  }

  return result;
}

uint64_t sub_21440116C()
{
  v0 = *(type metadata accessor for ETP_Header(0) + 20);
  sub_21440520C();
  return sub_2146D8EB8();
}

uint64_t sub_2144011E0()
{
  v2 = type metadata accessor for ETP_Header(0);
  v3 = v2;
  if (*(v0 + *(v2 + 20)) == 8 || (v16 = *(v0 + *(v2 + 20)), sub_21440520C(), result = sub_2146D9038(), !v1))
  {
    v5 = (v0 + v3[6]);
    if ((v5[1] & 1) != 0 || (v6 = *v5, result = sub_2146D9108(), !v1))
    {
      v7 = v0 + v3[7];
      v8 = *(v7 + 8);
      if (v8 >> 60 == 15 || (v9 = *v7, sub_21402D9F8(*v7, *(v7 + 8)), sub_2146D9048(), result = sub_213FDC6BC(v9, v8), !v1))
      {
        v10 = (v0 + v3[8]);
        if ((v10[1] & 1) != 0 || (v11 = *v10, result = sub_2146D90E8(), !v1))
        {
          v12 = (v0 + v3[9]);
          if (!v12[1] || (v13 = *v12, result = sub_2146D90A8(), !v1))
          {
            if (*(v0 + v3[10]) == 2 || (result = sub_2146D9028(), !v1))
            {
              v14 = (v0 + v3[11]);
              if (v14[1])
              {
                return sub_2146D8DD8();
              }

              v15 = *v14;
              result = sub_2146D9098();
              if (!v1)
              {
                return sub_2146D8DD8();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

double sub_2144013C8@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = a1[6];
  *(a2 + a1[5]) = 8;
  v5 = a2 + v4;
  *v5 = 0;
  *(v5 + 8) = 1;
  result = 0.0;
  v7 = a1[8];
  *(a2 + a1[7]) = xmmword_2146E68C0;
  v8 = a2 + v7;
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1[10];
  v10 = (a2 + a1[9]);
  *v10 = 0;
  v10[1] = 0;
  *(a2 + v9) = 2;
  v11 = a2 + a1[11];
  *v11 = 0;
  *(v11 + 8) = 1;
  return result;
}

uint64_t sub_214401498(uint64_t a1, uint64_t a2)
{
  v4 = sub_214404814(&qword_27C912D18, type metadata accessor for ETP_Header);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214401538(uint64_t a1)
{
  v2 = sub_214404814(&qword_27C912768, type metadata accessor for ETP_Header);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2144015A4()
{
  sub_214404814(&qword_27C912768, type metadata accessor for ETP_Header);

  return sub_2146D9008();
}

uint64_t sub_214401624()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA199C8);
  __swift_project_value_buffer(v0, qword_27CA199C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2146E68E0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "Tap";
  *(v5 + 8) = 3;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2146D9118();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "QuickTap";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "Heartbeat";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "Doodle";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "ReadReceipt";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "Video";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "Kiss";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "Anger";
  *(v21 + 1) = 5;
  v21[16] = 2;
  v8();
  return sub_2146D9128();
}

uint64_t sub_214401988()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA199E0);
  __swift_project_value_buffer(v0, qword_27CA199E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "timeDeltas";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "points";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "colors";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_214401B94()
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 4:
        v5 = *(type metadata accessor for ETP_Tap(0) + 28);
LABEL_3:
        v0 = 0;
        sub_2146D8EC8();
        break;
      case 3:
        v1 = *(type metadata accessor for ETP_Tap(0) + 24);
        goto LABEL_3;
      case 2:
        v4 = *(type metadata accessor for ETP_Tap(0) + 20);
        goto LABEL_3;
    }
  }
}

uint64_t sub_214401CC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_214404814(&qword_27C912D28, type metadata accessor for ETP_Tap);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214401D60(uint64_t a1)
{
  v2 = sub_214404814(&qword_27C912780, type metadata accessor for ETP_Tap);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214401DCC()
{
  sub_214404814(&qword_27C912780, type metadata accessor for ETP_Tap);

  return sub_2146D9008();
}

uint64_t sub_214401E78()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA199F8);
  __swift_project_value_buffer(v0, qword_27CA199F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2146E6930;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "beatsPerMinute";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2146D9118();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "duration";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "normalizedCenterX";
  *(v11 + 1) = 17;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "normalizedCenterY";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "rotation";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "heartbreakTime";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  return sub_2146D9128();
}

uint64_t sub_21440213C()
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          v6 = *(type metadata accessor for ETP_Heartbeat(0) + 32);
          goto LABEL_3;
        case 5:
          v8 = *(type metadata accessor for ETP_Heartbeat(0) + 36);
LABEL_3:
          v0 = 0;
          sub_2146D8EE8();
          break;
        case 6:
          v5 = *(type metadata accessor for ETP_Heartbeat(0) + 40);
          goto LABEL_3;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          v1 = *(type metadata accessor for ETP_Heartbeat(0) + 20);
          goto LABEL_3;
        case 2:
          v7 = *(type metadata accessor for ETP_Heartbeat(0) + 24);
          sub_2146D8F58();
          break;
        case 3:
          v4 = *(type metadata accessor for ETP_Heartbeat(0) + 28);
          goto LABEL_3;
      }
    }
  }
}

uint64_t sub_214402274()
{
  v2 = type metadata accessor for ETP_Heartbeat(0);
  v3 = (v0 + v2[5]);
  if ((v3[1] & 1) != 0 || (v4 = *v3, result = sub_2146D9058(), !v1))
  {
    v6 = (v0 + v2[6]);
    if ((v6[1] & 1) != 0 || (v7 = *v6, result = sub_2146D90B8(), !v1))
    {
      v8 = (v0 + v2[7]);
      if ((v8[1] & 1) != 0 || (v9 = *v8, result = sub_2146D9058(), !v1))
      {
        v10 = (v0 + v2[8]);
        if ((v10[1] & 1) != 0 || (v11 = *v10, result = sub_2146D9058(), !v1))
        {
          v12 = (v0 + v2[9]);
          if ((v12[1] & 1) != 0 || (v13 = *v12, result = sub_2146D9058(), !v1))
          {
            v14 = (v0 + v2[10]);
            if (v14[1])
            {
              return sub_2146D8DD8();
            }

            v15 = *v14;
            result = sub_2146D9058();
            if (!v1)
            {
              return sub_2146D8DD8();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2144023D0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2146D8DE8();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1[10];
  v12 = a2 + a1[9];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a2 + v11;
  *v13 = 0;
  *(v13 + 4) = 1;
  return result;
}

uint64_t sub_2144024A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_214404814(&qword_27C912D30, type metadata accessor for ETP_Heartbeat);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214402544(uint64_t a1)
{
  v2 = sub_214404814(&qword_27C912778, type metadata accessor for ETP_Heartbeat);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2144025B0()
{
  sub_214404814(&qword_27C912778, type metadata accessor for ETP_Heartbeat);

  return sub_2146D9008();
}

uint64_t sub_214402630()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19A10);
  __swift_project_value_buffer(v0, qword_27CA19A10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "doodleCount";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "doodleData";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "colorData";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "pointTimeDeltaData";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_214402878()
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        v1 = *(type metadata accessor for ETP_Doodle(0) + 28);
        goto LABEL_3;
      }

      if (result == 4)
      {
        v5 = *(type metadata accessor for ETP_Doodle(0) + 32);
LABEL_3:
        v0 = 0;
        sub_2146D8EC8();
      }
    }

    else if (result == 1)
    {
      v6 = *(type metadata accessor for ETP_Doodle(0) + 20);
      sub_2146D8F58();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for ETP_Doodle(0) + 24);
      goto LABEL_3;
    }
  }
}

uint64_t sub_214402974()
{
  v2 = type metadata accessor for ETP_Doodle(0);
  v3 = (v0 + v2[5]);
  if ((v3[1] & 1) != 0 || (v4 = *v3, result = sub_2146D90B8(), !v1))
  {
    v6 = v0 + v2[6];
    v7 = *(v6 + 8);
    if (v7 >> 60 == 15 || (v8 = *v6, sub_21402D9F8(*v6, *(v6 + 8)), sub_2146D9048(), result = sub_213FDC6BC(v8, v7), !v1))
    {
      v9 = v0 + v2[7];
      v10 = *(v9 + 8);
      if (v10 >> 60 == 15 || (v11 = *v9, sub_21402D9F8(*v9, *(v9 + 8)), sub_2146D9048(), result = sub_213FDC6BC(v11, v10), !v1))
      {
        v12 = v0 + v2[8];
        v13 = *(v12 + 8);
        if (v13 >> 60 == 15)
        {
          return sub_2146D8DD8();
        }

        v14 = *v12;
        sub_21402D9F8(*v12, *(v12 + 8));
        sub_2146D9048();
        result = sub_213FDC6BC(v14, v13);
        if (!v1)
        {
          return sub_2146D8DD8();
        }
      }
    }
  }

  return result;
}

double sub_214402B20@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  result = 0.0;
  *(a2 + v4) = xmmword_2146E68C0;
  v7 = a1[8];
  *(a2 + a1[7]) = xmmword_2146E68C0;
  *(a2 + v7) = xmmword_2146E68C0;
  return result;
}

uint64_t sub_214402BC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_214404814(&qword_27C912D38, type metadata accessor for ETP_Doodle);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214402C60(uint64_t a1)
{
  v2 = sub_214404814(&qword_27C912770, type metadata accessor for ETP_Doodle);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214402CCC()
{
  sub_214404814(&qword_27C912770, type metadata accessor for ETP_Doodle);

  return sub_2146D9008();
}

uint64_t sub_214402D4C()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19A28);
  __swift_project_value_buffer(v0, qword_27CA19A28);
  return sub_2146D9138();
}

uint64_t sub_214402D98()
{
  do
  {
    result = sub_2146D8E78();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_214402E4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_214404814(&qword_27C912D40, type metadata accessor for ETP_ReadReceipt);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214402EEC(uint64_t a1)
{
  v2 = sub_214404814(&qword_27C912C80, type metadata accessor for ETP_ReadReceipt);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214402F58()
{
  sub_214404814(&qword_27C912C80, type metadata accessor for ETP_ReadReceipt);

  return sub_2146D9008();
}

uint64_t sub_214402FD4()
{
  sub_2146D8DF8();
  sub_214404814(&qword_27C903D38, MEMORY[0x277D216C8]);
  return sub_2146D9578() & 1;
}

uint64_t sub_21440305C()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19A40);
  __swift_project_value_buffer(v0, qword_27CA19A40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "introMessageData";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "playingMessagesData";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "mediaType";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_214403270()
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 4:
        sub_214403338();
        break;
      case 2:
        v4 = *(type metadata accessor for ETP_Video(0) + 24);
LABEL_10:
        v0 = 0;
        sub_2146D8EC8();
        break;
      case 1:
        v3 = *(type metadata accessor for ETP_Video(0) + 20);
        goto LABEL_10;
    }
  }
}

uint64_t sub_214403338()
{
  v0 = *(type metadata accessor for ETP_Video(0) + 28);
  sub_214406280();
  return sub_2146D8EB8();
}

uint64_t sub_2144033AC()
{
  v2 = type metadata accessor for ETP_Video(0);
  v3 = v0 + v2[5];
  v4 = *(v3 + 8);
  if (v4 >> 60 == 15 || (v5 = *v3, sub_21402D9F8(*v3, *(v3 + 8)), sub_2146D9048(), result = sub_213FDC6BC(v5, v4), !v1))
  {
    v7 = v0 + v2[6];
    v8 = *(v7 + 8);
    if (v8 >> 60 == 15 || (v9 = *v7, sub_21402D9F8(*v7, *(v7 + 8)), sub_2146D9048(), result = sub_213FDC6BC(v9, v8), !v1))
    {
      if (*(v0 + v2[7]) == 2)
      {
        return sub_2146D8DD8();
      }

      sub_214406280();
      result = sub_2146D9038();
      if (!v1)
      {
        return sub_2146D8DD8();
      }
    }
  }

  return result;
}

double sub_214403520@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  result = 0.0;
  v5 = a1[6];
  *(a2 + a1[5]) = xmmword_2146E68C0;
  *(a2 + v5) = xmmword_2146E68C0;
  *(a2 + a1[7]) = 2;
  return result;
}

uint64_t sub_2144035B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_214404814(&qword_27C912D48, type metadata accessor for ETP_Video);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214403654(uint64_t a1)
{
  v2 = sub_214404814(&qword_27C912788, type metadata accessor for ETP_Video);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2144036C0()
{
  sub_214404814(&qword_27C912788, type metadata accessor for ETP_Video);

  return sub_2146D9008();
}

uint64_t sub_214403740()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19A58);
  __swift_project_value_buffer(v0, qword_27CA19A58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6910;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "Video";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "Photo";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21440392C()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19A70);
  __swift_project_value_buffer(v0, qword_27CA19A70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "delays";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "points";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "angles";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_214403B3C()
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v5 = *(type metadata accessor for ETP_Kiss(0) + 28);
LABEL_3:
        v0 = 0;
        sub_2146D8EC8();
        break;
      case 2:
        v1 = *(type metadata accessor for ETP_Kiss(0) + 24);
        goto LABEL_3;
      case 1:
        v4 = *(type metadata accessor for ETP_Kiss(0) + 20);
        goto LABEL_3;
    }
  }
}

uint64_t sub_214403C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = (v4 + v6[5]);
  v8 = v7[1];
  if (v8 >> 60 == 15 || (v9 = *v7, sub_21402D9F8(*v7, v8), sub_2146D9048(), result = sub_213FDC6BC(v9, v8), !v5))
  {
    v11 = v4 + v6[6];
    v12 = *(v11 + 8);
    if (v12 >> 60 == 15 || (v13 = *v11, sub_21402D9F8(*v11, *(v11 + 8)), sub_2146D9048(), result = sub_213FDC6BC(v13, v12), !v5))
    {
      v14 = v4 + v6[7];
      v15 = *(v14 + 8);
      if (v15 >> 60 == 15)
      {
        return sub_2146D8DD8();
      }

      v16 = *v14;
      sub_21402D9F8(*v14, *(v14 + 8));
      sub_2146D9048();
      result = sub_213FDC6BC(v16, v15);
      if (!v5)
      {
        return sub_2146D8DD8();
      }
    }
  }

  return result;
}

uint64_t sub_214403E10(uint64_t a1, uint64_t a2)
{
  v4 = sub_214404814(&qword_27C912D58, type metadata accessor for ETP_Kiss);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214403EB0(uint64_t a1)
{
  v2 = sub_214404814(&qword_27C912790, type metadata accessor for ETP_Kiss);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214403F1C()
{
  sub_214404814(&qword_27C912790, type metadata accessor for ETP_Kiss);

  return sub_2146D9008();
}

uint64_t sub_214403FC8()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19A88);
  __swift_project_value_buffer(v0, qword_27CA19A88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_214737980;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "duration";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2146D9118();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "normalizedCenterX";
  *(v9 + 8) = 17;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "normalizedCenterY";
  *(v11 + 1) = 17;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "delays";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "points";
  *(v14 + 8) = 6;
  *(v14 + 16) = 2;
  v8();
  return sub_2146D9128();
}

uint64_t sub_214404250()
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        v7 = *(type metadata accessor for ETP_Anger(0) + 20);
LABEL_3:
        v0 = 0;
        sub_2146D8EE8();
      }

      else if (result == 2)
      {
        v5 = *(type metadata accessor for ETP_Anger(0) + 24);
        goto LABEL_3;
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          v1 = *(type metadata accessor for ETP_Anger(0) + 28);
          goto LABEL_3;
        case 4:
          v6 = *(type metadata accessor for ETP_Anger(0) + 32);
LABEL_15:
          v0 = 0;
          sub_2146D8EC8();
          break;
        case 5:
          v4 = *(type metadata accessor for ETP_Anger(0) + 36);
          goto LABEL_15;
      }
    }
  }
}

uint64_t sub_21440436C()
{
  v2 = type metadata accessor for ETP_Anger(0);
  v3 = (v0 + v2[5]);
  if ((v3[1] & 1) != 0 || (v4 = *v3, result = sub_2146D9058(), !v1))
  {
    v6 = (v0 + v2[6]);
    if ((v6[1] & 1) != 0 || (v7 = *v6, result = sub_2146D9058(), !v1))
    {
      v8 = (v0 + v2[7]);
      if ((v8[1] & 1) != 0 || (v9 = *v8, result = sub_2146D9058(), !v1))
      {
        v10 = v0 + v2[8];
        v11 = *(v10 + 8);
        if (v11 >> 60 == 15 || (v12 = *v10, sub_21402D9F8(*v10, *(v10 + 8)), sub_2146D9048(), result = sub_213FDC6BC(v12, v11), !v1))
        {
          v13 = v0 + v2[9];
          v14 = *(v13 + 8);
          if (v14 >> 60 == 15)
          {
            return sub_2146D8DD8();
          }

          v15 = *v13;
          sub_21402D9F8(*v13, *(v13 + 8));
          sub_2146D9048();
          result = sub_213FDC6BC(v15, v14);
          if (!v1)
          {
            return sub_2146D8DD8();
          }
        }
      }
    }
  }

  return result;
}

double sub_214404520@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *(v8 + 4) = 1;
  *v8 = 0;
  result = 0.0;
  *(a2 + v7) = xmmword_2146E68C0;
  *(a2 + a1[9]) = xmmword_2146E68C0;
  return result;
}

uint64_t sub_2144045D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_214404814(&qword_27C912D60, type metadata accessor for ETP_Anger);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214404678(uint64_t a1)
{
  v2 = sub_214404814(&qword_27C912798, type metadata accessor for ETP_Anger);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2144046E4()
{
  sub_214404814(&qword_27C912798, type metadata accessor for ETP_Anger);

  return sub_2146D9008();
}

uint64_t sub_214404814(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21440520C()
{
  result = qword_27C912D20;
  if (!qword_27C912D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912D20);
  }

  return result;
}

uint64_t sub_214405260(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ETP_Video(0);
  v5 = v4[5];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_10;
    }

    sub_213FDCA18(v7, v6);
    sub_213FDCA18(v10, v9);
    sub_213FDC6BC(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_10;
    }

    sub_213FDCA18(v7, v6);
    sub_213FDCA18(v10, v9);
    v11 = sub_214466780(v7, v6, v10, v9);
    sub_213FDC6BC(v10, v9);
    sub_213FDC6BC(v7, v6);
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = v4[6];
  v7 = *(a1 + v12);
  v6 = *(a1 + v12 + 8);
  v13 = (a2 + v12);
  v10 = *v13;
  v9 = v13[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_213FDCA18(v7, v6);
      sub_213FDCA18(v10, v9);
      sub_213FDC6BC(v7, v6);
      goto LABEL_13;
    }

LABEL_10:
    sub_213FDCA18(v7, v6);
    sub_213FDCA18(v10, v9);
    sub_213FDC6BC(v7, v6);
    sub_213FDC6BC(v10, v9);
    return 0;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_10;
  }

  sub_213FDCA18(v7, v6);
  sub_213FDCA18(v10, v9);
  v15 = sub_214466780(v7, v6, v10, v9);
  sub_213FDC6BC(v10, v9);
  sub_213FDC6BC(v7, v6);
  if ((v15 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v16 = v4[7];
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);
  if (v17 != 2)
  {
    if (v18 != 2 && ((v18 ^ v17) & 1) == 0)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (v18 != 2)
  {
    return 0;
  }

LABEL_18:
  sub_2146D8DF8();
  sub_214404814(&qword_27C903D38, MEMORY[0x277D216C8]);
  return sub_2146D9578() & 1;
}

uint64_t sub_2144054C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ETP_Anger(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v22 = *(a1 + v20);
  v21 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v25 = *v23;
  v24 = v23[1];
  if (v21 >> 60 == 15)
  {
    if (v24 >> 60 == 15)
    {
      v26 = v4;
      sub_213FDCA18(v22, v21);
      sub_213FDCA18(v25, v24);
      sub_213FDC6BC(v22, v21);
      v27 = v26;
      goto LABEL_24;
    }

LABEL_28:
    sub_213FDCA18(v22, v21);
    sub_213FDCA18(v25, v24);
    sub_213FDC6BC(v22, v21);
    sub_213FDC6BC(v25, v24);
    return 0;
  }

  if (v24 >> 60 == 15)
  {
    goto LABEL_28;
  }

  v27 = v4;
  sub_213FDCA18(v22, v21);
  sub_213FDCA18(v25, v24);
  v28 = sub_214466780(v22, v21, v25, v24);
  sub_213FDC6BC(v25, v24);
  sub_213FDC6BC(v22, v21);
  if ((v28 & 1) == 0)
  {
    return 0;
  }

LABEL_24:
  v29 = v27[9];
  v22 = *(a1 + v29);
  v21 = *(a1 + v29 + 8);
  v30 = (a2 + v29);
  v25 = *v30;
  v24 = v30[1];
  if (v21 >> 60 != 15)
  {
    if (v24 >> 60 == 15)
    {
      goto LABEL_28;
    }

    sub_213FDCA18(v22, v21);
    sub_213FDCA18(v25, v24);
    v32 = sub_214466780(v22, v21, v25, v24);
    sub_213FDC6BC(v25, v24);
    sub_213FDC6BC(v22, v21);
    if (v32)
    {
      goto LABEL_31;
    }

    return 0;
  }

  if (v24 >> 60 != 15)
  {
    goto LABEL_28;
  }

  sub_213FDCA18(v22, v21);
  sub_213FDCA18(v25, v24);
  sub_213FDC6BC(v22, v21);
LABEL_31:
  sub_2146D8DF8();
  sub_214404814(&qword_27C903D38, MEMORY[0x277D216C8]);
  return sub_2146D9578() & 1;
}

uint64_t sub_21440579C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = v5[5];
  v8 = *(a1 + v6);
  v7 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v11 = *v9;
  v10 = v9[1];
  if (v7 >> 60 == 15)
  {
    if (v10 >> 60 != 15)
    {
      goto LABEL_10;
    }

    sub_213FDCA18(v8, v7);
    sub_213FDCA18(v11, v10);
    sub_213FDC6BC(v8, v7);
  }

  else
  {
    if (v10 >> 60 == 15)
    {
      goto LABEL_10;
    }

    sub_213FDCA18(v8, v7);
    sub_213FDCA18(v11, v10);
    v12 = sub_214466780(v8, v7, v11, v10);
    sub_213FDC6BC(v11, v10);
    sub_213FDC6BC(v8, v7);
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v13 = v5[6];
  v8 = *(a1 + v13);
  v7 = *(a1 + v13 + 8);
  v14 = (a2 + v13);
  v11 = *v14;
  v10 = v14[1];
  if (v7 >> 60 == 15)
  {
    if (v10 >> 60 == 15)
    {
      sub_213FDCA18(v8, v7);
      sub_213FDCA18(v11, v10);
      sub_213FDC6BC(v8, v7);
      goto LABEL_14;
    }

LABEL_10:
    sub_213FDCA18(v8, v7);
    sub_213FDCA18(v11, v10);
    sub_213FDC6BC(v8, v7);
    v15 = v11;
    v16 = v10;
LABEL_11:
    sub_213FDC6BC(v15, v16);
    return 0;
  }

  if (v10 >> 60 == 15)
  {
    goto LABEL_10;
  }

  sub_213FDCA18(v8, v7);
  sub_213FDCA18(v11, v10);
  v18 = sub_214466780(v8, v7, v11, v10);
  sub_213FDC6BC(v11, v10);
  sub_213FDC6BC(v8, v7);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v19 = v5[7];
  v21 = *(a1 + v19);
  v20 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  v24 = *v22;
  v23 = v22[1];
  if (v20 >> 60 != 15)
  {
    if (v23 >> 60 == 15)
    {
      goto LABEL_18;
    }

    sub_213FDCA18(v21, v20);
    sub_213FDCA18(v24, v23);
    v25 = sub_214466780(v21, v20, v24, v23);
    sub_213FDC6BC(v24, v23);
    sub_213FDC6BC(v21, v20);
    if (v25)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (v23 >> 60 != 15)
  {
LABEL_18:
    sub_213FDCA18(v21, v20);
    sub_213FDCA18(v24, v23);
    sub_213FDC6BC(v21, v20);
    v15 = v24;
    v16 = v23;
    goto LABEL_11;
  }

  sub_213FDCA18(v21, v20);
  sub_213FDCA18(v24, v23);
  sub_213FDC6BC(v21, v20);
LABEL_20:
  sub_2146D8DF8();
  sub_214404814(&qword_27C903D38, MEMORY[0x277D216C8]);
  return sub_2146D9578() & 1;
}

uint64_t sub_214405AB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ETP_Heartbeat(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 4);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 4);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  v30 = v4[10];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 4);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 4);
  if (v32)
  {
    if (!v34)
    {
      return 0;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if (v34)
    {
      return 0;
    }
  }

  sub_2146D8DF8();
  sub_214404814(&qword_27C903D38, MEMORY[0x277D216C8]);
  return sub_2146D9578() & 1;
}

uint64_t sub_214405C7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ETP_Header(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 8)
  {
    if (v7 != 8)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = *(a2 + v8 + 8);
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (*v9 != *v11)
    {
      LOBYTE(v12) = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  v13 = v4[7];
  v15 = *(a1 + v13);
  v14 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v18 = *v16;
  v17 = v16[1];
  if (v14 >> 60 == 15)
  {
    if (v17 >> 60 == 15)
    {
      v19 = v4;
      sub_213FDCA18(v15, v14);
      sub_213FDCA18(v18, v17);
      sub_213FDC6BC(v15, v14);
      v20 = v19;
      goto LABEL_18;
    }

LABEL_15:
    sub_213FDCA18(v15, v14);
    sub_213FDCA18(v18, v17);
    sub_213FDC6BC(v15, v14);
    sub_213FDC6BC(v18, v17);
    return 0;
  }

  if (v17 >> 60 == 15)
  {
    goto LABEL_15;
  }

  v22 = v4;
  sub_213FDCA18(v15, v14);
  sub_213FDCA18(v18, v17);
  v23 = sub_214466780(v15, v14, v18, v17);
  sub_213FDC6BC(v18, v17);
  sub_213FDC6BC(v15, v14);
  v20 = v22;
  if ((v23 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  v24 = v20[8];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 4);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 4);
  if (v26)
  {
    if (!v28)
    {
      return 0;
    }
  }

  else
  {
    if (*v25 != *v27)
    {
      LOBYTE(v28) = 1;
    }

    if (v28)
    {
      return 0;
    }
  }

  v29 = v20[9];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33)
    {
      return 0;
    }

    if (*v30 != *v32 || v31 != v33)
    {
      v34 = v20;
      v35 = sub_2146DA6A8();
      v20 = v34;
      if ((v35 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v33)
  {
    return 0;
  }

  v36 = v20[10];
  v37 = *(a1 + v36);
  v38 = *(a2 + v36);
  if (v37 == 2)
  {
    if (v38 != 2)
    {
      return 0;
    }
  }

  else if (v38 == 2 || ((v37 ^ v38) & 1) != 0)
  {
    return 0;
  }

  v39 = v20[11];
  v40 = (a1 + v39);
  v41 = *(a1 + v39 + 8);
  v42 = (a2 + v39);
  v43 = *(a2 + v39 + 8);
  if (v41)
  {
    if (v43)
    {
      goto LABEL_42;
    }

    return 0;
  }

  if (*v40 != *v42)
  {
    LOBYTE(v43) = 1;
  }

  if (v43)
  {
    return 0;
  }

LABEL_42:
  sub_2146D8DF8();
  sub_214404814(&qword_27C903D38, MEMORY[0x277D216C8]);
  return sub_2146D9578() & 1;
}

uint64_t sub_214405F54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ETP_Doodle(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = *(v4 + 24);
  v12 = *(a1 + v10);
  v11 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v15 = *v13;
  v14 = v13[1];
  if (v11 >> 60 == 15)
  {
    if (v14 >> 60 != 15)
    {
      goto LABEL_21;
    }

    v16 = v4;
    sub_213FDCA18(v12, v11);
    sub_213FDCA18(v15, v14);
    sub_213FDC6BC(v12, v11);
    v17 = v16;
  }

  else
  {
    if (v14 >> 60 == 15)
    {
      goto LABEL_21;
    }

    v18 = v4;
    sub_213FDCA18(v12, v11);
    sub_213FDCA18(v15, v14);
    v19 = sub_214466780(v12, v11, v15, v14);
    sub_213FDC6BC(v15, v14);
    sub_213FDC6BC(v12, v11);
    v17 = v18;
    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v20 = *(v17 + 28);
  v12 = *(a1 + v20);
  v11 = *(a1 + v20 + 8);
  v21 = (a2 + v20);
  v15 = *v21;
  v14 = v21[1];
  if (v11 >> 60 == 15)
  {
    if (v14 >> 60 == 15)
    {
      v22 = v17;
      sub_213FDCA18(v12, v11);
      sub_213FDCA18(v15, v14);
      sub_213FDC6BC(v12, v11);
      v23 = v22;
      goto LABEL_17;
    }

LABEL_21:
    sub_213FDCA18(v12, v11);
    sub_213FDCA18(v15, v14);
    sub_213FDC6BC(v12, v11);
    sub_213FDC6BC(v15, v14);
    return 0;
  }

  if (v14 >> 60 == 15)
  {
    goto LABEL_21;
  }

  v23 = v17;
  sub_213FDCA18(v12, v11);
  sub_213FDCA18(v15, v14);
  v24 = sub_214466780(v12, v11, v15, v14);
  sub_213FDC6BC(v15, v14);
  sub_213FDC6BC(v12, v11);
  if ((v24 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v25 = *(v23 + 32);
  v12 = *(a1 + v25);
  v11 = *(a1 + v25 + 8);
  v26 = (a2 + v25);
  v15 = *v26;
  v14 = v26[1];
  if (v11 >> 60 != 15)
  {
    if (v14 >> 60 == 15)
    {
      goto LABEL_21;
    }

    sub_213FDCA18(v12, v11);
    sub_213FDCA18(v15, v14);
    v28 = sub_214466780(v12, v11, v15, v14);
    sub_213FDC6BC(v15, v14);
    sub_213FDC6BC(v12, v11);
    if (v28)
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (v14 >> 60 != 15)
  {
    goto LABEL_21;
  }

  sub_213FDCA18(v12, v11);
  sub_213FDCA18(v15, v14);
  sub_213FDC6BC(v12, v11);
LABEL_24:
  sub_2146D8DF8();
  sub_214404814(&qword_27C903D38, MEMORY[0x277D216C8]);
  return sub_2146D9578() & 1;
}

unint64_t sub_214406280()
{
  result = qword_27C912D50;
  if (!qword_27C912D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912D50);
  }

  return result;
}

void sub_2144062FC()
{
  sub_2146D8DF8();
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_27C912D78);
    if (v1 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_27C912D80);
      if (v2 <= 0x3F)
      {
        sub_21403BEC8(319, &qword_280B2FDD0);
        if (v3 <= 0x3F)
        {
          sub_21403BEC8(319, &qword_280B2E328);
          if (v4 <= 0x3F)
          {
            sub_21403BEC8(319, &qword_280B34BE0);
            if (v5 <= 0x3F)
            {
              sub_21403BEC8(319, &qword_280B34BD8);
              if (v6 <= 0x3F)
              {
                sub_21403BEC8(319, &qword_280B34BD0);
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

void sub_2144064E0()
{
  sub_2146D8DF8();
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_27C912DA8);
    if (v1 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B2E328);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2144065D4()
{
  sub_2146D8DF8();
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2E328);
    if (v1 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B2FDD0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_22Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_2146D8DF8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_23Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_2146D8DF8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21440679C()
{
  result = sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_214406830()
{
  sub_2146D8DF8();
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2FDD0);
    if (v1 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_27C912DE0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_214406924()
{
  sub_2146D8DF8();
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2FDD0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2144069E8()
{
  sub_2146D8DF8();
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_27C912DA8);
    if (v1 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B2FDD0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_214406AB0()
{
  result = qword_27C912E08;
  if (!qword_27C912E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912E08);
  }

  return result;
}

unint64_t sub_214406B08()
{
  result = qword_27C912E10;
  if (!qword_27C912E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912E10);
  }

  return result;
}

unint64_t sub_214406B60()
{
  result = qword_27C912E18;
  if (!qword_27C912E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912E18);
  }

  return result;
}

unint64_t sub_214406BB8()
{
  result = qword_27C912E20;
  if (!qword_27C912E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912E20);
  }

  return result;
}

unint64_t sub_214406C10()
{
  result = qword_27C912E28;
  if (!qword_27C912E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912E28);
  }

  return result;
}

unint64_t sub_214406C68()
{
  result = qword_27C912E30;
  if (!qword_27C912E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912E30);
  }

  return result;
}

uint64_t sub_214406CBC(uint64_t a1)
{
  if ((a1 - 1) >= 8)
  {
    return 8;
  }

  else
  {
    return a1 - 1;
  }
}

unint64_t sub_214406CE8@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  DoesNotContainCharacterSetValidator = type metadata accessor for DoesNotContainCharacterSetValidator(0);
  v32 = *(DoesNotContainCharacterSetValidator - 8);
  v31 = *(v32 + 64);
  MEMORY[0x28223BE20](DoesNotContainCharacterSetValidator - 8);
  v29 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ContainsCharacterSetValidator(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2146D86D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_2146ED4B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = 100;
  *(v13 + 16) = sub_214409FBC;
  *(v13 + 24) = v14;
  *(v12 + 32) = v13;
  sub_2146D8668();
  v15 = *(v8 + 32);
  v15(v6, v11, v7);
  v16 = swift_allocObject();
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_214409474(v6, v18 + v17, type metadata accessor for ContainsCharacterSetValidator);
  *(v16 + 16) = sub_214409FC4;
  *(v16 + 24) = v18;
  *(v12 + 40) = v16;
  sub_2146D8658();
  v19 = v29;
  v15(v29, v11, v7);
  v20 = swift_allocObject();
  v21 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v22 = swift_allocObject();
  sub_214409474(v19, v22 + v21, type metadata accessor for DoesNotContainCharacterSetValidator);
  *(v20 + 16) = sub_214409FC8;
  *(v20 + 24) = v22;
  *(v12 + 48) = v20;
  v23 = sub_2142E0070(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v24 = swift_allocObject();
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v24 + 16) = sub_214032610;
  *(v24 + 24) = v25;
  v26 = inited;
  *(inited + 32) = v24;
  return sub_214042A28(v26, v33);
}

unint64_t sub_2144070DC@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  DoesNotContainCharacterSetValidator = type metadata accessor for DoesNotContainCharacterSetValidator(0);
  v32 = *(DoesNotContainCharacterSetValidator - 8);
  v31 = *(v32 + 64);
  MEMORY[0x28223BE20](DoesNotContainCharacterSetValidator - 8);
  v29 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ContainsCharacterSetValidator(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2146D86D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_2146ED4B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = 3;
  *(v13 + 16) = sub_214409FBC;
  *(v13 + 24) = v14;
  *(v12 + 32) = v13;
  sub_2146D8668();
  v15 = *(v8 + 32);
  v15(v6, v11, v7);
  v16 = swift_allocObject();
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_214409474(v6, v18 + v17, type metadata accessor for ContainsCharacterSetValidator);
  *(v16 + 16) = sub_214409FC4;
  *(v16 + 24) = v18;
  *(v12 + 40) = v16;
  sub_2146D8658();
  v19 = v29;
  v15(v29, v11, v7);
  v20 = swift_allocObject();
  v21 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v22 = swift_allocObject();
  sub_214409474(v19, v22 + v21, type metadata accessor for DoesNotContainCharacterSetValidator);
  *(v20 + 16) = sub_214409FC8;
  *(v20 + 24) = v22;
  *(v12 + 48) = v20;
  v23 = sub_2142E0070(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v24 = swift_allocObject();
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v24 + 16) = sub_214032610;
  *(v24 + 24) = v25;
  v26 = inited;
  *(inited + 32) = v24;
  return sub_214042A28(v26, v33);
}

uint64_t sub_2144074D0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214407528(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_i64[0];
  v8 = v1[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214407590@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2144075E8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_214407650()
{
  if (*(v0 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 16);

    return v1;
  }

  return result;
}

uint64_t sub_2144076D0()
{
  if (*(v0 + 64) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 56);

    return v1;
  }

  return result;
}

__n128 sub_214407750(uint64_t a1)
{
  sub_213FB2DF4(v1, &qword_27C904858, &qword_214736F00);
  v3 = *(a1 + 208);
  *(v1 + 192) = *(a1 + 192);
  *(v1 + 208) = v3;
  *(v1 + 224) = *(a1 + 224);
  *(v1 + 240) = *(a1 + 240);
  v4 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v4;
  v5 = *(a1 + 176);
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = v5;
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  v7 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v7;
  v8 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v10;
  return result;
}

void *sub_2144077D0(const void *a1)
{
  sub_213FB2DF4(v1, &qword_27C905500, &qword_2146F2BE0);

  return memcpy(v1, a1, 0x1B8uLL);
}

uint64_t sub_214407854(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v11 = *(v3 + 32);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 16), *(v3 + 24));

    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_214407998(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 16);
  *(v3 + 24) = v5;
  v6 = *(v1 + 24);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214074090;
  }

  return result;
}

void (*sub_214407A70(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21407449C;
}

uint64_t sub_214407B10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v11 = *(v3 + 72);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 56), *(v3 + 64));

    *(v3 + 56) = a1;
    *(v3 + 64) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_214407C54(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 56);
  *(v3 + 24) = v5;
  v6 = *(v1 + 64);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21407493C;
  }

  return result;
}

void (*sub_214407D2C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214074D48;
}

uint64_t sub_214407DCC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a2;
  v86 = a1;
  v88 = a3;
  DoesNotContainCharacterSetValidator = type metadata accessor for DoesNotContainCharacterSetValidator(0);
  v82 = *(DoesNotContainCharacterSetValidator - 8);
  v92 = *(v82 + 64);
  MEMORY[0x28223BE20](DoesNotContainCharacterSetValidator - 8);
  v91 = v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ContainsCharacterSetValidator(0);
  v77 = *(v5 - 8);
  v89 = *(v77 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2146D86D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for BusinessMessage(0);
  v67[0] = *(v84 - 8);
  v13 = *(v67[0] + 64);
  v14 = MEMORY[0x28223BE20](v84);
  v83 = v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v90 = v67 - v16;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v81 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  v17 = swift_initStackObject();
  v80 = xmmword_2146ED4B0;
  *(v17 + 16) = xmmword_2146ED4B0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v19 = swift_allocObject();
  v20 = swift_allocObject();
  *(v20 + 16) = 100;
  *(v19 + 16) = sub_214084D54;
  *(v19 + 24) = v20;
  *(v17 + 32) = v19;
  sub_2146D8668();
  v68 = *(v9 + 32);
  v71 = v7;
  v70 = v8;
  v68(v7, v12, v8);
  v21 = swift_allocObject();
  v77 = *(v77 + 80);
  v22 = (v77 + 16) & ~v77;
  v75 = v22;
  v23 = swift_allocObject();
  v76 = type metadata accessor for ContainsCharacterSetValidator;
  sub_214409474(v7, v23 + v22, type metadata accessor for ContainsCharacterSetValidator);
  *(v21 + 16) = sub_2144093E8;
  *(v21 + 24) = v23;
  *(v17 + 40) = v21;
  v69 = v12;
  sub_2146D8658();
  v24 = v91;
  v25 = v68;
  v68(v91, v12, v8);
  v26 = swift_allocObject();
  v82 = *(v82 + 80);
  v27 = (v82 + 16) & ~v82;
  v73 = v27;
  v28 = swift_allocObject();
  v74 = type metadata accessor for DoesNotContainCharacterSetValidator;
  sub_214409474(v24, v28 + v27, type metadata accessor for DoesNotContainCharacterSetValidator);
  *(v26 + 16) = sub_2144094DC;
  *(v26 + 24) = v28;
  *(v17 + 48) = v26;
  v29 = sub_2142E0070(v17);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v30 = swift_allocObject();
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v30 + 16) = sub_21403254C;
  *(v30 + 24) = v31;
  v32 = inited;
  *(inited + 32) = v30;
  sub_214042A28(v32, v90);
  inited = swift_initStackObject();
  *(inited + 16) = v81;
  v33 = swift_initStackObject();
  *(v33 + 16) = v80;
  v67[1] = v18;
  v34 = swift_allocObject();
  v35 = swift_allocObject();
  *(v35 + 16) = 3;
  *(v34 + 16) = sub_214409FBC;
  *(v34 + 24) = v35;
  *(v33 + 32) = v34;
  v36 = v69;
  sub_2146D8668();
  v37 = v71;
  v38 = v70;
  v25(v71, v36, v70);
  v39 = swift_allocObject();
  v40 = v75;
  v41 = swift_allocObject();
  sub_214409474(v37, v41 + v40, v76);
  *(v39 + 16) = sub_214409FC4;
  *(v39 + 24) = v41;
  v42 = v90;
  *(v33 + 40) = v39;
  sub_2146D8658();
  v43 = v91;
  v44 = v36;
  v45 = v85;
  v25(v91, v44, v38);
  v46 = swift_allocObject();
  v47 = v73;
  v48 = swift_allocObject();
  v49 = v84;
  sub_214409474(v43, v48 + v47, v74);
  *(v46 + 16) = sub_214409FC8;
  *(v46 + 24) = v48;
  v50 = v83;
  *(v33 + 48) = v46;
  v51 = v33;
  v52 = v86;
  v53 = sub_2142E0070(v51);
  v54 = swift_allocObject();
  v55 = swift_allocObject();
  *(v55 + 16) = v53;
  *(v54 + 16) = sub_214032610;
  *(v54 + 24) = v55;
  v56 = inited;
  *(inited + 32) = v54;
  sub_214042A28(v56, v42 + 40);
  v57 = *(v49 + 24);
  v58 = type metadata accessor for BusinessMessage.RootObject(0);
  (*(*(v58 - 8) + 56))(v42 + v57, 1, 1, v58);
  v59 = sub_2146D85C8();
  v60 = *(v59 + 48);
  v61 = *(v59 + 52);
  swift_allocObject();
  sub_2146D85B8();
  sub_2146D8588();
  sub_214409634(&qword_27C912E38, type metadata accessor for BusinessMessage);
  v62 = v87;
  sub_2146D8598();
  if (v62)
  {
    v63 = v88;
    v94 = v62;
    v64 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
    if ((swift_dynamicCast() & 1) == 0 || v93 != 4)
    {
      swift_willThrow();

      sub_213FB54FC(v52, v45);
      return sub_21440967C(v42, type metadata accessor for BusinessMessage);
    }

    sub_21440967C(v42, type metadata accessor for BusinessMessage);

    sub_213FB54FC(v52, v45);
    v65 = 1;
  }

  else
  {
    sub_21440967C(v42, type metadata accessor for BusinessMessage);

    sub_213FB54FC(v52, v45);
    sub_214409474(v50, v42, type metadata accessor for BusinessMessage);
    v63 = v88;
    sub_214409474(v42, v88, type metadata accessor for BusinessMessage);
    v65 = 0;
  }

  return (*(v67[0] + 56))(v63, v65, 1, v49);
}

uint64_t sub_214408844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6163696669746F6ELL && a2 == 0xEC0000006E6F6974)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2144088D0(uint64_t a1)
{
  v2 = sub_214409528();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21440890C(uint64_t a1)
{
  v2 = sub_214409528();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214408954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2144089D4(uint64_t a1)
{
  v2 = sub_2144095E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214408A10(uint64_t a1)
{
  v2 = sub_2144095E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214408A4C(void *a1)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912E40, &qword_21473BDB0);
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v19);
  v5 = &v18 - v4;
  v6 = type metadata accessor for BusinessMessage.RootObject(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912E48, &qword_21473BDB8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214409528();
  sub_2146DAA28();
  sub_21440957C(v18, v9);
  sub_2144095E0();
  sub_2146DA288();
  type metadata accessor for BIAPayload(0);
  sub_214409634(&qword_27C912E60, type metadata accessor for BIAPayload);
  v16 = v19;
  sub_2146DA388();
  sub_21440967C(v9, type metadata accessor for BIAPayload);
  (*(v2 + 8))(v5, v16);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_214408CFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v27 = type metadata accessor for BusinessMessage.RootObject(0);
  v3 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912E68, &qword_21473BDC0);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912E70, &qword_21473BDC8);
  v30 = *(v10 - 8);
  v11 = *(v30 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214409528();
  v15 = v35;
  sub_2146DAA08();
  if (v15)
  {
    goto LABEL_10;
  }

  v35 = a1;
  v17 = v28;
  v16 = v29;
  v18 = sub_2146DA238();
  v19 = (2 * *(v18 + 16)) | 1;
  v31 = v18;
  v32 = v18 + 32;
  v33 = 0;
  v34 = v19;
  v20 = v13;
  if ((sub_21439DF74() & 1) != 0 || v33 != v34 >> 1)
  {
    v22 = sub_2146D9F58();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v24 = v27;
    sub_2146DA0E8();
    sub_2146D9F28();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
    swift_willThrow();
    (*(v30 + 8))(v20, v10);
    swift_unknownObjectRelease();
    a1 = v35;
LABEL_10:
    v21 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  sub_2144095E0();
  sub_2146DA0B8();
  type metadata accessor for BIAPayload(0);
  sub_214409634(&qword_27C912E78, type metadata accessor for BIAPayload);
  v27 = v13;
  sub_2146DA1C8();
  (*(v17 + 8))(v9, v6);
  (*(v30 + 8))(v27, v10);
  swift_unknownObjectRelease();
  sub_214409474(v5, v16, type metadata accessor for BusinessMessage.RootObject);
  v21 = v35;
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_214409170@<X0>(uint64_t a1@<X8>)
{
  result = sub_213FB2E54(v1, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a1 + 192) = v23;
    *(a1 + 208) = v4;
    *(a1 + 224) = v25;
    *(a1 + 240) = v26;
    v5 = v20;
    *(a1 + 128) = v19;
    *(a1 + 144) = v5;
    v6 = v22;
    *(a1 + 160) = v21;
    *(a1 + 176) = v6;
    v7 = v16;
    *(a1 + 64) = v15;
    *(a1 + 80) = v7;
    v8 = v18;
    *(a1 + 96) = v17;
    *(a1 + 112) = v8;
    v9 = v12;
    *a1 = v11;
    *(a1 + 16) = v9;
    v10 = v14;
    *(a1 + 32) = v13;
    *(a1 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*sub_214409208(uint64_t *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x1F8uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = v4 + 248;
  *(v4 + 496) = v2;
  result = sub_213FB2E54(v2, v4 + 248, &qword_27C904858, &qword_214736F00);
  if (*(v5 + 272))
  {
    v8 = *(v6 + 208);
    *(v5 + 192) = *(v6 + 192);
    *(v5 + 208) = v8;
    *(v5 + 224) = *(v6 + 224);
    *(v5 + 240) = *(v6 + 240);
    v9 = *(v6 + 144);
    *(v5 + 128) = *(v6 + 128);
    *(v5 + 144) = v9;
    v10 = *(v6 + 176);
    *(v5 + 160) = *(v6 + 160);
    *(v5 + 176) = v10;
    v11 = *(v6 + 80);
    *(v5 + 64) = *(v6 + 64);
    *(v5 + 80) = v11;
    v12 = *(v6 + 112);
    *(v5 + 96) = *(v6 + 96);
    *(v5 + 112) = v12;
    v13 = *(v6 + 16);
    *v5 = *v6;
    *(v5 + 16) = v13;
    v14 = *(v6 + 48);
    *(v5 + 32) = *(v6 + 32);
    *(v5 + 48) = v14;
    return sub_2140A3C24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*sub_2144092F0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x378uLL);
  }

  *a1 = v3;
  *(v3 + 880) = v1;
  sub_213FB2E54(v1, v3, &qword_27C905500, &qword_2146F2BE0);
  return sub_2140A3E5C;
}

BOOL sub_21440937C(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  sub_214069AD8();
  sub_2146D9DC8();
  return (v1 & 1) == 0;
}

uint64_t sub_214409414(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  sub_214069AD8();
  sub_2146D9DC8();
  return v1 & 1;
}

uint64_t sub_214409474(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_214409528()
{
  result = qword_27C912E50;
  if (!qword_27C912E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912E50);
  }

  return result;
}

uint64_t sub_21440957C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BusinessMessage.RootObject(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2144095E0()
{
  result = qword_27C912E58;
  if (!qword_27C912E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912E58);
  }

  return result;
}

uint64_t sub_214409634(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21440967C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2144096DC(uint64_t a1)
{
  *(a1 + 8) = sub_214409634(&qword_27C90CFE0, type metadata accessor for BusinessMessage);
  result = sub_214409634(&qword_27C90CFC0, type metadata accessor for BusinessMessage);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214409760(uint64_t a1)
{
  *(a1 + 8) = sub_214409634(&qword_27C907DB0, type metadata accessor for BusinessMessage.RootObject);
  result = sub_214409634(&qword_27C907DC8, type metadata accessor for BusinessMessage.RootObject);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2144097E4(uint64_t a1)
{
  *(a1 + 8) = sub_2142F7ED0();
  result = sub_2142F8134();
  *(a1 + 16) = result;
  return result;
}

void sub_21440983C()
{
  sub_214084AA4();
  if (v0 <= 0x3F)
  {
    sub_2144098C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2144098C0()
{
  if (!qword_280B2F678)
  {
    type metadata accessor for BusinessMessage.RootObject(255);
    v0 = sub_2146D9D38();
    if (!v1)
    {
      atomic_store(v0, &qword_280B2F678);
    }
  }
}

uint64_t sub_214409918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BIAPayload(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_213FC3580);
}

uint64_t sub_214409970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BIAPayload(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_213FC363C);
}

uint64_t sub_2144099D8(uint64_t a1)
{
  result = type metadata accessor for BIAPayload(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_214409A84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 440))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 272) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_214409AD4(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 440) = 1;
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
      *(a1 + 248) = 0;
      *(a1 + 256) = 0;
      *(a1 + 264) = 0;
      *(a1 + 272) = 2 * -a2;
      result = 0.0;
      *(a1 + 280) = 0u;
      *(a1 + 296) = 0u;
      *(a1 + 312) = 0u;
      *(a1 + 328) = 0u;
      *(a1 + 344) = 0u;
      *(a1 + 360) = 0u;
      *(a1 + 376) = 0u;
      *(a1 + 392) = 0u;
      *(a1 + 408) = 0u;
      *(a1 + 424) = 0u;
      return result;
    }

    *(a1 + 440) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_214409BEC()
{
  result = qword_27C912E80;
  if (!qword_27C912E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912E80);
  }

  return result;
}

unint64_t sub_214409C44()
{
  result = qword_27C912E88;
  if (!qword_27C912E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912E88);
  }

  return result;
}

unint64_t sub_214409C9C()
{
  result = qword_27C912E90;
  if (!qword_27C912E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912E90);
  }

  return result;
}

unint64_t sub_214409CF4()
{
  result = qword_27C912E98;
  if (!qword_27C912E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912E98);
  }

  return result;
}

unint64_t sub_214409D4C()
{
  result = qword_27C912EA0;
  if (!qword_27C912EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912EA0);
  }

  return result;
}

unint64_t sub_214409DA4()
{
  result = qword_27C912EA8;
  if (!qword_27C912EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912EA8);
  }

  return result;
}

unint64_t sub_214409DFC()
{
  result = qword_27C912EB0;
  if (!qword_27C912EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912EB0);
  }

  return result;
}

uint64_t objectdestroy_4Tm(uint64_t (*a1)(void))
{
  v2 = *(a1(0) - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_2146D86D8();
  (*(*(v6 - 8) + 8))(v1 + v4, v6);

  return MEMORY[0x2821FE8E8](v1, v4 + v5, v3 | 7);
}

uint64_t sub_214409F24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a4(a1, a2, v8);
}

unint64_t sub_214409FCC@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  DoesNotContainCharacterSetValidator = type metadata accessor for DoesNotContainCharacterSetValidator(0);
  v32 = *(DoesNotContainCharacterSetValidator - 8);
  v31 = *(v32 + 64);
  MEMORY[0x28223BE20](DoesNotContainCharacterSetValidator - 8);
  v29 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ContainsCharacterSetValidator(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2146D86D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_2146ED4B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = 1000;
  *(v13 + 16) = sub_214409FBC;
  *(v13 + 24) = v14;
  *(v12 + 32) = v13;
  sub_2146D8668();
  v15 = *(v8 + 32);
  v15(v6, v11, v7);
  v16 = swift_allocObject();
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_214415660(v6, v18 + v17, type metadata accessor for ContainsCharacterSetValidator);
  *(v16 + 16) = sub_2144158B0;
  *(v16 + 24) = v18;
  *(v12 + 40) = v16;
  sub_2146D8658();
  v19 = v29;
  v15(v29, v11, v7);
  v20 = swift_allocObject();
  v21 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v22 = swift_allocObject();
  sub_214415660(v19, v22 + v21, type metadata accessor for DoesNotContainCharacterSetValidator);
  *(v20 + 16) = sub_2144158B4;
  *(v20 + 24) = v22;
  *(v12 + 48) = v20;
  v23 = sub_2142E0070(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v24 = swift_allocObject();
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v24 + 16) = sub_214032610;
  *(v24 + 24) = v25;
  v26 = inited;
  *(inited + 32) = v24;
  return sub_214042A28(v26, v33);
}

unint64_t sub_21440A3C0@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  DoesNotContainCharacterSetValidator = type metadata accessor for DoesNotContainCharacterSetValidator(0);
  v32 = *(DoesNotContainCharacterSetValidator - 8);
  v31 = *(v32 + 64);
  MEMORY[0x28223BE20](DoesNotContainCharacterSetValidator - 8);
  v29 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ContainsCharacterSetValidator(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2146D86D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_2146ED4B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = 512;
  *(v13 + 16) = sub_214409FBC;
  *(v13 + 24) = v14;
  *(v12 + 32) = v13;
  sub_2146D8668();
  v15 = *(v8 + 32);
  v15(v6, v11, v7);
  v16 = swift_allocObject();
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_214415660(v6, v18 + v17, type metadata accessor for ContainsCharacterSetValidator);
  *(v16 + 16) = sub_2144158B0;
  *(v16 + 24) = v18;
  *(v12 + 40) = v16;
  sub_2146D8658();
  v19 = v29;
  v15(v29, v11, v7);
  v20 = swift_allocObject();
  v21 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v22 = swift_allocObject();
  sub_214415660(v19, v22 + v21, type metadata accessor for DoesNotContainCharacterSetValidator);
  *(v20 + 16) = sub_2144158B4;
  *(v20 + 24) = v22;
  *(v12 + 48) = v20;
  v23 = sub_2142E0070(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v24 = swift_allocObject();
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v24 + 16) = sub_214032610;
  *(v24 + 24) = v25;
  v26 = inited;
  *(inited + 32) = v24;
  return sub_214042A28(v26, v33);
}

unint64_t sub_21440A7B4@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  DoesNotContainCharacterSetValidator = type metadata accessor for DoesNotContainCharacterSetValidator(0);
  v32 = *(DoesNotContainCharacterSetValidator - 8);
  v31 = *(v32 + 64);
  MEMORY[0x28223BE20](DoesNotContainCharacterSetValidator - 8);
  v29 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ContainsCharacterSetValidator(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2146D86D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_2146ED4B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = 512;
  *(v13 + 16) = sub_214409FBC;
  *(v13 + 24) = v14;
  *(v12 + 32) = v13;
  sub_2146D8668();
  v15 = *(v8 + 32);
  v15(v6, v11, v7);
  v16 = swift_allocObject();
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_214415660(v6, v18 + v17, type metadata accessor for ContainsCharacterSetValidator);
  *(v16 + 16) = sub_2144158B0;
  *(v16 + 24) = v18;
  *(v12 + 40) = v16;
  sub_2146D8658();
  v19 = v29;
  v15(v29, v11, v7);
  v20 = swift_allocObject();
  v21 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v22 = swift_allocObject();
  sub_214415660(v19, v22 + v21, type metadata accessor for DoesNotContainCharacterSetValidator);
  *(v20 + 16) = sub_2144158B4;
  *(v20 + 24) = v22;
  *(v12 + 48) = v20;
  v23 = sub_2142E0070(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v24 = swift_allocObject();
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v24 + 16) = sub_214032610;
  *(v24 + 24) = v25;
  v26 = inited;
  *(inited + 32) = v24;
  return sub_214042A28(v26, v33);
}

unint64_t sub_21440ABA8@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  DoesNotContainCharacterSetValidator = type metadata accessor for DoesNotContainCharacterSetValidator(0);
  v32 = *(DoesNotContainCharacterSetValidator - 8);
  v31 = *(v32 + 64);
  MEMORY[0x28223BE20](DoesNotContainCharacterSetValidator - 8);
  v29 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ContainsCharacterSetValidator(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2146D86D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_2146ED4B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = 100;
  *(v13 + 16) = sub_214409FBC;
  *(v13 + 24) = v14;
  *(v12 + 32) = v13;
  sub_2146D8668();
  v15 = *(v8 + 32);
  v15(v6, v11, v7);
  v16 = swift_allocObject();
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_214415660(v6, v18 + v17, type metadata accessor for ContainsCharacterSetValidator);
  *(v16 + 16) = sub_2144158B0;
  *(v16 + 24) = v18;
  *(v12 + 40) = v16;
  sub_2146D8658();
  v19 = v29;
  v15(v29, v11, v7);
  v20 = swift_allocObject();
  v21 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v22 = swift_allocObject();
  sub_214415660(v19, v22 + v21, type metadata accessor for DoesNotContainCharacterSetValidator);
  *(v20 + 16) = sub_2144158B4;
  *(v20 + 24) = v22;
  *(v12 + 48) = v20;
  v23 = sub_2142E0070(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v24 = swift_allocObject();
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v24 + 16) = sub_21403254C;
  *(v24 + 24) = v25;
  v26 = inited;
  *(inited + 32) = v24;
  return sub_214042A28(v26, v33);
}

uint64_t BIAPayload.$referenceId.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 BIAPayload.$referenceId.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_i64[0];
  v8 = v1[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t BIAPayload.$title.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 928);
  v3 = *(v1 + 936);
  v4 = *(v1 + 944);
  v5 = *(v1 + 952);
  *a1 = *(v1 + 920);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 BIAPayload.$title.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 928);
  v7 = *(v1 + 936);
  v8 = *(v1 + 944);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 920) = *a1;
  *(v1 + 936) = v3;
  *(v1 + 944) = v4;
  *(v1 + 952) = v5;
  return result;
}

uint64_t BIAPayload.$subtitle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 968);
  v3 = *(v1 + 976);
  v4 = *(v1 + 984);
  v5 = *(v1 + 992);
  *a1 = *(v1 + 960);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 BIAPayload.$subtitle.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[60].n128_u64[1];
  v7 = v1[61].n128_i64[0];
  v8 = v1[61].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  v1[60] = *a1;
  v1[61].n128_u64[0] = v3;
  v1[61].n128_u64[1] = v4;
  v1[62].n128_u8[0] = v5;
  return result;
}

uint64_t BIAPayload.$id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BIAPayload(0) + 40));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

__n128 BIAPayload.$id.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for BIAPayload(0) + 40));
  v7 = v6->n128_u64[1];
  v8 = v6[1].n128_i64[0];
  v9 = v6[1].n128_i64[1];

  sub_213FDC6D0(v8, v9);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t BIAPayload.referenceId.getter()
{
  if (*(v0 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 16);

    return v1;
  }

  return result;
}

uint64_t BIAPayload.title.getter()
{
  if (*(v0 + 944) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 936);

    return v1;
  }

  return result;
}

uint64_t BIAPayload.subtitle.getter()
{
  if (*(v0 + 984) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 976);

    return v1;
  }

  return result;
}

uint64_t BIAPayload.id.getter()
{
  v1 = v0 + *(type metadata accessor for BIAPayload(0) + 40);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);

    return v2;
  }

  return result;
}

uint64_t sub_21440B570@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v1 + *(v7 + 28), v6, &unk_27C9131A0, &unk_2146E9D10);
  v8 = sub_2146D8958();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_213FB2DF4(v6, &unk_27C9131A0, &unk_2146E9D10);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_21440B6F8@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  DoesNotContainCharacterSetValidator = type metadata accessor for DoesNotContainCharacterSetValidator(0);
  v27 = *(DoesNotContainCharacterSetValidator - 8);
  v26 = *(v27 + 64);
  MEMORY[0x28223BE20](DoesNotContainCharacterSetValidator - 8);
  v25 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ContainsCharacterSetValidator(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2146D86D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146ED4B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = 100;
  *(v13 + 16) = sub_214409FBC;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  sub_2146D8668();
  v15 = *(v8 + 32);
  v15(v6, v11, v7);
  v16 = swift_allocObject();
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_214415660(v6, v18 + v17, type metadata accessor for ContainsCharacterSetValidator);
  *(v16 + 16) = sub_2144158B0;
  *(v16 + 24) = v18;
  *(inited + 40) = v16;
  sub_2146D8658();
  v19 = v25;
  v15(v25, v11, v7);
  v20 = swift_allocObject();
  v21 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v22 = swift_allocObject();
  sub_214415660(v19, v22 + v21, type metadata accessor for DoesNotContainCharacterSetValidator);
  *(v20 + 16) = sub_2144158B4;
  *(v20 + 24) = v22;
  *(inited + 48) = v20;
  return sub_214042B80(inited, v28);
}

unint64_t sub_21440BA6C@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  DoesNotContainCharacterSetValidator = type metadata accessor for DoesNotContainCharacterSetValidator(0);
  v27 = *(DoesNotContainCharacterSetValidator - 8);
  v26 = *(v27 + 64);
  MEMORY[0x28223BE20](DoesNotContainCharacterSetValidator - 8);
  v25 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ContainsCharacterSetValidator(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2146D86D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146ED4B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = 512;
  *(v13 + 16) = sub_214409FBC;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  sub_2146D8668();
  v15 = *(v8 + 32);
  v15(v6, v11, v7);
  v16 = swift_allocObject();
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_214415660(v6, v18 + v17, type metadata accessor for ContainsCharacterSetValidator);
  *(v16 + 16) = sub_2144158B0;
  *(v16 + 24) = v18;
  *(inited + 40) = v16;
  sub_2146D8658();
  v19 = v25;
  v15(v25, v11, v7);
  v20 = swift_allocObject();
  v21 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v22 = swift_allocObject();
  sub_214415660(v19, v22 + v21, type metadata accessor for DoesNotContainCharacterSetValidator);
  *(v20 + 16) = sub_2144158B4;
  *(v20 + 24) = v22;
  *(inited + 48) = v20;
  return sub_214042B80(inited, v28);
}

unint64_t sub_21440BDE0@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  DoesNotContainCharacterSetValidator = type metadata accessor for DoesNotContainCharacterSetValidator(0);
  v27 = *(DoesNotContainCharacterSetValidator - 8);
  v26 = *(v27 + 64);
  MEMORY[0x28223BE20](DoesNotContainCharacterSetValidator - 8);
  v25 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ContainsCharacterSetValidator(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2146D86D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146ED4B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = 512;
  *(v13 + 16) = sub_214409FBC;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  sub_2146D8668();
  v15 = *(v8 + 32);
  v15(v6, v11, v7);
  v16 = swift_allocObject();
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_214415660(v6, v18 + v17, type metadata accessor for ContainsCharacterSetValidator);
  *(v16 + 16) = sub_2144158B0;
  *(v16 + 24) = v18;
  *(inited + 40) = v16;
  sub_2146D8658();
  v19 = v25;
  v15(v25, v11, v7);
  v20 = swift_allocObject();
  v21 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v22 = swift_allocObject();
  sub_214415660(v19, v22 + v21, type metadata accessor for DoesNotContainCharacterSetValidator);
  *(v20 + 16) = sub_2144158B4;
  *(v20 + 24) = v22;
  *(inited + 48) = v20;
  return sub_214042B80(inited, v28);
}

uint64_t sub_21440C154@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_21440C1A0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21440C1FC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v4 = *(v1 + 56);
  v3 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_21440C248(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 48);
  v7 = *(v1 + 64);

  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_21440C2A4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v4 = *(v1 + 96);
  v3 = *(v1 + 104);
  v5 = *(v1 + 112);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_21440C2F0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[5].n128_u64[1];
  v7 = v1[6].n128_u64[1];

  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u64[1] = v4;
  v1[7].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21440C34C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21440C3C8()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 56);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21440C444()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 96);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

unint64_t sub_21440C4C0@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  DoesNotContainCharacterSetValidator = type metadata accessor for DoesNotContainCharacterSetValidator(0);
  v27 = *(DoesNotContainCharacterSetValidator - 8);
  v26 = *(v27 + 64);
  MEMORY[0x28223BE20](DoesNotContainCharacterSetValidator - 8);
  v25 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ContainsCharacterSetValidator(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2146D86D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146ED4B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = 512;
  *(v13 + 16) = sub_214409FBC;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  sub_2146D8668();
  v15 = *(v8 + 32);
  v15(v6, v11, v7);
  v16 = swift_allocObject();
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_214415660(v6, v18 + v17, type metadata accessor for ContainsCharacterSetValidator);
  *(v16 + 16) = sub_2144158B0;
  *(v16 + 24) = v18;
  *(inited + 40) = v16;
  sub_2146D8658();
  v19 = v25;
  v15(v25, v11, v7);
  v20 = swift_allocObject();
  v21 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v22 = swift_allocObject();
  sub_214415660(v19, v22 + v21, type metadata accessor for DoesNotContainCharacterSetValidator);
  *(v20 + 16) = sub_2144158B4;
  *(v20 + 24) = v22;
  *(inited + 48) = v20;
  return sub_214042B80(inited, v28);
}

unint64_t sub_21440C834@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  DoesNotContainCharacterSetValidator = type metadata accessor for DoesNotContainCharacterSetValidator(0);
  v27 = *(DoesNotContainCharacterSetValidator - 8);
  v26 = *(v27 + 64);
  MEMORY[0x28223BE20](DoesNotContainCharacterSetValidator - 8);
  v25 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ContainsCharacterSetValidator(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2146D86D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146ED4B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = 512;
  *(v13 + 16) = sub_214409FBC;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  sub_2146D8668();
  v15 = *(v8 + 32);
  v15(v6, v11, v7);
  v16 = swift_allocObject();
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_214415660(v6, v18 + v17, type metadata accessor for ContainsCharacterSetValidator);
  *(v16 + 16) = sub_2144158B0;
  *(v16 + 24) = v18;
  *(inited + 40) = v16;
  sub_2146D8658();
  v19 = v25;
  v15(v25, v11, v7);
  v20 = swift_allocObject();
  v21 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v22 = swift_allocObject();
  sub_214415660(v19, v22 + v21, type metadata accessor for DoesNotContainCharacterSetValidator);
  *(v20 + 16) = sub_2144158B4;
  *(v20 + 24) = v22;
  *(inited + 48) = v20;
  return sub_214042B80(inited, v28);
}

uint64_t sub_21440CBA8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_21440CBF4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 16);
  v7 = *(v1 + 32);

  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

uint64_t sub_21440CC50@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v4 = *(v1 + 64);
  v3 = *(v1 + 72);
  v5 = *(v1 + 80);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_21440CC9C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[3].n128_u64[1];
  v7 = v1[4].n128_u64[1];

  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v3;
  v1[4].n128_u64[1] = v4;
  v1[5].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21440CCF8()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21440CD74()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 64);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

unint64_t sub_21440CDF0@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  DoesNotContainCharacterSetValidator = type metadata accessor for DoesNotContainCharacterSetValidator(0);
  v27 = *(DoesNotContainCharacterSetValidator - 8);
  v26 = *(v27 + 64);
  MEMORY[0x28223BE20](DoesNotContainCharacterSetValidator - 8);
  v25 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ContainsCharacterSetValidator(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2146D86D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146ED4B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = 100;
  *(v13 + 16) = sub_214409FBC;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  sub_2146D8668();
  v15 = *(v8 + 32);
  v15(v6, v11, v7);
  v16 = swift_allocObject();
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_214415660(v6, v18 + v17, type metadata accessor for ContainsCharacterSetValidator);
  *(v16 + 16) = sub_2144158B0;
  *(v16 + 24) = v18;
  *(inited + 40) = v16;
  sub_2146D8658();
  v19 = v25;
  v15(v25, v11, v7);
  v20 = swift_allocObject();
  v21 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v22 = swift_allocObject();
  sub_214415660(v19, v22 + v21, type metadata accessor for DoesNotContainCharacterSetValidator);
  *(v20 + 16) = sub_2144158B4;
  *(v20 + 24) = v22;
  *(inited + 48) = v20;
  return sub_214042B80(inited, v28);
}

unint64_t sub_21440D164@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  DoesNotContainCharacterSetValidator = type metadata accessor for DoesNotContainCharacterSetValidator(0);
  v27 = *(DoesNotContainCharacterSetValidator - 8);
  v26 = *(v27 + 64);
  MEMORY[0x28223BE20](DoesNotContainCharacterSetValidator - 8);
  v25 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ContainsCharacterSetValidator(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2146D86D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146ED4B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = 50;
  *(v13 + 16) = sub_214409FBC;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  sub_2146D8668();
  v15 = *(v8 + 32);
  v15(v6, v11, v7);
  v16 = swift_allocObject();
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_214415660(v6, v18 + v17, type metadata accessor for ContainsCharacterSetValidator);
  *(v16 + 16) = sub_2144158B0;
  *(v16 + 24) = v18;
  *(inited + 40) = v16;
  sub_2146D8658();
  v19 = v25;
  v15(v25, v11, v7);
  v20 = swift_allocObject();
  v21 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v22 = swift_allocObject();
  sub_214415660(v19, v22 + v21, type metadata accessor for DoesNotContainCharacterSetValidator);
  *(v20 + 16) = sub_2144158B4;
  *(v20 + 24) = v22;
  *(inited + 48) = v20;
  return sub_214042B80(inited, v28);
}

uint64_t sub_21440D4E0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v4 = *(v1 + 56);
  v3 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_21440D52C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 48);
  v7 = *(v1 + 64);

  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_21440D58C()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 56);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

unint64_t sub_21440D608@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  DoesNotContainCharacterSetValidator = type metadata accessor for DoesNotContainCharacterSetValidator(0);
  v27 = *(DoesNotContainCharacterSetValidator - 8);
  v26 = *(v27 + 64);
  MEMORY[0x28223BE20](DoesNotContainCharacterSetValidator - 8);
  v25 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ContainsCharacterSetValidator(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2146D86D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146ED4B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = 100;
  *(v13 + 16) = sub_214409FBC;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  sub_2146D8668();
  v15 = *(v8 + 32);
  v15(v6, v11, v7);
  v16 = swift_allocObject();
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_214415660(v6, v18 + v17, type metadata accessor for ContainsCharacterSetValidator);
  *(v16 + 16) = sub_2144158B0;
  *(v16 + 24) = v18;
  *(inited + 40) = v16;
  sub_2146D8658();
  v19 = v25;
  v15(v25, v11, v7);
  v20 = swift_allocObject();
  v21 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v22 = swift_allocObject();
  sub_214415660(v19, v22 + v21, type metadata accessor for DoesNotContainCharacterSetValidator);
  *(v20 + 16) = sub_2144158B4;
  *(v20 + 24) = v22;
  *(inited + 48) = v20;
  return sub_214042B80(inited, v28);
}

unint64_t sub_21440D97C@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  DoesNotContainCharacterSetValidator = type metadata accessor for DoesNotContainCharacterSetValidator(0);
  v27 = *(DoesNotContainCharacterSetValidator - 8);
  v26 = *(v27 + 64);
  MEMORY[0x28223BE20](DoesNotContainCharacterSetValidator - 8);
  v25 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ContainsCharacterSetValidator(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2146D86D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146ED4B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = 100;
  *(v13 + 16) = sub_214084D54;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  sub_2146D8668();
  v15 = *(v8 + 32);
  v15(v6, v11, v7);
  v16 = swift_allocObject();
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_214415660(v6, v18 + v17, type metadata accessor for ContainsCharacterSetValidator);
  *(v16 + 16) = sub_2144156C8;
  *(v16 + 24) = v18;
  *(inited + 40) = v16;
  sub_2146D8658();
  v19 = v25;
  v15(v25, v11, v7);
  v20 = swift_allocObject();
  v21 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v22 = swift_allocObject();
  sub_214415660(v19, v22 + v21, type metadata accessor for DoesNotContainCharacterSetValidator);
  *(v20 + 16) = sub_2144156F4;
  *(v20 + 24) = v22;
  *(inited + 48) = v20;
  return sub_214042B80(inited, v28);
}

uint64_t sub_21440DCF0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_21440DD3C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21440DD98()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}