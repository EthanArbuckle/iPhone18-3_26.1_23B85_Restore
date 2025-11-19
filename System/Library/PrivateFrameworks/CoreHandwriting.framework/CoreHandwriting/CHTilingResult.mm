@interface CHTilingResult
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCHDocumentTilingResult:(id)a3;
- (CHTilingResult)initWithCoder:(id)a3;
- (CHTilingResult)initWithTilesPerPosition:(id)a3 tileSizeFactor:(double)a4;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)writeTilesToFileInFolder:(id)a3 basename:(id)a4 strokeProvider:(id)a5;
- (void)writeTilesToFileInFolder:(id)a3 strokeProvider:(id)a4;
- (void)writeTilesToFileWithStrokeProvider:(id)a3;
@end

@implementation CHTilingResult

- (CHTilingResult)initWithTilesPerPosition:(id)a3 tileSizeFactor:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CHTilingResult;
  v8 = [(CHTilingResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_documentTiles, a3);
    v9->_tileSizeFactor = a4;
  }

  return v9;
}

- (CHTilingResult)initWithCoder:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v30 = objc_opt_class();
  v31 = objc_opt_class();
  v32 = objc_opt_class();
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v6, &v30, 3, v7, v8);
  v14 = objc_msgSend_setWithArray_(v5, v10, v9, v11, v12, v13, v30, v31);
  v18 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v15, v14, @"tilesPerPosition", v16, v17);

  objc_msgSend_decodeFloatForKey_(v4, v19, @"tilesSizeFactor", v20, v21, v22);
  v28 = objc_msgSend_initWithTilesPerPosition_tileSizeFactor_(self, v24, v18, v25, v26, v27, v23);

  return v28;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  objc_msgSend_encodeObject_forKey_(v12, v4, self->_documentTiles, @"tilesPerPosition", v5, v6);
  tileSizeFactor = self->_tileSizeFactor;
  *&tileSizeFactor = tileSizeFactor;
  objc_msgSend_encodeFloat_forKey_(v12, v8, @"tilesSizeFactor", v9, v10, v11, tileSizeFactor);
}

- (id)description
{
  v46 = *MEMORY[0x1E69E9840];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v7 = objc_msgSend_allValues(self->_documentTiles, a2, v2, v3, v4, v5);
  v10 = 0;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v41, v45, 16, v9);
  if (v16)
  {
    v17 = *v42;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v42 != v17)
        {
          objc_enumerationMutation(v7);
        }

        v19 = *(*(&v41 + 1) + 8 * i);
        if ((objc_msgSend_hasSubtiles(v19, v11, v12, v13, v14, v15) & 1) == 0)
        {
          v20 = objc_msgSend_contentStrokeIdentifiers(v19, v11, v12, v13, v14, v15);
          v26 = objc_msgSend_count(v20, v21, v22, v23, v24, v25);

          v10 += v26;
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v11, &v41, v45, 16, v15);
    }

    while (v16);
  }

  v40.receiver = self;
  v40.super_class = CHTilingResult;
  v27 = [(CHTilingResult *)&v40 description];
  v33 = objc_msgSend_count(self->_documentTiles, v28, v29, v30, v31, v32);
  v38 = objc_msgSend_stringByAppendingFormat_(v27, v34, @" Tile count = %lu, Stroke count = %lu, Tile size factor = %.2f", v35, v36, v37, v33, v10, *&self->_tileSizeFactor);

  return v38;
}

- (id)debugDescription
{
  v7 = objc_msgSend_description(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_allValues(self->_documentTiles, v8, v9, v10, v11, v12);
  v18 = objc_msgSend_stringByAppendingFormat_(v7, v14, @", Tiles: %@", v15, v16, v17, v13);

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqualToCHDocumentTilingResult = objc_msgSend_isEqualToCHDocumentTilingResult_(self, v5, v4, v6, v7, v8);

    return isEqualToCHDocumentTilingResult;
  }

  else
  {

    return 0;
  }
}

- (BOOL)isEqualToCHDocumentTilingResult:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self == v4)
  {
    isEqualToDictionary = 1;
  }

  else
  {
    tileSizeFactor = self->_tileSizeFactor;
    objc_msgSend_tileSizeFactor(v4, v5, v6, v7, v8, v9);
    if (tileSizeFactor == v17)
    {
      documentTiles = self->_documentTiles;
      v24 = objc_msgSend_documentTiles(v10, v12, v13, v14, v15, v16);
      if (documentTiles == v24)
      {
        isEqualToDictionary = 1;
      }

      else
      {
        v25 = self->_documentTiles;
        v26 = objc_msgSend_documentTiles(v10, v19, v20, v21, v22, v23);
        isEqualToDictionary = objc_msgSend_isEqualToDictionary_(v25, v27, v26, v28, v29, v30);
      }
    }

    else
    {
      isEqualToDictionary = 0;
    }
  }

  return isEqualToDictionary;
}

- (void)writeTilesToFileWithStrokeProvider:(id)a3
{
  v31 = a3;
  v9 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v4, v5, v6, v7, v8);
  v15 = objc_msgSend_UUIDString(v9, v10, v11, v12, v13, v14);

  v16 = MEMORY[0x1E695DFF8];
  v17 = NSTemporaryDirectory();
  v22 = objc_msgSend_fileURLWithPath_(v16, v18, v17, v19, v20, v21);
  v27 = objc_msgSend_URLByAppendingPathComponent_(v22, v23, v15, v24, v25, v26);

  objc_msgSend_writeTilesToFileInFolder_strokeProvider_(self, v28, v27, v31, v29, v30);
}

- (void)writeTilesToFileInFolder:(id)a3 strokeProvider:(id)a4
{
  v47 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
  objc_msgSend_setDateFormat_(v7, v8, @"dd-MM-yyyy-HH-mm-ss-SSS", v9, v10, v11);
  v17 = objc_msgSend_now(MEMORY[0x1E695DF00], v12, v13, v14, v15, v16);
  v22 = objc_msgSend_stringFromDate_(v7, v18, v17, v19, v20, v21);

  v28 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v23, v24, v25, v26, v27);
  v34 = objc_msgSend_UUIDString(v28, v29, v30, v31, v32, v33);
  v39 = objc_msgSend_substringToIndex_(v34, v35, 4, v36, v37, v38);

  v44 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v40, @"/document_%@-%@.json", v41, v42, v43, v22, v39);
  objc_msgSend_writeTilesToFileInFolder_basename_strokeProvider_(self, v45, v47, v44, v6, v46);
}

- (void)writeTilesToFileInFolder:(id)a3 basename:(id)a4 strokeProvider:(id)a5
{
  v132 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v107 = a4;
  v115 = a5;
  v108 = v8;
  v109 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v14 = objc_msgSend_absoluteString(v8, v9, v10, v11, v12, v13);
  LOBYTE(v8) = objc_msgSend_fileExistsAtPath_(v109, v15, v14, v16, v17, v18);

  if (v8)
  {
    v106 = 0;
LABEL_4:
    v105 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v19, v20, v21, v22, v23);
    v112 = objc_msgSend_array(MEMORY[0x1E695DF70], v25, v26, v27, v28, v29);
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    obj = objc_msgSend_allValues(self->_documentTiles, v30, v31, v32, v33, v34);
    v113 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v35, &v121, v127, 16, v36);
    if (v113)
    {
      v111 = *v122;
      do
      {
        for (i = 0; i != v113; ++i)
        {
          if (*v122 != v111)
          {
            objc_enumerationMutation(obj);
          }

          v42 = *(*(&v121 + 1) + 8 * i);
          v43 = objc_msgSend_array(MEMORY[0x1E695DF70], v37, v38, v39, v40, v41);
          v119 = 0u;
          v120 = 0u;
          v117 = 0u;
          v118 = 0u;
          v49 = objc_msgSend_orderedStrokeIdentifiers(v42, v44, v45, v46, v47, v48);
          v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v50, &v117, v126, 16, v51);
          if (v57)
          {
            v58 = *v118;
            do
            {
              for (j = 0; j != v57; ++j)
              {
                if (*v118 != v58)
                {
                  objc_enumerationMutation(v49);
                }

                v60 = *(*(&v117 + 1) + 8 * j);
                v61 = objc_msgSend_contentStrokeIdentifiers(v42, v52, v53, v54, v55, v56);
                v66 = objc_msgSend_containsObject_(v61, v62, v60, v63, v64, v65);

                if (v66)
                {
                  v67 = objc_msgSend_strokeForIdentifier_inStrokeProvider_(CHStrokeUtilities, v52, v60, v115, v55, v56);
                  objc_msgSend_addObject_(v43, v68, v67, v69, v70, v71);
                }
              }

              v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v52, &v117, v126, 16, v56);
            }

            while (v57);
          }

          v73 = objc_msgSend_createDrawingForStrokes_interpolationType_resolution_cancellationBlock_(CHStrokeUtilities, v72, v43, 0, 1, 0);
          v78 = objc_msgSend_jsonRepresentationWithContext_(v73, v74, MEMORY[0x1E695E0F8], v75, v76, v77);
          objc_msgSend_addObject_(v112, v79, v78, v80, v81, v82);
        }

        v113 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v37, &v121, v127, 16, v41);
      }

      while (v113);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v105, v83, v112, @"sectionsData", v84, v85);
    v88 = objc_msgSend_dataWithJSONObject_options_error_(MEMORY[0x1E696ACB0], v86, v105, 1, 0, v87);
    v93 = objc_msgSend_URLByAppendingPathComponent_(v108, v89, v107, v90, v91, v92);
    v116 = 0;
    objc_msgSend_writeToURL_options_error_(v88, v94, v93, 1, &v116, v95);
    v96 = v116;
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v97 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
    {
      v103 = objc_msgSend_absoluteString(v93, v98, v99, v100, v101, v102);
      *buf = 138412546;
      v129 = v103;
      v130 = 2112;
      v131 = v96;
      _os_log_impl(&dword_18366B000, v97, OS_LOG_TYPE_DEFAULT, "Document writeToFile saving tiles strokes at URL %@, error = %@", buf, 0x16u);
    }

    v104 = v105;
    goto LABEL_29;
  }

  v125 = 0;
  DirectoryAtURL_withIntermediateDirectories_attributes_error = objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v109, v19, v108, 1, 0, &v125);
  v106 = v125;
  if (DirectoryAtURL_withIntermediateDirectories_attributes_error)
  {
    goto LABEL_4;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v104 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v129 = v108;
    v130 = 2112;
    v131 = v106;
    _os_log_impl(&dword_18366B000, v104, OS_LOG_TYPE_ERROR, "Document unable to create folder at URL %@: Error %@", buf, 0x16u);
  }

LABEL_29:
}

@end