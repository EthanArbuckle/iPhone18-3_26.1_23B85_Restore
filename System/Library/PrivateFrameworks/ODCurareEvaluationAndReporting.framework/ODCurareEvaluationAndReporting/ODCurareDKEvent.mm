@interface ODCurareDKEvent
- (ODCurareDKEvent)initWithDKEvent:(id)a3;
@end

@implementation ODCurareDKEvent

- (ODCurareDKEvent)initWithDKEvent:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = ODCurareDKEvent;
  v5 = [(ODCurareDKEvent *)&v17 init];
  if (v5)
  {
    v6 = [v4 startDate];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [v4 endDate];
    endDate = v5->_endDate;
    v5->_endDate = v8;

    v10 = [v4 value];
    v11 = [v10 stringValue];
    identifier = v5->_identifier;
    v5->_identifier = v11;

    v13 = [v4 metadata];
    v14 = [v13 objectForKeyedSubscript:@"ODCurareEvaluationAndReporting-MetadataDataKey"];
    metadata = v5->_metadata;
    v5->_metadata = v14;
  }

  return v5;
}

@end