@interface CHSRelevanceEntry
- (CHSRelevanceEntry)initWithTimelineEntryRelevance:(id)relevance;
@end

@implementation CHSRelevanceEntry

- (CHSRelevanceEntry)initWithTimelineEntryRelevance:(id)relevance
{
  v4.receiver = self;
  v4.super_class = CHSRelevanceEntry;
  return [(CHSTimelineEntryRelevance *)&v4 initWithTimelineEntryRelevance:relevance];
}

@end