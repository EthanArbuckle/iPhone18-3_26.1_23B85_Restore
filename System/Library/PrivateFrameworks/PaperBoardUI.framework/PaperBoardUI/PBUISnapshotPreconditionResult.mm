@interface PBUISnapshotPreconditionResult
- (PBUISnapshotPreconditionResult)initWithExternalDisplayConfiguration:(id)configuration variant:(int64_t)variant;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)appendPreconditionResultFailure:(id)failure;
- (void)appendPreconditionResultFailureWithFormat:(id)format;
@end

@implementation PBUISnapshotPreconditionResult

- (PBUISnapshotPreconditionResult)initWithExternalDisplayConfiguration:(id)configuration variant:(int64_t)variant
{
  configurationCopy = configuration;
  v13.receiver = self;
  v13.super_class = PBUISnapshotPreconditionResult;
  v8 = [(PBUISnapshotPreconditionResult *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_externalDisplayConfiguration, configuration);
    v9->_variant = variant;
    v10 = objc_opt_new();
    reasonsToNotSnapshot = v9->_reasonsToNotSnapshot;
    v9->_reasonsToNotSnapshot = v10;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[PBUISnapshotPreconditionResult allocWithZone:?]variant:"initWithExternalDisplayConfiguration:variant:", self->_externalDisplayConfiguration, self->_variant];
  v5 = [(NSMutableArray *)self->_reasonsToNotSnapshot mutableCopy];
  reasonsToNotSnapshot = v4->_reasonsToNotSnapshot;
  v4->_reasonsToNotSnapshot = v5;

  return v4;
}

- (id)description
{
  canSnapshot = [(PBUISnapshotPreconditionResult *)self canSnapshot];
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v5 = [v4 appendBool:canSnapshot withName:@"canSnapshot"];
  v6 = [v4 appendBool:-[PBUISnapshotPreconditionResult isSnapshottingForExternalDisplayHostedWallpaper](self withName:"isSnapshottingForExternalDisplayHostedWallpaper") ifEqualTo:{@"isSnapshottingForExternalDisplayHostedWallpaper", 1}];
  if (!canSnapshot)
  {
    v7 = [(NSMutableArray *)self->_reasonsToNotSnapshot copy];
    [v4 appendArraySection:v7 withName:@"reasons to not snapshot" skipIfEmpty:0];
  }

  build = [v4 build];

  return build;
}

- (void)appendPreconditionResultFailureWithFormat:(id)format
{
  v4 = MEMORY[0x277CCACA8];
  formatCopy = format;
  v6 = [[v4 alloc] initWithFormat:formatCopy arguments:&v7];

  [(PBUISnapshotPreconditionResult *)self appendPreconditionResultFailure:v6];
}

- (void)appendPreconditionResultFailure:(id)failure
{
  reasonsToNotSnapshot = self->_reasonsToNotSnapshot;
  failureCopy = failure;
  if ([(__CFString *)failureCopy length])
  {
    v4 = failureCopy;
  }

  else
  {
    v4 = @"UNSPECIFIED FAILURE REASON!!!!";
  }

  [(NSMutableArray *)reasonsToNotSnapshot addObject:v4];
}

@end