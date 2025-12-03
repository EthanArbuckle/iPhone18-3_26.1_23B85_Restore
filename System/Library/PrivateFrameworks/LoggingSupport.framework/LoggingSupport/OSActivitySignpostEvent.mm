@interface OSActivitySignpostEvent
- (OSActivitySignpostEvent)initWithEntry:(os_activity_stream_entry_s *)entry;
@end

@implementation OSActivitySignpostEvent

- (OSActivitySignpostEvent)initWithEntry:(os_activity_stream_entry_s *)entry
{
  v5.receiver = self;
  v5.super_class = OSActivitySignpostEvent;
  result = [(OSActivityLogMessageEvent *)&v5 initWithEntry:?];
  if (result)
  {
    result->_signpostID = *(&entry->var8.var12 + 148);
  }

  return result;
}

@end