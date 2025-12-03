@interface ATXWidgetStackSuggestion
- (ATXWidgetStackSuggestion)init;
- (ATXWidgetStackSuggestion)initWithStackIdentifier:(id)identifier topWidget:(id)widget suggestedWidgets:(id)widgets;
- (NSSet)suggestedWidgets;
- (NSString)description;
- (NSString)stackIdentifier;
- (NSString)topWidgetIdentifier;
@end

@implementation ATXWidgetStackSuggestion

- (NSString)description
{
  selfCopy = self;
  ATXWidgetStackSuggestion.description.getter();

  v3 = sub_2441D8C4C();

  return v3;
}

- (NSString)stackIdentifier
{
  v2 = *(self + OBJC_IVAR___ATXWidgetStackSuggestion_stackIdentifier);
  v3 = *(self + OBJC_IVAR___ATXWidgetStackSuggestion_stackIdentifier + 8);

  v4 = sub_2441D8C4C();

  return v4;
}

- (NSSet)suggestedWidgets
{
  v2 = *(self + OBJC_IVAR___ATXWidgetStackSuggestion_suggestedWidgets);
  sub_244194FC8(0, &qword_27EDD5AF8, off_278E089D0);
  sub_244195E64();

  v3 = sub_2441D8DAC();

  return v3;
}

- (ATXWidgetStackSuggestion)initWithStackIdentifier:(id)identifier topWidget:(id)widget suggestedWidgets:(id)widgets
{
  v7 = sub_2441D8C6C();
  v9 = v8;
  sub_244194FC8(0, &qword_27EDD5AF8, off_278E089D0);
  sub_244195E64();
  v10 = sub_2441D8DCC();
  v11 = (self + OBJC_IVAR___ATXWidgetStackSuggestion_stackIdentifier);
  *v11 = v7;
  v11[1] = v9;
  *(self + OBJC_IVAR___ATXWidgetStackSuggestion_topWidget) = widget;
  *(self + OBJC_IVAR___ATXWidgetStackSuggestion_suggestedWidgets) = v10;
  v14.receiver = self;
  v14.super_class = ATXWidgetStackSuggestion;
  widgetCopy = widget;
  return [(ATXWidgetStackSuggestion *)&v14 init];
}

- (NSString)topWidgetIdentifier
{
  selfCopy = self;
  topWidget = [(ATXWidgetStackSuggestion *)selfCopy topWidget];
  if (topWidget)
  {
    v4 = topWidget;
    identifier = [(ATXWidget *)topWidget identifier];

    sub_2441D8C6C();
    v6 = sub_2441D8C4C();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (ATXWidgetStackSuggestion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end