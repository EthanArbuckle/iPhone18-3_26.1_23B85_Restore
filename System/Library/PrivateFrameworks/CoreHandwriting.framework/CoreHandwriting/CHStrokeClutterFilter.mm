@interface CHStrokeClutterFilter
- (BOOL)isHighDensityStroke:(id)stroke;
- (CHStrokeClutterFilter)init;
- (id)clutterFilterByAddingStrokes:(id)strokes removingStrokeIdentifiers:(id)identifiers affectedStrokeIdentifiers:(id *)strokeIdentifiers;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugQuickLookObject;
- (id)strokeIDsWithinRectangleRegion:(CGRect *)region;
- (void)dealloc;
@end

@implementation CHStrokeClutterFilter

- (CHStrokeClutterFilter)init
{
  v3.receiver = self;
  v3.super_class = CHStrokeClutterFilter;
  if ([(CHStrokeClutterFilter *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  heatMap = self->_heatMap;
  if (heatMap)
  {
    v4 = sub_18380F1D4(heatMap);
    MEMORY[0x1865E5EC0](v4, 0x10A0C402E9B2A30);
  }

  v5.receiver = self;
  v5.super_class = CHStrokeClutterFilter;
  [(CHStrokeClutterFilter *)&v5 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7 = objc_msgSend_allocWithZone_(CHStrokeClutterFilter, a2, zone, v3, v4, v5);
  heatMap = self->_heatMap;
  CHStrokeID2HeatmapItemID = self->_CHStrokeID2HeatmapItemID;
  heatmapItemID2CHStrokeID = self->_heatmapItemID2CHStrokeID;

  return sub_18380F040(v7, heatMap, CHStrokeID2HeatmapItemID, heatmapItemID2CHStrokeID);
}

- (id)clutterFilterByAddingStrokes:(id)strokes removingStrokeIdentifiers:(id)identifiers affectedStrokeIdentifiers:(id *)strokeIdentifiers
{
  strokesCopy = strokes;
  identifiersCopy = identifiers;
  objc_msgSend_mutableCopy(self->_CHStrokeID2HeatmapItemID, v8, v9, v10, v11, v12, strokesCopy, identifiersCopy, strokeIdentifiers);
  objc_msgSend_mutableCopy(self->_heatmapItemID2CHStrokeID, v13, v14, v15, v16, v17);
  operator new();
}

- (BOOL)isHighDensityStroke:(id)stroke
{
  v7 = objc_msgSend_objectForKey_(self->_CHStrokeID2HeatmapItemID, a2, stroke, v3, v4, v5);
  v13 = v7;
  if (v7)
  {
    v14 = objc_msgSend_unsignedLongValue(v7, v8, v9, v10, v11, v12);
    heatMap = self->_heatMap;
    v16 = heatMap[7];
    if (v16)
    {
      v17 = vcnt_s8(v16);
      v17.i16[0] = vaddlv_u8(v17);
      if (v17.u32[0] > 1uLL)
      {
        v18 = v14;
        if (*&v16 <= v14)
        {
          v18 = v14 % *&v16;
        }
      }

      else
      {
        v18 = (*&v16 - 1) & v14;
      }

      v19 = *(*&heatMap[6] + 8 * v18);
      if (v19)
      {
        v20 = *v19;
        if (v20)
        {
          if (v17.u32[0] < 2uLL)
          {
            v21 = *&v16 - 1;
            while (1)
            {
              v23 = v20[1];
              if (v23 == v14)
              {
                if (v20[2] == v14)
                {
                  goto LABEL_22;
                }
              }

              else if ((v23 & v21) != v18)
              {
                goto LABEL_23;
              }

              v20 = *v20;
              if (!v20)
              {
                goto LABEL_23;
              }
            }
          }

          do
          {
            v22 = v20[1];
            if (v22 == v14)
            {
              if (v20[2] == v14)
              {
LABEL_22:

                return 1;
              }
            }

            else
            {
              if (v22 >= *&v16)
              {
                v22 %= *&v16;
              }

              if (v22 != v18)
              {
                break;
              }
            }

            v20 = *v20;
          }

          while (v20);
        }
      }
    }
  }

LABEL_23:

  return 0;
}

- (id)strokeIDsWithinRectangleRegion:(CGRect *)region
{
  v93 = *MEMORY[0x1E69E9840];
  v8 = objc_msgSend_count(self->_CHStrokeID2HeatmapItemID, a2, region, v3, v4, v5);
  if (v8 != objc_msgSend_count(self->_heatmapItemID2CHStrokeID, v9, v10, v11, v12, v13))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v19 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v25 = objc_msgSend_count(self->_CHStrokeID2HeatmapItemID, v20, v21, v22, v23, v24);
      v31 = objc_msgSend_count(self->_heatmapItemID2CHStrokeID, v26, v27, v28, v29, v30);
      *buf = 134218240;
      *&buf[4] = v25;
      *&buf[12] = 2048;
      *&buf[14] = v31;
      _os_log_impl(&dword_18366B000, v19, OS_LOG_TYPE_ERROR, "calling strokeIDsWithinRegionOfInterest() while clutter filter being in inconsistent status: %lu <==> %lu", buf, 0x16u);
    }
  }

  v32 = objc_msgSend_count(self->_CHStrokeID2HeatmapItemID, v14, v15, v16, v17, v18);
  if (v32 != objc_msgSend_count(self->_heatmapItemID2CHStrokeID, v33, v34, v35, v36, v37))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v43 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
    {
      v49 = objc_msgSend_count(self->_CHStrokeID2HeatmapItemID, v44, v45, v46, v47, v48);
      v55 = objc_msgSend_count(self->_heatmapItemID2CHStrokeID, v50, v51, v52, v53, v54);
      *buf = 134218240;
      *&buf[4] = v49;
      *&buf[12] = 2048;
      *&buf[14] = v55;
      _os_log_impl(&dword_18366B000, v43, OS_LOG_TYPE_FAULT, "calling strokeIDsWithinRegionOfInterest() while clutter filter being in inconsistent status: %lu <==> %lu", buf, 0x16u);
    }
  }

  v61 = objc_msgSend_set(MEMORY[0x1E695DFA8], v38, v39, v40, v41, v42);
  if (self->_heatMap && objc_msgSend_count(self->_CHStrokeID2HeatmapItemID, v56, v57, v58, v59, v60))
  {
    heatMap = self->_heatMap;
    memset(buf, 0, sizeof(buf));
    v92 = 1065353216;
    v63 = heatMap[13];
    if (v63)
    {
      v64 = MEMORY[0x1E695F058];
      do
      {
        v95.origin.x = (*heatMap * v63[2]);
        v95.origin.y = (*heatMap * v63[3]);
        v95.size.width = *heatMap;
        v95.size.height = v95.size.width;
        v96 = CGRectIntersection(v95, *region);
        if (!CGRectEqualToRect(v96, *v64))
        {
          for (i = v63[6]; i; i = *i)
          {
            sub_183811498(buf, i + 2);
          }
        }

        v63 = *v63;
      }

      while (v63);
      v71 = *&buf[16];
      if (*&buf[16])
      {
        *&v69 = 138412290;
        v88 = v69;
        while (1)
        {
          v72 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v65, v71[2], v66, v67, v68, v88);
          v81 = objc_msgSend_objectForKey_(self->_heatmapItemID2CHStrokeID, v73, v72, v74, v75, v76);
          if (!v81)
          {
            break;
          }

LABEL_32:
          objc_msgSend_addObject_(v61, v77, v81, v78, v79, v80);

          v71 = *v71;
          if (!v71)
          {
            v84 = *&buf[16];
            if (*&buf[16])
            {
              do
              {
                v85 = *v84;
                operator delete(v84);
                v84 = v85;
              }

              while (v85);
            }

            goto LABEL_40;
          }
        }

        if (qword_1EA84DC48 == -1)
        {
          v82 = qword_1EA84DC50[0];
          if (!os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_28;
          }
        }

        else
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          v82 = qword_1EA84DC50[0];
          if (!os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
          {
LABEL_28:

            if (qword_1EA84DC48 == -1)
            {
              v83 = qword_1EA84DC50[0];
              if (!os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
              {
LABEL_31:

                goto LABEL_32;
              }
            }

            else
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
              v83 = qword_1EA84DC50[0];
              if (!os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_31;
              }
            }

            *v89 = v88;
            v90 = v72;
            _os_log_impl(&dword_18366B000, v83, OS_LOG_TYPE_FAULT, "Cannot find corresponding stroke ID given the item ID: %@", v89, 0xCu);
            goto LABEL_31;
          }
        }

        *v89 = v88;
        v90 = v72;
        _os_log_impl(&dword_18366B000, v82, OS_LOG_TYPE_ERROR, "Cannot find corresponding stroke ID given the item ID: %@", v89, 0xCu);
        goto LABEL_28;
      }

LABEL_40:
      v86 = *buf;
      *buf = 0;
      if (v86)
      {
        operator delete(v86);
      }
    }

    else
    {
      *buf = 0;
    }
  }

  return v61;
}

- (id)debugQuickLookObject
{
  v50[3] = *MEMORY[0x1E69E9840];
  v3 = *(self->_heatMap + 3);
  if (!v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0x7FFFFFFFLL;
    v8 = 0x7FFFFFFFLL;
    if (qword_1EA84DC48 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0x7FFFFFFFLL;
  v8 = 0x7FFFFFFFLL;
  do
  {
    v9 = v3[3];
    if (v5 <= v3[4])
    {
      v5 = v3[4];
    }

    v10 = v3[2];
    if (v10 < v8)
    {
      v8 = v3[2];
    }

    if (v9 < v7)
    {
      v7 = v3[3];
    }

    if (v6 <= v10)
    {
      v6 = v3[2];
    }

    if (v4 <= v9)
    {
      v4 = v3[3];
    }

    v3 = *v3;
  }

  while (v3);
  if (qword_1EA84DC48 != -1)
  {
LABEL_31:
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

LABEL_15:
  v11 = qword_1EA84DC78;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = v5;
    _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_DEBUG, "debug quicklook window MaxCell=%lu", buf, 0xCu);
  }

  v12 = v6 - v8 + 1;
  height = v4 - v7 + 1;
  if (qword_1EA84DC48 == -1)
  {
    v13 = qword_1EA84DC78;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v13 = qword_1EA84DC78;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
LABEL_19:
    *buf = 134218240;
    *&buf[4] = v4 - v7 + 1;
    *&buf[12] = 2048;
    *&buf[14] = v6 - v8 + 1;
    _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_DEBUG, "debug quicklook window size=[%lu, %lu]", buf, 0x16u);
  }

LABEL_20:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v14 = qword_1EA84DC78;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v14 = qword_1EA84DC78;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
LABEL_22:
    *buf = 134218752;
    *&buf[4] = v8;
    *&buf[12] = 2048;
    *&buf[14] = v6;
    *&buf[22] = 2048;
    v49 = v7;
    LOWORD(v50[0]) = 2048;
    *(v50 + 2) = v4;
    _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_DEBUG, "debug quicklook: grid range X=[%ld, %ld], Y=[%ld, %ld]", buf, 0x2Au);
  }

LABEL_23:

  v15 = malloc_type_malloc(v12 * height, 0x100004077774924uLL);
  bzero(v15, v12 * height);
  if (v4 >= v7 && v8 <= v4)
  {
    do
    {
      v28 = 2 * v7;
      v29 = v8;
      do
      {
        heatMap = self->_heatMap;
        v32 = heatMap[2];
        v30 = 0.0;
        if (v32)
        {
          v33 = v29 ^ v28;
          v34 = vcnt_s8(v32);
          v34.i16[0] = vaddlv_u8(v34);
          v35 = (v29 ^ v28) % *&v32;
          if ((v29 ^ v28) < *&v32)
          {
            v35 = v29 ^ v28;
          }

          v36 = *&v32 - 1;
          if (v34.u32[0] <= 1uLL)
          {
            v35 = (*&v32 - 1) & v33;
          }

          v37 = *(*&heatMap[1] + 8 * v35);
          if (v37)
          {
            v38 = *v37;
            if (v38)
            {
              if (v34.u32[0] < 2uLL)
              {
                while (1)
                {
                  v40 = v38[1];
                  if (v33 == v40)
                  {
                    v39 = v38[2] == v29 && v38[3] == v7;
                    if (v39)
                    {
                      goto LABEL_35;
                    }
                  }

                  else if ((v40 & v36) != v35)
                  {
                    goto LABEL_36;
                  }

                  v38 = *v38;
                  if (!v38)
                  {
                    goto LABEL_36;
                  }
                }
              }

              do
              {
                v42 = v38[1];
                if (v33 == v42)
                {
                  if (v38[2] == v29 && v38[3] == v7)
                  {
LABEL_35:
                    v30 = v38[4] * 256.0;
                    break;
                  }
                }

                else
                {
                  if (v42 >= *&v32)
                  {
                    v42 %= *&v32;
                  }

                  if (v42 != v35)
                  {
                    break;
                  }
                }

                v38 = *v38;
              }

              while (v38);
            }
          }
        }

LABEL_36:
        *(v15 + v7 * v12 + v29) = (v30 / v5);
        v39 = v29++ == v4;
      }

      while (!v39);
      v39 = v7++ == v4;
    }

    while (!v39);
  }

  DeviceGray = CGColorSpaceCreateDeviceGray();
  v17 = CGBitmapContextCreate(v15, v12, height, 8uLL, v12, DeviceGray, 0);
  Image = CGBitmapContextCreateImage(v17);
  v44 = 0;
  v45 = &v44;
  v46 = 0x2050000000;
  v19 = qword_1EA84D028;
  v47 = qword_1EA84D028;
  if (!qword_1EA84D028)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1838112D0;
    v49 = &unk_1E6DDCCD0;
    v50[0] = &v44;
    sub_1838112D0(buf);
    v19 = v45[3];
  }

  v20 = v19;
  _Block_object_dispose(&v44, 8);
  v21 = [v19 alloc];
  v26 = objc_msgSend_initWithCGImage_(v21, v22, Image, v23, v24, v25);
  CGImageRelease(Image);
  CGContextRelease(v17);
  CGColorSpaceRelease(DeviceGray);
  free(v15);

  return v26;
}

@end