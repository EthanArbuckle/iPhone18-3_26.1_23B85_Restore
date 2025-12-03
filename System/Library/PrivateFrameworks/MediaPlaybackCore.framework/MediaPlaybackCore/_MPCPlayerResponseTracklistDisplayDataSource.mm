@interface _MPCPlayerResponseTracklistDisplayDataSource
- (_MPCPlayerResponseTracklistDisplayDataSource)initWithResponse:(id)response tracklistItems:(id)items playingItemIndexPath:(id)path tailInsertionContentItemID:(id)d;
- (id)displayIndexPathForStructuredIndexPath:(id)path;
- (id)itemAtIndexPath:(id)path;
- (id)sectionAtIndex:(unint64_t)index;
- (id)structuredIndexPathForDisplayIndexPath:(id)path;
- (unint64_t)numberOfItemsInSection:(unint64_t)section;
- (unint64_t)numberOfSections;
@end

@implementation _MPCPlayerResponseTracklistDisplayDataSource

- (id)itemAtIndexPath:(id)path
{
  pathCopy = path;
  sectionRanges = [(_MPCPlayerResponseTracklistDisplayDataSource *)self sectionRanges];

  if (sectionRanges)
  {
    v6 = [(_MPCPlayerResponseTracklistDisplayDataSource *)self structuredIndexPathForDisplayIndexPath:pathCopy];
    items = [(_MPCPlayerResponseTracklistDisplayDataSource *)self items];
    v8 = [items itemAtIndexPath:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)numberOfItemsInSection:(unint64_t)section
{
  sectionRanges = [(_MPCPlayerResponseTracklistDisplayDataSource *)self sectionRanges];

  if (!sectionRanges)
  {
    return 0;
  }

  sectionRanges2 = [(_MPCPlayerResponseTracklistDisplayDataSource *)self sectionRanges];
  sections = [(_MPCPlayerResponseTracklistDisplayDataSource *)self sections];
  v8 = [sections objectAtIndexedSubscript:section];
  v9 = [sectionRanges2 objectForKeyedSubscript:v8];
  [v9 signedRangeValue];
  v11 = v10;

  return v11;
}

- (id)sectionAtIndex:(unint64_t)index
{
  sections = [(_MPCPlayerResponseTracklistDisplayDataSource *)self sections];

  if (sections)
  {
    sections2 = [(_MPCPlayerResponseTracklistDisplayDataSource *)self sections];
    v7 = [sections2 objectAtIndexedSubscript:index];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)numberOfSections
{
  sections = [(_MPCPlayerResponseTracklistDisplayDataSource *)self sections];

  if (!sections)
  {
    return 0;
  }

  sections2 = [(_MPCPlayerResponseTracklistDisplayDataSource *)self sections];
  v5 = [sections2 count];

  return v5;
}

- (id)displayIndexPathForStructuredIndexPath:(id)path
{
  pathCopy = path;
  items = [(_MPCPlayerResponseTracklistDisplayDataSource *)self items];
  v7 = [items globalIndexForIndexPath:pathCopy];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCPlayerResponseTracklist.m" lineNumber:725 description:{@"structureIndexPath did not produce a valid global index: %@", pathCopy}];
  }

  v27 = a2;
  sections = [(_MPCPlayerResponseTracklistDisplayDataSource *)self sections];
  v9 = [sections count];

  if (v9 < 1)
  {
    goto LABEL_10;
  }

  v26 = pathCopy;
  v10 = 0;
  v11 = 0;
  do
  {
    sectionRanges = [(_MPCPlayerResponseTracklistDisplayDataSource *)self sectionRanges];
    sections2 = [(_MPCPlayerResponseTracklistDisplayDataSource *)self sections];
    v14 = [sections2 objectAtIndexedSubscript:v10];
    v15 = [sectionRanges objectForKeyedSubscript:v14];
    signedRangeValue = [v15 signedRangeValue];
    v18 = v17;

    v19 = v7 - signedRangeValue;
    if (v7 >= signedRangeValue && v19 < v18)
    {
      v20 = [MEMORY[0x1E696AC88] indexPathForItem:? inSection:?];

      v11 = v20;
    }

    ++v10;
    sections3 = [(_MPCPlayerResponseTracklistDisplayDataSource *)self sections];
    v22 = [sections3 count];
  }

  while (v10 < v22);
  pathCopy = v26;
  if (!v11)
  {
LABEL_10:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:v27 object:self file:@"MPCPlayerResponseTracklist.m" lineNumber:741 description:{@"Could not find a displayIndexPath for structuredIndexPath: %@", pathCopy}];

    v11 = 0;
  }

  return v11;
}

- (id)structuredIndexPathForDisplayIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  if (section >= [(_MPCPlayerResponseTracklistDisplayDataSource *)self numberOfSections])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_MPCPlayerResponseTracklistDisplayDataSource numberOfSections](self, "numberOfSections")}];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCPlayerResponseTracklist.m" lineNumber:714 description:{@"Provided display index path is out of bounds for this collection: %@ (section count %@)", pathCopy, v18}];
  }

  item = [pathCopy item];
  if (item >= -[_MPCPlayerResponseTracklistDisplayDataSource numberOfItemsInSection:](self, "numberOfItemsInSection:", [pathCopy section]))
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_MPCPlayerResponseTracklistDisplayDataSource numberOfItemsInSection:](self, "numberOfItemsInSection:", objc_msgSend(pathCopy, "section"))}];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MPCPlayerResponseTracklist.m" lineNumber:715 description:{@"Provided display index path is out of bounds for this collection: %@ (item count %@)", pathCopy, v20}];
  }

  sectionRanges = [(_MPCPlayerResponseTracklistDisplayDataSource *)self sectionRanges];
  sections = [(_MPCPlayerResponseTracklistDisplayDataSource *)self sections];
  v10 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  v11 = [sectionRanges objectForKeyedSubscript:v10];
  signedRangeValue = [v11 signedRangeValue];

  item2 = [pathCopy item];
  items = [(_MPCPlayerResponseTracklistDisplayDataSource *)self items];
  v15 = [items indexPathForGlobalIndex:item2 + signedRangeValue];

  return v15;
}

- (_MPCPlayerResponseTracklistDisplayDataSource)initWithResponse:(id)response tracklistItems:(id)items playingItemIndexPath:(id)path tailInsertionContentItemID:(id)d
{
  v93 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  itemsCopy = items;
  pathCopy = path;
  dCopy = d;
  v91.receiver = self;
  v91.super_class = _MPCPlayerResponseTracklistDisplayDataSource;
  v15 = [(_MPCPlayerResponseTracklistDisplayDataSource *)&v91 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_items, items);
    v17 = [pathCopy copy];
    playingItemIndexPath = v16->_playingItemIndexPath;
    v16->_playingItemIndexPath = v17;

    v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:5];
    v20 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:5];
    if (pathCopy)
    {
      v21 = [itemsCopy globalIndexForIndexPath:pathCopy];
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

        builder = [responseCopy builder];
        chain = [responseCopy chain];
        v79 = [builder playerItemContentID:0 atIndexPath:pathCopy chain:chain];

        v75 = v22;
        v89[0] = v22;
        v89[1] = 1;
        v26 = [MEMORY[0x1E696B098] valueWithBytes:v89 objCType:"{_MSVSignedRange=qq}"];
        [(NSDictionary *)v20 setObject:v26 forKeyedSubscript:@"MPCPlayerResponseTracklistDisplaySectionPlayingItem"];

        v74 = v19;
        [v19 addObject:@"MPCPlayerResponseTracklistDisplaySectionPlayingItem"];
        v80 = itemsCopy;
        totalItemCount = [itemsCopy totalItemCount];
        v27 = 0x7FFFFFFFFFFFFFFFLL;
        v72 = dCopy;
        v73 = pathCopy;
        if (!dCopy || v79 == dCopy || ([v79 isEqual:dCopy] & 1) != 0)
        {
          v28 = totalItemCount;
          v29 = v22;
        }

        else
        {
          v30 = v22 + 1;
          v28 = totalItemCount;
          if (v22 + 1 >= totalItemCount)
          {
            goto LABEL_18;
          }

          v27 = v22 + 1;
          while (1)
          {
            builder2 = [responseCopy builder];
            v32 = [itemsCopy indexPathForGlobalIndex:v27];
            chain2 = [responseCopy chain];
            v34 = [builder2 playerItemContentID:0 atIndexPath:v32 chain:chain2];

            v35 = v34;
            v36 = v35;
            if (v35 == dCopy)
            {
              break;
            }

            v37 = [dCopy isEqual:v35];

            v28 = totalItemCount;
            if (v37)
            {
              goto LABEL_17;
            }

            if (totalItemCount == ++v27)
            {
              goto LABEL_18;
            }
          }

          v28 = totalItemCount;
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
            v41 = [itemsCopy indexPathForGlobalIndex:v40];
            msv_section = [v41 msv_section];

            builder3 = [responseCopy builder];
            chain3 = [responseCopy chain];
            LODWORD(msv_section) = [builder3 sectionIsAutoPlaySection:0 atIndex:msv_section chain:chain3];

            v28 = totalItemCount;
            if (msv_section)
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

          while (totalItemCount != v40);
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
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:v78 object:v77 file:@"MPCPlayerResponseTracklist.m" lineNumber:697 description:{@"Count mismatch: sections=%@ sectionRangeMap=%@", v74, v20}];
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
                currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
                [currentHandler2 handleFailureInMethod:v78 object:v77 file:@"MPCPlayerResponseTracklist.m" lineNumber:701 description:{@"Missing section range for section: %@", v57}];
              }

              signedRangeValue = [v58 signedRangeValue];
              v61 = v60;
              if (signedRangeValue != v54)
              {
                v63 = signedRangeValue;
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
        if (v54 != totalItemCount)
        {
          currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler3 handleFailureInMethod:v78 object:v77 file:@"MPCPlayerResponseTracklist.m" lineNumber:706 description:{@"sectionRangeMap does not include all items: sectionRangesCount=%ld / items.totalItemCount=%ld", v54, totalItemCount}];
        }

        sections = v77->_sections;
        v77->_sections = v51;
        v66 = v51;

        sectionRanges = v77->_sectionRanges;
        v77->_sectionRanges = v20;

        v20 = v66;
        v19 = v79;
        itemsCopy = v80;
        dCopy = v72;
        pathCopy = v73;
      }
    }
  }

  return v16;
}

@end