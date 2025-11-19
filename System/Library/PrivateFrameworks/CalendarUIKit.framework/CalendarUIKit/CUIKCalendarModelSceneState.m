@interface CUIKCalendarModelSceneState
- (CUIKCalendarModelSceneState)init;
@end

@implementation CUIKCalendarModelSceneState

- (CUIKCalendarModelSceneState)init
{
  v8.receiver = self;
  v8.super_class = CUIKCalendarModelSceneState;
  result = [(CUIKCalendarModelSceneState *)&v8 init];
  if (result)
  {
    *&result->_showDayAsList = 0;
    result->_numDaysToShow = 1;
    __asm { FMOV            V0.2D, #-1.0 }

    *&result->_dayViewHourScale = _Q0;
    result->_dayViewFirstVisibleSecond = -1;
    result->_weekViewFirstVisibleSecond = -1;
    result->_lastUsedNonYearView = -1;
  }

  return result;
}

@end