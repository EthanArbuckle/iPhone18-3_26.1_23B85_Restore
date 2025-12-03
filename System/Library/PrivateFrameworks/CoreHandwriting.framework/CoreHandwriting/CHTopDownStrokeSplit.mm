@interface CHTopDownStrokeSplit
+ (id)writingDirectionOrderedStrokes:(id)strokes substrokesByStrokeIdentifier:(id)identifier writingOrientation:(int64_t)orientation;
- (CGRect)groupBounds1;
- (CGRect)groupBounds2;
- (CHTopDownStrokeSplit)initWithStrokes:(id)strokes substrokesByStrokeIdentifier:(id)identifier splitIndex:(int64_t)index writingOrientation:(int64_t)orientation;
@end

@implementation CHTopDownStrokeSplit

- (CHTopDownStrokeSplit)initWithStrokes:(id)strokes substrokesByStrokeIdentifier:(id)identifier splitIndex:(int64_t)index writingOrientation:(int64_t)orientation
{
  strokesCopy = strokes;
  identifierCopy = identifier;
  v117.receiver = self;
  v117.super_class = CHTopDownStrokeSplit;
  v17 = [(CHTopDownStrokeSplit *)&v117 init];
  if (v17)
  {
    v18 = objc_msgSend_array(MEMORY[0x1E695DF70], v12, v13, v14, v15, v16);
    v29 = objc_msgSend_array(MEMORY[0x1E695DF70], v19, v20, v21, v22, v23);
    v30 = 0;
    v31 = *MEMORY[0x1E695F050];
    v32 = *(MEMORY[0x1E695F050] + 8);
    v33 = *(MEMORY[0x1E695F050] + 16);
    v34 = *(MEMORY[0x1E695F050] + 24);
    x = *MEMORY[0x1E695F050];
    y = v32;
    width = v33;
    height = v34;
    while (v30 < objc_msgSend_count(strokesCopy, v24, v25, v26, v27, v28))
    {
      v48 = objc_msgSend_objectAtIndexedSubscript_(strokesCopy, v39, v30, v41, v42, v43);
      if (v30 <= index)
      {
        objc_msgSend_addObject_(v18, v44, v48, v45, v46, v47);
        objc_msgSend_bounds(v48, v58, v59, v60, v61, v62);
        v123.origin.x = v63;
        v123.origin.y = v64;
        v123.size.width = v65;
        v123.size.height = v66;
        v120.origin.x = x;
        v120.origin.y = y;
        v120.size.width = width;
        v120.size.height = height;
        v121 = CGRectUnion(v120, v123);
        x = v121.origin.x;
        y = v121.origin.y;
        width = v121.size.width;
        height = v121.size.height;
      }

      else
      {
        objc_msgSend_addObject_(v29, v44, v48, v45, v46, v47);
        objc_msgSend_bounds(v48, v49, v50, v51, v52, v53);
        v122.origin.x = v54;
        v122.origin.y = v55;
        v122.size.width = v56;
        v122.size.height = v57;
        v118.origin.x = v31;
        v118.origin.y = v32;
        v118.size.width = v33;
        v118.size.height = v34;
        v119 = CGRectUnion(v118, v122);
        v31 = v119.origin.x;
        v32 = v119.origin.y;
        v33 = v119.size.width;
        v34 = v119.size.height;
      }

      ++v30;
    }

    v67 = objc_msgSend_copy(v18, v39, v40, v41, v42, v43);
    v68 = *(v17 + 1);
    *(v17 + 1) = v67;

    v74 = objc_msgSend_copy(v29, v69, v70, v71, v72, v73);
    v75 = *(v17 + 2);
    *(v17 + 2) = v74;

    *(v17 + 9) = x;
    *(v17 + 10) = y;
    *(v17 + 11) = width;
    *(v17 + 12) = height;
    *(v17 + 13) = v31;
    *(v17 + 14) = v32;
    *(v17 + 15) = v33;
    *(v17 + 16) = v34;
    v81 = objc_msgSend_firstObject(v29, v76, v77, v78, v79, v80);
    objc_msgSend_startTimestamp(v81, v82, v83, v84, v85, v86);
    v88 = v87;
    v94 = objc_msgSend_lastObject(v18, v89, v90, v91, v92, v93);
    objc_msgSend_endTimestamp(v94, v95, v96, v97, v98, v99);
    *(v17 + 3) = v88 - v100;

    v101 = objc_opt_class();
    v104 = objc_msgSend_writingDirectionOrderedStrokes_substrokesByStrokeIdentifier_writingOrientation_(v101, v102, strokesCopy, identifierCopy, orientation, v103);
    v105 = *(v17 + 4);
    *(v17 + 4) = v104;

    v106 = objc_opt_class();
    v109 = objc_msgSend_writingDirectionOrderedStrokes_substrokesByStrokeIdentifier_writingOrientation_(v106, v107, *(v17 + 1), identifierCopy, orientation, v108);
    v110 = *(v17 + 5);
    *(v17 + 5) = v109;

    v111 = objc_opt_class();
    v114 = objc_msgSend_writingDirectionOrderedStrokes_substrokesByStrokeIdentifier_writingOrientation_(v111, v112, *(v17 + 2), identifierCopy, orientation, v113);
    v115 = *(v17 + 6);
    *(v17 + 6) = v114;

    *(v17 + 7) = sub_183843F70(v18, identifierCopy);
    *(v17 + 8) = sub_183843F70(v29, identifierCopy);
  }

  return v17;
}

+ (id)writingDirectionOrderedStrokes:(id)strokes substrokesByStrokeIdentifier:(id)identifier writingOrientation:(int64_t)orientation
{
  identifierCopy = identifier;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1838441C8;
  v15[3] = &unk_1E6DDEDD0;
  v16 = identifierCopy;
  orientationCopy = orientation;
  v8 = identifierCopy;
  v13 = objc_msgSend_sortedArrayUsingComparator_(strokes, v9, v15, v10, v11, v12);

  return v13;
}

- (CGRect)groupBounds1
{
  x = self->_groupBounds1.origin.x;
  y = self->_groupBounds1.origin.y;
  width = self->_groupBounds1.size.width;
  height = self->_groupBounds1.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)groupBounds2
{
  x = self->_groupBounds2.origin.x;
  y = self->_groupBounds2.origin.y;
  width = self->_groupBounds2.size.width;
  height = self->_groupBounds2.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end