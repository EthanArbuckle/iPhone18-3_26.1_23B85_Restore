@interface HUClipScrubberScrollDelegate
- (BOOL)_doesPrecedingSpacerSpanMultipleDaysForEvent:(id)event;
- (BOOL)_shouldScrollBypassPlaybackEngineUpdate;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForFooterInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (HFCameraPlaybackEngine)playbackEngine;
- (HUClipScrubberDataSource)dataSource;
- (HUClipScrubberScrollDelegate)initWithDataSource:(id)source;
- (UICollectionView)clipCollectionView;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (float)playheadPosition;
- (id)_interpolatedDateFromEvent:(id)event toEvent:(id)toEvent insideRect:(CGRect)rect atTimelinePosition:(float)position;
- (id)_selectedDateForAreaOfNoActivityAtPoint:(CGPoint)point inScrollView:(id)view;
- (id)_selectedDateForEventInRect:(CGRect)rect;
- (id)_selectedDateForTodayFromEvent:(id)event percentDuration:(float)duration;
- (id)_selectedDateForYesterdayFromPreviousEvent:(id)event percentDuration:(float)duration;
- (void)_handleOutOfBoundsTimelinePosition:(float)position;
- (void)_updateFamiliarFaceCell;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setUserScrubbing:(BOOL)scrubbing;
- (void)updateCollectionView:(id)view;
- (void)updatePlaybackEngineDate:(id)date;
@end

@implementation HUClipScrubberScrollDelegate

- (HUClipScrubberScrollDelegate)initWithDataSource:(id)source
{
  sourceCopy = source;
  v8.receiver = self;
  v8.super_class = HUClipScrubberScrollDelegate;
  v5 = [(HUClipScrubberScrollDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, sourceCopy);
  }

  return v6;
}

- (void)updatePlaybackEngineDate:(id)date
{
  dateCopy = date;
  dataSource = [(HUClipScrubberScrollDelegate *)self dataSource];
  if ([dataSource currentTimelineState] != 5)
  {
    dataSource2 = [(HUClipScrubberScrollDelegate *)self dataSource];
    currentTimelineState = [dataSource2 currentTimelineState];

    if (currentTimelineState == 6)
    {
      goto LABEL_12;
    }

    dataSource3 = [(HUClipScrubberScrollDelegate *)self dataSource];
    currentTimelineState2 = [dataSource3 currentTimelineState];
    playbackEngine = [(HUClipScrubberScrollDelegate *)self playbackEngine];
    [playbackEngine setTimelineState:currentTimelineState2];

    dataSource4 = [(HUClipScrubberScrollDelegate *)self dataSource];
    currentTimelineState3 = [dataSource4 currentTimelineState];

    if (!dateCopy || currentTimelineState3 == 1)
    {
      dataSource = [MEMORY[0x277D144D0] livePosition];
      playbackEngine2 = [(HUClipScrubberScrollDelegate *)self playbackEngine];
      [playbackEngine2 setPlaybackPosition:dataSource];
    }

    else
    {
      objc_opt_class();
      currentEvent = [(HUClipScrubberScrollDelegate *)self currentEvent];
      if (objc_opt_isKindOfClass())
      {
        v13 = currentEvent;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      mEMORY[0x277D144F0] = [MEMORY[0x277D144F0] sharedManager];
      dataSource = [mEMORY[0x277D144F0] timelapseClipPositionForDate:dateCopy inHighQualityClip:v14 scrubbingType:{-[HUClipScrubberScrollDelegate isScrollingForward](self, "isScrollingForward") ^ 1}];

      playbackEngine3 = [(HUClipScrubberScrollDelegate *)self playbackEngine];
      [playbackEngine3 setShouldBypassHighQualityScrubbing:dataSource != 0];

      playbackEngine2 = [(HUClipScrubberScrollDelegate *)self playbackEngine];
      [playbackEngine2 updatePlaybackPositionToDate:dateCopy usingClip:v14];
    }
  }

LABEL_12:
}

- (void)setUserScrubbing:(BOOL)scrubbing
{
  if (self->_userScrubbing != scrubbing)
  {
    scrubbingCopy = scrubbing;
    self->_userScrubbing = scrubbing;
    playbackEngine = [(HUClipScrubberScrollDelegate *)self playbackEngine];
    dataSource = playbackEngine;
    if (scrubbingCopy)
    {
      [playbackEngine beginScrubbing];
    }

    else
    {
      [playbackEngine endScrubbing];

      dataSource = [(HUClipScrubberScrollDelegate *)self dataSource];
      currentDate = [dataSource currentDate];
      [(HUClipScrubberScrollDelegate *)self updatePlaybackEngineDate:currentDate];
    }
  }
}

- (BOOL)_doesPrecedingSpacerSpanMultipleDaysForEvent:(id)event
{
  eventCopy = event;
  dataSource = [(HUClipScrubberScrollDelegate *)self dataSource];
  playbackEngine = [dataSource playbackEngine];
  if ([playbackEngine isFirstEventOfTheDay:eventCopy])
  {
    dateOfOccurrence = [eventCopy dateOfOccurrence];
    v8 = [dateOfOccurrence hf_isMidnight] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
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

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  if (section)
  {
    v7 = *MEMORY[0x277CBF3A8];
    v8 = *(MEMORY[0x277CBF3A8] + 8);
  }

  else
  {
    [view bounds];
    v7 = v9 * 0.5;
    v8 = 0.0;
  }

  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForFooterInSection:(int64_t)section
{
  viewCopy = view;
  dataSource = [(HUClipScrubberScrollDelegate *)self dataSource];
  if ([dataSource mostRecentClipIndex] + 1 != section)
  {
    dataSource2 = [(HUClipScrubberScrollDelegate *)self dataSource];
    if ([dataSource2 isEditing])
    {
      dataSource3 = [(HUClipScrubberScrollDelegate *)self dataSource];
      mostRecentClipIndex = [dataSource3 mostRecentClipIndex];

      if (mostRecentClipIndex == section)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }

    dataSource4 = [(HUClipScrubberScrollDelegate *)self dataSource];
    if ([dataSource4 isEditing])
    {
      dataSource5 = [(HUClipScrubberScrollDelegate *)self dataSource];
      mostRecentClipIndex2 = [dataSource5 mostRecentClipIndex];

      if (mostRecentClipIndex2 == section)
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
  [viewCopy bounds];
  v10 = v9 * 0.5;
  v11 = 0.0;
LABEL_13:

  v18 = v10;
  v19 = v11;
  result.height = v19;
  result.width = v18;
  return result;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  v4 = [(HUClipScrubberScrollDelegate *)self dataSource:view];
  isEditing = [v4 isEditing];

  return isEditing;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  dataSource = [(HUClipScrubberScrollDelegate *)self dataSource];
  currentEvents = [dataSource currentEvents];
  v10 = [currentEvents count];

  v11 = 30.0;
  if (section != v10)
  {
    dataSource2 = [(HUClipScrubberScrollDelegate *)self dataSource];
    v13 = [dataSource2 eventForSection:{objc_msgSend(pathCopy, "section")}];

    dataSource3 = [(HUClipScrubberScrollDelegate *)self dataSource];
    v15 = [dataSource3 isValidEventAtIndexPath:pathCopy];

    if (!v15)
    {
      goto LABEL_6;
    }

    containerType = [v13 containerType];
    if (containerType == 2)
    {
      v11 = 60.0;
      goto LABEL_14;
    }

    if (containerType == 1)
    {
      dataSource4 = [(HUClipScrubberScrollDelegate *)self dataSource];
      timeController = [dataSource4 timeController];
      [timeController timelineWidthForEvent:v13];
      v11 = v19;
    }

    else
    {
LABEL_6:
      dataSource5 = [(HUClipScrubberScrollDelegate *)self dataSource];
      playbackEngine = [dataSource5 playbackEngine];
      if ([playbackEngine isFirstEventOfTheDay:v13])
      {
        dateOfOccurrence = [v13 dateOfOccurrence];
        hf_isMidnight = [dateOfOccurrence hf_isMidnight];

        if (!hf_isMidnight)
        {
          goto LABEL_14;
        }
      }

      else
      {
      }

      dataSource6 = [(HUClipScrubberScrollDelegate *)self dataSource];
      dataSource4 = [dataSource6 previousEventForSection:{objc_msgSend(pathCopy, "section")}];

      if (dataSource4)
      {
        [dataSource4 hf_duration];
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

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  [(HUClipScrubberScrollDelegate *)self setShouldIgnoreScrolling:0];
  isDragging = [deceleratingCopy isDragging];

  if ((isDragging & 1) == 0)
  {

    [(HUClipScrubberScrollDelegate *)self setUserScrubbing:0];
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  [(HUClipScrubberScrollDelegate *)self setShouldIgnoreScrolling:0];
  [(HUClipScrubberScrollDelegate *)self setUserScrubbing:1];
  playbackEngine = [(HUClipScrubberScrollDelegate *)self playbackEngine];
  [playbackEngine setUserScrubbing:1];

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];

  [(HUClipScrubberScrollDelegate *)self setElapsedTime:?];
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  x = velocity.x;
  v21 = *MEMORY[0x277D85DE8];
  draggingCopy = dragging;
  if (x == 0.0)
  {
    playbackEngine = [(HUClipScrubberScrollDelegate *)self playbackEngine];
    v13 = playbackEngine;
    v14 = 0;
  }

  else
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = offset->x;
      [draggingCopy contentOffset];
      v15 = 134218496;
      v16 = v10;
      v17 = 2048;
      v18 = x;
      v19 = 2048;
      v20 = v11;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Will end scrolling at offset:%.2f with velocity:%.2f vs current offset %.2f", &v15, 0x20u);
    }

    [(HUClipScrubberScrollDelegate *)self setTargetScrollOffset:offset->x];
    playbackEngine = [(HUClipScrubberScrollDelegate *)self playbackEngine];
    v13 = playbackEngine;
    v14 = 1;
  }

  [playbackEngine setShouldBypassVideoFetchRequest:v14];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  playbackEngine = [(HUClipScrubberScrollDelegate *)self playbackEngine];
  [playbackEngine setUserScrubbing:0];

  if (!decelerate)
  {

    [(HUClipScrubberScrollDelegate *)self setUserScrubbing:0];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  v70 = *MEMORY[0x277D85DE8];
  scrollCopy = scroll;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v6 = v5;
  [(HUClipScrubberScrollDelegate *)self lastContentOffset];
  v8 = v7;
  [scrollCopy contentOffset];
  v10 = vabdd_f64(v8, v9);
  [(HUClipScrubberScrollDelegate *)self elapsedTime];
  v12 = v10 / (v6 - v11);
  [(HUClipScrubberScrollDelegate *)self setElapsedTime:v6];
  if (v12 >= 100.0)
  {
    playbackEngine = [(HUClipScrubberScrollDelegate *)self playbackEngine];
    v14 = playbackEngine;
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
    playbackEngine = [(HUClipScrubberScrollDelegate *)self playbackEngine];
    v14 = playbackEngine;
    v15 = 0;
  }

  [playbackEngine setScrubbingSpeed:v15];

  v16 = HFLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    playbackEngine2 = [(HUClipScrubberScrollDelegate *)self playbackEngine];
    v66 = 134218240;
    v67 = v12;
    v68 = 2048;
    scrubbingSpeed = [playbackEngine2 scrubbingSpeed];
    _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "Scrubbing speed %.3f engineSpeed:%ld", &v66, 0x16u);
  }

  playbackEngine3 = [(HUClipScrubberScrollDelegate *)self playbackEngine];
  shouldBypassVideoFetchRequest = [playbackEngine3 shouldBypassVideoFetchRequest];

  if (shouldBypassVideoFetchRequest)
  {
    [scrollCopy contentOffset];
    v21 = v20;
    [(HUClipScrubberScrollDelegate *)self targetScrollOffset];
    if (vabdd_f64(v21, v22) < 100.0)
    {
      v23 = HFLogForCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        [scrollCopy contentOffset];
        v66 = 134217984;
        v67 = v24;
        _os_log_impl(&dword_20CEB6000, v23, OS_LOG_TYPE_DEFAULT, "Scrollview did scroll and stopping at %.f", &v66, 0xCu);
      }

      playbackEngine4 = [(HUClipScrubberScrollDelegate *)self playbackEngine];
      [playbackEngine4 setShouldBypassVideoFetchRequest:0];
    }
  }

  [scrollCopy contentOffset];
  v27 = v26;
  [(HUClipScrubberScrollDelegate *)self lastContentOffset];
  [(HUClipScrubberScrollDelegate *)self setScrollingForward:v27 >= v28];
  [scrollCopy contentOffset];
  [(HUClipScrubberScrollDelegate *)self setLastContentOffset:?];
  _shouldScrollBypassPlaybackEngineUpdate = [(HUClipScrubberScrollDelegate *)self _shouldScrollBypassPlaybackEngineUpdate];
  v30 = _shouldScrollBypassPlaybackEngineUpdate;
  v31 = !_shouldScrollBypassPlaybackEngineUpdate;
  [scrollCopy contentOffset];
  v33 = v32;
  v35 = v34;
  [(HUClipScrubberScrollDelegate *)self playheadPosition];
  v37 = v33 + v36;
  clipCollectionView = [(HUClipScrubberScrollDelegate *)self clipCollectionView];
  [clipCollectionView indexPathForItemAtPoint:{v37, v35}];
  v39 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

  if (v39 == 0.0)
  {
    *&v40 = v37;
    [(HUClipScrubberScrollDelegate *)self _handleOutOfBoundsTimelinePosition:v40];
    goto LABEL_17;
  }

  section = [*&v39 section];
  dataSource = [(HUClipScrubberScrollDelegate *)self dataSource];
  currentEvents = [dataSource currentEvents];
  v44 = [currentEvents count];

  dataSource2 = [(HUClipScrubberScrollDelegate *)self dataSource];
  v46 = dataSource2;
  if (section == v44)
  {
    [dataSource2 setCurrentTimelineState:1];

LABEL_17:
    v47 = 0;
    goto LABEL_18;
  }

  v52 = [dataSource2 isValidEventAtIndexPath:*&v39];

  if (v52)
  {
    clipCollectionView2 = [(HUClipScrubberScrollDelegate *)self clipCollectionView];
    v54 = [clipCollectionView2 cellForItemAtIndexPath:*&v39];

    if (!v54)
    {
      v55 = HFLogForCategory();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        dataSource3 = [(HUClipScrubberScrollDelegate *)self dataSource];
        currentEvents2 = [dataSource3 currentEvents];
        v65 = [currentEvents2 count];
        v66 = 138412546;
        v67 = v39;
        v68 = 2048;
        scrubbingSpeed = v65;
        _os_log_error_impl(&dword_20CEB6000, v55, OS_LOG_TYPE_ERROR, "Unable to scroll to find cell for valid indexPath %@ for clip count = %lu!", &v66, 0x16u);
      }

      v31 = 0;
    }

    dataSource4 = [(HUClipScrubberScrollDelegate *)self dataSource];
    v57 = [dataSource4 eventForSection:{objc_msgSend(*&v39, "section")}];

    containerType = [v57 containerType];
    dataSource5 = [(HUClipScrubberScrollDelegate *)self dataSource];
    v60 = dataSource5;
    if (containerType == 1)
    {
      v61 = 2;
    }

    else
    {
      v61 = 3;
    }

    [dataSource5 setCurrentTimelineState:v61];

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
    dataSource6 = [(HUClipScrubberScrollDelegate *)self dataSource];
    [dataSource6 setCurrentTimelineState:4];

    if (v30)
    {
      v47 = 0;
      v31 = 0;
    }

    else
    {
      v47 = [(HUClipScrubberScrollDelegate *)self _selectedDateForAreaOfNoActivityAtPoint:scrollCopy inScrollView:v37, v35];
      v31 = 1;
    }
  }

LABEL_18:
  dataSource7 = [(HUClipScrubberScrollDelegate *)self dataSource];
  currentTimelineState = [dataSource7 currentTimelineState];
  playbackEngine5 = [(HUClipScrubberScrollDelegate *)self playbackEngine];
  [playbackEngine5 setTimelineState:currentTimelineState];

  if (v31)
  {
    dataSource8 = [(HUClipScrubberScrollDelegate *)self dataSource];
    [dataSource8 setCurrentDate:v47];

    [(HUClipScrubberScrollDelegate *)self updatePlaybackEngineDate:v47];
  }

  [(HUClipScrubberScrollDelegate *)self _updateFamiliarFaceCell];
}

- (void)updateCollectionView:(id)view
{
  viewCopy = view;
  clipCollectionView = [(HUClipScrubberScrollDelegate *)self clipCollectionView];

  if (clipCollectionView != viewCopy)
  {
    clipCollectionView2 = [(HUClipScrubberScrollDelegate *)self clipCollectionView];
    [clipCollectionView2 removeObserver:self forKeyPath:@"contentSize"];
  }

  [(HUClipScrubberScrollDelegate *)self setClipCollectionView:viewCopy];
  clipCollectionView3 = [(HUClipScrubberScrollDelegate *)self clipCollectionView];
  [clipCollectionView3 addObserver:self forKeyPath:@"contentSize" options:0 context:0];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v53 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"contentSize"] && (-[HUClipScrubberScrollDelegate clipCollectionView](self, "clipCollectionView"), v13 = objc_claimAutoreleasedReturnValue(), v13, v13 == objectCopy))
  {
    [(HUClipScrubberScrollDelegate *)self lastContentWidth];
    v15 = v14;
    clipCollectionView = [(HUClipScrubberScrollDelegate *)self clipCollectionView];
    [clipCollectionView contentSize];
    v18 = v17;

    if (v15 != v18)
    {
      clipCollectionView2 = [(HUClipScrubberScrollDelegate *)self clipCollectionView];
      [clipCollectionView2 contentSize];
      [(HUClipScrubberScrollDelegate *)self setLastContentWidth:?];

      v20 = HFLogForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        [(HUClipScrubberScrollDelegate *)self lastContentWidth];
        *buf = 134217984;
        v52 = v21;
        _os_log_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_DEFAULT, "Updating clip scrubber to lastContentWidth:%.0f", buf, 0xCu);
      }

      dataSource = [(HUClipScrubberScrollDelegate *)self dataSource];
      isUpdating = [dataSource isUpdating];

      if ((isUpdating & 1) == 0)
      {
        dataSource2 = [(HUClipScrubberScrollDelegate *)self dataSource];
        dataSource3 = [(HUClipScrubberScrollDelegate *)self dataSource];
        currentEvent = [dataSource3 currentEvent];
        [dataSource2 offsetForEvent:currentEvent];
        v28 = v27;

        clipCollectionView3 = [(HUClipScrubberScrollDelegate *)self clipCollectionView];
        [clipCollectionView3 contentOffset];
        v31 = v30;

        playbackEngine = [(HUClipScrubberScrollDelegate *)self playbackEngine];
        playbackPosition = [playbackEngine playbackPosition];
        contentType = [playbackPosition contentType];

        clipCollectionView4 = [(HUClipScrubberScrollDelegate *)self clipCollectionView];
        v36 = clipCollectionView4;
        if (contentType)
        {
          [clipCollectionView4 bounds];
          v38 = v37;
          dataSource4 = [(HUClipScrubberScrollDelegate *)self dataSource];
          [dataSource4 posterFrameWidth];
          v41 = v40;

          if (v38 <= v41)
          {
            goto LABEL_4;
          }

          clipCollectionView5 = [(HUClipScrubberScrollDelegate *)self clipCollectionView];
          [clipCollectionView5 bounds];
          v44 = v28 + v43 * -0.5;

          [(HUClipScrubberScrollDelegate *)self setShouldIgnoreScrolling:1];
        }

        else
        {
          [clipCollectionView4 contentSize];
          v46 = v45;
          clipCollectionView6 = [(HUClipScrubberScrollDelegate *)self clipCollectionView];
          [clipCollectionView6 bounds];
          v44 = v46 - v48;
        }

        clipCollectionView7 = [(HUClipScrubberScrollDelegate *)self clipCollectionView];
        [clipCollectionView7 setContentOffset:0 animated:{v44, v31}];
      }
    }
  }

  else
  {
    v50.receiver = self;
    v50.super_class = HUClipScrubberScrollDelegate;
    [(HUClipScrubberScrollDelegate *)&v50 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }

LABEL_4:
}

- (BOOL)_shouldScrollBypassPlaybackEngineUpdate
{
  if ([(HUClipScrubberScrollDelegate *)self shouldIgnoreScrolling])
  {
    return 1;
  }

  dataSource = [(HUClipScrubberScrollDelegate *)self dataSource];
  currentEvents = [dataSource currentEvents];
  v5 = [currentEvents count];

  if (!v5)
  {
    return 1;
  }

  else
  {
    return ![(HUClipScrubberScrollDelegate *)self isUserScrubbing];
  }
}

- (void)_handleOutOfBoundsTimelinePosition:(float)position
{
  v19 = *MEMORY[0x277D85DE8];
  [(HUClipScrubberScrollDelegate *)self playheadPosition];
  if (v5 < position)
  {
    dataSource = [(HUClipScrubberScrollDelegate *)self dataSource];
    isEditing = [dataSource isEditing];

    dataSource2 = [(HUClipScrubberScrollDelegate *)self dataSource];
    v14 = dataSource2;
    if (isEditing)
    {
      v9 = 6;
    }

    else
    {
      v9 = 1;
    }

LABEL_7:
    [dataSource2 setCurrentTimelineState:v9];

    return;
  }

  [(HUClipScrubberScrollDelegate *)self playheadPosition];
  if (v10 > position)
  {
    dataSource2 = [(HUClipScrubberScrollDelegate *)self dataSource];
    v14 = dataSource2;
    v9 = 5;
    goto LABEL_7;
  }

  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [(HUClipScrubberScrollDelegate *)self playheadPosition];
    *buf = 134218240;
    positionCopy = position;
    v17 = 2048;
    v18 = v13;
    _os_log_error_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_ERROR, "invalid _handleOutOfBoundsTimelinePosition: call. timelinePosition:%.2f playheadPosition:%.2f", buf, 0x16u);
  }

  dataSource3 = [(HUClipScrubberScrollDelegate *)self dataSource];
  [dataSource3 setCurrentTimelineState:4];
}

- (id)_selectedDateForAreaOfNoActivityAtPoint:(CGPoint)point inScrollView:(id)view
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  clipCollectionView = [(HUClipScrubberScrollDelegate *)self clipCollectionView];
  v9 = [clipCollectionView indexPathForItemAtPoint:{x, y}];

  clipCollectionView2 = [(HUClipScrubberScrollDelegate *)self clipCollectionView];
  v11 = [clipCollectionView2 cellForItemAtIndexPath:v9];

  dataSource = [(HUClipScrubberScrollDelegate *)self dataSource];
  v13 = [dataSource eventForSection:{objc_msgSend(v9, "section")}];

  dataSource2 = [(HUClipScrubberScrollDelegate *)self dataSource];
  v15 = [dataSource2 previousEventForSection:{objc_msgSend(v9, "section")}];

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
    [viewCopy contentOffset];
    *&v30 = v29;
    v20 = [(HUClipScrubberScrollDelegate *)self _interpolatedDateFromEvent:v15 toEvent:v13 insideRect:v22 atTimelinePosition:v24, v26, v28, v30];
  }

  v31 = v20;

  return v31;
}

- (void)_updateFamiliarFaceCell
{
  dataSource = [(HUClipScrubberScrollDelegate *)self dataSource];
  clipCollectionView = [dataSource clipCollectionView];
  [clipCollectionView contentOffset];
  v6 = v5;
  v8 = v7;

  [(HUClipScrubberScrollDelegate *)self playheadPosition];
  v10 = v6 + v9;
  dataSource2 = [(HUClipScrubberScrollDelegate *)self dataSource];
  clipCollectionView2 = [dataSource2 clipCollectionView];
  visibleCells = [clipCollectionView2 visibleCells];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__HUClipScrubberScrollDelegate__updateFamiliarFaceCell__block_invoke;
  v14[3] = &unk_277DC19B0;
  *&v14[5] = v10;
  v14[6] = v8;
  v14[4] = self;
  [visibleCells enumerateObjectsUsingBlock:v14];
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
  clipCollectionView = [(HUClipScrubberScrollDelegate *)self clipCollectionView];
  [clipCollectionView bounds];
  v4 = v3 * 0.5;

  return v4;
}

- (id)_selectedDateForEventInRect:(CGRect)rect
{
  width = rect.size.width;
  MaxX = CGRectGetMaxX(rect);
  [(HUClipScrubberScrollDelegate *)self playheadPosition];
  *&MaxX = MaxX - v6;
  clipCollectionView = [(HUClipScrubberScrollDelegate *)self clipCollectionView];
  [clipCollectionView contentOffset];
  v9 = v8;

  v10 = 1.0 - (*&MaxX - v9) / width;
  v11 = v10;
  currentEvent = [(HUClipScrubberScrollDelegate *)self currentEvent];
  [currentEvent hf_duration];
  *&v11 = v13 * v11;

  currentEvent2 = [(HUClipScrubberScrollDelegate *)self currentEvent];
  dateOfOccurrence = [currentEvent2 dateOfOccurrence];
  v16 = [dateOfOccurrence dateByAddingTimeInterval:*&v11];

  return v16;
}

- (id)_selectedDateForTodayFromEvent:(id)event percentDuration:(float)duration
{
  eventCopy = event;
  dateOfOccurrence = [eventCopy dateOfOccurrence];
  hf_startOfDay = [dateOfOccurrence hf_startOfDay];

  dateOfOccurrence2 = [eventCopy dateOfOccurrence];

  [dateOfOccurrence2 timeIntervalSinceDate:hf_startOfDay];
  v10 = v9;

  v11 = v10 * duration;
  v12 = [hf_startOfDay dateByAddingTimeInterval:v11];

  return v12;
}

- (id)_selectedDateForYesterdayFromPreviousEvent:(id)event percentDuration:(float)duration
{
  eventCopy = event;
  dateOfOccurrence = [eventCopy dateOfOccurrence];
  hf_startOfNextDay = [dateOfOccurrence hf_startOfNextDay];

  hf_endDate = [eventCopy hf_endDate];

  [hf_startOfNextDay timeIntervalSinceDate:hf_endDate];
  v10 = v9;

  v11 = v10 * duration;
  v12 = [hf_startOfNextDay dateByAddingTimeInterval:v11];

  return v12;
}

- (id)_interpolatedDateFromEvent:(id)event toEvent:(id)toEvent insideRect:(CGRect)rect atTimelinePosition:(float)position
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  eventCopy = event;
  dateOfOccurrence = [toEvent dateOfOccurrence];
  hf_endDate = [eventCopy hf_endDate];
  [dateOfOccurrence timeIntervalSinceDate:hf_endDate];
  v17 = v16;

  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  MaxX = CGRectGetMaxX(v27);
  [(HUClipScrubberScrollDelegate *)self playheadPosition];
  v20 = MaxX - v19;
  v21 = 1.0 - (v20 - position) / width;
  v22 = v17 * v21;
  hf_endDate2 = [eventCopy hf_endDate];

  v24 = [hf_endDate2 dateByAddingTimeInterval:v22];

  return v24;
}

- (void)dealloc
{
  clipCollectionView = [(HUClipScrubberScrollDelegate *)self clipCollectionView];
  [clipCollectionView removeObserver:self forKeyPath:@"contentSize"];

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