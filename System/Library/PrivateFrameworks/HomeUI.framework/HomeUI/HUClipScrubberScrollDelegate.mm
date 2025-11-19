@interface HUClipScrubberScrollDelegate
- (BOOL)_doesPrecedingSpacerSpanMultipleDaysForEvent:(id)a3;
- (BOOL)_shouldScrollBypassPlaybackEngineUpdate;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (HFCameraPlaybackEngine)playbackEngine;
- (HUClipScrubberDataSource)dataSource;
- (HUClipScrubberScrollDelegate)initWithDataSource:(id)a3;
- (UICollectionView)clipCollectionView;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (float)playheadPosition;
- (id)_interpolatedDateFromEvent:(id)a3 toEvent:(id)a4 insideRect:(CGRect)a5 atTimelinePosition:(float)a6;
- (id)_selectedDateForAreaOfNoActivityAtPoint:(CGPoint)a3 inScrollView:(id)a4;
- (id)_selectedDateForEventInRect:(CGRect)a3;
- (id)_selectedDateForTodayFromEvent:(id)a3 percentDuration:(float)a4;
- (id)_selectedDateForYesterdayFromPreviousEvent:(id)a3 percentDuration:(float)a4;
- (void)_handleOutOfBoundsTimelinePosition:(float)a3;
- (void)_updateFamiliarFaceCell;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setUserScrubbing:(BOOL)a3;
- (void)updateCollectionView:(id)a3;
- (void)updatePlaybackEngineDate:(id)a3;
@end

@implementation HUClipScrubberScrollDelegate

- (HUClipScrubberScrollDelegate)initWithDataSource:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HUClipScrubberScrollDelegate;
  v5 = [(HUClipScrubberScrollDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, v4);
  }

  return v6;
}

- (void)updatePlaybackEngineDate:(id)a3
{
  v18 = a3;
  v4 = [(HUClipScrubberScrollDelegate *)self dataSource];
  if ([v4 currentTimelineState] != 5)
  {
    v5 = [(HUClipScrubberScrollDelegate *)self dataSource];
    v6 = [v5 currentTimelineState];

    if (v6 == 6)
    {
      goto LABEL_12;
    }

    v7 = [(HUClipScrubberScrollDelegate *)self dataSource];
    v8 = [v7 currentTimelineState];
    v9 = [(HUClipScrubberScrollDelegate *)self playbackEngine];
    [v9 setTimelineState:v8];

    v10 = [(HUClipScrubberScrollDelegate *)self dataSource];
    v11 = [v10 currentTimelineState];

    if (!v18 || v11 == 1)
    {
      v4 = [MEMORY[0x277D144D0] livePosition];
      v17 = [(HUClipScrubberScrollDelegate *)self playbackEngine];
      [v17 setPlaybackPosition:v4];
    }

    else
    {
      objc_opt_class();
      v12 = [(HUClipScrubberScrollDelegate *)self currentEvent];
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      v15 = [MEMORY[0x277D144F0] sharedManager];
      v4 = [v15 timelapseClipPositionForDate:v18 inHighQualityClip:v14 scrubbingType:{-[HUClipScrubberScrollDelegate isScrollingForward](self, "isScrollingForward") ^ 1}];

      v16 = [(HUClipScrubberScrollDelegate *)self playbackEngine];
      [v16 setShouldBypassHighQualityScrubbing:v4 != 0];

      v17 = [(HUClipScrubberScrollDelegate *)self playbackEngine];
      [v17 updatePlaybackPositionToDate:v18 usingClip:v14];
    }
  }

LABEL_12:
}

- (void)setUserScrubbing:(BOOL)a3
{
  if (self->_userScrubbing != a3)
  {
    v4 = a3;
    self->_userScrubbing = a3;
    v6 = [(HUClipScrubberScrollDelegate *)self playbackEngine];
    v8 = v6;
    if (v4)
    {
      [v6 beginScrubbing];
    }

    else
    {
      [v6 endScrubbing];

      v8 = [(HUClipScrubberScrollDelegate *)self dataSource];
      v7 = [v8 currentDate];
      [(HUClipScrubberScrollDelegate *)self updatePlaybackEngineDate:v7];
    }
  }
}

- (BOOL)_doesPrecedingSpacerSpanMultipleDaysForEvent:(id)a3
{
  v4 = a3;
  v5 = [(HUClipScrubberScrollDelegate *)self dataSource];
  v6 = [v5 playbackEngine];
  if ([v6 isFirstEventOfTheDay:v4])
  {
    v7 = [v4 dateOfOccurrence];
    v8 = [v7 hf_isMidnight] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v5 = *MEMORY[0x277D768C8];
  v6 = *(MEMORY[0x277D768C8] + 8);
  v7 = *(MEMORY[0x277D768C8] + 16);
  v8 = *(MEMORY[0x277D768C8] + 24);
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  if (a5)
  {
    v7 = *MEMORY[0x277CBF3A8];
    v8 = *(MEMORY[0x277CBF3A8] + 8);
  }

  else
  {
    [a3 bounds];
    v7 = v9 * 0.5;
    v8 = 0.0;
  }

  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5
{
  v7 = a3;
  v8 = [(HUClipScrubberScrollDelegate *)self dataSource];
  if ([v8 mostRecentClipIndex] + 1 != a5)
  {
    v12 = [(HUClipScrubberScrollDelegate *)self dataSource];
    if ([v12 isEditing])
    {
      v13 = [(HUClipScrubberScrollDelegate *)self dataSource];
      v14 = [v13 mostRecentClipIndex];

      if (v14 == a5)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }

    v15 = [(HUClipScrubberScrollDelegate *)self dataSource];
    if ([v15 isEditing])
    {
      v16 = [(HUClipScrubberScrollDelegate *)self dataSource];
      v17 = [v16 mostRecentClipIndex];

      if (v17 == a5)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }

    v10 = *MEMORY[0x277CBF3A8];
    v11 = *(MEMORY[0x277CBF3A8] + 8);
    goto LABEL_13;
  }

LABEL_3:
  [v7 bounds];
  v10 = v9 * 0.5;
  v11 = 0.0;
LABEL_13:

  v18 = v10;
  v19 = v11;
  result.height = v19;
  result.width = v18;
  return result;
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v4 = [(HUClipScrubberScrollDelegate *)self dataSource:a3];
  v5 = [v4 isEditing];

  return v5;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = a5;
  v7 = [v6 section];
  v8 = [(HUClipScrubberScrollDelegate *)self dataSource];
  v9 = [v8 currentEvents];
  v10 = [v9 count];

  v11 = 30.0;
  if (v7 != v10)
  {
    v12 = [(HUClipScrubberScrollDelegate *)self dataSource];
    v13 = [v12 eventForSection:{objc_msgSend(v6, "section")}];

    v14 = [(HUClipScrubberScrollDelegate *)self dataSource];
    v15 = [v14 isValidEventAtIndexPath:v6];

    if (!v15)
    {
      goto LABEL_6;
    }

    v16 = [v13 containerType];
    if (v16 == 2)
    {
      v11 = 60.0;
      goto LABEL_14;
    }

    if (v16 == 1)
    {
      v17 = [(HUClipScrubberScrollDelegate *)self dataSource];
      v18 = [v17 timeController];
      [v18 timelineWidthForEvent:v13];
      v11 = v19;
    }

    else
    {
LABEL_6:
      v20 = [(HUClipScrubberScrollDelegate *)self dataSource];
      v21 = [v20 playbackEngine];
      if ([v21 isFirstEventOfTheDay:v13])
      {
        v22 = [v13 dateOfOccurrence];
        v23 = [v22 hf_isMidnight];

        if (!v23)
        {
          goto LABEL_14;
        }
      }

      else
      {
      }

      v24 = [(HUClipScrubberScrollDelegate *)self dataSource];
      v17 = [v24 previousEventForSection:{objc_msgSend(v6, "section")}];

      if (v17)
      {
        [v17 hf_duration];
        if (v25 < 0.00000011920929)
        {
          v11 = 60.0;
        }
      }
    }

LABEL_14:
  }

  v26 = 47.0;
  v27 = v11;
  result.height = v26;
  result.width = v27;
  return result;
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  [(HUClipScrubberScrollDelegate *)self setShouldIgnoreScrolling:0];
  v5 = [v4 isDragging];

  if ((v5 & 1) == 0)
  {

    [(HUClipScrubberScrollDelegate *)self setUserScrubbing:0];
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  [(HUClipScrubberScrollDelegate *)self setShouldIgnoreScrolling:0];
  [(HUClipScrubberScrollDelegate *)self setUserScrubbing:1];
  v4 = [(HUClipScrubberScrollDelegate *)self playbackEngine];
  [v4 setUserScrubbing:1];

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];

  [(HUClipScrubberScrollDelegate *)self setElapsedTime:?];
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  x = a4.x;
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (x == 0.0)
  {
    v12 = [(HUClipScrubberScrollDelegate *)self playbackEngine];
    v13 = v12;
    v14 = 0;
  }

  else
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a5->x;
      [v8 contentOffset];
      v15 = 134218496;
      v16 = v10;
      v17 = 2048;
      v18 = x;
      v19 = 2048;
      v20 = v11;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Will end scrolling at offset:%.2f with velocity:%.2f vs current offset %.2f", &v15, 0x20u);
    }

    [(HUClipScrubberScrollDelegate *)self setTargetScrollOffset:a5->x];
    v12 = [(HUClipScrubberScrollDelegate *)self playbackEngine];
    v13 = v12;
    v14 = 1;
  }

  [v12 setShouldBypassVideoFetchRequest:v14];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v6 = [(HUClipScrubberScrollDelegate *)self playbackEngine];
  [v6 setUserScrubbing:0];

  if (!a4)
  {

    [(HUClipScrubberScrollDelegate *)self setUserScrubbing:0];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v70 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v6 = v5;
  [(HUClipScrubberScrollDelegate *)self lastContentOffset];
  v8 = v7;
  [v4 contentOffset];
  v10 = vabdd_f64(v8, v9);
  [(HUClipScrubberScrollDelegate *)self elapsedTime];
  v12 = v10 / (v6 - v11);
  [(HUClipScrubberScrollDelegate *)self setElapsedTime:v6];
  if (v12 >= 100.0)
  {
    v13 = [(HUClipScrubberScrollDelegate *)self playbackEngine];
    v14 = v13;
    if (v12 >= 500.0)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v13 = [(HUClipScrubberScrollDelegate *)self playbackEngine];
    v14 = v13;
    v15 = 0;
  }

  [v13 setScrubbingSpeed:v15];

  v16 = HFLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(HUClipScrubberScrollDelegate *)self playbackEngine];
    v66 = 134218240;
    v67 = v12;
    v68 = 2048;
    v69 = [v17 scrubbingSpeed];
    _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "Scrubbing speed %.3f engineSpeed:%ld", &v66, 0x16u);
  }

  v18 = [(HUClipScrubberScrollDelegate *)self playbackEngine];
  v19 = [v18 shouldBypassVideoFetchRequest];

  if (v19)
  {
    [v4 contentOffset];
    v21 = v20;
    [(HUClipScrubberScrollDelegate *)self targetScrollOffset];
    if (vabdd_f64(v21, v22) < 100.0)
    {
      v23 = HFLogForCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        [v4 contentOffset];
        v66 = 134217984;
        v67 = v24;
        _os_log_impl(&dword_20CEB6000, v23, OS_LOG_TYPE_DEFAULT, "Scrollview did scroll and stopping at %.f", &v66, 0xCu);
      }

      v25 = [(HUClipScrubberScrollDelegate *)self playbackEngine];
      [v25 setShouldBypassVideoFetchRequest:0];
    }
  }

  [v4 contentOffset];
  v27 = v26;
  [(HUClipScrubberScrollDelegate *)self lastContentOffset];
  [(HUClipScrubberScrollDelegate *)self setScrollingForward:v27 >= v28];
  [v4 contentOffset];
  [(HUClipScrubberScrollDelegate *)self setLastContentOffset:?];
  v29 = [(HUClipScrubberScrollDelegate *)self _shouldScrollBypassPlaybackEngineUpdate];
  v30 = v29;
  v31 = !v29;
  [v4 contentOffset];
  v33 = v32;
  v35 = v34;
  [(HUClipScrubberScrollDelegate *)self playheadPosition];
  v37 = v33 + v36;
  v38 = [(HUClipScrubberScrollDelegate *)self clipCollectionView];
  [v38 indexPathForItemAtPoint:{v37, v35}];
  v39 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

  if (v39 == 0.0)
  {
    *&v40 = v37;
    [(HUClipScrubberScrollDelegate *)self _handleOutOfBoundsTimelinePosition:v40];
    goto LABEL_17;
  }

  v41 = [*&v39 section];
  v42 = [(HUClipScrubberScrollDelegate *)self dataSource];
  v43 = [v42 currentEvents];
  v44 = [v43 count];

  v45 = [(HUClipScrubberScrollDelegate *)self dataSource];
  v46 = v45;
  if (v41 == v44)
  {
    [v45 setCurrentTimelineState:1];

LABEL_17:
    v47 = 0;
    goto LABEL_18;
  }

  v52 = [v45 isValidEventAtIndexPath:*&v39];

  if (v52)
  {
    v53 = [(HUClipScrubberScrollDelegate *)self clipCollectionView];
    v54 = [v53 cellForItemAtIndexPath:*&v39];

    if (!v54)
    {
      v55 = HFLogForCategory();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v63 = [(HUClipScrubberScrollDelegate *)self dataSource];
        v64 = [v63 currentEvents];
        v65 = [v64 count];
        v66 = 138412546;
        v67 = v39;
        v68 = 2048;
        v69 = v65;
        _os_log_error_impl(&dword_20CEB6000, v55, OS_LOG_TYPE_ERROR, "Unable to scroll to find cell for valid indexPath %@ for clip count = %lu!", &v66, 0x16u);
      }

      v31 = 0;
    }

    v56 = [(HUClipScrubberScrollDelegate *)self dataSource];
    v57 = [v56 eventForSection:{objc_msgSend(*&v39, "section")}];

    v58 = [v57 containerType];
    v59 = [(HUClipScrubberScrollDelegate *)self dataSource];
    v60 = v59;
    if (v58 == 1)
    {
      v61 = 2;
    }

    else
    {
      v61 = 3;
    }

    [v59 setCurrentTimelineState:v61];

    [(HUClipScrubberScrollDelegate *)self setCurrentEvent:v57];
    if (v31)
    {
      [v54 frame];
      v47 = [(HUClipScrubberScrollDelegate *)self _selectedDateForEventInRect:?];
    }

    else
    {
      v47 = 0;
    }
  }

  else
  {
    v62 = [(HUClipScrubberScrollDelegate *)self dataSource];
    [v62 setCurrentTimelineState:4];

    if (v30)
    {
      v47 = 0;
      v31 = 0;
    }

    else
    {
      v47 = [(HUClipScrubberScrollDelegate *)self _selectedDateForAreaOfNoActivityAtPoint:v4 inScrollView:v37, v35];
      v31 = 1;
    }
  }

LABEL_18:
  v48 = [(HUClipScrubberScrollDelegate *)self dataSource];
  v49 = [v48 currentTimelineState];
  v50 = [(HUClipScrubberScrollDelegate *)self playbackEngine];
  [v50 setTimelineState:v49];

  if (v31)
  {
    v51 = [(HUClipScrubberScrollDelegate *)self dataSource];
    [v51 setCurrentDate:v47];

    [(HUClipScrubberScrollDelegate *)self updatePlaybackEngineDate:v47];
  }

  [(HUClipScrubberScrollDelegate *)self _updateFamiliarFaceCell];
}

- (void)updateCollectionView:(id)a3
{
  v7 = a3;
  v4 = [(HUClipScrubberScrollDelegate *)self clipCollectionView];

  if (v4 != v7)
  {
    v5 = [(HUClipScrubberScrollDelegate *)self clipCollectionView];
    [v5 removeObserver:self forKeyPath:@"contentSize"];
  }

  [(HUClipScrubberScrollDelegate *)self setClipCollectionView:v7];
  v6 = [(HUClipScrubberScrollDelegate *)self clipCollectionView];
  [v6 addObserver:self forKeyPath:@"contentSize" options:0 context:0];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v53 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isEqualToString:@"contentSize"] && (-[HUClipScrubberScrollDelegate clipCollectionView](self, "clipCollectionView"), v13 = objc_claimAutoreleasedReturnValue(), v13, v13 == v11))
  {
    [(HUClipScrubberScrollDelegate *)self lastContentWidth];
    v15 = v14;
    v16 = [(HUClipScrubberScrollDelegate *)self clipCollectionView];
    [v16 contentSize];
    v18 = v17;

    if (v15 != v18)
    {
      v19 = [(HUClipScrubberScrollDelegate *)self clipCollectionView];
      [v19 contentSize];
      [(HUClipScrubberScrollDelegate *)self setLastContentWidth:?];

      v20 = HFLogForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        [(HUClipScrubberScrollDelegate *)self lastContentWidth];
        *buf = 134217984;
        v52 = v21;
        _os_log_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_DEFAULT, "Updating clip scrubber to lastContentWidth:%.0f", buf, 0xCu);
      }

      v22 = [(HUClipScrubberScrollDelegate *)self dataSource];
      v23 = [v22 isUpdating];

      if ((v23 & 1) == 0)
      {
        v24 = [(HUClipScrubberScrollDelegate *)self dataSource];
        v25 = [(HUClipScrubberScrollDelegate *)self dataSource];
        v26 = [v25 currentEvent];
        [v24 offsetForEvent:v26];
        v28 = v27;

        v29 = [(HUClipScrubberScrollDelegate *)self clipCollectionView];
        [v29 contentOffset];
        v31 = v30;

        v32 = [(HUClipScrubberScrollDelegate *)self playbackEngine];
        v33 = [v32 playbackPosition];
        v34 = [v33 contentType];

        v35 = [(HUClipScrubberScrollDelegate *)self clipCollectionView];
        v36 = v35;
        if (v34)
        {
          [v35 bounds];
          v38 = v37;
          v39 = [(HUClipScrubberScrollDelegate *)self dataSource];
          [v39 posterFrameWidth];
          v41 = v40;

          if (v38 <= v41)
          {
            goto LABEL_4;
          }

          v42 = [(HUClipScrubberScrollDelegate *)self clipCollectionView];
          [v42 bounds];
          v44 = v28 + v43 * -0.5;

          [(HUClipScrubberScrollDelegate *)self setShouldIgnoreScrolling:1];
        }

        else
        {
          [v35 contentSize];
          v46 = v45;
          v47 = [(HUClipScrubberScrollDelegate *)self clipCollectionView];
          [v47 bounds];
          v44 = v46 - v48;
        }

        v49 = [(HUClipScrubberScrollDelegate *)self clipCollectionView];
        [v49 setContentOffset:0 animated:{v44, v31}];
      }
    }
  }

  else
  {
    v50.receiver = self;
    v50.super_class = HUClipScrubberScrollDelegate;
    [(HUClipScrubberScrollDelegate *)&v50 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }

LABEL_4:
}

- (BOOL)_shouldScrollBypassPlaybackEngineUpdate
{
  if ([(HUClipScrubberScrollDelegate *)self shouldIgnoreScrolling])
  {
    return 1;
  }

  v3 = [(HUClipScrubberScrollDelegate *)self dataSource];
  v4 = [v3 currentEvents];
  v5 = [v4 count];

  if (!v5)
  {
    return 1;
  }

  else
  {
    return ![(HUClipScrubberScrollDelegate *)self isUserScrubbing];
  }
}

- (void)_handleOutOfBoundsTimelinePosition:(float)a3
{
  v19 = *MEMORY[0x277D85DE8];
  [(HUClipScrubberScrollDelegate *)self playheadPosition];
  if (v5 < a3)
  {
    v6 = [(HUClipScrubberScrollDelegate *)self dataSource];
    v7 = [v6 isEditing];

    v8 = [(HUClipScrubberScrollDelegate *)self dataSource];
    v14 = v8;
    if (v7)
    {
      v9 = 6;
    }

    else
    {
      v9 = 1;
    }

LABEL_7:
    [v8 setCurrentTimelineState:v9];

    return;
  }

  [(HUClipScrubberScrollDelegate *)self playheadPosition];
  if (v10 > a3)
  {
    v8 = [(HUClipScrubberScrollDelegate *)self dataSource];
    v14 = v8;
    v9 = 5;
    goto LABEL_7;
  }

  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [(HUClipScrubberScrollDelegate *)self playheadPosition];
    *buf = 134218240;
    v16 = a3;
    v17 = 2048;
    v18 = v13;
    _os_log_error_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_ERROR, "invalid _handleOutOfBoundsTimelinePosition: call. timelinePosition:%.2f playheadPosition:%.2f", buf, 0x16u);
  }

  v12 = [(HUClipScrubberScrollDelegate *)self dataSource];
  [v12 setCurrentTimelineState:4];
}

- (id)_selectedDateForAreaOfNoActivityAtPoint:(CGPoint)a3 inScrollView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(HUClipScrubberScrollDelegate *)self clipCollectionView];
  v9 = [v8 indexPathForItemAtPoint:{x, y}];

  v10 = [(HUClipScrubberScrollDelegate *)self clipCollectionView];
  v11 = [v10 cellForItemAtIndexPath:v9];

  v12 = [(HUClipScrubberScrollDelegate *)self dataSource];
  v13 = [v12 eventForSection:{objc_msgSend(v9, "section")}];

  v14 = [(HUClipScrubberScrollDelegate *)self dataSource];
  v15 = [v14 previousEventForSection:{objc_msgSend(v9, "section")}];

  if ([(HUClipScrubberScrollDelegate *)self _doesPrecedingSpacerSpanMultipleDaysForEvent:v13])
  {
    v16 = x;
    [v11 frame];
    MidX = CGRectGetMidX(v34);
    [v11 frame];
    v19 = (v16 - MidX) / (v18 * 0.5);
    *&v19 = v19;
    if (v16 >= MidX)
    {
      [(HUClipScrubberScrollDelegate *)self _selectedDateForTodayFromEvent:v13 percentDuration:v19];
    }

    else
    {
      [(HUClipScrubberScrollDelegate *)self _selectedDateForYesterdayFromPreviousEvent:v15 percentDuration:v19];
    }
    v20 = ;
  }

  else
  {
    [v11 frame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    [v7 contentOffset];
    *&v30 = v29;
    v20 = [(HUClipScrubberScrollDelegate *)self _interpolatedDateFromEvent:v15 toEvent:v13 insideRect:v22 atTimelinePosition:v24, v26, v28, v30];
  }

  v31 = v20;

  return v31;
}

- (void)_updateFamiliarFaceCell
{
  v3 = [(HUClipScrubberScrollDelegate *)self dataSource];
  v4 = [v3 clipCollectionView];
  [v4 contentOffset];
  v6 = v5;
  v8 = v7;

  [(HUClipScrubberScrollDelegate *)self playheadPosition];
  v10 = v6 + v9;
  v11 = [(HUClipScrubberScrollDelegate *)self dataSource];
  v12 = [v11 clipCollectionView];
  v13 = [v12 visibleCells];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__HUClipScrubberScrollDelegate__updateFamiliarFaceCell__block_invoke;
  v14[3] = &unk_277DC19B0;
  *&v14[5] = v10;
  v14[6] = v8;
  v14[4] = self;
  [v13 enumerateObjectsUsingBlock:v14];
}

void __55__HUClipScrubberScrollDelegate__updateFamiliarFaceCell__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v17 = v3;
  if (objc_opt_isKindOfClass())
  {
    v4 = v17;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    [v5 frame];
    if (CGRectContainsPoint(v19, *(a1 + 40)) && ([*(a1 + 32) dataSource], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEditing"), v6, (v7 & 1) == 0) && (objc_msgSend(*(a1 + 32), "playheadPosition"), v9 = (v8 + -40.0), objc_msgSend(v5, "frame"), v10 + v9 >= *(a1 + 40)))
    {
      [*(a1 + 32) playheadPosition];
      v14 = (v13 + -5.0);
      v15 = *(a1 + 40);
      [v5 frame];
      [v5 showFamiliarFacesWithMaxWidth:{fmax(v15 - v16 + v14 + 40.0, 118.0)}];
    }

    else
    {
      [v5 hideFamiliarFaces];
    }

    if ([MEMORY[0x277D14500] markCachedVideoAsGreenInTimeline])
    {
      v11 = [*(a1 + 32) dataSource];
      v12 = [v11 isEditing];

      if ((v12 & 1) == 0)
      {
        [v5 updateVideoCacheMarker];
      }
    }
  }
}

- (float)playheadPosition
{
  v2 = [(HUClipScrubberScrollDelegate *)self clipCollectionView];
  [v2 bounds];
  v4 = v3 * 0.5;

  return v4;
}

- (id)_selectedDateForEventInRect:(CGRect)a3
{
  width = a3.size.width;
  MaxX = CGRectGetMaxX(a3);
  [(HUClipScrubberScrollDelegate *)self playheadPosition];
  *&MaxX = MaxX - v6;
  v7 = [(HUClipScrubberScrollDelegate *)self clipCollectionView];
  [v7 contentOffset];
  v9 = v8;

  v10 = 1.0 - (*&MaxX - v9) / width;
  v11 = v10;
  v12 = [(HUClipScrubberScrollDelegate *)self currentEvent];
  [v12 hf_duration];
  *&v11 = v13 * v11;

  v14 = [(HUClipScrubberScrollDelegate *)self currentEvent];
  v15 = [v14 dateOfOccurrence];
  v16 = [v15 dateByAddingTimeInterval:*&v11];

  return v16;
}

- (id)_selectedDateForTodayFromEvent:(id)a3 percentDuration:(float)a4
{
  v5 = a3;
  v6 = [v5 dateOfOccurrence];
  v7 = [v6 hf_startOfDay];

  v8 = [v5 dateOfOccurrence];

  [v8 timeIntervalSinceDate:v7];
  v10 = v9;

  v11 = v10 * a4;
  v12 = [v7 dateByAddingTimeInterval:v11];

  return v12;
}

- (id)_selectedDateForYesterdayFromPreviousEvent:(id)a3 percentDuration:(float)a4
{
  v5 = a3;
  v6 = [v5 dateOfOccurrence];
  v7 = [v6 hf_startOfNextDay];

  v8 = [v5 hf_endDate];

  [v7 timeIntervalSinceDate:v8];
  v10 = v9;

  v11 = v10 * a4;
  v12 = [v7 dateByAddingTimeInterval:v11];

  return v12;
}

- (id)_interpolatedDateFromEvent:(id)a3 toEvent:(id)a4 insideRect:(CGRect)a5 atTimelinePosition:(float)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v13 = a3;
  v14 = [a4 dateOfOccurrence];
  v15 = [v13 hf_endDate];
  [v14 timeIntervalSinceDate:v15];
  v17 = v16;

  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  MaxX = CGRectGetMaxX(v27);
  [(HUClipScrubberScrollDelegate *)self playheadPosition];
  v20 = MaxX - v19;
  v21 = 1.0 - (v20 - a6) / width;
  v22 = v17 * v21;
  v23 = [v13 hf_endDate];

  v24 = [v23 dateByAddingTimeInterval:v22];

  return v24;
}

- (void)dealloc
{
  v3 = [(HUClipScrubberScrollDelegate *)self clipCollectionView];
  [v3 removeObserver:self forKeyPath:@"contentSize"];

  v4.receiver = self;
  v4.super_class = HUClipScrubberScrollDelegate;
  [(HUClipScrubberScrollDelegate *)&v4 dealloc];
}

- (HUClipScrubberDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (UICollectionView)clipCollectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_clipCollectionView);

  return WeakRetained;
}

- (HFCameraPlaybackEngine)playbackEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  return WeakRetained;
}

@end