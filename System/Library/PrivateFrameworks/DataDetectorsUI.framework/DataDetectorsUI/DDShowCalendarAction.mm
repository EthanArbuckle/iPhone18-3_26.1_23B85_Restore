@interface DDShowCalendarAction
- (void)performFromView:(id)view;
@end

@implementation DDShowCalendarAction

- (void)performFromView:(id)view
{
  context = self->super._context;
  viewCopy = view;
  v6 = [(NSDictionary *)context objectForKeyedSubscript:0x282C1E0C8];
  v14 = _eventStartDateFromCache(v6);

  v7 = v14;
  if (!v14)
  {
    if (self->super._ics)
    {
      v7 = 0;
    }

    else
    {
      associatedResults = [(DDAction *)self associatedResults];
      context = [(DDAction *)self context];
      v15 = beginDateOfEventResults(associatedResults, context, 0, 0, 0);

      v7 = v15;
    }
  }

  v10 = MEMORY[0x277CCACA8];
  v16 = v7;
  [v7 timeIntervalSinceReferenceDate];
  v12 = [v10 stringWithFormat:@"calshow:%f", v11];
  v13 = [MEMORY[0x277CBEBC0] URLWithString:v12];
  DDUIRecordOtherActionInSheetForResultIfNeeded(self->super._result);
  [(DDAction *)self _performFromView:viewCopy byOpeningURL:v13];
}

@end