@interface _MPCPlayerResponseTracklistDisplayDataSource
- (_MPCPlayerResponseTracklistDisplayDataSource)initWithResponse:(id)a3 tracklistItems:(id)a4 playingItemIndexPath:(id)a5 tailInsertionContentItemID:(id)a6;
- (id)displayIndexPathForStructuredIndexPath:(id)a3;
- (id)itemAtIndexPath:(id)a3;
- (id)sectionAtIndex:(unint64_t)a3;
- (id)structuredIndexPathForDisplayIndexPath:(id)a3;
- (unint64_t)numberOfItemsInSection:(unint64_t)a3;
- (unint64_t)numberOfSections;
@end

@implementation _MPCPlayerResponseTracklistDisplayDataSource

- (id)itemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(_MPCPlayerResponseTracklistDisplayDataSource *)self sectionRanges];

  if (v5)
  {
    v6 = [(_MPCPlayerResponseTracklistDisplayDataSource *)self structuredIndexPathForDisplayIndexPath:v4];
    v7 = [(_MPCPlayerResponseTracklistDisplayDataSource *)self items];
    v8 = [v7 itemAtIndexPath:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)numberOfItemsInSection:(unint64_t)a3
{
  v5 = [(_MPCPlayerResponseTracklistDisplayDataSource *)self sectionRanges];

  if (!v5)
  {
    return 0;
  }

  v6 = [(_MPCPlayerResponseTracklistDisplayDataSource *)self sectionRanges];
  v7 = [(_MPCPlayerResponseTracklistDisplayDataSource *)self sections];
  v8 = [v7 objectAtIndexedSubscript:a3];
  v9 = [v6 objectForKeyedSubscript:v8];
  [v9 signedRangeValue];
  v11 = v10;

  return v11;
}

- (id)sectionAtIndex:(unint64_t)a3
{
  v5 = [(_MPCPlayerResponseTracklistDisplayDataSource *)self sections];

  if (v5)
  {
    v6 = [(_MPCPlayerResponseTracklistDisplayDataSource *)self sections];
    v7 = [v6 objectAtIndexedSubscript:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)numberOfSections
{
  v3 = [(_MPCPlayerResponseTracklistDisplayDataSource *)self sections];

  if (!v3)
  {
    return 0;
  }

  v4 = [(_MPCPlayerResponseTracklistDisplayDataSource *)self sections];
  v5 = [v4 count];

  return v5;
}

- (id)displayIndexPathForStructuredIndexPath:(id)a3
{
  v5 = a3;
  v6 = [(_MPCPlayerResponseTracklistDisplayDataSource *)self items];
  v7 = [v6 globalIndexForIndexPath:v5];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"MPCPlayerResponseTracklist.m" lineNumber:725 description:{@"structureIndexPath did not produce a valid global index: %@", v5}];
  }

  v27 = a2;
  v8 = [(_MPCPlayerResponseTracklistDisplayDataSource *)self sections];
  v9 = [v8 count];

  if (v9 < 1)
  {
    goto LABEL_10;
  }

  v26 = v5;
  v10 = 0;
  v11 = 0;
  do
  {
    v12 = [(_MPCPlayerResponseTracklistDisplayDataSource *)self sectionRanges];
    v13 = [(_MPCPlayerResponseTracklistDisplayDataSource *)self sections];
    v14 = [v13 objectAtIndexedSubscript:v10];
    v15 = [v12 objectForKeyedSubscript:v14];
    v16 = [v15 signedRangeValue];
    v18 = v17;

    v19 = v7 - v16;
    if (v7 >= v16 && v19 < v18)
    {
      v20 = [MEMORY[0x1E696AC88] indexPathForItem:? inSection:?];

      v11 = v20;
    }

    ++v10;
    v21 = [(_MPCPlayerResponseTracklistDisplayDataSource *)self sections];
    v22 = [v21 count];
  }

  while (v10 < v22);
  v5 = v26;
  if (!v11)
  {
LABEL_10:
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:v27 object:self file:@"MPCPlayerResponseTracklist.m" lineNumber:741 description:{@"Could not find a displayIndexPath for structuredIndexPath: %@", v5}];

    v11 = 0;
  }

  return v11;
}

- (id)structuredIndexPathForDisplayIndexPath:(id)a3
{
  v5 = a3;
  v6 = [v5 section];
  if (v6 >= [(_MPCPlayerResponseTracklistDisplayDataSource *)self numberOfSections])
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_MPCPlayerResponseTracklistDisplayDataSource numberOfSections](self, "numberOfSections")}];
    [v17 handleFailureInMethod:a2 object:self file:@"MPCPlayerResponseTracklist.m" lineNumber:714 description:{@"Provided display index path is out of bounds for this collection: %@ (section count %@)", v5, v18}];
  }

  v7 = [v5 item];
  if (v7 >= -[_MPCPlayerResponseTracklistDisplayDataSource numberOfItemsInSection:](self, "numberOfItemsInSection:", [v5 section]))
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_MPCPlayerResponseTracklistDisplayDataSource numberOfItemsInSection:](self, "numberOfItemsInSection:", objc_msgSend(v5, "section"))}];
    [v19 handleFailureInMethod:a2 object:self file:@"MPCPlayerResponseTracklist.m" lineNumber:715 description:{@"Provided display index path is out of bounds for this collection: %@ (item count %@)", v5, v20}];
  }

  v8 = [(_MPCPlayerResponseTracklistDisplayDataSource *)self sectionRanges];
  v9 = [(_MPCPlayerResponseTracklistDisplayDataSource *)self sections];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];
  v11 = [v8 objectForKeyedSubscript:v10];
  v12 = [v11 signedRangeValue];

  v13 = [v5 item];
  v14 = [(_MPCPlayerResponseTracklistDisplayDataSource *)self items];
  v15 = [v14 indexPathForGlobalIndex:v13 + v12];

  return v15;
}

- (_MPCPlayerResponseTracklistDisplayDataSource)initWithResponse:(id)a3 tracklistItems:(id)a4 playingItemIndexPath:(id)a5 tailInsertionContentItemID:(id)a6
{
  v93 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v91.receiver = self;
  v91.super_class = _MPCPlayerResponseTracklistDisplayDataSource;
  v15 = [(_MPCPlayerResponseTracklistDisplayDataSource *)&v91 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_items, a4);
    v17 = [v13 copy];
    playingItemIndexPath = v16->_playingItemIndexPath;
    v16->_playingItemIndexPath = v17;

    v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:5];
    v20 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:5];
    if (v13)
    {
      v21 = [v12 globalIndexForIndexPath:v13];
      if (v21 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v22 = v21;
        v77 = v16;
        v78 = a2;
        if (v21 >= 1)
        {
          v90[0] = 0;
          v90[1] = v21;
          v23 = [MEMORY[0x1E696B098] valueWithBytes:v90 objCType:"{_MSVSignedRange=qq}"];
          [(NSDictionary *)v20 setObject:v23 forKeyedSubscript:@"MPCPlayerResponseTracklistDisplaySectionPreviousItems"];

          [v19 addObject:@"MPCPlayerResponseTracklistDisplaySectionPreviousItems"];
        }

        v24 = [v11 builder];
        v25 = [v11 chain];
        v79 = [v24 playerItemContentID:0 atIndexPath:v13 chain:v25];

        v75 = v22;
        v89[0] = v22;
        v89[1] = 1;
        v26 = [MEMORY[0x1E696B098] valueWithBytes:v89 objCType:"{_MSVSignedRange=qq}"];
        [(NSDictionary *)v20 setObject:v26 forKeyedSubscript:@"MPCPlayerResponseTracklistDisplaySectionPlayingItem"];

        v74 = v19;
        [v19 addObject:@"MPCPlayerResponseTracklistDisplaySectionPlayingItem"];
        v80 = v12;
        v81 = [v12 totalItemCount];
        v27 = 0x7FFFFFFFFFFFFFFFLL;
        v72 = v14;
        v73 = v13;
        if (!v14 || v79 == v14 || ([v79 isEqual:v14] & 1) != 0)
        {
          v28 = v81;
          v29 = v22;
        }

        else
        {
          v30 = v22 + 1;
          v28 = v81;
          if (v22 + 1 >= v81)
          {
            goto LABEL_18;
          }

          v27 = v22 + 1;
          while (1)
          {
            v31 = [v11 builder];
            v32 = [v12 indexPathForGlobalIndex:v27];
            v33 = [v11 chain];
            v34 = [v31 playerItemContentID:0 atIndexPath:v32 chain:v33];

            v35 = v34;
            v36 = v35;
            if (v35 == v14)
            {
              break;
            }

            v37 = [v14 isEqual:v35];

            v28 = v81;
            if (v37)
            {
              goto LABEL_17;
            }

            if (v81 == ++v27)
            {
              goto LABEL_18;
            }
          }

          v28 = v81;
LABEL_17:

          if (v27 == 0x7FFFFFFFFFFFFFFFLL)
          {
LABEL_18:
            v27 = v28 - 1;
          }

          v88[0] = v30;
          v88[1] = v27 - v75;
          v38 = [MEMORY[0x1E696B098] valueWithBytes:v88 objCType:"{_MSVSignedRange=qq}"];
          [(NSDictionary *)v20 setObject:v38 forKeyedSubscript:@"MPCPlayerResponseTracklistDisplaySectionUpNextItems"];

          [v74 addObject:@"MPCPlayerResponseTracklistDisplaySectionUpNextItems"];
          v29 = v27;
        }

        v39 = 0x7FFFFFFFFFFFFFFFLL;
        v76 = v29 + 1;
        if (v29 + 1 < v28)
        {
          v40 = v29 + 1;
          do
          {
            v41 = [v12 indexPathForGlobalIndex:v40];
            v42 = [v41 msv_section];

            v43 = [v11 builder];
            v44 = [v11 chain];
            LODWORD(v42) = [v43 sectionIsAutoPlaySection:0 atIndex:v42 chain:v44];

            v28 = v81;
            if (v42)
            {
              v45 = v40;
            }

            else
            {
              v45 = 0x7FFFFFFFFFFFFFFFLL;
            }

            if (v39 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v39 = v45;
            }

            ++v40;
          }

          while (v81 != v40);
        }

        v46 = v28 - 1;
        if (v28 - 1 != v27)
        {
          if (v39 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v46 = v39 - 1;
          }

          v47 = v46 - v76;
          if (v47 >= 0)
          {
            v87[0] = v76;
            v87[1] = v47 + 1;
            v48 = [MEMORY[0x1E696B098] valueWithBytes:v87 objCType:"{_MSVSignedRange=qq}"];
            [(NSDictionary *)v20 setObject:v48 forKeyedSubscript:@"MPCPlayerResponseTracklistDisplaySectionNextItems"];

            [v74 addObject:@"MPCPlayerResponseTracklistDisplaySectionNextItems"];
          }
        }

        if (v39 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v86[0] = v39;
          v86[1] = v28 - v39;
          v49 = [MEMORY[0x1E696B098] valueWithBytes:v86 objCType:"{_MSVSignedRange=qq}"];
          [(NSDictionary *)v20 setObject:v49 forKeyedSubscript:@"MPCPlayerResponseTracklistDisplaySectionAutoPlayItems"];

          [v74 addObject:@"MPCPlayerResponseTracklistDisplaySectionAutoPlayItems"];
        }

        v50 = [v74 count];
        if (v50 != [(NSDictionary *)v20 count])
        {
          v69 = [MEMORY[0x1E696AAA8] currentHandler];
          [v69 handleFailureInMethod:v78 object:v77 file:@"MPCPlayerResponseTracklist.m" lineNumber:697 description:{@"Count mismatch: sections=%@ sectionRangeMap=%@", v74, v20}];
        }

        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v51 = v74;
        v52 = [(NSArray *)v51 countByEnumeratingWithState:&v82 objects:v92 count:16];
        if (v52)
        {
          v53 = v52;
          v54 = 0;
          v55 = *v83;
          do
          {
            for (i = 0; i != v53; ++i)
            {
              if (*v83 != v55)
              {
                objc_enumerationMutation(v51);
              }

              v57 = *(*(&v82 + 1) + 8 * i);
              v58 = [(NSDictionary *)v20 objectForKeyedSubscript:v57];
              if (!v58)
              {
                v62 = [MEMORY[0x1E696AAA8] currentHandler];
                [v62 handleFailureInMethod:v78 object:v77 file:@"MPCPlayerResponseTracklist.m" lineNumber:701 description:{@"Missing section range for section: %@", v57}];
              }

              v59 = [v58 signedRangeValue];
              v61 = v60;
              if (v59 != v54)
              {
                v63 = v59;
                [MEMORY[0x1E696AAA8] currentHandler];
                v64 = v71 = v63;
                [v64 handleFailureInMethod:v78 object:v77 file:@"MPCPlayerResponseTracklist.m" lineNumber:703 description:{@"Non-contiguous range detected: location=%ld expectedLocation=%ld", v71, v54}];
              }

              v54 += v61;
            }

            v53 = [(NSArray *)v51 countByEnumeratingWithState:&v82 objects:v92 count:16];
          }

          while (v53);
        }

        else
        {
          v54 = 0;
        }

        v16 = v77;
        if (v54 != v81)
        {
          v70 = [MEMORY[0x1E696AAA8] currentHandler];
          [v70 handleFailureInMethod:v78 object:v77 file:@"MPCPlayerResponseTracklist.m" lineNumber:706 description:{@"sectionRangeMap does not include all items: sectionRangesCount=%ld / items.totalItemCount=%ld", v54, v81}];
        }

        sections = v77->_sections;
        v77->_sections = v51;
        v66 = v51;

        sectionRanges = v77->_sectionRanges;
        v77->_sectionRanges = v20;

        v20 = v66;
        v19 = v79;
        v12 = v80;
        v14 = v72;
        v13 = v73;
      }
    }
  }

  return v16;
}

@end