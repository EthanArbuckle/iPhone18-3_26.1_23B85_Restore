@interface IMDCoreSpotlightMediaLinkIndexer
- (void)_mapPropertiesFromMetadata:(id)metadata toAttributes:(id)attributes;
@end

@implementation IMDCoreSpotlightMediaLinkIndexer

- (void)_mapPropertiesFromMetadata:(id)metadata toAttributes:(id)attributes
{
  attributesCopy = attributes;
  metadataCopy = metadata;
  v9 = objc_msgSend_appleSummary(metadataCopy, v7, v8);
  objc_msgSend_setContentDescription_(attributesCopy, v10, v9);

  v13 = objc_msgSend_siteName(metadataCopy, v11, v12);
  objc_msgSend_setUrlDescription_(attributesCopy, v14, v13);

  v17 = objc_msgSend_specialization(metadataCopy, v15, v16);

  if (objc_opt_respondsToSelector())
  {
    v20 = objc_msgSend_name(v17, v18, v19);
    v23 = objc_msgSend_length(v20, v21, v22);

    if (v23)
    {
      v28 = objc_msgSend_prefix(self, v24, v25);
      if (v28)
      {
        v29 = MEMORY[0x1E696AEC0];
        v30 = objc_msgSend_prefix(self, v26, v27);
        v33 = objc_msgSend_name(v17, v31, v32);
        v35 = objc_msgSend_stringWithFormat_(v29, v34, @"%@ : %@", v30, v33);
        objc_msgSend_setLinkName_(attributesCopy, v36, v35);
      }

      else
      {
        v30 = objc_msgSend_name(v17, v26, v27);
        objc_msgSend_setLinkName_(attributesCopy, v37, v30);
      }
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v40 = objc_msgSend_artist(v17, v38, v39);
    v43 = objc_msgSend_length(v40, v41, v42);

    if (v43)
    {
      v46 = MEMORY[0x1E696AEC0];
      v47 = objc_msgSend_artist(v17, v44, v45);
      v49 = objc_msgSend_stringWithFormat_(v46, v48, @"%@ : %@", @"artist", v47);
      objc_msgSend_setArtist_(attributesCopy, v50, v49);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v53 = objc_msgSend_album(v17, v51, v52);
    v56 = objc_msgSend_length(v53, v54, v55);

    if (v56)
    {
      v59 = MEMORY[0x1E696AEC0];
      v60 = objc_msgSend_album(v17, v57, v58);
      v62 = objc_msgSend_stringWithFormat_(v59, v61, @"%@ : %@", @"album", v60);
      objc_msgSend_setAlbum_(attributesCopy, v63, v62);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v66 = objc_msgSend_genre(v17, v64, v65);
    v69 = objc_msgSend_length(v66, v67, v68);

    if (v69)
    {
      v72 = MEMORY[0x1E696AEC0];
      v73 = objc_msgSend_genre(v17, v70, v71);
      v75 = objc_msgSend_stringWithFormat_(v72, v74, @"%@ : %@", @"genre", v73);
      objc_msgSend_setGenre_(attributesCopy, v76, v75);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v79 = objc_msgSend_curator(v17, v77, v78);
    v82 = objc_msgSend_length(v79, v80, v81);

    if (v82)
    {
      v85 = MEMORY[0x1E696AEC0];
      v86 = objc_msgSend_curator(v17, v83, v84);
      v88 = objc_msgSend_stringWithFormat_(v85, v87, @"%@ : %@", @"curator", v86);
      objc_msgSend_setCurator_(attributesCopy, v89, v88);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v92 = objc_msgSend_episodeName(v17, v90, v91);
    v95 = objc_msgSend_length(v92, v93, v94);

    if (v95)
    {
      v98 = MEMORY[0x1E696AEC0];
      v99 = objc_msgSend_episodeName(v17, v96, v97);
      v101 = objc_msgSend_stringWithFormat_(v98, v100, @"%@ : %@", @"episode", v99);
      objc_msgSend_setEpisode_(attributesCopy, v102, v101);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v105 = objc_msgSend_podcastName(v17, v103, v104);
    v108 = objc_msgSend_length(v105, v106, v107);

    if (v108)
    {
      v109 = MEMORY[0x1E696AEC0];
      v110 = objc_msgSend_podcastName(v17, v103, v104);
      v112 = objc_msgSend_stringWithFormat_(v109, v111, @"%@ : %@", @"podcast", v110);
      objc_msgSend_setPodcastName_(attributesCopy, v113, v112);
    }
  }

  v114 = objc_msgSend_linkName(attributesCopy, v103, v104);
  v117 = objc_msgSend_length(v114, v115, v116);

  if (!v117 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v120 = objc_msgSend_episodeName(v17, v118, v119);
    v123 = objc_msgSend_length(v120, v121, v122);

    if (v123)
    {
      v126 = MEMORY[0x1E696AEC0];
      v127 = objc_msgSend_episodeName(v17, v124, v125);
      v129 = objc_msgSend_stringWithFormat_(v126, v128, @"%@ : %@", @"episode", v127);
      objc_msgSend_setLinkName_(attributesCopy, v130, v129);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v133 = objc_msgSend_releaseDate(v17, v131, v132);
    objc_msgSend_setRecordingDate_(attributesCopy, v134, v133);
  }
}

@end