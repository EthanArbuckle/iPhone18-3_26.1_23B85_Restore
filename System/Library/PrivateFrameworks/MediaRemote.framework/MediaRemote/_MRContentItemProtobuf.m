@interface _MRContentItemProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAnimatedArtworkPreviewFrames:(id)a3;
- (void)addAnimatedArtworks:(id)a3;
- (void)addAvailableAnimatedArtworkFormats:(id)a3;
- (void)addAvailableArtworkFormats:(id)a3;
- (void)addAvailableLanguageOptions:(id)a3;
- (void)addAvailableRemoteArtworkFormats:(id)a3;
- (void)addCurrentLanguageOptions:(id)a3;
- (void)addDataArtworks:(id)a3;
- (void)addRemoteArtworks:(id)a3;
- (void)addSections:(id)a3;
- (void)addTranscriptAlignments:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasArtworkDataWidth:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRContentItemProtobuf

- (void)addAvailableLanguageOptions:(id)a3
{
  v4 = a3;
  availableLanguageOptions = self->_availableLanguageOptions;
  v8 = v4;
  if (!availableLanguageOptions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_availableLanguageOptions;
    self->_availableLanguageOptions = v6;

    v4 = v8;
    availableLanguageOptions = self->_availableLanguageOptions;
  }

  [(NSMutableArray *)availableLanguageOptions addObject:v4];
}

- (void)addCurrentLanguageOptions:(id)a3
{
  v4 = a3;
  currentLanguageOptions = self->_currentLanguageOptions;
  v8 = v4;
  if (!currentLanguageOptions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_currentLanguageOptions;
    self->_currentLanguageOptions = v6;

    v4 = v8;
    currentLanguageOptions = self->_currentLanguageOptions;
  }

  [(NSMutableArray *)currentLanguageOptions addObject:v4];
}

- (void)addSections:(id)a3
{
  v4 = a3;
  sections = self->_sections;
  v8 = v4;
  if (!sections)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_sections;
    self->_sections = v6;

    v4 = v8;
    sections = self->_sections;
  }

  [(NSMutableArray *)sections addObject:v4];
}

- (void)setHasArtworkDataWidth:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addAvailableArtworkFormats:(id)a3
{
  v4 = a3;
  availableArtworkFormats = self->_availableArtworkFormats;
  v8 = v4;
  if (!availableArtworkFormats)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_availableArtworkFormats;
    self->_availableArtworkFormats = v6;

    v4 = v8;
    availableArtworkFormats = self->_availableArtworkFormats;
  }

  [(NSMutableArray *)availableArtworkFormats addObject:v4];
}

- (void)addAvailableRemoteArtworkFormats:(id)a3
{
  v4 = a3;
  availableRemoteArtworkFormats = self->_availableRemoteArtworkFormats;
  v8 = v4;
  if (!availableRemoteArtworkFormats)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_availableRemoteArtworkFormats;
    self->_availableRemoteArtworkFormats = v6;

    v4 = v8;
    availableRemoteArtworkFormats = self->_availableRemoteArtworkFormats;
  }

  [(NSMutableArray *)availableRemoteArtworkFormats addObject:v4];
}

- (void)addDataArtworks:(id)a3
{
  v4 = a3;
  dataArtworks = self->_dataArtworks;
  v8 = v4;
  if (!dataArtworks)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_dataArtworks;
    self->_dataArtworks = v6;

    v4 = v8;
    dataArtworks = self->_dataArtworks;
  }

  [(NSMutableArray *)dataArtworks addObject:v4];
}

- (void)addRemoteArtworks:(id)a3
{
  v4 = a3;
  remoteArtworks = self->_remoteArtworks;
  v8 = v4;
  if (!remoteArtworks)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_remoteArtworks;
    self->_remoteArtworks = v6;

    v4 = v8;
    remoteArtworks = self->_remoteArtworks;
  }

  [(NSMutableArray *)remoteArtworks addObject:v4];
}

- (void)addTranscriptAlignments:(id)a3
{
  v4 = a3;
  transcriptAlignments = self->_transcriptAlignments;
  v8 = v4;
  if (!transcriptAlignments)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_transcriptAlignments;
    self->_transcriptAlignments = v6;

    v4 = v8;
    transcriptAlignments = self->_transcriptAlignments;
  }

  [(NSMutableArray *)transcriptAlignments addObject:v4];
}

- (void)addAvailableAnimatedArtworkFormats:(id)a3
{
  v4 = a3;
  availableAnimatedArtworkFormats = self->_availableAnimatedArtworkFormats;
  v8 = v4;
  if (!availableAnimatedArtworkFormats)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_availableAnimatedArtworkFormats;
    self->_availableAnimatedArtworkFormats = v6;

    v4 = v8;
    availableAnimatedArtworkFormats = self->_availableAnimatedArtworkFormats;
  }

  [(NSMutableArray *)availableAnimatedArtworkFormats addObject:v4];
}

- (void)addAnimatedArtworkPreviewFrames:(id)a3
{
  v4 = a3;
  animatedArtworkPreviewFrames = self->_animatedArtworkPreviewFrames;
  v8 = v4;
  if (!animatedArtworkPreviewFrames)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_animatedArtworkPreviewFrames;
    self->_animatedArtworkPreviewFrames = v6;

    v4 = v8;
    animatedArtworkPreviewFrames = self->_animatedArtworkPreviewFrames;
  }

  [(NSMutableArray *)animatedArtworkPreviewFrames addObject:v4];
}

- (void)addAnimatedArtworks:(id)a3
{
  v4 = a3;
  animatedArtworks = self->_animatedArtworks;
  v8 = v4;
  if (!animatedArtworks)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_animatedArtworks;
    self->_animatedArtworks = v6;

    v4 = v8;
    animatedArtworks = self->_animatedArtworks;
  }

  [(NSMutableArray *)animatedArtworks addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRContentItemProtobuf;
  v4 = [(_MRContentItemProtobuf *)&v8 description];
  v5 = [(_MRContentItemProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v121 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  metadata = self->_metadata;
  if (metadata)
  {
    v7 = [(_MRContentItemMetadataProtobuf *)metadata dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"metadata"];
  }

  artworkData = self->_artworkData;
  if (artworkData)
  {
    [v4 setObject:artworkData forKey:@"artworkData"];
  }

  info = self->_info;
  if (info)
  {
    [v4 setObject:info forKey:@"info"];
  }

  if ([(NSMutableArray *)self->_availableLanguageOptions count])
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_availableLanguageOptions, "count")}];
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v11 = self->_availableLanguageOptions;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v109 objects:v120 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v110;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v110 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v109 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:v16];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v109 objects:v120 count:16];
      }

      while (v13);
    }

    [v4 setObject:v10 forKey:@"availableLanguageOptions"];
  }

  if ([(NSMutableArray *)self->_currentLanguageOptions count])
  {
    v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_currentLanguageOptions, "count")}];
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v18 = self->_currentLanguageOptions;
    v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v105 objects:v119 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v106;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v106 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [*(*(&v105 + 1) + 8 * j) dictionaryRepresentation];
          [v17 addObject:v23];
        }

        v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v105 objects:v119 count:16];
      }

      while (v20);
    }

    [v4 setObject:v17 forKey:@"currentLanguageOptions"];
  }

  lyrics = self->_lyrics;
  if (lyrics)
  {
    v25 = [(_MRLyricsItemProtobuf *)lyrics dictionaryRepresentation];
    [v4 setObject:v25 forKey:@"lyrics"];
  }

  if ([(NSMutableArray *)self->_sections count])
  {
    v26 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_sections, "count")}];
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v27 = self->_sections;
    v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v101 objects:v118 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v102;
      do
      {
        for (k = 0; k != v29; ++k)
        {
          if (*v102 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = [*(*(&v101 + 1) + 8 * k) dictionaryRepresentation];
          [v26 addObject:v32];
        }

        v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v101 objects:v118 count:16];
      }

      while (v29);
    }

    [v4 setObject:v26 forKey:@"sections"];
  }

  parentIdentifier = self->_parentIdentifier;
  if (parentIdentifier)
  {
    [v4 setObject:parentIdentifier forKey:@"parentIdentifier"];
  }

  ancestorIdentifier = self->_ancestorIdentifier;
  if (ancestorIdentifier)
  {
    [v4 setObject:ancestorIdentifier forKey:@"ancestorIdentifier"];
  }

  queueIdentifier = self->_queueIdentifier;
  if (queueIdentifier)
  {
    [v4 setObject:queueIdentifier forKey:@"queueIdentifier"];
  }

  requestIdentifier = self->_requestIdentifier;
  if (requestIdentifier)
  {
    [v4 setObject:requestIdentifier forKey:@"requestIdentifier"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v38 = [MEMORY[0x1E696AD98] numberWithInt:self->_artworkDataWidth];
    [v4 setObject:v38 forKey:@"artworkDataWidth"];

    has = self->_has;
  }

  if (has)
  {
    v39 = [MEMORY[0x1E696AD98] numberWithInt:self->_artworkDataHeight];
    [v4 setObject:v39 forKey:@"artworkDataHeight"];
  }

  associatedParticipantIdentifier = self->_associatedParticipantIdentifier;
  if (associatedParticipantIdentifier)
  {
    [v4 setObject:associatedParticipantIdentifier forKey:@"associatedParticipantIdentifier"];
  }

  availableArtworkFormats = self->_availableArtworkFormats;
  if (availableArtworkFormats)
  {
    [v4 setObject:availableArtworkFormats forKey:@"availableArtworkFormats"];
  }

  availableRemoteArtworkFormats = self->_availableRemoteArtworkFormats;
  if (availableRemoteArtworkFormats)
  {
    [v4 setObject:availableRemoteArtworkFormats forKey:@"availableRemoteArtworkFormats"];
  }

  if ([(NSMutableArray *)self->_dataArtworks count])
  {
    v43 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_dataArtworks, "count")}];
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v44 = self->_dataArtworks;
    v45 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v97 objects:v117 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v98;
      do
      {
        for (m = 0; m != v46; ++m)
        {
          if (*v98 != v47)
          {
            objc_enumerationMutation(v44);
          }

          v49 = [*(*(&v97 + 1) + 8 * m) dictionaryRepresentation];
          [v43 addObject:v49];
        }

        v46 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v97 objects:v117 count:16];
      }

      while (v46);
    }

    [v4 setObject:v43 forKey:@"dataArtworks"];
  }

  if ([(NSMutableArray *)self->_remoteArtworks count])
  {
    v50 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_remoteArtworks, "count")}];
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v51 = self->_remoteArtworks;
    v52 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v93 objects:v116 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v94;
      do
      {
        for (n = 0; n != v53; ++n)
        {
          if (*v94 != v54)
          {
            objc_enumerationMutation(v51);
          }

          v56 = [*(*(&v93 + 1) + 8 * n) dictionaryRepresentation];
          [v50 addObject:v56];
        }

        v53 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v93 objects:v116 count:16];
      }

      while (v53);
    }

    [v4 setObject:v50 forKey:@"remoteArtworks"];
  }

  if ([(NSMutableArray *)self->_transcriptAlignments count])
  {
    v57 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_transcriptAlignments, "count")}];
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v58 = self->_transcriptAlignments;
    v59 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v89 objects:v115 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v90;
      do
      {
        for (ii = 0; ii != v60; ++ii)
        {
          if (*v90 != v61)
          {
            objc_enumerationMutation(v58);
          }

          v63 = [*(*(&v89 + 1) + 8 * ii) dictionaryRepresentation];
          [v57 addObject:v63];
        }

        v60 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v89 objects:v115 count:16];
      }

      while (v60);
    }

    [v4 setObject:v57 forKey:@"transcriptAlignments"];
  }

  availableAnimatedArtworkFormats = self->_availableAnimatedArtworkFormats;
  if (availableAnimatedArtworkFormats)
  {
    [v4 setObject:availableAnimatedArtworkFormats forKey:@"availableAnimatedArtworkFormats"];
  }

  if ([(NSMutableArray *)self->_animatedArtworkPreviewFrames count])
  {
    v65 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_animatedArtworkPreviewFrames, "count")}];
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v66 = self->_animatedArtworkPreviewFrames;
    v67 = [(NSMutableArray *)v66 countByEnumeratingWithState:&v85 objects:v114 count:16];
    if (v67)
    {
      v68 = v67;
      v69 = *v86;
      do
      {
        for (jj = 0; jj != v68; ++jj)
        {
          if (*v86 != v69)
          {
            objc_enumerationMutation(v66);
          }

          v71 = [*(*(&v85 + 1) + 8 * jj) dictionaryRepresentation];
          [v65 addObject:v71];
        }

        v68 = [(NSMutableArray *)v66 countByEnumeratingWithState:&v85 objects:v114 count:16];
      }

      while (v68);
    }

    [v4 setObject:v65 forKey:@"animatedArtworkPreviewFrames"];
  }

  if ([(NSMutableArray *)self->_animatedArtworks count])
  {
    v72 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_animatedArtworks, "count")}];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v73 = self->_animatedArtworks;
    v74 = [(NSMutableArray *)v73 countByEnumeratingWithState:&v81 objects:v113 count:16];
    if (v74)
    {
      v75 = v74;
      v76 = *v82;
      do
      {
        for (kk = 0; kk != v75; ++kk)
        {
          if (*v82 != v76)
          {
            objc_enumerationMutation(v73);
          }

          v78 = [*(*(&v81 + 1) + 8 * kk) dictionaryRepresentation];
          [v72 addObject:v78];
        }

        v75 = [(NSMutableArray *)v73 countByEnumeratingWithState:&v81 objects:v113 count:16];
      }

      while (v75);
    }

    [v4 setObject:v72 forKey:@"animatedArtworks"];
  }

  v79 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)writeTo:(id)a3
{
  v130 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_metadata)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_artworkData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_info)
  {
    PBDataWriterWriteStringField();
  }

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v5 = self->_availableLanguageOptions;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v115 objects:v129 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v116;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v116 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v115 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v115 objects:v129 count:16];
    }

    while (v7);
  }

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v11 = self->_currentLanguageOptions;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v111 objects:v128 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v112;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v112 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v111 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v111 objects:v128 count:16];
    }

    while (v13);
  }

  if (self->_lyrics)
  {
    PBDataWriterWriteSubmessage();
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v17 = self->_sections;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v107 objects:v127 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v108;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v108 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v107 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v107 objects:v127 count:16];
    }

    while (v19);
  }

  if (self->_parentIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_ancestorIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_queueIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_requestIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    artworkDataWidth = self->_artworkDataWidth;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if (has)
  {
    artworkDataHeight = self->_artworkDataHeight;
    PBDataWriterWriteInt32Field();
  }

  if (self->_associatedParticipantIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v26 = self->_availableArtworkFormats;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v103 objects:v126 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v104;
    do
    {
      for (m = 0; m != v28; ++m)
      {
        if (*v104 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v103 + 1) + 8 * m);
        PBDataWriterWriteStringField();
      }

      v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v103 objects:v126 count:16];
    }

    while (v28);
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v32 = self->_availableRemoteArtworkFormats;
  v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v99 objects:v125 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v100;
    do
    {
      for (n = 0; n != v34; ++n)
      {
        if (*v100 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v99 + 1) + 8 * n);
        PBDataWriterWriteStringField();
      }

      v34 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v99 objects:v125 count:16];
    }

    while (v34);
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v38 = self->_dataArtworks;
  v39 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v95 objects:v124 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v96;
    do
    {
      for (ii = 0; ii != v40; ++ii)
      {
        if (*v96 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = *(*(&v95 + 1) + 8 * ii);
        PBDataWriterWriteSubmessage();
      }

      v40 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v95 objects:v124 count:16];
    }

    while (v40);
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v44 = self->_remoteArtworks;
  v45 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v91 objects:v123 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v92;
    do
    {
      for (jj = 0; jj != v46; ++jj)
      {
        if (*v92 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = *(*(&v91 + 1) + 8 * jj);
        PBDataWriterWriteSubmessage();
      }

      v46 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v91 objects:v123 count:16];
    }

    while (v46);
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v50 = self->_transcriptAlignments;
  v51 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v87 objects:v122 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v88;
    do
    {
      for (kk = 0; kk != v52; ++kk)
      {
        if (*v88 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v55 = *(*(&v87 + 1) + 8 * kk);
        PBDataWriterWriteSubmessage();
      }

      v52 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v87 objects:v122 count:16];
    }

    while (v52);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v56 = self->_availableAnimatedArtworkFormats;
  v57 = [(NSMutableArray *)v56 countByEnumeratingWithState:&v83 objects:v121 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v84;
    do
    {
      for (mm = 0; mm != v58; ++mm)
      {
        if (*v84 != v59)
        {
          objc_enumerationMutation(v56);
        }

        v61 = *(*(&v83 + 1) + 8 * mm);
        PBDataWriterWriteStringField();
      }

      v58 = [(NSMutableArray *)v56 countByEnumeratingWithState:&v83 objects:v121 count:16];
    }

    while (v58);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v62 = self->_animatedArtworkPreviewFrames;
  v63 = [(NSMutableArray *)v62 countByEnumeratingWithState:&v79 objects:v120 count:16];
  if (v63)
  {
    v64 = v63;
    v65 = *v80;
    do
    {
      for (nn = 0; nn != v64; ++nn)
      {
        if (*v80 != v65)
        {
          objc_enumerationMutation(v62);
        }

        v67 = *(*(&v79 + 1) + 8 * nn);
        PBDataWriterWriteSubmessage();
      }

      v64 = [(NSMutableArray *)v62 countByEnumeratingWithState:&v79 objects:v120 count:16];
    }

    while (v64);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v68 = self->_animatedArtworks;
  v69 = [(NSMutableArray *)v68 countByEnumeratingWithState:&v75 objects:v119 count:16];
  if (v69)
  {
    v70 = v69;
    v71 = *v76;
    do
    {
      for (i1 = 0; i1 != v70; ++i1)
      {
        if (*v76 != v71)
        {
          objc_enumerationMutation(v68);
        }

        v73 = *(*(&v75 + 1) + 8 * i1);
        PBDataWriterWriteSubmessage();
      }

      v70 = [(NSMutableArray *)v68 countByEnumeratingWithState:&v75 objects:v119 count:16];
    }

    while (v70);
  }

  v74 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v50 = a3;
  if (self->_identifier)
  {
    [v50 setIdentifier:?];
  }

  if (self->_metadata)
  {
    [v50 setMetadata:?];
  }

  if (self->_artworkData)
  {
    [v50 setArtworkData:?];
  }

  if (self->_info)
  {
    [v50 setInfo:?];
  }

  if ([(_MRContentItemProtobuf *)self availableLanguageOptionsCount])
  {
    [v50 clearAvailableLanguageOptions];
    v4 = [(_MRContentItemProtobuf *)self availableLanguageOptionsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(_MRContentItemProtobuf *)self availableLanguageOptionsAtIndex:i];
        [v50 addAvailableLanguageOptions:v7];
      }
    }
  }

  if ([(_MRContentItemProtobuf *)self currentLanguageOptionsCount])
  {
    [v50 clearCurrentLanguageOptions];
    v8 = [(_MRContentItemProtobuf *)self currentLanguageOptionsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(_MRContentItemProtobuf *)self currentLanguageOptionsAtIndex:j];
        [v50 addCurrentLanguageOptions:v11];
      }
    }
  }

  if (self->_lyrics)
  {
    [v50 setLyrics:?];
  }

  if ([(_MRContentItemProtobuf *)self sectionsCount])
  {
    [v50 clearSections];
    v12 = [(_MRContentItemProtobuf *)self sectionsCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(_MRContentItemProtobuf *)self sectionsAtIndex:k];
        [v50 addSections:v15];
      }
    }
  }

  if (self->_parentIdentifier)
  {
    [v50 setParentIdentifier:?];
  }

  v16 = v50;
  if (self->_ancestorIdentifier)
  {
    [v50 setAncestorIdentifier:?];
    v16 = v50;
  }

  if (self->_queueIdentifier)
  {
    [v50 setQueueIdentifier:?];
    v16 = v50;
  }

  if (self->_requestIdentifier)
  {
    [v50 setRequestIdentifier:?];
    v16 = v50;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v16[11] = self->_artworkDataWidth;
    *(v16 + 184) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v16[10] = self->_artworkDataHeight;
    *(v16 + 184) |= 1u;
  }

  if (self->_associatedParticipantIdentifier)
  {
    [v50 setAssociatedParticipantIdentifier:?];
  }

  if ([(_MRContentItemProtobuf *)self availableArtworkFormatsCount])
  {
    [v50 clearAvailableArtworkFormats];
    v18 = [(_MRContentItemProtobuf *)self availableArtworkFormatsCount];
    if (v18)
    {
      v19 = v18;
      for (m = 0; m != v19; ++m)
      {
        v21 = [(_MRContentItemProtobuf *)self availableArtworkFormatsAtIndex:m];
        [v50 addAvailableArtworkFormats:v21];
      }
    }
  }

  if ([(_MRContentItemProtobuf *)self availableRemoteArtworkFormatsCount])
  {
    [v50 clearAvailableRemoteArtworkFormats];
    v22 = [(_MRContentItemProtobuf *)self availableRemoteArtworkFormatsCount];
    if (v22)
    {
      v23 = v22;
      for (n = 0; n != v23; ++n)
      {
        v25 = [(_MRContentItemProtobuf *)self availableRemoteArtworkFormatsAtIndex:n];
        [v50 addAvailableRemoteArtworkFormats:v25];
      }
    }
  }

  if ([(_MRContentItemProtobuf *)self dataArtworksCount])
  {
    [v50 clearDataArtworks];
    v26 = [(_MRContentItemProtobuf *)self dataArtworksCount];
    if (v26)
    {
      v27 = v26;
      for (ii = 0; ii != v27; ++ii)
      {
        v29 = [(_MRContentItemProtobuf *)self dataArtworksAtIndex:ii];
        [v50 addDataArtworks:v29];
      }
    }
  }

  if ([(_MRContentItemProtobuf *)self remoteArtworksCount])
  {
    [v50 clearRemoteArtworks];
    v30 = [(_MRContentItemProtobuf *)self remoteArtworksCount];
    if (v30)
    {
      v31 = v30;
      for (jj = 0; jj != v31; ++jj)
      {
        v33 = [(_MRContentItemProtobuf *)self remoteArtworksAtIndex:jj];
        [v50 addRemoteArtworks:v33];
      }
    }
  }

  if ([(_MRContentItemProtobuf *)self transcriptAlignmentsCount])
  {
    [v50 clearTranscriptAlignments];
    v34 = [(_MRContentItemProtobuf *)self transcriptAlignmentsCount];
    if (v34)
    {
      v35 = v34;
      for (kk = 0; kk != v35; ++kk)
      {
        v37 = [(_MRContentItemProtobuf *)self transcriptAlignmentsAtIndex:kk];
        [v50 addTranscriptAlignments:v37];
      }
    }
  }

  if ([(_MRContentItemProtobuf *)self availableAnimatedArtworkFormatsCount])
  {
    [v50 clearAvailableAnimatedArtworkFormats];
    v38 = [(_MRContentItemProtobuf *)self availableAnimatedArtworkFormatsCount];
    if (v38)
    {
      v39 = v38;
      for (mm = 0; mm != v39; ++mm)
      {
        v41 = [(_MRContentItemProtobuf *)self availableAnimatedArtworkFormatsAtIndex:mm];
        [v50 addAvailableAnimatedArtworkFormats:v41];
      }
    }
  }

  if ([(_MRContentItemProtobuf *)self animatedArtworkPreviewFramesCount])
  {
    [v50 clearAnimatedArtworkPreviewFrames];
    v42 = [(_MRContentItemProtobuf *)self animatedArtworkPreviewFramesCount];
    if (v42)
    {
      v43 = v42;
      for (nn = 0; nn != v43; ++nn)
      {
        v45 = [(_MRContentItemProtobuf *)self animatedArtworkPreviewFramesAtIndex:nn];
        [v50 addAnimatedArtworkPreviewFrames:v45];
      }
    }
  }

  if ([(_MRContentItemProtobuf *)self animatedArtworksCount])
  {
    [v50 clearAnimatedArtworks];
    v46 = [(_MRContentItemProtobuf *)self animatedArtworksCount];
    if (v46)
    {
      v47 = v46;
      for (i1 = 0; i1 != v47; ++i1)
      {
        v49 = [(_MRContentItemProtobuf *)self animatedArtworksAtIndex:i1];
        [v50 addAnimatedArtworks:v49];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v150 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = *(v5 + 104);
  *(v5 + 104) = v6;

  v8 = [(_MRContentItemMetadataProtobuf *)self->_metadata copyWithZone:a3];
  v9 = *(v5 + 128);
  *(v5 + 128) = v8;

  v10 = [(NSData *)self->_artworkData copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSString *)self->_info copyWithZone:a3];
  v13 = *(v5 + 112);
  *(v5 + 112) = v12;

  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v14 = self->_availableLanguageOptions;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v135 objects:v149 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v136;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v136 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v135 + 1) + 8 * i) copyWithZone:a3];
        [v5 addAvailableLanguageOptions:v19];
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v135 objects:v149 count:16];
    }

    while (v16);
  }

  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v20 = self->_currentLanguageOptions;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v131 objects:v148 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v132;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v132 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v131 + 1) + 8 * j) copyWithZone:a3];
        [v5 addCurrentLanguageOptions:v25];
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v131 objects:v148 count:16];
    }

    while (v22);
  }

  v26 = [(_MRLyricsItemProtobuf *)self->_lyrics copyWithZone:a3];
  v27 = *(v5 + 120);
  *(v5 + 120) = v26;

  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v28 = self->_sections;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v127 objects:v147 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v128;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v128 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [*(*(&v127 + 1) + 8 * k) copyWithZone:a3];
        [v5 addSections:v33];
      }

      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v127 objects:v147 count:16];
    }

    while (v30);
  }

  v34 = [(NSString *)self->_parentIdentifier copyWithZone:a3];
  v35 = *(v5 + 136);
  *(v5 + 136) = v34;

  v36 = [(NSString *)self->_ancestorIdentifier copyWithZone:a3];
  v37 = *(v5 + 8);
  *(v5 + 8) = v36;

  v38 = [(NSString *)self->_queueIdentifier copyWithZone:a3];
  v39 = *(v5 + 144);
  *(v5 + 144) = v38;

  v40 = [(NSString *)self->_requestIdentifier copyWithZone:a3];
  v41 = *(v5 + 160);
  *(v5 + 160) = v40;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 44) = self->_artworkDataWidth;
    *(v5 + 184) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 40) = self->_artworkDataHeight;
    *(v5 + 184) |= 1u;
  }

  v43 = [(NSString *)self->_associatedParticipantIdentifier copyWithZone:a3];
  v44 = *(v5 + 48);
  *(v5 + 48) = v43;

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v45 = self->_availableArtworkFormats;
  v46 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v123 objects:v146 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v124;
    do
    {
      for (m = 0; m != v47; ++m)
      {
        if (*v124 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = [*(*(&v123 + 1) + 8 * m) copyWithZone:a3];
        [v5 addAvailableArtworkFormats:v50];
      }

      v47 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v123 objects:v146 count:16];
    }

    while (v47);
  }

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v51 = self->_availableRemoteArtworkFormats;
  v52 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v119 objects:v145 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v120;
    do
    {
      for (n = 0; n != v53; ++n)
      {
        if (*v120 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = [*(*(&v119 + 1) + 8 * n) copyWithZone:a3];
        [v5 addAvailableRemoteArtworkFormats:v56];
      }

      v53 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v119 objects:v145 count:16];
    }

    while (v53);
  }

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v57 = self->_dataArtworks;
  v58 = [(NSMutableArray *)v57 countByEnumeratingWithState:&v115 objects:v144 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v116;
    do
    {
      for (ii = 0; ii != v59; ++ii)
      {
        if (*v116 != v60)
        {
          objc_enumerationMutation(v57);
        }

        v62 = [*(*(&v115 + 1) + 8 * ii) copyWithZone:a3];
        [v5 addDataArtworks:v62];
      }

      v59 = [(NSMutableArray *)v57 countByEnumeratingWithState:&v115 objects:v144 count:16];
    }

    while (v59);
  }

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v63 = self->_remoteArtworks;
  v64 = [(NSMutableArray *)v63 countByEnumeratingWithState:&v111 objects:v143 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = *v112;
    do
    {
      for (jj = 0; jj != v65; ++jj)
      {
        if (*v112 != v66)
        {
          objc_enumerationMutation(v63);
        }

        v68 = [*(*(&v111 + 1) + 8 * jj) copyWithZone:a3];
        [v5 addRemoteArtworks:v68];
      }

      v65 = [(NSMutableArray *)v63 countByEnumeratingWithState:&v111 objects:v143 count:16];
    }

    while (v65);
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v69 = self->_transcriptAlignments;
  v70 = [(NSMutableArray *)v69 countByEnumeratingWithState:&v107 objects:v142 count:16];
  if (v70)
  {
    v71 = v70;
    v72 = *v108;
    do
    {
      for (kk = 0; kk != v71; ++kk)
      {
        if (*v108 != v72)
        {
          objc_enumerationMutation(v69);
        }

        v74 = [*(*(&v107 + 1) + 8 * kk) copyWithZone:a3];
        [v5 addTranscriptAlignments:v74];
      }

      v71 = [(NSMutableArray *)v69 countByEnumeratingWithState:&v107 objects:v142 count:16];
    }

    while (v71);
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v75 = self->_availableAnimatedArtworkFormats;
  v76 = [(NSMutableArray *)v75 countByEnumeratingWithState:&v103 objects:v141 count:16];
  if (v76)
  {
    v77 = v76;
    v78 = *v104;
    do
    {
      for (mm = 0; mm != v77; ++mm)
      {
        if (*v104 != v78)
        {
          objc_enumerationMutation(v75);
        }

        v80 = [*(*(&v103 + 1) + 8 * mm) copyWithZone:a3];
        [v5 addAvailableAnimatedArtworkFormats:v80];
      }

      v77 = [(NSMutableArray *)v75 countByEnumeratingWithState:&v103 objects:v141 count:16];
    }

    while (v77);
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v81 = self->_animatedArtworkPreviewFrames;
  v82 = [(NSMutableArray *)v81 countByEnumeratingWithState:&v99 objects:v140 count:16];
  if (v82)
  {
    v83 = v82;
    v84 = *v100;
    do
    {
      for (nn = 0; nn != v83; ++nn)
      {
        if (*v100 != v84)
        {
          objc_enumerationMutation(v81);
        }

        v86 = [*(*(&v99 + 1) + 8 * nn) copyWithZone:a3];
        [v5 addAnimatedArtworkPreviewFrames:v86];
      }

      v83 = [(NSMutableArray *)v81 countByEnumeratingWithState:&v99 objects:v140 count:16];
    }

    while (v83);
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v87 = self->_animatedArtworks;
  v88 = [(NSMutableArray *)v87 countByEnumeratingWithState:&v95 objects:v139 count:16];
  if (v88)
  {
    v89 = v88;
    v90 = *v96;
    do
    {
      for (i1 = 0; i1 != v89; ++i1)
      {
        if (*v96 != v90)
        {
          objc_enumerationMutation(v87);
        }

        v92 = [*(*(&v95 + 1) + 8 * i1) copyWithZone:{a3, v95}];
        [v5 addAnimatedArtworks:v92];
      }

      v89 = [(NSMutableArray *)v87 countByEnumeratingWithState:&v95 objects:v139 count:16];
    }

    while (v89);
  }

  v93 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_54;
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 13))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_54;
    }
  }

  metadata = self->_metadata;
  if (metadata | *(v4 + 16))
  {
    if (![(_MRContentItemMetadataProtobuf *)metadata isEqual:?])
    {
      goto LABEL_54;
    }
  }

  artworkData = self->_artworkData;
  if (artworkData | *(v4 + 4))
  {
    if (![(NSData *)artworkData isEqual:?])
    {
      goto LABEL_54;
    }
  }

  info = self->_info;
  if (info | *(v4 + 14))
  {
    if (![(NSString *)info isEqual:?])
    {
      goto LABEL_54;
    }
  }

  availableLanguageOptions = self->_availableLanguageOptions;
  if (availableLanguageOptions | *(v4 + 9))
  {
    if (![(NSMutableArray *)availableLanguageOptions isEqual:?])
    {
      goto LABEL_54;
    }
  }

  currentLanguageOptions = self->_currentLanguageOptions;
  if (currentLanguageOptions | *(v4 + 11))
  {
    if (![(NSMutableArray *)currentLanguageOptions isEqual:?])
    {
      goto LABEL_54;
    }
  }

  lyrics = self->_lyrics;
  if (lyrics | *(v4 + 15))
  {
    if (![(_MRLyricsItemProtobuf *)lyrics isEqual:?])
    {
      goto LABEL_54;
    }
  }

  sections = self->_sections;
  if (sections | *(v4 + 21))
  {
    if (![(NSMutableArray *)sections isEqual:?])
    {
      goto LABEL_54;
    }
  }

  parentIdentifier = self->_parentIdentifier;
  if (parentIdentifier | *(v4 + 17))
  {
    if (![(NSString *)parentIdentifier isEqual:?])
    {
      goto LABEL_54;
    }
  }

  ancestorIdentifier = self->_ancestorIdentifier;
  if (ancestorIdentifier | *(v4 + 1))
  {
    if (![(NSString *)ancestorIdentifier isEqual:?])
    {
      goto LABEL_54;
    }
  }

  queueIdentifier = self->_queueIdentifier;
  if (queueIdentifier | *(v4 + 18))
  {
    if (![(NSString *)queueIdentifier isEqual:?])
    {
      goto LABEL_54;
    }
  }

  requestIdentifier = self->_requestIdentifier;
  if (requestIdentifier | *(v4 + 20))
  {
    if (![(NSString *)requestIdentifier isEqual:?])
    {
      goto LABEL_54;
    }
  }

  v17 = *(v4 + 184);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 184) & 2) == 0 || self->_artworkDataWidth != *(v4 + 11))
    {
      goto LABEL_54;
    }
  }

  else if ((*(v4 + 184) & 2) != 0)
  {
LABEL_54:
    v27 = 0;
    goto LABEL_55;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 184) & 1) == 0 || self->_artworkDataHeight != *(v4 + 10))
    {
      goto LABEL_54;
    }
  }

  else if (*(v4 + 184))
  {
    goto LABEL_54;
  }

  associatedParticipantIdentifier = self->_associatedParticipantIdentifier;
  if (associatedParticipantIdentifier | *(v4 + 6) && ![(NSString *)associatedParticipantIdentifier isEqual:?])
  {
    goto LABEL_54;
  }

  availableArtworkFormats = self->_availableArtworkFormats;
  if (availableArtworkFormats | *(v4 + 8))
  {
    if (![(NSMutableArray *)availableArtworkFormats isEqual:?])
    {
      goto LABEL_54;
    }
  }

  availableRemoteArtworkFormats = self->_availableRemoteArtworkFormats;
  if (availableRemoteArtworkFormats | *(v4 + 10))
  {
    if (![(NSMutableArray *)availableRemoteArtworkFormats isEqual:?])
    {
      goto LABEL_54;
    }
  }

  dataArtworks = self->_dataArtworks;
  if (dataArtworks | *(v4 + 12))
  {
    if (![(NSMutableArray *)dataArtworks isEqual:?])
    {
      goto LABEL_54;
    }
  }

  remoteArtworks = self->_remoteArtworks;
  if (remoteArtworks | *(v4 + 19))
  {
    if (![(NSMutableArray *)remoteArtworks isEqual:?])
    {
      goto LABEL_54;
    }
  }

  transcriptAlignments = self->_transcriptAlignments;
  if (transcriptAlignments | *(v4 + 22))
  {
    if (![(NSMutableArray *)transcriptAlignments isEqual:?])
    {
      goto LABEL_54;
    }
  }

  availableAnimatedArtworkFormats = self->_availableAnimatedArtworkFormats;
  if (availableAnimatedArtworkFormats | *(v4 + 7))
  {
    if (![(NSMutableArray *)availableAnimatedArtworkFormats isEqual:?])
    {
      goto LABEL_54;
    }
  }

  animatedArtworkPreviewFrames = self->_animatedArtworkPreviewFrames;
  if (animatedArtworkPreviewFrames | *(v4 + 2))
  {
    if (![(NSMutableArray *)animatedArtworkPreviewFrames isEqual:?])
    {
      goto LABEL_54;
    }
  }

  animatedArtworks = self->_animatedArtworks;
  if (animatedArtworks | *(v4 + 3))
  {
    v27 = [(NSMutableArray *)animatedArtworks isEqual:?];
  }

  else
  {
    v27 = 1;
  }

LABEL_55:

  return v27;
}

- (unint64_t)hash
{
  v26 = [(NSString *)self->_identifier hash];
  v25 = [(_MRContentItemMetadataProtobuf *)self->_metadata hash];
  v3 = [(NSData *)self->_artworkData hash];
  v4 = [(NSString *)self->_info hash];
  v5 = [(NSMutableArray *)self->_availableLanguageOptions hash];
  v6 = [(NSMutableArray *)self->_currentLanguageOptions hash];
  v7 = [(_MRLyricsItemProtobuf *)self->_lyrics hash];
  v8 = [(NSMutableArray *)self->_sections hash];
  v9 = [(NSString *)self->_parentIdentifier hash];
  v10 = [(NSString *)self->_ancestorIdentifier hash];
  v11 = [(NSString *)self->_queueIdentifier hash];
  v12 = [(NSString *)self->_requestIdentifier hash];
  if ((*&self->_has & 2) != 0)
  {
    v13 = 2654435761 * self->_artworkDataWidth;
  }

  else
  {
    v13 = 0;
  }

  if (*&self->_has)
  {
    v14 = 2654435761 * self->_artworkDataHeight;
  }

  else
  {
    v14 = 0;
  }

  v15 = v25 ^ v26 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
  v16 = v12 ^ v13 ^ v14 ^ [(NSString *)self->_associatedParticipantIdentifier hash];
  v17 = v15 ^ v16 ^ [(NSMutableArray *)self->_availableArtworkFormats hash];
  v18 = [(NSMutableArray *)self->_availableRemoteArtworkFormats hash];
  v19 = v18 ^ [(NSMutableArray *)self->_dataArtworks hash];
  v20 = v19 ^ [(NSMutableArray *)self->_remoteArtworks hash];
  v21 = v20 ^ [(NSMutableArray *)self->_transcriptAlignments hash];
  v22 = v21 ^ [(NSMutableArray *)self->_availableAnimatedArtworkFormats hash];
  v23 = v17 ^ v22 ^ [(NSMutableArray *)self->_animatedArtworkPreviewFrames hash];
  return v23 ^ [(NSMutableArray *)self->_animatedArtworks hash];
}

- (void)mergeFrom:(id)a3
{
  v121 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 13))
  {
    [(_MRContentItemProtobuf *)self setIdentifier:?];
  }

  metadata = self->_metadata;
  v6 = *(v4 + 16);
  if (metadata)
  {
    if (v6)
    {
      [(_MRContentItemMetadataProtobuf *)metadata mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(_MRContentItemProtobuf *)self setMetadata:?];
  }

  if (*(v4 + 4))
  {
    [(_MRContentItemProtobuf *)self setArtworkData:?];
  }

  if (*(v4 + 14))
  {
    [(_MRContentItemProtobuf *)self setInfo:?];
  }

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v7 = *(v4 + 9);
  v8 = [v7 countByEnumeratingWithState:&v106 objects:v120 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v107;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v107 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(_MRContentItemProtobuf *)self addAvailableLanguageOptions:*(*(&v106 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v106 objects:v120 count:16];
    }

    while (v9);
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v12 = *(v4 + 11);
  v13 = [v12 countByEnumeratingWithState:&v102 objects:v119 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v103;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v103 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(_MRContentItemProtobuf *)self addCurrentLanguageOptions:*(*(&v102 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v102 objects:v119 count:16];
    }

    while (v14);
  }

  lyrics = self->_lyrics;
  v18 = *(v4 + 15);
  if (lyrics)
  {
    if (v18)
    {
      [(_MRLyricsItemProtobuf *)lyrics mergeFrom:?];
    }
  }

  else if (v18)
  {
    [(_MRContentItemProtobuf *)self setLyrics:?];
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v19 = *(v4 + 21);
  v20 = [v19 countByEnumeratingWithState:&v98 objects:v118 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v99;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v99 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(_MRContentItemProtobuf *)self addSections:*(*(&v98 + 1) + 8 * k)];
      }

      v21 = [v19 countByEnumeratingWithState:&v98 objects:v118 count:16];
    }

    while (v21);
  }

  if (*(v4 + 17))
  {
    [(_MRContentItemProtobuf *)self setParentIdentifier:?];
  }

  if (*(v4 + 1))
  {
    [(_MRContentItemProtobuf *)self setAncestorIdentifier:?];
  }

  if (*(v4 + 18))
  {
    [(_MRContentItemProtobuf *)self setQueueIdentifier:?];
  }

  if (*(v4 + 20))
  {
    [(_MRContentItemProtobuf *)self setRequestIdentifier:?];
  }

  v24 = *(v4 + 184);
  if ((v24 & 2) != 0)
  {
    self->_artworkDataWidth = *(v4 + 11);
    *&self->_has |= 2u;
    v24 = *(v4 + 184);
  }

  if (v24)
  {
    self->_artworkDataHeight = *(v4 + 10);
    *&self->_has |= 1u;
  }

  if (*(v4 + 6))
  {
    [(_MRContentItemProtobuf *)self setAssociatedParticipantIdentifier:?];
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v25 = *(v4 + 8);
  v26 = [v25 countByEnumeratingWithState:&v94 objects:v117 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v95;
    do
    {
      for (m = 0; m != v27; ++m)
      {
        if (*v95 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [(_MRContentItemProtobuf *)self addAvailableArtworkFormats:*(*(&v94 + 1) + 8 * m)];
      }

      v27 = [v25 countByEnumeratingWithState:&v94 objects:v117 count:16];
    }

    while (v27);
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v30 = *(v4 + 10);
  v31 = [v30 countByEnumeratingWithState:&v90 objects:v116 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v91;
    do
    {
      for (n = 0; n != v32; ++n)
      {
        if (*v91 != v33)
        {
          objc_enumerationMutation(v30);
        }

        [(_MRContentItemProtobuf *)self addAvailableRemoteArtworkFormats:*(*(&v90 + 1) + 8 * n)];
      }

      v32 = [v30 countByEnumeratingWithState:&v90 objects:v116 count:16];
    }

    while (v32);
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v35 = *(v4 + 12);
  v36 = [v35 countByEnumeratingWithState:&v86 objects:v115 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v87;
    do
    {
      for (ii = 0; ii != v37; ++ii)
      {
        if (*v87 != v38)
        {
          objc_enumerationMutation(v35);
        }

        [(_MRContentItemProtobuf *)self addDataArtworks:*(*(&v86 + 1) + 8 * ii)];
      }

      v37 = [v35 countByEnumeratingWithState:&v86 objects:v115 count:16];
    }

    while (v37);
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v40 = *(v4 + 19);
  v41 = [v40 countByEnumeratingWithState:&v82 objects:v114 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v83;
    do
    {
      for (jj = 0; jj != v42; ++jj)
      {
        if (*v83 != v43)
        {
          objc_enumerationMutation(v40);
        }

        [(_MRContentItemProtobuf *)self addRemoteArtworks:*(*(&v82 + 1) + 8 * jj)];
      }

      v42 = [v40 countByEnumeratingWithState:&v82 objects:v114 count:16];
    }

    while (v42);
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v45 = *(v4 + 22);
  v46 = [v45 countByEnumeratingWithState:&v78 objects:v113 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v79;
    do
    {
      for (kk = 0; kk != v47; ++kk)
      {
        if (*v79 != v48)
        {
          objc_enumerationMutation(v45);
        }

        [(_MRContentItemProtobuf *)self addTranscriptAlignments:*(*(&v78 + 1) + 8 * kk)];
      }

      v47 = [v45 countByEnumeratingWithState:&v78 objects:v113 count:16];
    }

    while (v47);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v50 = *(v4 + 7);
  v51 = [v50 countByEnumeratingWithState:&v74 objects:v112 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v75;
    do
    {
      for (mm = 0; mm != v52; ++mm)
      {
        if (*v75 != v53)
        {
          objc_enumerationMutation(v50);
        }

        [(_MRContentItemProtobuf *)self addAvailableAnimatedArtworkFormats:*(*(&v74 + 1) + 8 * mm)];
      }

      v52 = [v50 countByEnumeratingWithState:&v74 objects:v112 count:16];
    }

    while (v52);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v55 = *(v4 + 2);
  v56 = [v55 countByEnumeratingWithState:&v70 objects:v111 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v71;
    do
    {
      for (nn = 0; nn != v57; ++nn)
      {
        if (*v71 != v58)
        {
          objc_enumerationMutation(v55);
        }

        [(_MRContentItemProtobuf *)self addAnimatedArtworkPreviewFrames:*(*(&v70 + 1) + 8 * nn)];
      }

      v57 = [v55 countByEnumeratingWithState:&v70 objects:v111 count:16];
    }

    while (v57);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v60 = *(v4 + 3);
  v61 = [v60 countByEnumeratingWithState:&v66 objects:v110 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v67;
    do
    {
      for (i1 = 0; i1 != v62; ++i1)
      {
        if (*v67 != v63)
        {
          objc_enumerationMutation(v60);
        }

        [(_MRContentItemProtobuf *)self addAnimatedArtworks:*(*(&v66 + 1) + 8 * i1), v66];
      }

      v62 = [v60 countByEnumeratingWithState:&v66 objects:v110 count:16];
    }

    while (v62);
  }

  v65 = *MEMORY[0x1E69E9840];
}

@end