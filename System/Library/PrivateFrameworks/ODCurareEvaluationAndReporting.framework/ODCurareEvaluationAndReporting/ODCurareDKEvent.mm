@interface ODCurareDKEvent
- (ODCurareDKEvent)initWithDKEvent:(id)event;
@end

@implementation ODCurareDKEvent

- (ODCurareDKEvent)initWithDKEvent:(id)event
{
  eventCopy = event;
  v17.receiver = self;
  v17.super_class = ODCurareDKEvent;
  v5 = [(ODCurareDKEvent *)&v17 init];
  if (v5)
  {
    startDate = [eventCopy startDate];
    startDate = v5->_startDate;
    v5->_startDate = startDate;

    endDate = [eventCopy endDate];
    endDate = v5->_endDate;
    v5->_endDate = endDate;

    value = [eventCopy value];
    stringValue = [value stringValue];
    identifier = v5->_identifier;
    v5->_identifier = stringValue;

    metadata = [eventCopy metadata];
    v14 = [metadata objectForKeyedSubscript:@"ODCurareEvaluationAndReporting-MetadataDataKey"];
    metadata = v5->_metadata;
    v5->_metadata = v14;
  }

  return v5;
}

@end