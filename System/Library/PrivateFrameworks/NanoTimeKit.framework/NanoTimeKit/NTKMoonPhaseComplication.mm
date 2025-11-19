@interface NTKMoonPhaseComplication
- (BOOL)snapshotContext:(id)a3 isStaleRelativeToContext:(id)a4;
@end

@implementation NTKMoonPhaseComplication

- (BOOL)snapshotContext:(id)a3 isStaleRelativeToContext:(id)a4
{
  v5.receiver = self;
  v5.super_class = NTKMoonPhaseComplication;
  return [(NTKComplication *)&v5 snapshotContext:a3 isStaleRelativeToContext:a4];
}

@end