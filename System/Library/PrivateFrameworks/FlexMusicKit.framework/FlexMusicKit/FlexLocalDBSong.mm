@interface FlexLocalDBSong
- (BOOL)canPlay;
- (CKRecordID)recordID;
- (NSSet)genreStrings;
- (NSSet)regionStrings;
- (NSSet)tagIDs;
- (void)setGenreStrings:(id)a3;
- (void)setRecordID:(id)a3;
- (void)setRegionStrings:(id)a3;
@end

@implementation FlexLocalDBSong

- (NSSet)tagIDs
{
  v172 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, v2, v3, v4);
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v11 = objc_msgSend_genres(self, v7, v8, v9, v10);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v166, v171, 16);
  if (v13)
  {
    v18 = v13;
    v19 = *v167;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v167 != v19)
        {
          objc_enumerationMutation(v11);
        }

        v21 = objc_msgSend_genreTag(*(*(&v166 + 1) + 8 * i), v14, v15, v16, v17);
        objc_msgSend_addObject_(v6, v22, v21, v23, v24);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v166, v171, 16);
    }

    while (v18);
  }

  v29 = objc_msgSend_mood(self, v25, v26, v27, v28);
  v34 = objc_msgSend_length(v29, v30, v31, v32, v33);

  if (v34)
  {
    v39 = MEMORY[0x277CCACA8];
    v40 = objc_msgSend_mood(self, v35, v36, v37, v38);
    v44 = objc_msgSend_stringWithFormat_(v39, v41, @"%@%@", v42, v43, @"Mood_", v40);
    objc_msgSend_addObject_(v6, v45, v44, v46, v47);
  }

  v48 = objc_msgSend_moodAlt(self, v35, v36, v37, v38);
  v53 = objc_msgSend_length(v48, v49, v50, v51, v52);

  if (v53)
  {
    v58 = MEMORY[0x277CCACA8];
    v59 = objc_msgSend_moodAlt(self, v54, v55, v56, v57);
    v63 = objc_msgSend_stringWithFormat_(v58, v60, @"%@%@", v61, v62, @"MoodAlt_", v59);
    objc_msgSend_addObject_(v6, v64, v63, v65, v66);
  }

  v67 = objc_msgSend_pace(self, v54, v55, v56, v57);
  v72 = objc_msgSend_length(v67, v68, v69, v70, v71);

  if (v72)
  {
    v77 = MEMORY[0x277CCACA8];
    v78 = objc_msgSend_pace(self, v73, v74, v75, v76);
    v82 = objc_msgSend_stringWithFormat_(v77, v79, @"%@%@", v80, v81, @"SongPace_", v78);
    objc_msgSend_addObject_(v6, v83, v82, v84, v85);
  }

  v86 = MEMORY[0x277CCACA8];
  v87 = objc_msgSend_style(self, v73, v74, v75, v76);
  v91 = objc_msgSend_stringWithFormat_(v86, v88, @"%@%lld", v89, v90, @"Style_", v87);
  objc_msgSend_addObject_(v6, v92, v91, v93, v94);

  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v163 = 0u;
  v99 = objc_msgSend_regions(self, v95, v96, v97, v98);
  v101 = objc_msgSend_countByEnumeratingWithState_objects_count_(v99, v100, &v162, v170, 16);
  if (v101)
  {
    v106 = v101;
    v107 = *v163;
    do
    {
      for (j = 0; j != v106; ++j)
      {
        if (*v163 != v107)
        {
          objc_enumerationMutation(v99);
        }

        v109 = objc_msgSend_countryCode(*(*(&v162 + 1) + 8 * j), v102, v103, v104, v105);
        objc_msgSend_addObject_(v6, v110, v109, v111, v112);
      }

      v106 = objc_msgSend_countByEnumeratingWithState_objects_count_(v99, v102, &v162, v170, 16);
    }

    while (v106);
  }

  objc_msgSend_arousal(self, v113, v114, v115, v116);
  if (v121 > 0.0)
  {
    v122 = MEMORY[0x277CCACA8];
    objc_msgSend_arousal(self, v117, v118, v119, v120);
    v127 = objc_msgSend_stringWithFormat_(v122, v123, @"%@%g", v124, v125, @"Arousal_", v126);
    objc_msgSend_addObject_(v6, v128, v127, v129, v130);
  }

  objc_msgSend_valence(self, v117, v118, v119, v120);
  if (v135 > 0.0)
  {
    v136 = MEMORY[0x277CCACA8];
    objc_msgSend_valence(self, v131, v132, v133, v134);
    v141 = objc_msgSend_stringWithFormat_(v136, v137, @"%@%g", v138, v139, @"Valence_", v140);
    objc_msgSend_addObject_(v6, v142, v141, v143, v144);
  }

  objc_msgSend_visualTempo(self, v131, v132, v133, v134);
  if (v149 > 0.0)
  {
    v150 = MEMORY[0x277CCACA8];
    objc_msgSend_visualTempo(self, v145, v146, v147, v148);
    v155 = objc_msgSend_stringWithFormat_(v150, v151, @"%@%g", v152, v153, @"VisualTempo_", v154);
    objc_msgSend_addObject_(v6, v156, v155, v157, v158);
  }

  v159 = objc_msgSend_copy(v6, v145, v146, v147, v148);

  v160 = *MEMORY[0x277D85DE8];

  return v159;
}

- (void)setRecordID:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v4 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x277CCAAB0], a2, a3, 1, &v11);
  v8 = v11;
  if (v8)
  {
    v9 = FlexLogForCategory(3uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&dword_24B7E5000, v9, OS_LOG_TYPE_DEFAULT, "Error %@ archiving record ID", buf, 0xCu);
    }
  }

  objc_msgSend_setRecordData_(self, v5, v4, v6, v7);

  v10 = *MEMORY[0x277D85DE8];
}

- (CKRecordID)recordID
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAAC8];
  v4 = objc_opt_class();
  v9 = objc_msgSend_recordData(self, v5, v6, v7, v8);
  v16 = 0;
  v11 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v3, v10, v4, v9, &v16);
  v12 = v16;

  if (v12)
  {
    v13 = FlexLogForCategory(3uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v12;
      _os_log_impl(&dword_24B7E5000, v13, OS_LOG_TYPE_DEFAULT, "Error %@ archiving record ID", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (NSSet)genreStrings
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, v2, v3, v4);
  v11 = objc_msgSend_managedObjectContext(self, v7, v8, v9, v10);
  v15 = objc_msgSend_fetchRequestWithEntityName_(MEMORY[0x277CBE428], v12, @"Genres", v13, v14);
  v19 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v16, @"song == %@", v17, v18, self);
  objc_msgSend_setPredicate_(v15, v20, v19, v21, v22);

  v49 = 0;
  v25 = objc_msgSend_executeFetchRequest_error_(v11, v23, v15, &v49, v24);
  v26 = v49;
  v27 = v26;
  if (v25)
  {
    v28 = v26 == 0;
  }

  else
  {
    v28 = 0;
  }

  if (v28)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v29 = v25;
    v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v45, v50, 16);
    if (v31)
    {
      v36 = v31;
      v37 = *v46;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v46 != v37)
          {
            objc_enumerationMutation(v29);
          }

          v39 = objc_msgSend_genreTag(*(*(&v45 + 1) + 8 * i), v32, v33, v34, v35);
          objc_msgSend_addObject_(v6, v40, v39, v41, v42);
        }

        v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v32, &v45, v50, 16);
      }

      while (v36);
    }
  }

  else
  {
    v29 = FlexLogForCategory(3uLL);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_24B811580(v27, v29);
    }
  }

  v43 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)setGenreStrings:(id)a3
{
  v86 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v77 = self;
  v9 = objc_msgSend_managedObjectContext(self, v5, v6, v7, v8);
  v10 = MEMORY[0x277CBEB58];
  v15 = objc_msgSend_count(v4, v11, v12, v13, v14);
  v75 = objc_msgSend_setWithCapacity_(v10, v16, v15, v17, v18);
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = v4;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v79, v85, 16);
  if (v20)
  {
    v24 = v20;
    v25 = *v80;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v80 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v79 + 1) + 8 * i);
        v28 = objc_msgSend_fetchRequestWithEntityName_(MEMORY[0x277CBE428], v21, @"Genres", v22, v23);
        v32 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v29, @"(song == %@) AND (genreTag == %@)", v30, v31, v77, v27);
        objc_msgSend_setPredicate_(v28, v33, v32, v34, v35);

        v78 = 0;
        v38 = objc_msgSend_executeFetchRequest_error_(v9, v36, v28, &v78, v37);
        v39 = v78;
        v44 = v39;
        if (v38)
        {
          v45 = v39 == 0;
        }

        else
        {
          v45 = 0;
        }

        if (!v45)
        {
          v46 = FlexLogForCategory(3uLL);
          if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_20;
          }

          *buf = 138412290;
          v84 = v44;
          v47 = v46;
          v48 = "Failed to fetch genre:\n%@";
          goto LABEL_19;
        }

        if (objc_msgSend_count(v38, v40, v41, v42, v43))
        {
          if (objc_msgSend_count(v38, v49, v50, v51, v52) == 1)
          {
            v46 = objc_msgSend_firstObject(v38, v53, v54, v55, v56);
            objc_msgSend_addObject_(v75, v57, v46, v58, v59);
            goto LABEL_20;
          }

          v46 = FlexLogForCategory(3uLL);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v84 = v38;
            v47 = v46;
            v48 = "Duplicate genres:\n%@";
LABEL_19:
            _os_log_error_impl(&dword_24B7E5000, v47, OS_LOG_TYPE_ERROR, v48, buf, 0xCu);
          }
        }

        else
        {
          v46 = objc_msgSend_insertNewObjectForEntityForName_inManagedObjectContext_(MEMORY[0x277CBE408], v49, @"Genres", v9, v52);
          objc_msgSend_setGenreTag_(v46, v60, v27, v61, v62);
          objc_msgSend_addObject_(v75, v63, v46, v64, v65);
        }

LABEL_20:
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v79, v85, 16);
    }

    while (v24);
  }

  v70 = objc_msgSend_copy(v75, v66, v67, v68, v69);
  objc_msgSend_setGenres_(v77, v71, v70, v72, v73);

  v74 = *MEMORY[0x277D85DE8];
}

- (NSSet)regionStrings
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, v2, v3, v4);
  v11 = objc_msgSend_managedObjectContext(self, v7, v8, v9, v10);
  v15 = objc_msgSend_fetchRequestWithEntityName_(MEMORY[0x277CBE428], v12, @"Regions", v13, v14);
  v19 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v16, @"song == %@", v17, v18, self);
  objc_msgSend_setPredicate_(v15, v20, v19, v21, v22);

  v49 = 0;
  v25 = objc_msgSend_executeFetchRequest_error_(v11, v23, v15, &v49, v24);
  v26 = v49;
  v27 = v26;
  if (v25)
  {
    v28 = v26 == 0;
  }

  else
  {
    v28 = 0;
  }

  if (v28)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v29 = v25;
    v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v45, v50, 16);
    if (v31)
    {
      v36 = v31;
      v37 = *v46;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v46 != v37)
          {
            objc_enumerationMutation(v29);
          }

          v39 = objc_msgSend_countryCode(*(*(&v45 + 1) + 8 * i), v32, v33, v34, v35);
          objc_msgSend_addObject_(v6, v40, v39, v41, v42);
        }

        v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v32, &v45, v50, 16);
      }

      while (v36);
    }
  }

  else
  {
    v29 = FlexLogForCategory(3uLL);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_24B8115F8(v27, v29);
    }
  }

  v43 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)setRegionStrings:(id)a3
{
  v86 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v77 = self;
  v9 = objc_msgSend_managedObjectContext(self, v5, v6, v7, v8);
  v10 = MEMORY[0x277CBEB58];
  v15 = objc_msgSend_count(v4, v11, v12, v13, v14);
  v75 = objc_msgSend_setWithCapacity_(v10, v16, v15, v17, v18);
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = v4;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v79, v85, 16);
  if (v20)
  {
    v24 = v20;
    v25 = *v80;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v80 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v79 + 1) + 8 * i);
        v28 = objc_msgSend_fetchRequestWithEntityName_(MEMORY[0x277CBE428], v21, @"Regions", v22, v23);
        v32 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v29, @"(song == %@) AND (countryCode == %@)", v30, v31, v77, v27);
        objc_msgSend_setPredicate_(v28, v33, v32, v34, v35);

        v78 = 0;
        v38 = objc_msgSend_executeFetchRequest_error_(v9, v36, v28, &v78, v37);
        v39 = v78;
        v44 = v39;
        if (v38)
        {
          v45 = v39 == 0;
        }

        else
        {
          v45 = 0;
        }

        if (!v45)
        {
          v46 = FlexLogForCategory(3uLL);
          if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_20;
          }

          *buf = 138412290;
          v84 = v44;
          v47 = v46;
          v48 = "Failed to fetch region:\n%@";
          goto LABEL_19;
        }

        if (objc_msgSend_count(v38, v40, v41, v42, v43))
        {
          if (objc_msgSend_count(v38, v49, v50, v51, v52) == 1)
          {
            v46 = objc_msgSend_firstObject(v38, v53, v54, v55, v56);
            objc_msgSend_addObject_(v75, v57, v46, v58, v59);
            goto LABEL_20;
          }

          v46 = FlexLogForCategory(3uLL);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v84 = v38;
            v47 = v46;
            v48 = "Duplicate regions:\n%@";
LABEL_19:
            _os_log_error_impl(&dword_24B7E5000, v47, OS_LOG_TYPE_ERROR, v48, buf, 0xCu);
          }
        }

        else
        {
          v46 = objc_msgSend_insertNewObjectForEntityForName_inManagedObjectContext_(MEMORY[0x277CBE408], v49, @"Regions", v9, v52);
          objc_msgSend_setCountryCode_(v46, v60, v27, v61, v62);
          objc_msgSend_addObject_(v75, v63, v46, v64, v65);
        }

LABEL_20:
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v79, v85, 16);
    }

    while (v24);
  }

  v70 = objc_msgSend_copy(v75, v66, v67, v68, v69);
  objc_msgSend_setRegions_(v77, v71, v70, v72, v73);

  v74 = *MEMORY[0x277D85DE8];
}

- (BOOL)canPlay
{
  v5 = objc_msgSend_songBundleURL(self, a2, v2, v3, v4);
  v6 = v5 != 0;

  return v6;
}

@end