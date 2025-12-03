@interface ICASPdfNavIxData
- (ICASPdfNavIxData)initWithHasGestures:(id)gestures hasScroll:(id)scroll hasPagination:(id)pagination hasPinchZoom:(id)zoom hasPinchToExpandState:(id)state;
- (id)toDict;
@end

@implementation ICASPdfNavIxData

- (ICASPdfNavIxData)initWithHasGestures:(id)gestures hasScroll:(id)scroll hasPagination:(id)pagination hasPinchZoom:(id)zoom hasPinchToExpandState:(id)state
{
  gesturesCopy = gestures;
  scrollCopy = scroll;
  paginationCopy = pagination;
  zoomCopy = zoom;
  stateCopy = state;
  v21.receiver = self;
  v21.super_class = ICASPdfNavIxData;
  v17 = [(ICASPdfNavIxData *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_hasGestures, gestures);
    objc_storeStrong(&v18->_hasScroll, scroll);
    objc_storeStrong(&v18->_hasPagination, pagination);
    objc_storeStrong(&v18->_hasPinchZoom, zoom);
    objc_storeStrong(&v18->_hasPinchToExpandState, state);
  }

  return v18;
}

- (id)toDict
{
  v23[5] = *MEMORY[0x277D85DE8];
  v22[0] = @"hasGestures";
  hasGestures = [(ICASPdfNavIxData *)self hasGestures];
  if (hasGestures)
  {
    hasGestures2 = [(ICASPdfNavIxData *)self hasGestures];
  }

  else
  {
    hasGestures2 = objc_opt_new();
  }

  v4 = hasGestures2;
  v23[0] = hasGestures2;
  v22[1] = @"hasScroll";
  hasScroll = [(ICASPdfNavIxData *)self hasScroll];
  if (hasScroll)
  {
    hasScroll2 = [(ICASPdfNavIxData *)self hasScroll];
  }

  else
  {
    hasScroll2 = objc_opt_new();
  }

  v7 = hasScroll2;
  v23[1] = hasScroll2;
  v22[2] = @"hasPagination";
  hasPagination = [(ICASPdfNavIxData *)self hasPagination];
  if (hasPagination)
  {
    hasPagination2 = [(ICASPdfNavIxData *)self hasPagination];
  }

  else
  {
    hasPagination2 = objc_opt_new();
  }

  v10 = hasPagination2;
  v23[2] = hasPagination2;
  v22[3] = @"hasPinchZoom";
  hasPinchZoom = [(ICASPdfNavIxData *)self hasPinchZoom];
  if (hasPinchZoom)
  {
    hasPinchZoom2 = [(ICASPdfNavIxData *)self hasPinchZoom];
  }

  else
  {
    hasPinchZoom2 = objc_opt_new();
  }

  v13 = hasPinchZoom2;
  v23[3] = hasPinchZoom2;
  v22[4] = @"hasPinchToExpandState";
  hasPinchToExpandState = [(ICASPdfNavIxData *)self hasPinchToExpandState];
  if (hasPinchToExpandState)
  {
    hasPinchToExpandState2 = [(ICASPdfNavIxData *)self hasPinchToExpandState];
  }

  else
  {
    hasPinchToExpandState2 = objc_opt_new();
  }

  v16 = hasPinchToExpandState2;
  v23[4] = hasPinchToExpandState2;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:5];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

@end