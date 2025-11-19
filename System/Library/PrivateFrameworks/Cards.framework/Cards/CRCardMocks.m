@interface CRCardMocks
+ (id)basicMovieCard;
+ (id)formattedTextWithImage:(id)a3;
+ (id)formattedTextWithString:(id)a3;
+ (id)formattedTextsForStringsAndImages:(id)a3;
+ (id)mockAsyncCardWithCard:(id)a3;
+ (id)mockCards;
+ (id)mockCardsDeserialized;
+ (id)movieCard;
+ (id)responseCard;
+ (id)rosterCard;
+ (id)tableAlignmentSchemaFromTextAlignments:(id)a3 columnsAreEqualWidth:(id)a4;
+ (id)translationCard;
@end

@implementation CRCardMocks

+ (id)mockCardsDeserialized
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [a1 mockCards];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) data];
        v10 = [CRPBSerialization cardForData:v9 messageName:@"searchfoundation.Card"];

        if (v10)
        {
          [v3 addObject:v10];
          v11 = [a1 mockAsyncCardWithCard:v10];
          [v3 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)mockCards
{
  v9[3] = *MEMORY[0x277D85DE8];
  v3 = +[CRCardMocks movieCard];
  v4 = +[CRCardMocks translationCard];
  v9[1] = v4;
  v5 = [a1 rosterCard];
  v9[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)translationCard
{
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  [v5 setMaxLines:0];
  v6 = objc_opt_new();
  [v5 setText:v6];

  v7 = [v5 text];
  [v7 setText:@"Hello"];

  v8 = objc_opt_new();
  [v8 setMaxLines:0];
  v9 = objc_opt_new();
  [v8 setText:v9];

  v10 = [v8 text];
  [v10 setText:@"你好"];

  v11 = objc_opt_new();
  [v11 setMaxLines:0];
  v12 = objc_opt_new();
  [v11 setText:v12];

  v13 = [v11 text];
  [v13 setText:@"Nǐ hǎo"];

  [v4 setDetailText:v5];
  [v4 setTitle:v8];
  [v4 setSubtitle:v11];
  [v2 setType:18];
  [v3 setAudioPlaybackCardSection:v4];
  [v2 setValue:v3];
  v14 = objc_opt_new();
  [v14 setTitle:@"Translation"];
  v15 = objc_alloc(MEMORY[0x277CBEB18]);
  v20[0] = v2;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v17 = [v15 initWithArray:v16];
  [v14 setCardSections:v17];

  v18 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)movieCard
{
  v144[11] = *MEMORY[0x277D85DE8];
  v137 = objc_opt_new();
  [v137 setTitle:@"Marvel’s the Avengers"];
  [v137 setSubtitle:@"Marvel Studios (2012)"];
  [v137 setContentAdvisory:@"PG-13"];
  v136 = objc_alloc_init(MEMORY[0x277D4C760]);
  v2 = [MEMORY[0x277D755B8] imageNamed:@"tomato"];
  v3 = UIImagePNGRepresentation(v2);
  [v136 setImageData:v3];

  v4 = objc_opt_new();
  [v4 setTitle:@"Runtime"];
  v5 = objc_alloc_init(MEMORY[0x277D4C7D8]);
  [v4 setContent:v5];

  v130 = v4;
  v6 = [v4 content];
  [v6 setText:@"2h 23m"];

  v7 = objc_opt_new();
  [v7 setTitle:@"Director"];
  v8 = objc_alloc_init(MEMORY[0x277D4C7D8]);
  [v7 setContent:v8];

  v129 = v7;
  v9 = [v7 content];
  [v9 setText:@"Joss Whedon"];

  v10 = objc_opt_new();
  [v10 setTitle:@"Starring"];
  v11 = objc_alloc_init(MEMORY[0x277D4C7D8]);
  [v10 setContent:v11];

  v128 = v10;
  v12 = [v10 content];
  [v12 setText:@"Robert Downey Jr.\nChris Evans\nMark Ruffalo\nChris Hemsworth\nScarlett Johansson"];

  v13 = objc_opt_new();
  [v13 setLabel:@"ShowTime"];
  v14 = MEMORY[0x277D4C790];
  v15 = [MEMORY[0x277CBEBC0] URLWithString:@"http://www.showtime.com"];
  v16 = [v14 punchoutWithURL:v15];
  v127 = v13;
  [v13 setPunchout:v16];

  v17 = objc_opt_new();
  v18 = objc_opt_new();
  [v17 setActionItem:v18];

  v19 = [v17 actionItem];
  [v19 setLabel:@"$3.99"];

  [v17 setSublabel:@"Rent on iTunes"];
  v20 = MEMORY[0x277D4C790];
  v21 = [MEMORY[0x277CBEBC0] URLWithString:@"http://www.apple.com/itunes"];
  v22 = [v20 punchoutWithURL:v21];
  v23 = [v17 actionItem];
  [v23 setPunchout:v22];

  v24 = [v17 actionItem];
  [v24 setApplicationBundleIdentifier:@"533654020"];

  v126 = v17;
  [v17 setOfferIdentifier:@"HDVOD"];
  v25 = objc_opt_new();
  v26 = objc_opt_new();
  [v25 setActionItem:v26];

  v27 = [v25 actionItem];
  [v27 setLabel:@"$19.99"];

  [v25 setSublabel:@"Buy with iTunes Extras"];
  v28 = MEMORY[0x277D4C790];
  v29 = [MEMORY[0x277CBEBC0] URLWithString:@"http://www.apple.com/itunes"];
  v30 = [v28 punchoutWithURL:v29];
  v31 = [v25 actionItem];
  [v31 setPunchout:v30];

  v32 = [v25 actionItem];
  [v32 setApplicationBundleIdentifier:@"533654020"];

  v125 = v25;
  [v25 setOfferIdentifier:@"HDBUY"];
  v33 = objc_opt_new();
  [v33 setTitle:@"Description"];
  v34 = [MEMORY[0x277D4C7D8] textWithString:{@"When Thor's evil brother, Loki (Tom Hiddleston), gains access to the unlimited power of the energy cube called the Tesseract, Nick Fury (Samuel L. Jackson), director of SHIELD, initiates a superhero recruitment effort to defeat the unprecedented threat to Earth."}];
  [v33 setDescriptionText:v34];

  v135 = v33;
  v35 = [v33 descriptionText];
  [v35 setMaxLines:3];

  [v33 setExpandText:@"more"];
  v138 = objc_opt_new();
  [v138 setTitle:@"Trailers"];
  v36 = objc_opt_new();
  [v36 setTitle:@"Trailer"];
  v37 = MEMORY[0x277D4C760];
  v38 = [MEMORY[0x277D755B8] imageNamed:@"trailer1"];
  v39 = UIImagePNGRepresentation(v38);
  v40 = [v37 imageWithData:v39];
  [v36 setThumbnail:v40];

  v41 = MEMORY[0x277D4C790];
  v42 = [MEMORY[0x277CBEBC0] URLWithString:@"http://movietrailers.apple.com/movies/wb/dolphintale2/dolphintale2-fte1_a720p.m4v"];
  v43 = [v41 punchoutWithURL:v42];
  [v36 setPunchout:v43];

  v44 = objc_opt_new();
  [v44 setTitle:@"Trailer 2"];
  v45 = MEMORY[0x277D4C760];
  v46 = [MEMORY[0x277D755B8] imageNamed:@"trailer2"];
  v47 = UIImagePNGRepresentation(v46);
  v48 = [v45 imageWithData:v47];
  [v44 setThumbnail:v48];

  v49 = MEMORY[0x277D4C790];
  v50 = [MEMORY[0x277CBEBC0] URLWithString:@"http://movietrailers.apple.com/movies/wb/dolphintale2/dolphintale2-tlr2_a720p.m4v"];
  v51 = [v49 punchoutWithURL:v50];
  [v44 setPunchout:v51];

  v52 = objc_opt_new();
  [v52 setTitle:@"Trailer 3"];
  v53 = objc_alloc_init(MEMORY[0x277D4C760]);
  [v52 setThumbnail:v53];

  v54 = [MEMORY[0x277D755B8] imageNamed:@"trailer3"];
  v55 = UIImagePNGRepresentation(v54);
  v56 = [v52 thumbnail];
  [v56 setImageData:v55];

  v57 = MEMORY[0x277D4C790];
  v58 = [MEMORY[0x277CBEBC0] URLWithString:@"http://movietrailers.apple.com/movies/wb/dolphintale2/dolphintale2-tlr1_a720p.m4v"];
  v59 = [v57 punchoutWithURL:v58];
  [v52 setPunchout:v59];

  v122 = v52;
  v123 = v44;
  v124 = v36;
  v60 = [MEMORY[0x277CBEB18] arrayWithObjects:{v36, v44, v52, 0}];
  [v138 setMediaItems:v60];

  v134 = objc_opt_new();
  [v134 setTitle:@"Top Critics' Reviews"];
  v133 = objc_opt_new();
  v61 = [MEMORY[0x277D4C7A0] textWithString:@"A lot of fun."];
  [v133 setLeadingText:v61];

  [v133 setImage:v136];
  v132 = objc_opt_new();
  v62 = [MEMORY[0x277D4C7A0] textWithString:{@"Downey's Stark/Iron Man steals the show because the actor is capable of making the tritest dialogue sound wonderfully witty, but the CGI effects are amazing and, despite its length, the film is very enjoyable."}];
  [v132 setLeadingText:v62];

  [v132 setImage:v136];
  v131 = objc_opt_new();
  [v131 setTitle:@"Available on:"];
  v63 = objc_opt_new();
  v64 = [MEMORY[0x277D4C7A0] textWithString:@"iTunes Store"];
  [v63 setLeadingText:v64];

  v65 = [v63 leadingText];
  v66 = [v65 text];
  [v66 setMaxLines:1];

  v67 = MEMORY[0x277D4C760];
  v68 = [MEMORY[0x277D755B8] imageNamed:@"iTunes"];
  v69 = UIImagePNGRepresentation(v68);
  v70 = [v67 imageWithData:v69];
  [v63 setImage:v70];

  v71 = objc_alloc_init(MEMORY[0x277D4C790]);
  [v71 setBundleIdentifier:@"com.apple.mobilenotes"];
  v120 = v71;
  v72 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v71, 0}];
  [v63 setPunchoutOptions:v72];

  v73 = objc_opt_new();
  v74 = [MEMORY[0x277D4C7A0] textWithString:@"Netflix"];
  [v73 setLeadingText:v74];

  v75 = [v73 leadingText];
  v76 = [v75 text];
  [v76 setMaxLines:1];

  v77 = MEMORY[0x277D4C760];
  v78 = [MEMORY[0x277D755B8] imageNamed:@"netflix"];
  v79 = UIImagePNGRepresentation(v78);
  v80 = [v77 imageWithData:v79];
  [v73 setImage:v80];

  v81 = MEMORY[0x277CBEB18];
  v82 = MEMORY[0x277D4C790];
  v83 = [MEMORY[0x277CBEBC0] URLWithString:@"http://www.netflix.com"];
  v84 = [v82 punchoutWithURL:v83];
  v85 = [v81 arrayWithObjects:{v84, 0}];
  [v73 setPunchoutOptions:v85];

  v86 = objc_opt_new();
  v87 = [MEMORY[0x277D4C7A0] textWithString:@"Hulu Plus"];
  [v86 setLeadingText:v87];

  v88 = [v86 leadingText];
  v89 = [v88 text];
  [v89 setMaxLines:1];

  v90 = MEMORY[0x277D4C760];
  v91 = [MEMORY[0x277D755B8] imageNamed:@"hulu"];
  v92 = UIImagePNGRepresentation(v91);
  v93 = [v90 imageWithData:v92];
  [v86 setImage:v93];

  v94 = MEMORY[0x277CBEB18];
  v95 = MEMORY[0x277D4C790];
  v96 = [MEMORY[0x277CBEBC0] URLWithString:@"http://www.hulu.com"];
  v97 = [v95 punchoutWithURL:v96];
  v98 = [v94 arrayWithObjects:{v97, 0}];
  [v86 setPunchoutOptions:v98];

  v99 = objc_opt_new();
  v100 = [MEMORY[0x277D4C7A0] textWithString:@"More Info on Wikipedia…"];
  [v99 setLeadingText:v100];

  v101 = MEMORY[0x277CBEB18];
  v102 = MEMORY[0x277D4C790];
  v103 = [MEMORY[0x277CBEBC0] URLWithString:@"http://en.wikipedia.org/wiki/Main_Page"];
  v104 = [v102 punchoutWithURL:v103];
  v105 = [v101 arrayWithObjects:{v104, 0}];
  [v99 setPunchoutOptions:v105];

  v119 = objc_opt_new();
  [v119 setTitle:@"Movie"];
  v144[0] = v137;
  v144[1] = v135;
  v144[2] = v138;
  v144[3] = v134;
  v144[4] = v133;
  v144[5] = v132;
  v144[6] = v131;
  v144[7] = v63;
  v121 = v63;
  v144[8] = v73;
  v144[9] = v86;
  v118 = v99;
  v144[10] = v99;
  v106 = [MEMORY[0x277CBEA60] arrayWithObjects:v144 count:11];
  v107 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v108 = v106;
  v109 = [v108 countByEnumeratingWithState:&v139 objects:v143 count:16];
  if (v109)
  {
    v110 = v109;
    v111 = *v140;
    do
    {
      for (i = 0; i != v110; ++i)
      {
        if (*v140 != v111)
        {
          objc_enumerationMutation(v108);
        }

        v113 = *(*(&v139 + 1) + 8 * i);
        v114 = objc_opt_new();
        v115 = objc_opt_new();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v114 setType:8];
          [v115 setRichTitleCardSection:v113];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v114 setType:5];
            [v115 setMediaInfoCardSection:v113];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v114 setType:2];
              [v115 setDescriptionCardSection:v113];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v114 setType:6];
                [v115 setMediaPlayerCardSection:v113];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v114 setType:16];
                  [v115 setTitleCardSection:v113];
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v114 setType:9];
                    [v115 setRowCardSection:v113];
                  }
                }
              }
            }
          }
        }

        [v114 setValue:v115];
        [v107 addObject:v114];
      }

      v110 = [v108 countByEnumeratingWithState:&v139 objects:v143 count:16];
    }

    while (v110);
  }

  [v119 setCardSections:v107];
  v116 = *MEMORY[0x277D85DE8];

  return v119;
}

+ (id)responseCard
{
  v31[3] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277D4C798]);
  v3 = objc_alloc_init(MEMORY[0x277D4C720]);
  [v3 setCatIdentifier:@"success#happyCat"];
  v24 = v3;
  [v2 setCatModel:v3];
  v4 = objc_alloc_init(MEMORY[0x277D4C798]);
  v5 = objc_alloc_init(MEMORY[0x277D4C720]);
  [v5 setCatIdentifier:@"success#happyCat"];
  v23 = v5;
  [v4 setCatModel:v5];
  v6 = objc_alloc_init(MEMORY[0x277D4C798]);
  v7 = objc_alloc_init(MEMORY[0x277D4C720]);
  [v7 setCatIdentifier:@"fail#sadCat"];
  v21 = v7;
  [v6 setCatModel:v7];
  v25 = v2;
  v31[0] = v2;
  v31[1] = v4;
  v22 = v6;
  v31[2] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:3];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        v16 = objc_opt_new();
        v17 = objc_opt_new();
        [v16 setType:53];
        [v17 setResponseWrapperCardSection:v15];
        [v16 setValue:v17];
        [v9 addObject:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }

  v18 = objc_alloc_init(MEMORY[0x277D4C728]);
  [v18 setTitle:@"Response"];
  [v18 setCardSections:v9];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)basicMovieCard
{
  v143[3] = *MEMORY[0x277D85DE8];
  v125 = objc_alloc_init(CRBasicCard);
  v134 = objc_opt_new();
  [v134 setTitle:@"Marvel’s the Avengers"];
  [v134 setSubtitle:@"Marvel Studios (2012)"];
  [v134 setContentAdvisory:@"PG-13"];
  v2 = MEMORY[0x277D4C3B0];
  v3 = [MEMORY[0x277D755B8] imageNamed:@"tomato"];
  v4 = UIImagePNGRepresentation(v3);
  v130 = [v2 imageWithData:v4];

  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = MEMORY[0x277D4C3B0];
  v8 = [MEMORY[0x277D755B8] imageNamed:@"avengers-big"];
  v9 = UIImagePNGRepresentation(v8);
  v10 = [v7 imageWithData:v9];
  [v6 setThumbnail:v10];

  v124 = v6;
  [v6 setReviewGlyph:v130];
  [v6 setReviewText:@"92%"];
  [v5 setMediaItem:v6];
  v11 = objc_opt_new();
  [v11 setTitle:@"Runtime"];
  v12 = [MEMORY[0x277D4C690] textWithString:@"2h 23m"];
  v123 = v11;
  [v11 setContent:v12];

  v13 = objc_opt_new();
  [v13 setTitle:@"Director"];
  v14 = [MEMORY[0x277D4C690] textWithString:@"Joss Whedon"];
  v122 = v13;
  [v13 setContent:v14];

  v121 = objc_opt_new();
  [v121 setTitle:@"Starring"];
  v15 = [MEMORY[0x277D4C690] textWithString:@"Robert Downey Jr.\nChris Evans\nMark Ruffalo\nChris Hemsworth\nScarlett Johansson"];
  [v121 setContent:v15];

  v143[0] = v11;
  v143[1] = v13;
  v143[2] = v121;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v143 count:3];
  [v5 setDetails:v16];

  v120 = objc_opt_new();
  [v120 setLabel:@"ShowTime"];
  v17 = MEMORY[0x277D4C550];
  v18 = [MEMORY[0x277CBEBC0] URLWithString:@"http://www.showtime.com"];
  v19 = [v17 punchoutWithURL:v18];
  [v120 setPunchout:v19];

  v133 = v5;
  [v5 setPlayAction:v120];
  v20 = objc_opt_new();
  [v20 setLabel:@"$3.99"];
  [v20 setSublabel:@"Rent on iTunes"];
  v21 = MEMORY[0x277D4C550];
  v22 = [MEMORY[0x277CBEBC0] URLWithString:@"http://www.apple.com/itunes"];
  v23 = [v21 punchoutWithURL:v22];
  [v20 setPunchout:v23];

  [v20 setApplicationBundleIdentifier:@"533654020"];
  v24 = v20;
  v119 = v20;
  [v20 setOfferIdentifier:@"HDVOD"];
  v25 = objc_opt_new();
  [v25 setLabel:@"$19.99"];
  v118 = v25;
  [v25 setSublabel:@"Buy with iTunes Extras"];
  v26 = MEMORY[0x277D4C550];
  v27 = [MEMORY[0x277CBEBC0] URLWithString:@"http://www.apple.com/itunes"];
  v28 = [v26 punchoutWithURL:v27];
  [v25 setPunchout:v28];

  [v25 setApplicationBundleIdentifier:@"533654020"];
  [v25 setOfferIdentifier:@"HDBUY"];
  v142[0] = v24;
  v142[1] = v25;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v142 count:2];
  [v5 setOffers:v29];

  v30 = objc_opt_new();
  [v30 setTitle:@"Description"];
  v31 = [MEMORY[0x277D4C690] textWithString:{@"When Thor's evil brother, Loki (Tom Hiddleston), gains access to the unlimited power of the energy cube called the Tesseract, Nick Fury (Samuel L. Jackson), director of SHIELD, initiates a superhero recruitment effort to defeat the unprecedented threat to Earth."}];
  [v30 setDescriptionText:v31];

  v132 = v30;
  v32 = [v30 descriptionText];
  [v32 setMaxLines:3];

  [v30 setExpandText:@"more"];
  v135 = objc_opt_new();
  [v135 setTitle:@"Trailers"];
  v33 = objc_opt_new();
  [v33 setTitle:@"Trailer"];
  v34 = MEMORY[0x277D4C3B0];
  v35 = [MEMORY[0x277D755B8] imageNamed:@"trailer1"];
  v36 = UIImagePNGRepresentation(v35);
  v37 = [v34 imageWithData:v36];
  [v33 setThumbnail:v37];

  v38 = MEMORY[0x277D4C550];
  v39 = [MEMORY[0x277CBEBC0] URLWithString:@"http://movietrailers.apple.com/movies/wb/dolphintale2/dolphintale2-fte1_a720p.m4v"];
  v40 = [v38 punchoutWithURL:v39];
  v117 = v33;
  [v33 setPunchout:v40];

  v41 = objc_opt_new();
  [v41 setTitle:@"Trailer 2"];
  v42 = MEMORY[0x277D4C3B0];
  v43 = [MEMORY[0x277D755B8] imageNamed:@"trailer2"];
  v44 = UIImagePNGRepresentation(v43);
  v45 = [v42 imageWithData:v44];
  [v41 setThumbnail:v45];

  v46 = MEMORY[0x277D4C550];
  v47 = [MEMORY[0x277CBEBC0] URLWithString:@"http://movietrailers.apple.com/movies/wb/dolphintale2/dolphintale2-tlr2_a720p.m4v"];
  v48 = [v46 punchoutWithURL:v47];
  v116 = v41;
  [v41 setPunchout:v48];

  v49 = objc_opt_new();
  [v49 setTitle:@"Trailer 3"];
  v50 = MEMORY[0x277D4C3B0];
  v51 = [MEMORY[0x277D755B8] imageNamed:@"trailer3"];
  v52 = UIImagePNGRepresentation(v51);
  v53 = [v50 imageWithData:v52];
  [v49 setThumbnail:v53];

  v54 = MEMORY[0x277D4C550];
  v55 = [MEMORY[0x277CBEBC0] URLWithString:@"http://movietrailers.apple.com/movies/wb/dolphintale2/dolphintale2-tlr1_a720p.m4v"];
  v56 = [v54 punchoutWithURL:v55];
  v115 = v49;
  [v49 setPunchout:v56];

  v141[0] = v33;
  v141[1] = v41;
  v141[2] = v49;
  v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v141 count:3];
  [v135 setMediaItems:v57];

  v131 = objc_opt_new();
  [v131 setTitle:@"Top Critics' Reviews"];
  v129 = objc_opt_new();
  v58 = [MEMORY[0x277D4C598] textWithString:@"A lot of fun."];
  [v129 setLeadingText:v58];

  [v129 setImage:v130];
  v128 = objc_opt_new();
  v59 = [MEMORY[0x277D4C598] textWithString:{@"Downey's Stark/Iron Man steals the show because the actor is capable of making the tritest dialogue sound wonderfully witty, but the CGI effects are amazing and, despite its length, the film is very enjoyable."}];
  [v128 setLeadingText:v59];

  [v128 setImage:v130];
  v127 = objc_opt_new();
  [v127 setTitle:@"Available on:"];
  v60 = objc_opt_new();
  v61 = [MEMORY[0x277D4C598] textWithString:@"iTunes Store"];
  [v60 setLeadingText:v61];

  v62 = [v60 leadingText];
  [v62 setMaxLines:1];

  v63 = MEMORY[0x277D4C3B0];
  v64 = [MEMORY[0x277D755B8] imageNamed:@"iTunes"];
  v65 = UIImagePNGRepresentation(v64);
  v66 = [v63 imageWithData:v65];
  v126 = v60;
  [v60 setImage:v66];

  v114 = objc_alloc_init(MEMORY[0x277D4C550]);
  [v114 setBundleIdentifier:@"com.apple.mobilesafari"];
  v140 = v114;
  v67 = [MEMORY[0x277CBEA60] arrayWithObjects:&v140 count:1];
  [v60 setPunchoutOptions:v67];

  v68 = objc_opt_new();
  v69 = [MEMORY[0x277D4C598] textWithString:@"Netflix"];
  [v68 setLeadingText:v69];

  v70 = [v68 leadingText];
  [v70 setMaxLines:1];

  v71 = MEMORY[0x277D4C3B0];
  v72 = [MEMORY[0x277D755B8] imageNamed:@"netflix"];
  v73 = UIImagePNGRepresentation(v72);
  v74 = [v71 imageWithData:v73];
  v113 = v68;
  [v68 setImage:v74];

  v75 = MEMORY[0x277D4C550];
  v76 = [MEMORY[0x277CBEBC0] URLWithString:@"http://www.netflix.com"];
  v77 = [v75 punchoutWithURL:v76];
  v139 = v77;
  v78 = [MEMORY[0x277CBEA60] arrayWithObjects:&v139 count:1];
  [v68 setPunchoutOptions:v78];

  v79 = objc_opt_new();
  v80 = [MEMORY[0x277D4C598] textWithString:@"Hulu Plus"];
  [v79 setLeadingText:v80];

  v81 = [v79 leadingText];
  [v81 setMaxLines:1];

  v82 = MEMORY[0x277D4C3B0];
  v83 = [MEMORY[0x277D755B8] imageNamed:@"hulu"];
  v84 = UIImagePNGRepresentation(v83);
  v85 = [v82 imageWithData:v84];
  [v79 setImage:v85];

  v86 = MEMORY[0x277D4C550];
  v87 = [MEMORY[0x277CBEBC0] URLWithString:@"http://www.hulu.com"];
  v88 = [v86 punchoutWithURL:v87];
  v138 = v88;
  v89 = [MEMORY[0x277CBEA60] arrayWithObjects:&v138 count:1];
  v90 = v79;
  [v79 setPunchoutOptions:v89];

  v91 = objc_opt_new();
  v92 = [MEMORY[0x277D4C598] textWithString:@"More Info on Wikipedia…"];
  [v91 setLeadingText:v92];

  v93 = MEMORY[0x277D4C550];
  v94 = [MEMORY[0x277CBEBC0] URLWithString:@"http://en.wikipedia.org/wiki/Main_Page"];
  v95 = [v93 punchoutWithURL:v94];
  v137 = v95;
  v96 = [MEMORY[0x277CBEA60] arrayWithObjects:&v137 count:1];
  v107 = v91;
  [v91 setPunchoutOptions:v96];

  v112 = [CRBasicCardSection basicCardSectionWithBackingCardSection:v134];
  v136[0] = v112;
  v111 = [CRBasicCardSection basicCardSectionWithBackingCardSection:v133];
  v136[1] = v111;
  v110 = [CRBasicCardSection basicCardSectionWithBackingCardSection:v132];
  v136[2] = v110;
  v109 = [CRBasicCardSection basicCardSectionWithBackingCardSection:v135];
  v136[3] = v109;
  v108 = [CRBasicCardSection basicCardSectionWithBackingCardSection:v131];
  v136[4] = v108;
  v97 = [CRBasicCardSection basicCardSectionWithBackingCardSection:v129];
  v136[5] = v97;
  v98 = [CRBasicCardSection basicCardSectionWithBackingCardSection:v128];
  v136[6] = v98;
  v99 = [CRBasicCardSection basicCardSectionWithBackingCardSection:v127];
  v136[7] = v99;
  v100 = [CRBasicCardSection basicCardSectionWithBackingCardSection:v126];
  v136[8] = v100;
  v101 = [CRBasicCardSection basicCardSectionWithBackingCardSection:v113];
  v136[9] = v101;
  v102 = [CRBasicCardSection basicCardSectionWithBackingCardSection:v90];
  v136[10] = v102;
  v103 = [CRBasicCardSection basicCardSectionWithBackingCardSection:v91];
  v136[11] = v103;
  v104 = [MEMORY[0x277CBEA60] arrayWithObjects:v136 count:12];
  [(CRBasicCard *)v125 setCardSections:v104];

  v105 = *MEMORY[0x277D85DE8];

  return v125;
}

+ (id)rosterCard
{
  v44[14] = *MEMORY[0x277D85DE8];
  v41 = objc_opt_new();
  v3 = objc_opt_new();
  [v41 setText:v3];

  v4 = [v41 text];
  [v4 setText:@"2014-2015 Season"];

  v38 = objc_opt_new();
  v5 = objc_opt_new();
  [v5 setTitle:@"Seahawks Roster"];
  [v5 setIsCentered:1];
  v40 = objc_opt_new();
  v6 = [MEMORY[0x277D755B8] imageNamed:@"Seahawks"];
  v7 = UIImagePNGRepresentation(v6);
  [v40 setImageData:v7];

  v39 = v5;
  [v5 setTitleImage:v40];
  v43 = objc_opt_new();
  v37 = objc_opt_new();
  [v43 setType:8];
  [v37 setRichTitleCardSection:v5];
  [v43 setValue:v37];
  v8 = objc_opt_new();
  v9 = [a1 tableAlignmentSchemaFromTextAlignments:&unk_2855FB0B8 columnsAreEqualWidth:0];
  [v8 setAlignmentSchema:v9];

  v10 = [a1 formattedTextsForStringsAndImages:&unk_2855FB0D0];
  v11 = [v10 mutableCopy];
  [v8 setDatas:v11];

  v36 = v8;
  [v8 setTableIdentifier:?];
  v42 = objc_opt_new();
  v35 = objc_opt_new();
  [v42 setType:13];
  [v35 setTableHeaderRowCardSection:v8];
  [v42 setValue:v35];
  v12 = objc_opt_new();
  v13 = [a1 formattedTextsForStringsAndImages:&unk_2855FB0E8];
  [v12 setDatas:v13];

  v34 = v12;
  [v12 setTableIdentifier:@"Roster"];
  v14 = objc_opt_new();
  v33 = objc_opt_new();
  [v14 setType:14];
  [v33 setTableRowCardSection:v12];
  [v14 setValue:v33];
  v15 = objc_opt_new();
  v16 = [a1 formattedTextsForStringsAndImages:&unk_2855FB100];
  [v15 setDatas:v16];

  v17 = v15;
  v32 = v15;
  [v15 setTableIdentifier:@"Roster"];
  v18 = objc_opt_new();
  v31 = objc_opt_new();
  [v18 setType:14];
  [v31 setTableRowCardSection:v17];
  [v18 setValue:v31];
  v19 = objc_opt_new();
  v20 = [a1 formattedTextsForStringsAndImages:&unk_2855FB118];
  [v19 setDatas:v20];

  [v19 setTableIdentifier:@"Roster"];
  v21 = objc_opt_new();
  v22 = objc_opt_new();
  [v21 setType:14];
  [v22 setTableRowCardSection:v19];
  [v21 setValue:v22];
  v23 = objc_opt_new();
  v24 = [a1 formattedTextsForStringsAndImages:&unk_2855FB130];
  [v23 setDatas:v24];

  [v23 setTableIdentifier:@"Roster"];
  v25 = objc_opt_new();
  v26 = objc_opt_new();
  [v25 setType:14];
  [v26 setTableRowCardSection:v23];
  [v25 setValue:v26];
  v44[0] = v43;
  v44[1] = v42;
  v44[2] = v14;
  v44[3] = v18;
  v44[4] = v21;
  v44[5] = v25;
  v44[6] = v14;
  v44[7] = v18;
  v44[8] = v21;
  v44[9] = v25;
  v44[10] = v14;
  v44[11] = v18;
  v44[12] = v21;
  v44[13] = v25;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:14];
  v28 = [v27 mutableCopy];
  [v38 setCardSections:v28];

  [v38 setTitle:@"Roster"];
  v29 = *MEMORY[0x277D85DE8];

  return v38;
}

+ (id)tableAlignmentSchemaFromTextAlignments:(id)a3 columnsAreEqualWidth:(id)a4
{
  v5 = a3;
  v6 = a4;
  v19 = objc_opt_new();
  v7 = objc_opt_new();
  if ([v5 count])
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = objc_opt_new();
      v11 = [v5 objectAtIndexedSubscript:v9];
      v12 = [v11 unsignedIntegerValue];

      [v10 setDataAlignment:v12];
      v13 = v12 == 0;
      v14 = v12 == 0;
      v15 = !v13;
      if ((v8 & v15) != 0)
      {
        v16 = 2;
      }

      else
      {
        v16 = 0;
      }

      [v10 setColumnAlignment:v16];
      if ([v6 count] <= v9)
      {
        [v10 setIsEqualWidth:0];
      }

      else
      {
        v17 = [v6 objectAtIndexedSubscript:v9];
        [v10 setIsEqualWidth:{objc_msgSend(v17, "BOOLValue")}];
      }

      v8 |= v14;
      [v7 addObject:v10];

      ++v9;
    }

    while (v9 < [v5 count]);
  }

  [v19 setTableColumnAlignments:v7];

  return v19;
}

+ (id)mockAsyncCardWithCard:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(CRMockAsyncCard);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v3 cardSections];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = objc_alloc_init(CRBasicCardSection);
        [(CRBasicCardSection *)v12 setBackingCardSection:v11];
        [v5 addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [(CRBasicCard *)v4 setCardSections:v5];
  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)formattedTextsForStringsAndImages:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [objc_opt_class() formattedTextWithString:{v10, v15}];
          [v4 addObject:v11];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [objc_opt_class() formattedTextWithImage:v10];
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)formattedTextWithString:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277D4C7D8] textWithString:v3];

  [v4 setText:v5];

  return v4;
}

+ (id)formattedTextWithImage:(id)a3
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277D755B8] imageNamed:@"Seahawks"];
  v6 = UIImagePNGRepresentation(v5);
  [v4 setImageData:v6];

  [v3 setGlyph:v4];

  return v3;
}

@end