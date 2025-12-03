@interface CHDocumentTile
- (BOOL)hasSubtiles;
- (BOOL)isEqual:(id)equal;
- (CGPoint)origin;
- (CHDocumentTile)initWithCoder:(id)coder;
- (CHDocumentTile)initWithTilePosition:(id)position scale:(double)scale;
- (CHDocumentTile)initWithTilePosition:(id)position subtilePositions:(id)positions scale:(double)scale origin:(CGPoint)origin orderedStrokeIdentifiers:(id)identifiers contentStrokeIdentifiers:(id)strokeIdentifiers overlapStrokeIdentifiers:(id)overlapStrokeIdentifiers contextStrokeIdentifiers:(id)self0;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHDocumentTile

- (CHDocumentTile)initWithTilePosition:(id)position scale:(double)scale
{
  positionCopy = position;
  v7 = *MEMORY[0x1E695EFF8];
  v8 = *(MEMORY[0x1E695EFF8] + 8);
  v14 = objc_msgSend_set(MEMORY[0x1E695DFD8], v9, v10, v11, v12, v13);
  v20 = objc_msgSend_set(MEMORY[0x1E695DFD8], v15, v16, v17, v18, v19);
  v26 = objc_msgSend_set(MEMORY[0x1E695DFD8], v21, v22, v23, v24, v25);
  v28 = objc_msgSend_initWithTilePosition_subtilePositions_scale_origin_orderedStrokeIdentifiers_contentStrokeIdentifiers_overlapStrokeIdentifiers_contextStrokeIdentifiers_(self, v27, positionCopy, MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F0], v14, v20, v26, scale, v7, v8);

  return v28;
}

- (CHDocumentTile)initWithTilePosition:(id)position subtilePositions:(id)positions scale:(double)scale origin:(CGPoint)origin orderedStrokeIdentifiers:(id)identifiers contentStrokeIdentifiers:(id)strokeIdentifiers overlapStrokeIdentifiers:(id)overlapStrokeIdentifiers contextStrokeIdentifiers:(id)self0
{
  y = origin.y;
  x = origin.x;
  positionCopy = position;
  positionsCopy = positions;
  identifiersCopy = identifiers;
  strokeIdentifiersCopy = strokeIdentifiers;
  overlapStrokeIdentifiersCopy = overlapStrokeIdentifiers;
  contextStrokeIdentifiersCopy = contextStrokeIdentifiers;
  v29.receiver = self;
  v29.super_class = CHDocumentTile;
  v23 = [(CHDocumentTile *)&v29 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_tilePosition, position);
    objc_storeStrong(&v24->_subtilePositions, positions);
    v24->_scale = scale;
    v24->_origin.x = x;
    v24->_origin.y = y;
    v24->_savedHash = 0;
    objc_storeStrong(&v24->_orderedStrokeIdentifiers, identifiers);
    objc_storeStrong(&v24->_contentStrokeIdentifiers, strokeIdentifiers);
    objc_storeStrong(&v24->_overlapStrokeIdentifiers, overlapStrokeIdentifiers);
    objc_storeStrong(&v24->_contextStrokeIdentifiers, contextStrokeIdentifiers);
  }

  return v24;
}

- (CHDocumentTile)initWithCoder:(id)coder
{
  v129[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  objc_msgSend_decodeFloatForKey_(coderCopy, v4, @"scale", v5, v6, v7);
  v9 = v8;
  v10 = objc_opt_class();
  v14 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v11, v10, @"origin", v12, v13);
  v123 = v14;
  if (v14)
  {
    objc_msgSend_ch_CGPointValue(v14, v15, v16, v17, v18, v19);
    v21 = v20;
    v23 = v22;
  }

  else
  {
    v21 = *MEMORY[0x1E695EFF8];
    v23 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v24 = objc_opt_class();
  v127 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v25, v24, @"tilePosition", v26, v27);
  v32 = objc_msgSend_containsValueForKey_(coderCopy, v28, @"subtilePositions", v29, v30, v31);
  v33 = MEMORY[0x1E695E0F0];
  v34 = MEMORY[0x1E695E0F0];
  if (v32)
  {
    v35 = MEMORY[0x1E695DFD8];
    v129[0] = objc_opt_class();
    v129[1] = objc_opt_class();
    v39 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v36, v129, 2, v37, v38);
    v44 = objc_msgSend_setWithArray_(v35, v40, v39, v41, v42, v43);
    v34 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v45, v44, @"subtilePositions", v46, v47);
  }

  v48 = MEMORY[0x1E695DFD8];
  v128[0] = objc_opt_class();
  v128[1] = objc_opt_class();
  v52 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v49, v128, 2, v50, v51);
  v57 = objc_msgSend_setWithArray_(v48, v53, v52, v54, v55, v56);
  v61 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v58, v57, @"orderedStrokeIdentifiers", v59, v60);

  v62 = objc_opt_class();
  v126 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v63, v62, @"contentStrokeIndexes", v64, v65);
  v66 = objc_opt_class();
  v125 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v67, v66, @"overlapStrokeIndexes", v68, v69);
  v70 = objc_opt_class();
  v74 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v71, v70, @"contextStrokeIndexes", v72, v73);
  v75 = MEMORY[0x1E695DFD8];
  v80 = objc_msgSend_objectsAtIndexes_(v61, v76, v126, v77, v78, v79);
  v85 = objc_msgSend_setWithArray_(v75, v81, v80, v82, v83, v84);

  v86 = MEMORY[0x1E695DFD8];
  v91 = objc_msgSend_objectsAtIndexes_(v61, v87, v125, v88, v89, v90);
  v96 = objc_msgSend_setWithArray_(v86, v92, v91, v93, v94, v95);

  v97 = MEMORY[0x1E695DFD8];
  v102 = objc_msgSend_objectsAtIndexes_(v61, v98, v74, v99, v100, v101);
  v107 = objc_msgSend_setWithArray_(v97, v103, v102, v104, v105, v106);

  if (!v34)
  {
    v34 = v33;
  }

  v113 = objc_msgSend_copy(v85, v108, v109, v110, v111, v112);
  v119 = objc_msgSend_copy(v96, v114, v115, v116, v117, v118);
  v121 = objc_msgSend_initWithTilePosition_subtilePositions_scale_origin_orderedStrokeIdentifiers_contentStrokeIdentifiers_overlapStrokeIdentifiers_contextStrokeIdentifiers_(self, v120, v127, v34, v61, v113, v119, v107, v9, v21, v23);

  return v121;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_msgSend_scale(self, v5, v6, v7, v8, v9);
  *&v10 = v10;
  objc_msgSend_encodeFloat_forKey_(coderCopy, v11, @"scale", v12, v13, v14, v10);
  v15 = MEMORY[0x1E696B098];
  objc_msgSend_origin(self, v16, v17, v18, v19, v20);
  v26 = objc_msgSend_ch_valueWithCGPoint_(v15, v21, v22, v23, v24, v25);
  objc_msgSend_encodeObject_forKey_(coderCopy, v27, v26, @"origin", v28, v29);

  v35 = objc_msgSend_subtilePositions(self, v30, v31, v32, v33, v34);
  objc_msgSend_encodeObject_forKey_(coderCopy, v36, v35, @"subtilePositions", v37, v38);

  v44 = objc_msgSend_tilePosition(self, v39, v40, v41, v42, v43);
  objc_msgSend_encodeObject_forKey_(coderCopy, v45, v44, @"tilePosition", v46, v47);

  v53 = objc_msgSend_orderedStrokeIdentifiers(self, v48, v49, v50, v51, v52);
  objc_msgSend_encodeObject_forKey_(coderCopy, v54, v53, @"orderedStrokeIdentifiers", v55, v56);

  v62 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v57, v58, v59, v60, v61);
  v68 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v63, v64, v65, v66, v67);
  v74 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v69, v70, v71, v72, v73);
  v80 = objc_msgSend_orderedStrokeIdentifiers(self, v75, v76, v77, v78, v79);
  v97 = MEMORY[0x1E69E9820];
  v98 = 3221225472;
  v99 = sub_1838D4054;
  v100 = &unk_1E6DDF860;
  selfCopy = self;
  v81 = v62;
  v102 = v81;
  v82 = v68;
  v103 = v82;
  v83 = v74;
  v104 = v83;
  objc_msgSend_enumerateObjectsUsingBlock_(v80, v84, &v97, v85, v86, v87);

  objc_msgSend_encodeObject_forKey_(coderCopy, v88, v81, @"contentStrokeIndexes", v89, v90, v97, v98, v99, v100, selfCopy);
  objc_msgSend_encodeObject_forKey_(coderCopy, v91, v82, @"overlapStrokeIndexes", v92, v93);
  objc_msgSend_encodeObject_forKey_(coderCopy, v94, v83, @"contextStrokeIndexes", v95, v96);
}

- (id)description
{
  v121.receiver = self;
  v121.super_class = CHDocumentTile;
  v120 = [(CHDocumentTile *)&v121 description];
  v119 = objc_msgSend_tilePosition(self, v3, v4, v5, v6, v7);
  v116 = objc_msgSend_row(v119, v8, v9, v10, v11, v12);
  v118 = objc_msgSend_tilePosition(self, v13, v14, v15, v16, v17);
  v115 = objc_msgSend_column(v118, v18, v19, v20, v21, v22);
  v117 = objc_msgSend_tilePosition(self, v23, v24, v25, v26, v27);
  v33 = objc_msgSend_subtileIndex(v117, v28, v29, v30, v31, v32);
  if (objc_msgSend_hasSubtiles(self, v34, v35, v36, v37, v38))
  {
    v44 = @"YES";
  }

  else
  {
    v44 = @"NO";
  }

  objc_msgSend_scale(self, v39, v40, v41, v42, v43);
  v46 = v45;
  objc_msgSend_origin(self, v47, v48, v49, v50, v51);
  v53 = v52;
  objc_msgSend_origin(self, v54, v55, v56, v57, v58);
  v60 = v59;
  v66 = objc_msgSend_orderedStrokeIdentifiers(self, v61, v62, v63, v64, v65);
  v72 = objc_msgSend_count(v66, v67, v68, v69, v70, v71);
  v78 = objc_msgSend_contentStrokeIdentifiers(self, v73, v74, v75, v76, v77);
  v84 = objc_msgSend_count(v78, v79, v80, v81, v82, v83);
  v90 = objc_msgSend_overlapStrokeIdentifiers(self, v85, v86, v87, v88, v89);
  v96 = objc_msgSend_count(v90, v91, v92, v93, v94, v95);
  v102 = objc_msgSend_contextStrokeIdentifiers(self, v97, v98, v99, v100, v101);
  v108 = objc_msgSend_count(v102, v103, v104, v105, v106, v107);
  v113 = objc_msgSend_stringByAppendingFormat_(v120, v109, @" Row = %ld, Column = %ld, SubtileIndex = %@, HasSubtiles = %@, Scale = %.2f, Origin = [%.2f, %.2f], Stroke count = %lu, Content stroke count = %lu, Overlap stroke count = %lu, Context stroke count = %lu", v110, v111, v112, v116, v115, v33, v44, v46, v53, v60, v72, v84, v96, v108);

  return v113;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CHMutableDocumentTile alloc];
  v10 = objc_msgSend_tilePosition(self, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_subtilePositions(self, v11, v12, v13, v14, v15);
  objc_msgSend_scale(self, v17, v18, v19, v20, v21);
  v23 = v22;
  objc_msgSend_origin(self, v24, v25, v26, v27, v28);
  v30 = v29;
  v32 = v31;
  v38 = objc_msgSend_orderedStrokeIdentifiers(self, v33, v34, v35, v36, v37);
  v44 = objc_msgSend_contentStrokeIdentifiers(self, v39, v40, v41, v42, v43);
  v50 = objc_msgSend_overlapStrokeIdentifiers(self, v45, v46, v47, v48, v49);
  v56 = objc_msgSend_contextStrokeIdentifiers(self, v51, v52, v53, v54, v55);
  v58 = objc_msgSend_initWithTilePosition_subtilePositions_scale_origin_orderedStrokeIdentifiers_contentStrokeIdentifiers_overlapStrokeIdentifiers_contextStrokeIdentifiers_(v4, v57, v10, v16, v38, v44, v50, v56, v23, v30, v32);

  return v58;
}

- (unint64_t)hash
{
  result = self->_savedHash;
  if (!result)
  {
    v8 = MEMORY[0x1E696AD98];
    objc_msgSend_scale(self, a2, v2, v3, v4, v5);
    v14 = objc_msgSend_numberWithDouble_(v8, v9, v10, v11, v12, v13);
    v20 = objc_msgSend_hash(v14, v15, v16, v17, v18, v19);

    v26 = objc_msgSend_tilePosition(self, v21, v22, v23, v24, v25);
    v32 = objc_msgSend_hash(v26, v27, v28, v29, v30, v31);

    v38 = objc_msgSend_subtilePositions(self, v33, v34, v35, v36, v37);
    v44 = objc_msgSend_hash(v38, v39, v40, v41, v42, v43);

    v50 = objc_msgSend_contentStrokeIdentifiers(self, v45, v46, v47, v48, v49);
    v56 = objc_msgSend_hash(v50, v51, v52, v53, v54, v55);

    v62 = objc_msgSend_overlapStrokeIdentifiers(self, v57, v58, v59, v60, v61);
    v68 = objc_msgSend_hash(v62, v63, v64, v65, v66, v67);

    v74 = objc_msgSend_contextStrokeIdentifiers(self, v69, v70, v71, v72, v73);
    v80 = objc_msgSend_hash(v74, v75, v76, v77, v78, v79);

    result = v32 ^ v44 ^ v56 ^ v68 ^ v80 ^ (229 * v20);
    self->_savedHash = result;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v11 = v5;
    if (self)
    {
      if (self != v5)
      {
        objc_msgSend_scale(self, v6, v7, v8, v9, v10);
        v13 = v12;
        objc_msgSend_scale(v11, v14, v15, v16, v17, v18);
        if (v13 != v24)
        {
          goto LABEL_22;
        }

        hasSubtiles = objc_msgSend_hasSubtiles(self, v19, v20, v21, v22, v23);
        if (hasSubtiles != objc_msgSend_hasSubtiles(v11, v26, v27, v28, v29, v30))
        {
          goto LABEL_22;
        }

        v36 = objc_msgSend_tilePosition(self, v31, v32, v33, v34, v35);
        v42 = objc_msgSend_tilePosition(v11, v37, v38, v39, v40, v41);
        v48 = v42;
        if (v36 == v42)
        {
        }

        else
        {
          v49 = objc_msgSend_tilePosition(self, v43, v44, v45, v46, v47);
          v55 = objc_msgSend_tilePosition(v11, v50, v51, v52, v53, v54);
          v56 = sub_1838D3488(v49, v55);

          if (!v56)
          {
            goto LABEL_22;
          }
        }

        v62 = objc_msgSend_subtilePositions(self, v57, v58, v59, v60, v61);
        v68 = objc_msgSend_subtilePositions(v11, v63, v64, v65, v66, v67);
        v74 = v68;
        if (v62 == v68)
        {
        }

        else
        {
          v75 = objc_msgSend_subtilePositions(self, v69, v70, v71, v72, v73);
          v81 = objc_msgSend_subtilePositions(v11, v76, v77, v78, v79, v80);
          isEqualToArray = objc_msgSend_isEqualToArray_(v75, v82, v81, v83, v84, v85);

          if (!isEqualToArray)
          {
            goto LABEL_22;
          }
        }

        v92 = objc_msgSend_contentStrokeIdentifiers(self, v87, v88, v89, v90, v91);
        v98 = objc_msgSend_contentStrokeIdentifiers(v11, v93, v94, v95, v96, v97);
        v104 = v98;
        if (v92 == v98)
        {
        }

        else
        {
          v105 = objc_msgSend_contentStrokeIdentifiers(self, v99, v100, v101, v102, v103);
          v111 = objc_msgSend_contentStrokeIdentifiers(v11, v106, v107, v108, v109, v110);
          isEqualToSet = objc_msgSend_isEqualToSet_(v105, v112, v111, v113, v114, v115);

          if (!isEqualToSet)
          {
            goto LABEL_22;
          }
        }

        v122 = objc_msgSend_overlapStrokeIdentifiers(self, v117, v118, v119, v120, v121);
        v128 = objc_msgSend_overlapStrokeIdentifiers(v11, v123, v124, v125, v126, v127);
        v134 = v128;
        if (v122 == v128)
        {
        }

        else
        {
          v135 = objc_msgSend_overlapStrokeIdentifiers(self, v129, v130, v131, v132, v133);
          v141 = objc_msgSend_overlapStrokeIdentifiers(v11, v136, v137, v138, v139, v140);
          v146 = objc_msgSend_isEqualToSet_(v135, v142, v141, v143, v144, v145);

          if (!v146)
          {
LABEL_22:
            LOBYTE(self) = 0;
            goto LABEL_23;
          }
        }

        v153 = objc_msgSend_contextStrokeIdentifiers(self, v147, v148, v149, v150, v151);
        v164 = objc_msgSend_contextStrokeIdentifiers(v11, v154, v155, v156, v157, v158);
        if (v153 == v164)
        {
          LOBYTE(self) = 1;
        }

        else
        {
          v165 = objc_msgSend_contextStrokeIdentifiers(self, v159, v160, v161, v162, v163);
          v171 = objc_msgSend_contextStrokeIdentifiers(v11, v166, v167, v168, v169, v170);
          LOBYTE(self) = objc_msgSend_isEqualToSet_(v165, v172, v171, v173, v174, v175);
        }

        goto LABEL_23;
      }

      LOBYTE(self) = 1;
    }

LABEL_23:

    goto LABEL_24;
  }

  LOBYTE(self) = 0;
LABEL_24:

  return self;
}

- (BOOL)hasSubtiles
{
  v6 = objc_msgSend_subtilePositions(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_count(v6, v7, v8, v9, v10, v11) != 0;

  return v12;
}

- (CGPoint)origin
{
  x = self->_origin.x;
  y = self->_origin.y;
  result.y = y;
  result.x = x;
  return result;
}

@end