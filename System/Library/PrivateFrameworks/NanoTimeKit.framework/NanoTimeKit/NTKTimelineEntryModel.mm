@interface NTKTimelineEntryModel
- (id)entryForComplicationFamily:(int64_t)family;
- (id)templateForComplicationFamily:(int64_t)family;
@end

@implementation NTKTimelineEntryModel

- (id)entryForComplicationFamily:(int64_t)family
{
  v5 = objc_opt_new();
  entryDate = [(NTKTimelineEntryModel *)self entryDate];
  [v5 setDate:entryDate];

  v7 = [(NTKTimelineEntryModel *)self templateForComplicationFamily:family];
  [v5 setComplicationTemplate:v7];

  [v5 finalize];

  return v5;
}

- (id)templateForComplicationFamily:(int64_t)family
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end