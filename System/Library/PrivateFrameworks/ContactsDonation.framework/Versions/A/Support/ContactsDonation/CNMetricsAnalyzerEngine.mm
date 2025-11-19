@interface CNMetricsAnalyzerEngine
- (_TtC21contactsdonationagent23CNMetricsAnalyzerEngine)init;
@end

@implementation CNMetricsAnalyzerEngine

- (_TtC21contactsdonationagent23CNMetricsAnalyzerEngine)init
{
  Logger.init(subsystem:category:)();
  v3 = [objc_allocWithZone(CNContactStore) init];
  *(&self->super.isa + OBJC_IVAR____TtC21contactsdonationagent23CNMetricsAnalyzerEngine_contactStore) = v3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CNMetricsAnalyzerEngine();
  return [(CNMetricsAnalyzerEngine *)&v5 init];
}

@end