@interface CPSDiagnosticsService
+ (void)fetchABRMetadataWithURL:(id)l completion:(id)completion;
+ (void)fetchAMPMetadataWithBundleID:(id)d completion:(id)completion;
@end

@implementation CPSDiagnosticsService

+ (void)fetchABRMetadataWithURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  v7 = +[CPSDaemonConnection sharedConnection];
  [v7 fetchABRMetadataForDiagnosticsWithURL:lCopy completion:completionCopy];
}

+ (void)fetchAMPMetadataWithBundleID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v7 = +[CPSDaemonConnection sharedConnection];
  [v7 fetchAMPMetadataForDiagnosticsWithBundleID:dCopy completion:completionCopy];
}

@end