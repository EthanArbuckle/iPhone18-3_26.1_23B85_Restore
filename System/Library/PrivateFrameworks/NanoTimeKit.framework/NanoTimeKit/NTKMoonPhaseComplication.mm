@interface NTKMoonPhaseComplication
- (BOOL)snapshotContext:(id)context isStaleRelativeToContext:(id)toContext;
@end

@implementation NTKMoonPhaseComplication

- (BOOL)snapshotContext:(id)context isStaleRelativeToContext:(id)toContext
{
  v5.receiver = self;
  v5.super_class = NTKMoonPhaseComplication;
  return [(NTKComplication *)&v5 snapshotContext:context isStaleRelativeToContext:toContext];
}

@end