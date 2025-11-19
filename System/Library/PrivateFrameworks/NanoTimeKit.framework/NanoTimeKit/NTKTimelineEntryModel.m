@interface NTKTimelineEntryModel
- (id)entryForComplicationFamily:(int64_t)a3;
- (id)templateForComplicationFamily:(int64_t)a3;
@end

@implementation NTKTimelineEntryModel

- (id)entryForComplicationFamily:(int64_t)a3
{
  v5 = objc_opt_new();
  v6 = [(NTKTimelineEntryModel *)self entryDate];
  [v5 setDate:v6];

  v7 = [(NTKTimelineEntryModel *)self templateForComplicationFamily:a3];
  [v5 setComplicationTemplate:v7];

  [v5 finalize];

  return v5;
}

- (id)templateForComplicationFamily:(int64_t)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end